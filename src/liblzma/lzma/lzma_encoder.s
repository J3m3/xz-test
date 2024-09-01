	.text
	.file	"lzma_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/lzma/lzma_encoder.c" md5 0x05efdea695ffcfbe246da60087a9dd58
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	4 "liblzma/rangecoder" "range_encoder.h" md5 0xe02ad9079871d268a82b8ebf2e7d385d
	.file	5 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	6 "liblzma/rangecoder" "range_common.h" md5 0x7d3e93a1bf35640522f499de026cfdad
	.file	7 "liblzma/lzma" "lzma_common.h" md5 0xce364754aa91e57f603599f25328df33
	.file	8 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.file	9 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.globl	lzma_lzma_encode                # -- Begin function lzma_lzma_encode
	.p2align	4, 0x90
	.type	lzma_lzma_encode,@function
lzma_lzma_encode:                       # @lzma_lzma_encode
.Lfunc_begin0:
	.loc	0 321 0                         # liblzma/lzma/lzma_encoder.c:321:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $rsi
	#DEBUG_VALUE: lzma_lzma_encode:out <- $rdx
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $rcx
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- $r8
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $r9d
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
	movl	%r9d, %ebp
	movq	%rcx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbx
.Ltmp0:
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	.loc	0 324 29 prologue_end           # liblzma/lzma/lzma_encoder.c:324:29
	cmpb	$0, 2957(%rdi)
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
.Ltmp1:
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	jne	.LBB0_6
.Ltmp2:
# %bb.1:                                # %land.lhs.true
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- $r8
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: encode_init:pcoder <- $rbx
	#DEBUG_VALUE: encode_init:mf <- $r13
	#DEBUG_VALUE: encode_init:coder <- $rbx
	.loc	0 0 29 is_stmt 0                # liblzma/lzma/lzma_encoder.c:0:29
	movq	%r8, %r14
.Ltmp3:
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- $r14
	.loc	0 277 10 is_stmt 1              # liblzma/lzma/lzma_encoder.c:277:10
	movl	24(%r13), %eax
	.loc	0 277 19 is_stmt 0              # liblzma/lzma/lzma_encoder.c:277:19
	cmpl	32(%r13), %eax
.Ltmp4:
	.loc	0 277 6                         # liblzma/lzma/lzma_encoder.c:277:6
	jne	.LBB0_4
.Ltmp5:
# %bb.2:                                # %if.then.i
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- $r14
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: encode_init:pcoder <- $rbx
	#DEBUG_VALUE: encode_init:mf <- $r13
	#DEBUG_VALUE: encode_init:coder <- $rbx
	.loc	0 278 18 is_stmt 1              # liblzma/lzma/lzma_encoder.c:278:18
	cmpl	$0, 104(%r13)
.Ltmp6:
	.loc	0 278 7 is_stmt 0               # liblzma/lzma/lzma_encoder.c:278:7
	jne	.LBB0_5
.Ltmp7:
.LBB0_48:
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	.loc	0 0 7                           # liblzma/lzma/lzma_encoder.c:0:7
	xorl	%ecx, %ecx
	jmp	.LBB0_49
.Ltmp8:
.LBB0_4:                                # %if.else.i
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- $r14
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: encode_init:pcoder <- $rbx
	#DEBUG_VALUE: encode_init:mf <- $r13
	#DEBUG_VALUE: encode_init:coder <- $rbx
	#DEBUG_VALUE: mf_skip:mf <- $r13
	#DEBUG_VALUE: mf_skip:amount <- 1
	.file	10 "liblzma/lz" "lz_encoder.h" md5 0x780f78e6e21a3ca52f57df68bfdc6f53
	.loc	10 271 3 is_stmt 1              # liblzma/lz/lz_encoder.h:271:3
	movq	%r13, %rdi
	movl	$1, %esi
	callq	*56(%r13)
.Ltmp9:
	.loc	0 288 18                        # liblzma/lzma/lzma_encoder.c:288:18
	movl	$0, 28(%r13)
	.loc	0 289 30                        # liblzma/lzma/lzma_encoder.c:289:30
	leaq	27548(%rbx), %rax
.Ltmp10:
	#DEBUG_VALUE: rc_bit:prob <- $rax
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- 0
	.loc	4 69 18                         # liblzma/rangecoder/range_encoder.h:69:18
	movq	24(%rbx), %rcx
	.loc	4 69 25 is_stmt 0               # liblzma/rangecoder/range_encoder.h:69:25
	movl	$0, 40(%rbx,%rcx,4)
	.loc	4 70 16 is_stmt 1               # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rax, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rax
.Ltmp11:
	movq	%rax, 24(%rbx)
.Ltmp12:
	.loc	0 290 52                        # liblzma/lzma/lzma_encoder.c:290:52
	movq	(%r13), %rax
	.loc	0 290 48 is_stmt 0              # liblzma/lzma/lzma_encoder.c:290:48
	movzbl	(%rax), %eax
.Ltmp13:
	#DEBUG_VALUE: rc_bittree:rc <- $rbx
	#DEBUG_VALUE: rc_bittree:model_index <- 1
	#DEBUG_VALUE: rc_bittree:bit_count <- 7
	#DEBUG_VALUE: rc_bittree:symbol <- $eax
	#DEBUG_VALUE: rc_bittree:probs <- [DW_OP_plus_uconst 2972, DW_OP_stack_value] $rbx
	.loc	4 82 32 is_stmt 1               # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %edx
	shrl	$7, %edx
.Ltmp14:
	#DEBUG_VALUE: bit <- $edx
	.loc	4 83 15                         # liblzma/rangecoder/range_encoder.h:83:15
	leaq	2974(%rbx), %rsi
.Ltmp15:
	#DEBUG_VALUE: rc_bit:prob <- $rsi
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- $edx
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edx, 44(%rbx,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rsi, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rsi
.Ltmp16:
	movq	%rsi, 24(%rbx)
.Ltmp17:
	#DEBUG_VALUE: rc_bittree:bit_count <- 6
	#DEBUG_VALUE: rc_bittree:model_index <- undef
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %esi
	shrl	$6, %esi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %esi
.Ltmp18:
	#DEBUG_VALUE: bit <- $esi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leal	4(,%rdx,2), %edi
	addq	%rbx, %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
.Ltmp19:
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:bit <- $esi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%esi, 44(%rbx,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
.Ltmp20:
	movq	%rdi, 24(%rbx)
.Ltmp21:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rsi,%rdx,2), %edx
	addl	$4, %edx
.Ltmp22:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 5
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %esi
.Ltmp23:
	shrl	$5, %esi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %esi
.Ltmp24:
	#DEBUG_VALUE: bit <- $esi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leal	(%rdx,%rdx), %edi
	addq	%rbx, %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
.Ltmp25:
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:bit <- $esi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%esi, 44(%rbx,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
.Ltmp26:
	movq	%rdi, 24(%rbx)
.Ltmp27:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rsi,%rdx,2), %edx
.Ltmp28:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 4
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %esi
.Ltmp29:
	shrl	$4, %esi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %esi
.Ltmp30:
	#DEBUG_VALUE: bit <- $esi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rbx,%rdx,2), %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
.Ltmp31:
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:bit <- $esi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%esi, 44(%rbx,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
.Ltmp32:
	movq	%rdi, 24(%rbx)
.Ltmp33:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rsi,%rdx,2), %edx
.Ltmp34:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 3
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %esi
.Ltmp35:
	shrl	$3, %esi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %esi
.Ltmp36:
	#DEBUG_VALUE: bit <- $esi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rbx,%rdx,2), %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
.Ltmp37:
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:bit <- $esi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%esi, 44(%rbx,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
.Ltmp38:
	movq	%rdi, 24(%rbx)
.Ltmp39:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rsi,%rdx,2), %edx
.Ltmp40:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 2
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %esi
.Ltmp41:
	shrl	$2, %esi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %esi
.Ltmp42:
	#DEBUG_VALUE: bit <- $esi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rbx,%rdx,2), %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
.Ltmp43:
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:bit <- $esi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%esi, 44(%rbx,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
.Ltmp44:
	movq	%rdi, 24(%rbx)
.Ltmp45:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rsi,%rdx,2), %edx
.Ltmp46:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 1
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %esi
.Ltmp47:
	shrl	%esi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %esi
.Ltmp48:
	#DEBUG_VALUE: bit <- $esi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rbx,%rdx,2), %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
.Ltmp49:
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:bit <- $esi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%esi, 44(%rbx,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
.Ltmp50:
	movq	%rdi, 24(%rbx)
.Ltmp51:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rsi,%rdx,2), %edx
.Ltmp52:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 0
	.loc	4 82 48                         # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %eax
.Ltmp53:
	#DEBUG_VALUE: bit <- $eax
	.loc	4 83 15                         # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rbx,%rdx,2), %rdx
.Ltmp54:
	addq	$2972, %rdx                     # imm = 0xB9C
.Ltmp55:
	#DEBUG_VALUE: rc_bit:prob <- $rdx
	#DEBUG_VALUE: rc_bit:bit <- $eax
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%eax, 44(%rbx,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rax
.Ltmp56:
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdx, 272(%rbx,%rax,8)
	movq	16(%rsp), %rdx                  # 8-byte Reload
.Ltmp57:
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	incq	24(%rbx)
.Ltmp58:
	#DEBUG_VALUE: rc_bittree:model_index <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value] undef, undef
.LBB0_5:                                # %encode_init.exit.thread
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- $r14
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: encode_init:pcoder <- $rbx
	#DEBUG_VALUE: encode_init:mf <- $r13
	#DEBUG_VALUE: encode_init:coder <- $rbx
	.loc	0 294 24                        # liblzma/lzma/lzma_encoder.c:294:24
	movb	$1, 2957(%rbx)
	movq	%r14, %r8
.Ltmp59:
.LBB0_6:                                # %if.end
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- $r8
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	.loc	0 328 22                        # liblzma/lzma/lzma_encoder.c:328:22
	movl	24(%r13), %r14d
	movl	28(%r13), %r12d
.Ltmp60:
	#DEBUG_VALUE: lzma_lzma_encode:position <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_stack_value] $r14d, $r12d
	#DEBUG_VALUE: mf_position:mf <- undef
	.loc	0 337 7                         # liblzma/lzma/lzma_encoder.c:337:7
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	movq	%r15, %rdx
	movq	%r8, 56(%rsp)                   # 8-byte Spill
.Ltmp61:
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	movq	%r8, %rcx
	callq	rc_encode
.Ltmp62:
	.loc	0 0 7 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:7
	xorl	%ecx, %ecx
.Ltmp63:
	.loc	0 337 7                         # liblzma/lzma/lzma_encoder.c:337:7
	testb	%al, %al
	jne	.LBB0_49
.Ltmp64:
# %bb.7:                                # %if.end4.lr.ph
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_stack_value] $r14d, $r12d
	.loc	10 255 22 is_stmt 1             # liblzma/lz/lz_encoder.h:255:22
	subl	%r12d, %r14d
.Ltmp65:
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	10 0 22 is_stmt 0               # liblzma/lz/lz_encoder.h:0:22
	leaq	27548(%rbx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	27932(%rbx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	27956(%rbx), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	27980(%rbx), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	leaq	28004(%rbx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leaq	28028(%rbx), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	47688(%rbx), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	2972(%rbx), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jmp	.LBB0_12
.Ltmp66:
.LBB0_8:                                # %cond.false35.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: literal:pcoder <- $rbx
	#DEBUG_VALUE: literal:mf <- $r13
	#DEBUG_VALUE: literal:position <- $r14d
	#DEBUG_VALUE: literal:coder <- $rbx
	.loc	0 70 2 is_stmt 1                # liblzma/lzma/lzma_encoder.c:70:2
	addl	$-6, %eax
.Ltmp67:
.LBB0_9:                                # %literal.exit.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: literal:pcoder <- $rbx
	#DEBUG_VALUE: literal:mf <- $r13
	#DEBUG_VALUE: literal:position <- $r14d
	#DEBUG_VALUE: literal:coder <- $rbx
	.loc	0 0 2 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:2
	movl	%eax, %ecx
.Ltmp68:
.LBB0_10:                               # %literal.exit.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: literal:pcoder <- $rbx
	#DEBUG_VALUE: literal:mf <- $r13
	#DEBUG_VALUE: literal:position <- $r14d
	#DEBUG_VALUE: literal:coder <- $rbx
	.loc	0 70 2                          # liblzma/lzma/lzma_encoder.c:70:2
	movl	%ecx, 736(%rbx)
.Ltmp69:
	.loc	0 380 15 is_stmt 1              # liblzma/lzma/lzma_encoder.c:380:15
	movl	12(%rsp), %eax
.Ltmp70:
.LBB0_11:                               # %encode_symbol.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	.loc	0 267 17                        # liblzma/lzma/lzma_encoder.c:267:17
	subl	%r12d, 28(%r13)
.Ltmp71:
	.loc	0 380 12                        # liblzma/lzma/lzma_encoder.c:380:12
	addl	%eax, %r14d
.Ltmp72:
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 337 7                         # liblzma/lzma/lzma_encoder.c:337:7
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	rc_encode
.Ltmp73:
	.loc	0 337 7 is_stmt 0               # liblzma/lzma/lzma_encoder.c:337:7
	testb	%al, %al
	jne	.LBB0_48
.Ltmp74:
.LBB0_12:                               # %if.end4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 353 11 is_stmt 1              # liblzma/lzma/lzma_encoder.c:353:11
	movl	24(%r13), %eax
	cmpl	$-1, %ebp
.Ltmp75:
	.loc	0 346 5                         # liblzma/lzma/lzma_encoder.c:346:5
	je	.LBB0_15
.Ltmp76:
# %bb.13:                               # %land.lhs.true5
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 346 22 is_stmt 0              # liblzma/lzma/lzma_encoder.c:346:22
	movl	%eax, %ecx
	subl	28(%r13), %ecx
	.loc	0 346 39                        # liblzma/lzma/lzma_encoder.c:346:39
	cmpl	%ebp, %ecx
	.loc	0 347 6 is_stmt 1               # liblzma/lzma/lzma_encoder.c:347:6
	jae	.LBB0_42
.Ltmp77:
# %bb.14:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 347 9 is_stmt 0               # liblzma/lzma/lzma_encoder.c:347:9
	movq	(%r15), %rcx
	.loc	0 347 20                        # liblzma/lzma/lzma_encoder.c:347:20
	movq	8(%rbx), %rdx
.Ltmp78:
	#DEBUG_VALUE: rc_pending:rc <- undef
	.loc	0 347 18                        # liblzma/lzma/lzma_encoder.c:347:18
	addq	%rdx, %rcx
	addq	$4, %rcx
	.loc	0 348 7 is_stmt 1               # liblzma/lzma/lzma_encoder.c:348:7
	cmpq	$61438, %rcx                    # imm = 0xEFFE
.Ltmp79:
	.loc	0 345 7                         # liblzma/lzma/lzma_encoder.c:345:7
	ja	.LBB0_42
.Ltmp80:
.LBB0_15:                               # %if.end11
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 353 20                        # liblzma/lzma/lzma_encoder.c:353:20
	cmpl	32(%r13), %eax
.Ltmp81:
	.loc	0 353 7 is_stmt 0               # liblzma/lzma/lzma_encoder.c:353:7
	jb	.LBB0_18
.Ltmp82:
# %bb.16:                               # %if.then14
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 354 19 is_stmt 1              # liblzma/lzma/lzma_encoder.c:354:19
	cmpl	$0, 104(%r13)
.Ltmp83:
	.loc	0 354 8 is_stmt 0               # liblzma/lzma/lzma_encoder.c:354:8
	je	.LBB0_48
.Ltmp84:
# %bb.17:                               # %if.end17
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 357 23 is_stmt 1              # liblzma/lzma/lzma_encoder.c:357:23
	cmpl	$0, 28(%r13)
.Ltmp85:
	.loc	0 357 8 is_stmt 0               # liblzma/lzma/lzma_encoder.c:357:8
	je	.LBB0_42
.Ltmp86:
.LBB0_18:                               # %if.end22
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 372 7 is_stmt 1               # liblzma/lzma/lzma_encoder.c:372:7
	cmpb	$1, 2956(%rbx)
	jne	.LBB0_20
.Ltmp87:
# %bb.19:                               # %if.then24
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 373 4                         # liblzma/lzma/lzma_encoder.c:373:4
	movq	%rbx, %rdi
	movq	%r13, %rsi
	leaq	28(%rsp), %rdx
	leaq	12(%rsp), %rcx
	callq	lzma_lzma_optimum_fast@PLT
.Ltmp88:
	jmp	.LBB0_21
.Ltmp89:
	.p2align	4, 0x90
.LBB0_20:                               # %if.else
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 375 4                         # liblzma/lzma/lzma_encoder.c:375:4
	movq	%rbx, %rdi
	movq	%r13, %rsi
	leaq	28(%rsp), %rdx
	leaq	12(%rsp), %rcx
	movl	%r14d, %r8d
	callq	lzma_lzma_optimum_normal@PLT
.Ltmp90:
.LBB0_21:                               # %if.end25
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 378 28                        # liblzma/lzma/lzma_encoder.c:378:28
	movl	28(%rsp), %edx
.Ltmp91:
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:back <- undef
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	.loc	0 0 28 is_stmt 0                # liblzma/lzma/lzma_encoder.c:0:28
	movl	2960(%rbx), %eax
.Ltmp92:
	.loc	0 241 38 is_stmt 1              # liblzma/lzma/lzma_encoder.c:241:38
	andl	%r14d, %eax
.Ltmp93:
	#DEBUG_VALUE: encode_symbol:pos_state <- undef
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:0
	movl	736(%rbx), %ecx
	shlq	$5, %rcx
	addq	48(%rsp), %rcx                  # 8-byte Folded Reload
.Ltmp94:
	.loc	0 378 34 is_stmt 1              # liblzma/lzma/lzma_encoder.c:378:34
	movl	12(%rsp), %r12d
.Ltmp95:
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:0
	leaq	(%rcx,%rax,2), %rcx
	#DEBUG_VALUE: rc_bit:prob <- $rcx
	#DEBUG_VALUE: rc_bit:prob <- $rcx
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:rc <- $rbx
.Ltmp96:
	.loc	4 69 18 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:18
	movq	24(%rbx), %rsi
.Ltmp97:
	.loc	0 378 28                        # liblzma/lzma/lzma_encoder.c:378:28
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	cmpq	%rdi, %rdx
.Ltmp98:
	.loc	0 243 6                         # liblzma/lzma/lzma_encoder.c:243:6
	je	.LBB0_26
.Ltmp99:
# %bb.22:                               # %if.else.i81
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rc_bit:prob <- $rcx
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- 1
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	$1, 40(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rsi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rcx, 272(%rbx,%rsi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rcx
.Ltmp100:
	leaq	1(%rcx), %rsi
	movq	%rsi, 24(%rbx)
.Ltmp101:
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:0
	movl	736(%rbx), %esi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rdi,%rsi,2), %rsi
	#DEBUG_VALUE: rc_bit:prob <- $rsi
	#DEBUG_VALUE: rc_bit:prob <- $rsi
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	.loc	0 254 12 is_stmt 1              # liblzma/lzma/lzma_encoder.c:254:12
	cmpl	$3, %edx
.Ltmp102:
	.loc	0 254 7 is_stmt 0               # liblzma/lzma/lzma_encoder.c:254:7
	ja	.LBB0_28
.Ltmp103:
# %bb.23:                               # %if.then11.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rc_bit:prob <- $rsi
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- 1
	.loc	4 69 25 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:25
	movl	$1, 44(%rbx,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rsi, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rsi
.Ltmp104:
	leaq	1(%rsi), %rcx
	movq	%rcx, 24(%rbx)
.Ltmp105:
	#DEBUG_VALUE: rep_match:pcoder <- $rbx
	#DEBUG_VALUE: rep_match:len <- $r12d
	#DEBUG_VALUE: rep_match:coder <- $rbx
	.loc	0 196 10                        # liblzma/lzma/lzma_encoder.c:196:10
	testq	%rdx, %rdx
.Ltmp106:
	#DEBUG_VALUE: rep_match:pos_state <- undef
	#DEBUG_VALUE: rep_match:rep <- undef
	.loc	0 196 6 is_stmt 0               # liblzma/lzma/lzma_encoder.c:196:6
	je	.LBB0_34
.Ltmp107:
# %bb.24:                               # %if.else.i63.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rep_match:pcoder <- $rbx
	#DEBUG_VALUE: rep_match:len <- $r12d
	#DEBUG_VALUE: rep_match:coder <- $rbx
	.loc	0 202 29 is_stmt 1              # liblzma/lzma/lzma_encoder.c:202:29
	movl	740(%rbx,%rdx,4), %ecx
.Ltmp108:
	#DEBUG_VALUE: distance <- $ecx
	.loc	0 203 45                        # liblzma/lzma/lzma_encoder.c:203:45
	movl	736(%rbx), %edi
	movq	32(%rsp), %r8                   # 8-byte Reload
	.loc	0 203 23 is_stmt 0              # liblzma/lzma/lzma_encoder.c:203:23
	leaq	(%r8,%rdi,2), %rdi
.Ltmp109:
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- 1
	.loc	4 69 25 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:25
	movl	$1, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rsi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%rbx,%rsi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %rdi
.Ltmp110:
	movq	%rdi, 24(%rbx)
.Ltmp111:
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:0
	movl	736(%rbx), %edi
	movq	88(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rdi,2), %rdi
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	.loc	0 205 11 is_stmt 1              # liblzma/lzma/lzma_encoder.c:205:11
	cmpq	$1, %rdx
.Ltmp112:
	.loc	0 205 7 is_stmt 0               # liblzma/lzma/lzma_encoder.c:205:7
	jne	.LBB0_35
.Ltmp113:
# %bb.25:                               # %if.then17.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rep_match:pcoder <- $rbx
	#DEBUG_VALUE: rep_match:len <- $r12d
	#DEBUG_VALUE: rep_match:coder <- $rbx
	#DEBUG_VALUE: distance <- $ecx
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- 0
	.loc	4 69 25 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:25
	movl	$0, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rdx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%rbx,%rdx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	incq	24(%rbx)
.Ltmp114:
	.loc	0 207 3                         # liblzma/lzma/lzma_encoder.c:207:3
	jmp	.LBB0_38
.Ltmp115:
	.p2align	4, 0x90
.LBB0_26:                               # %if.then.i85
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rc_bit:prob <- $rcx
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- 0
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	$0, 40(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rax
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rcx, 272(%rbx,%rax,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %rdx
	movq	%rdx, 24(%rbx)
.Ltmp116:
	#DEBUG_VALUE: literal:pcoder <- $rbx
	#DEBUG_VALUE: literal:mf <- $r13
	#DEBUG_VALUE: literal:position <- $r14d
	#DEBUG_VALUE: literal:coder <- $rbx
	.loc	0 51 8                          # liblzma/lzma/lzma_encoder.c:51:8
	movl	24(%r13), %edi
	.loc	0 51 17 is_stmt 0               # liblzma/lzma/lzma_encoder.c:51:17
	subl	28(%r13), %edi
.Ltmp117:
	#DEBUG_VALUE: literal:cur_byte <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 8 7] undef
	.loc	0 50 31 is_stmt 1               # liblzma/lzma/lzma_encoder.c:50:31
	movq	(%r13), %r8
	movl	2968(%rbx), %r9d
	.loc	0 52 26                         # liblzma/lzma/lzma_encoder.c:52:26
	andl	%r14d, %r9d
	movzbl	2964(%rbx), %ecx
.Ltmp118:
	shll	%cl, %r9d
	leal	-1(%rdi), %eax
	movzbl	(%r8,%rax), %r10d
	movb	$8, %al
	subb	%cl, %al
	movl	%eax, %ecx
	shrl	%cl, %r10d
	.loc	0 50 27                         # liblzma/lzma/lzma_encoder.c:50:27
	movzbl	(%r8,%rdi), %eax
.Ltmp119:
	#DEBUG_VALUE: literal:cur_byte <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 8 7] $eax
	.loc	0 52 26                         # liblzma/lzma/lzma_encoder.c:52:26
	addl	%r9d, %r10d
	leaq	(%r10,%r10,2), %rcx
	shlq	$9, %rcx
	addq	96(%rsp), %rcx                  # 8-byte Folded Reload
.Ltmp120:
	#DEBUG_VALUE: literal:subcoder <- $rcx
	.loc	0 56 6                          # liblzma/lzma/lzma_encoder.c:56:6
	cmpl	$6, 736(%rbx)
.Ltmp121:
	.loc	0 56 6 is_stmt 0                # liblzma/lzma/lzma_encoder.c:56:6
	ja	.LBB0_29
.Ltmp122:
# %bb.27:                               # %if.then.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: literal:pcoder <- $rbx
	#DEBUG_VALUE: literal:mf <- $r13
	#DEBUG_VALUE: literal:position <- $r14d
	#DEBUG_VALUE: literal:coder <- $rbx
	#DEBUG_VALUE: literal:cur_byte <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 8 7] $eax
	#DEBUG_VALUE: literal:subcoder <- $rcx
	#DEBUG_VALUE: rc_bittree:rc <- $rbx
	#DEBUG_VALUE: rc_bittree:probs <- $rcx
	#DEBUG_VALUE: rc_bittree:symbol <- $eax
	#DEBUG_VALUE: rc_bittree:model_index <- 1
	#DEBUG_VALUE: rc_bittree:bit_count <- 7
	.loc	4 82 32 is_stmt 1               # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %edx
	shrl	$7, %edx
.Ltmp123:
	#DEBUG_VALUE: bit <- $edx
	#DEBUG_VALUE: rc_bit:bit <- $edx
	.loc	4 83 15                         # liblzma/rangecoder/range_encoder.h:83:15
	leaq	2(%rcx), %rdi
.Ltmp124:
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edx, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rsi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%rbx,%rsi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %rdi
.Ltmp125:
	movq	%rdi, 24(%rbx)
.Ltmp126:
	#DEBUG_VALUE: rc_bittree:bit_count <- 6
	#DEBUG_VALUE: rc_bittree:model_index <- undef
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %edi
	shrl	$6, %edi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %edi
.Ltmp127:
	#DEBUG_VALUE: bit <- $edi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leal	4(,%rdx,2), %r8d
	addq	%rcx, %r8
.Ltmp128:
	#DEBUG_VALUE: rc_bit:prob <- $r8
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rsi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r8, 272(%rbx,%rsi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
.Ltmp129:
	movq	%r8, 24(%rbx)
.Ltmp130:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rdi,%rdx,2), %edx
	addl	$4, %edx
.Ltmp131:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 5
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %edi
.Ltmp132:
	shrl	$5, %edi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %edi
.Ltmp133:
	#DEBUG_VALUE: bit <- $edi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leal	(%rdx,%rdx), %r8d
	addq	%rcx, %r8
.Ltmp134:
	#DEBUG_VALUE: rc_bit:prob <- $r8
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rsi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r8, 272(%rbx,%rsi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
.Ltmp135:
	movq	%r8, 24(%rbx)
.Ltmp136:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rdi,%rdx,2), %edx
.Ltmp137:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 4
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %edi
.Ltmp138:
	shrl	$4, %edi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %edi
.Ltmp139:
	#DEBUG_VALUE: bit <- $edi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rcx,%rdx,2), %r8
.Ltmp140:
	#DEBUG_VALUE: rc_bit:prob <- $r8
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rsi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r8, 272(%rbx,%rsi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
.Ltmp141:
	movq	%r8, 24(%rbx)
.Ltmp142:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rdi,%rdx,2), %edx
.Ltmp143:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 3
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %edi
.Ltmp144:
	shrl	$3, %edi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %edi
.Ltmp145:
	#DEBUG_VALUE: bit <- $edi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rcx,%rdx,2), %r8
.Ltmp146:
	#DEBUG_VALUE: rc_bit:prob <- $r8
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rsi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r8, 272(%rbx,%rsi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
.Ltmp147:
	movq	%r8, 24(%rbx)
.Ltmp148:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rdi,%rdx,2), %edx
.Ltmp149:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 2
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %edi
.Ltmp150:
	shrl	$2, %edi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %edi
.Ltmp151:
	#DEBUG_VALUE: bit <- $edi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rcx,%rdx,2), %r8
.Ltmp152:
	#DEBUG_VALUE: rc_bit:prob <- $r8
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rsi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r8, 272(%rbx,%rsi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
.Ltmp153:
	movq	%r8, 24(%rbx)
.Ltmp154:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rdi,%rdx,2), %edx
.Ltmp155:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 1
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %edi
.Ltmp156:
	shrl	%edi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %edi
.Ltmp157:
	#DEBUG_VALUE: bit <- $edi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rcx,%rdx,2), %r8
.Ltmp158:
	#DEBUG_VALUE: rc_bit:prob <- $r8
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rsi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r8, 272(%rbx,%rsi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
.Ltmp159:
	movq	%r8, 24(%rbx)
.Ltmp160:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rdi,%rdx,2), %edx
.Ltmp161:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 0
	.loc	4 82 48                         # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %eax
.Ltmp162:
	#DEBUG_VALUE: bit <- $eax
	.loc	4 83 15                         # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rcx,%rdx,2), %rcx
.Ltmp163:
	#DEBUG_VALUE: rc_bit:prob <- $rcx
	#DEBUG_VALUE: rc_bit:bit <- $eax
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%eax, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rax
.Ltmp164:
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rcx, 272(%rbx,%rax,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	incq	24(%rbx)
.Ltmp165:
	#DEBUG_VALUE: rc_bittree:model_index <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value] undef, undef
	.loc	0 70 2                          # liblzma/lzma/lzma_encoder.c:70:2
	jmp	.LBB0_31
.Ltmp166:
	.p2align	4, 0x90
.LBB0_28:                               # %if.else16.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rc_bit:prob <- $rsi
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- 0
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	$0, 44(%rbx,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rsi, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	incq	24(%rbx)
.Ltmp167:
	.loc	0 262 33                        # liblzma/lzma/lzma_encoder.c:262:33
	addl	$-4, %edx
	.loc	0 262 4 is_stmt 0               # liblzma/lzma/lzma_encoder.c:262:4
	movq	%rbx, %rdi
	movl	%eax, %esi
.Ltmp168:
                                        # kill: def $edx killed $edx killed $rdx
	movl	%r12d, %ecx
	callq	match
.Ltmp169:
	.loc	0 0 4                           # liblzma/lzma/lzma_encoder.c:0:4
	jmp	.LBB0_41
.Ltmp170:
.LBB0_29:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: literal:pcoder <- $rbx
	#DEBUG_VALUE: literal:mf <- $r13
	#DEBUG_VALUE: literal:position <- $r14d
	#DEBUG_VALUE: literal:coder <- $rbx
	#DEBUG_VALUE: literal:cur_byte <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 8 7] $eax
	#DEBUG_VALUE: literal:subcoder <- $rcx
	.loc	0 65 20 is_stmt 1               # liblzma/lzma/lzma_encoder.c:65:20
	movl	740(%rbx), %esi
	.loc	0 65 35 is_stmt 0               # liblzma/lzma/lzma_encoder.c:65:35
	notl	%esi
	.loc	0 66 5 is_stmt 1                # liblzma/lzma/lzma_encoder.c:66:5
	addl	%esi, %edi
	.loc	0 64 30                         # liblzma/lzma/lzma_encoder.c:64:30
	movzbl	(%r8,%rdi), %esi
.Ltmp171:
	#DEBUG_VALUE: match_byte <- undef
	#DEBUG_VALUE: literal_matched:rc <- $rbx
	#DEBUG_VALUE: literal_matched:subcoder <- $rcx
	#DEBUG_VALUE: literal_matched:offset <- 256
	#DEBUG_VALUE: literal_matched:match_byte <- $esi
	#DEBUG_VALUE: literal_matched:symbol <- $eax
	.loc	0 28 9                          # liblzma/lzma/lzma_encoder.c:28:9
	orl	$256, %eax                      # imm = 0x100
.Ltmp172:
	#DEBUG_VALUE: literal_matched:symbol <- $eax
	.loc	0 0 9 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:9
	movl	$256, %edi                      # imm = 0x100
.Ltmp173:
	.p2align	4, 0x90
.LBB0_30:                               # %do.body.i68.i.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: literal:pcoder <- $rbx
	#DEBUG_VALUE: literal:mf <- $r13
	#DEBUG_VALUE: literal:position <- $r14d
	#DEBUG_VALUE: literal:coder <- $rbx
	#DEBUG_VALUE: literal:subcoder <- $rcx
	#DEBUG_VALUE: literal_matched:rc <- $rbx
	#DEBUG_VALUE: literal_matched:subcoder <- $rcx
	#DEBUG_VALUE: literal_matched:match_byte <- $esi
	#DEBUG_VALUE: literal_matched:symbol <- $eax
	#DEBUG_VALUE: literal_matched:match_byte <- $esi
	#DEBUG_VALUE: literal_matched:symbol <- $eax
	#DEBUG_VALUE: literal_matched:offset <- $edi
	.loc	0 31 14 is_stmt 1               # liblzma/lzma/lzma_encoder.c:31:14
	addl	%esi, %esi
.Ltmp174:
	#DEBUG_VALUE: literal_matched:match_byte <- $esi
	.loc	0 32 41                         # liblzma/lzma/lzma_encoder.c:32:41
	movl	%esi, %r8d
	andl	%edi, %r8d
.Ltmp175:
	#DEBUG_VALUE: match_bit <- $r8d
	.loc	0 34 36                         # liblzma/lzma/lzma_encoder.c:34:36
	movl	%eax, %r9d
	shrl	$8, %r9d
	.loc	0 34 14 is_stmt 0               # liblzma/lzma/lzma_encoder.c:34:14
	addl	%edi, %r9d
	.loc	0 34 26                         # liblzma/lzma/lzma_encoder.c:34:26
	addl	%r8d, %r9d
.Ltmp176:
	#DEBUG_VALUE: subcoder_index <- $r9d
	.loc	0 35 32 is_stmt 1               # liblzma/lzma/lzma_encoder.c:35:32
	movl	%eax, %r8d
.Ltmp177:
	shrl	$7, %r8d
	.loc	0 35 38 is_stmt 0               # liblzma/lzma/lzma_encoder.c:35:38
	andl	$1, %r8d
.Ltmp178:
	#DEBUG_VALUE: bit <- $r8d
	.loc	0 36 15 is_stmt 1               # liblzma/lzma/lzma_encoder.c:36:15
	leaq	(%rcx,%r9,2), %r9
.Ltmp179:
	#DEBUG_VALUE: rc_bit:prob <- $r9
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- $r8d
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%r8d, 40(%rbx,%rdx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rdx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r9, 272(%rbx,%rdx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
.Ltmp180:
	.loc	0 38 10                         # liblzma/lzma/lzma_encoder.c:38:10
	leal	(%rax,%rax), %r8d
.Ltmp181:
	#DEBUG_VALUE: literal_matched:symbol <- $r8d
	.loc	0 39 13                         # liblzma/lzma/lzma_encoder.c:39:13
	movl	%r8d, %r9d
.Ltmp182:
	xorl	%esi, %r9d
	notl	%r9d
	.loc	0 39 10 is_stmt 0               # liblzma/lzma/lzma_encoder.c:39:10
	andl	%r9d, %edi
.Ltmp183:
	#DEBUG_VALUE: literal_matched:offset <- $edi
	.loc	0 41 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:41:18
	cmpl	$32768, %eax                    # imm = 0x8000
	movl	%r8d, %eax
.Ltmp184:
	.loc	0 41 2 is_stmt 0                # liblzma/lzma/lzma_encoder.c:41:2
	jb	.LBB0_30
.Ltmp185:
.LBB0_31:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: literal:pcoder <- $rbx
	#DEBUG_VALUE: literal:mf <- $r13
	#DEBUG_VALUE: literal:position <- $r14d
	#DEBUG_VALUE: literal:coder <- $rbx
	.loc	0 70 2 is_stmt 1                # liblzma/lzma/lzma_encoder.c:70:2
	movl	736(%rbx), %eax
	xorl	%ecx, %ecx
	cmpl	$4, %eax
	movq	16(%rsp), %rsi                  # 8-byte Reload
	jb	.LBB0_10
.Ltmp186:
# %bb.32:                               # %cond.false.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: literal:pcoder <- $rbx
	#DEBUG_VALUE: literal:mf <- $r13
	#DEBUG_VALUE: literal:position <- $r14d
	#DEBUG_VALUE: literal:coder <- $rbx
	cmpl	$9, %eax
	ja	.LBB0_8
.Ltmp187:
# %bb.33:                               # %cond.true32.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: literal:pcoder <- $rbx
	#DEBUG_VALUE: literal:mf <- $r13
	#DEBUG_VALUE: literal:position <- $r14d
	#DEBUG_VALUE: literal:coder <- $rbx
	addl	$-3, %eax
	jmp	.LBB0_9
.Ltmp188:
.LBB0_34:                               # %if.then.i67.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rep_match:pcoder <- $rbx
	#DEBUG_VALUE: rep_match:len <- $r12d
	#DEBUG_VALUE: rep_match:coder <- $rbx
	.loc	0 197 45                        # liblzma/lzma/lzma_encoder.c:197:45
	movl	736(%rbx), %ecx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	.loc	0 197 23 is_stmt 0              # liblzma/lzma/lzma_encoder.c:197:23
	leaq	(%rdx,%rcx,2), %rcx
.Ltmp189:
	#DEBUG_VALUE: rc_bit:prob <- $rcx
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- 0
	.loc	4 69 25 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:25
	movl	$0, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rdx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rcx, 272(%rbx,%rdx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rcx
.Ltmp190:
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%rbx)
.Ltmp191:
	.loc	0 199 33                        # liblzma/lzma/lzma_encoder.c:199:33
	movl	736(%rbx), %edx
	.loc	0 199 6 is_stmt 0               # liblzma/lzma/lzma_encoder.c:199:6
	shlq	$5, %rdx
	addq	72(%rsp), %rdx                  # 8-byte Folded Reload
	leaq	(%rdx,%rax,2), %rdx
.Ltmp192:
	#DEBUG_VALUE: rc_bit:prob <- $rdx
	.loc	0 200 9 is_stmt 1               # liblzma/lzma/lzma_encoder.c:200:9
	xorl	%esi, %esi
	cmpl	$1, %r12d
	setne	%sil
.Ltmp193:
	#DEBUG_VALUE: rc_bit:bit <- undef
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%esi, 44(%rbx,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdx, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	incq	24(%rbx)
	movl	$9, %ecx
.Ltmp194:
	.loc	0 222 10                        # liblzma/lzma/lzma_encoder.c:222:10
	cmpl	$1, %r12d
.Ltmp195:
	.loc	0 222 6 is_stmt 0               # liblzma/lzma/lzma_encoder.c:222:6
	jne	.LBB0_39
	jmp	.LBB0_40
.Ltmp196:
.LBB0_35:                               # %if.else22.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rep_match:pcoder <- $rbx
	#DEBUG_VALUE: rep_match:len <- $r12d
	#DEBUG_VALUE: rep_match:coder <- $rbx
	#DEBUG_VALUE: distance <- $ecx
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- 1
	.loc	4 69 25 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:25
	movl	$1, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rsi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%rbx,%rsi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %rdi
.Ltmp197:
	movq	%rdi, 24(%rbx)
.Ltmp198:
	.loc	0 209 46                        # liblzma/lzma/lzma_encoder.c:209:46
	movl	736(%rbx), %edi
	movq	64(%rsp), %r8                   # 8-byte Reload
	.loc	0 209 24 is_stmt 0              # liblzma/lzma/lzma_encoder.c:209:24
	leaq	(%r8,%rdi,2), %rdi
	.loc	0 210 10 is_stmt 1              # liblzma/lzma/lzma_encoder.c:210:10
	leal	-2(%rdx), %r8d
.Ltmp199:
	#DEBUG_VALUE: rc_bit:bit <- $r8d
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%r8d, 44(%rbx,%rsi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rsi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%rbx,%rsi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	incq	24(%rbx)
.Ltmp200:
	.loc	0 212 12                        # liblzma/lzma/lzma_encoder.c:212:12
	cmpq	$3, %rdx
.Ltmp201:
	.loc	0 212 8 is_stmt 0               # liblzma/lzma/lzma_encoder.c:212:8
	jne	.LBB0_37
.Ltmp202:
# %bb.36:                               # %if.then34.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rep_match:pcoder <- $rbx
	#DEBUG_VALUE: rep_match:len <- $r12d
	#DEBUG_VALUE: rep_match:coder <- $rbx
	#DEBUG_VALUE: distance <- $ecx
	.loc	0 213 22 is_stmt 1              # liblzma/lzma/lzma_encoder.c:213:22
	movl	748(%rbx), %edx
	.loc	0 213 20 is_stmt 0              # liblzma/lzma/lzma_encoder.c:213:20
	movl	%edx, 752(%rbx)
.Ltmp203:
.LBB0_37:                               # %if.end.i66.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rep_match:pcoder <- $rbx
	#DEBUG_VALUE: rep_match:len <- $r12d
	#DEBUG_VALUE: rep_match:coder <- $rbx
	#DEBUG_VALUE: distance <- $ecx
	.loc	0 215 21 is_stmt 1              # liblzma/lzma/lzma_encoder.c:215:21
	movl	744(%rbx), %edx
	.loc	0 215 19 is_stmt 0              # liblzma/lzma/lzma_encoder.c:215:19
	movl	%edx, 748(%rbx)
.Ltmp204:
.LBB0_38:                               # %if.end43.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rep_match:pcoder <- $rbx
	#DEBUG_VALUE: rep_match:len <- $r12d
	#DEBUG_VALUE: rep_match:coder <- $rbx
	#DEBUG_VALUE: distance <- $ecx
	.loc	0 218 20 is_stmt 1              # liblzma/lzma/lzma_encoder.c:218:20
	movl	740(%rbx), %edx
	.loc	0 218 18 is_stmt 0              # liblzma/lzma/lzma_encoder.c:218:18
	movl	%edx, 744(%rbx)
	.loc	0 219 18 is_stmt 1              # liblzma/lzma/lzma_encoder.c:219:18
	movl	%ecx, 740(%rbx)
	movl	$9, %ecx
.Ltmp205:
	.loc	0 222 10                        # liblzma/lzma/lzma_encoder.c:222:10
	cmpl	$1, %r12d
.Ltmp206:
	.loc	0 222 6 is_stmt 0               # liblzma/lzma/lzma_encoder.c:222:6
	je	.LBB0_40
.Ltmp207:
.LBB0_39:                               # %if.else58.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rep_match:pcoder <- $rbx
	#DEBUG_VALUE: rep_match:len <- $r12d
	#DEBUG_VALUE: rep_match:coder <- $rbx
	.loc	0 226 12 is_stmt 1              # liblzma/lzma/lzma_encoder.c:226:12
	movzbl	2956(%rbx), %r8d
	.loc	0 225 3                         # liblzma/lzma/lzma_encoder.c:225:3
	movq	%rbx, %rdi
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movl	%eax, %edx
	movl	%r12d, %ecx
	callq	length
.Ltmp208:
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	movl	$8, %ecx
.Ltmp209:
.LBB0_40:                               # %rep_match.exit.i
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rep_match:pcoder <- $rbx
	#DEBUG_VALUE: rep_match:len <- $r12d
	#DEBUG_VALUE: rep_match:coder <- $rbx
	cmpl	$7, 736(%rbx)
	movl	$11, %eax
	cmovael	%eax, %ecx
	movl	%ecx, 736(%rbx)
.Ltmp210:
.LBB0_41:                               # %encode_symbol.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_symbol:pcoder <- $rbx
	#DEBUG_VALUE: encode_symbol:mf <- $r13
	#DEBUG_VALUE: encode_symbol:position <- $r14d
	#DEBUG_VALUE: encode_symbol:coder <- $rbx
	#DEBUG_VALUE: encode_symbol:len <- $r12d
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	movl	%r12d, %eax
	movq	16(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB0_11
.Ltmp211:
.LBB0_42:                               # %while.end
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 383 6 is_stmt 1               # liblzma/lzma/lzma_encoder.c:383:6
	cmpb	$0, 2958(%rbx)
	jne	.LBB0_46
.Ltmp212:
# %bb.43:                               # %if.then28
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	.loc	0 384 21                        # liblzma/lzma/lzma_encoder.c:384:21
	movb	$1, 2958(%rbx)
	cmpl	$-1, %ebp
	.loc	0 388 7                         # liblzma/lzma/lzma_encoder.c:388:7
	jne	.LBB0_45
.Ltmp213:
# %bb.44:                               # %if.then31
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:position <- $r14d
	#DEBUG_VALUE: encode_eopm:pcoder <- $rbx
	#DEBUG_VALUE: encode_eopm:position <- $r14d
	#DEBUG_VALUE: encode_eopm:coder <- $rbx
	.loc	0 304 38                        # liblzma/lzma/lzma_encoder.c:304:38
	andl	2960(%rbx), %r14d
.Ltmp214:
	#DEBUG_VALUE: encode_eopm:pos_state <- $r14d
	.loc	0 305 45                        # liblzma/lzma/lzma_encoder.c:305:45
	movl	736(%rbx), %eax
	.loc	0 305 22 is_stmt 0              # liblzma/lzma/lzma_encoder.c:305:22
	shlq	$5, %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addq	%rax, %rcx
	leaq	(%rcx,%r14,2), %rax
.Ltmp215:
	#DEBUG_VALUE: rc_bit:prob <- $rax
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- 1
	.loc	4 69 18 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:18
	movq	24(%rbx), %rcx
	.loc	4 69 25 is_stmt 0               # liblzma/rangecoder/range_encoder.h:69:25
	movl	$1, 40(%rbx,%rcx,4)
	.loc	4 70 16 is_stmt 1               # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rax, 272(%rbx,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rbx), %rax
.Ltmp216:
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
.Ltmp217:
	.loc	0 306 43                        # liblzma/lzma/lzma_encoder.c:306:43
	movl	736(%rbx), %ecx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	.loc	0 306 22 is_stmt 0              # liblzma/lzma/lzma_encoder.c:306:22
	leaq	(%rdx,%rcx,2), %rcx
.Ltmp218:
	#DEBUG_VALUE: rc_bit:prob <- $rcx
	#DEBUG_VALUE: rc_bit:rc <- $rbx
	#DEBUG_VALUE: rc_bit:bit <- 0
	.loc	4 69 25 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:25
	movl	$0, 44(%rbx,%rax,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rbx), %rax
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rcx, 272(%rbx,%rax,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	incq	24(%rbx)
.Ltmp219:
	.loc	0 307 2                         # liblzma/lzma/lzma_encoder.c:307:2
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$-1, %edx
	movl	$2, %ecx
.Ltmp220:
	callq	match
.Ltmp221:
.LBB0_45:                               # %if.end32
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	#DEBUG_VALUE: rc_flush:rc <- $rbx
	#DEBUG_VALUE: i <- 0
	.loc	4 119 24                        # liblzma/rangecoder/range_encoder.h:119:24
	movq	24(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
	.loc	4 119 28 is_stmt 0              # liblzma/rangecoder/range_encoder.h:119:28
	movl	$4, 40(%rbx,%rax,4)
.Ltmp222:
	#DEBUG_VALUE: i <- 1
	.loc	4 119 24                        # liblzma/rangecoder/range_encoder.h:119:24
	movq	24(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
	.loc	4 119 28                        # liblzma/rangecoder/range_encoder.h:119:28
	movl	$4, 40(%rbx,%rax,4)
.Ltmp223:
	#DEBUG_VALUE: i <- 2
	.loc	4 119 24                        # liblzma/rangecoder/range_encoder.h:119:24
	movq	24(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
	.loc	4 119 28                        # liblzma/rangecoder/range_encoder.h:119:28
	movl	$4, 40(%rbx,%rax,4)
.Ltmp224:
	#DEBUG_VALUE: i <- 3
	.loc	4 119 24                        # liblzma/rangecoder/range_encoder.h:119:24
	movq	24(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
	.loc	4 119 28                        # liblzma/rangecoder/range_encoder.h:119:28
	movl	$4, 40(%rbx,%rax,4)
.Ltmp225:
	#DEBUG_VALUE: i <- 4
	.loc	4 119 24                        # liblzma/rangecoder/range_encoder.h:119:24
	movq	24(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
	.loc	4 119 28                        # liblzma/rangecoder/range_encoder.h:119:28
	movl	$4, 40(%rbx,%rax,4)
.Ltmp226:
	#DEBUG_VALUE: i <- 5
	.loc	0 398 7 is_stmt 1               # liblzma/lzma/lzma_encoder.c:398:7
	movq	%rbx, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	rc_encode
.Ltmp227:
	.loc	0 398 7 is_stmt 0               # liblzma/lzma/lzma_encoder.c:398:7
	testb	%al, %al
	movl	$0, %ecx
	jne	.LBB0_49
.Ltmp228:
.LBB0_46:                               # %if.end38
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_plus_uconst 56] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	.loc	0 405 20 is_stmt 1              # liblzma/lzma/lzma_encoder.c:405:20
	movb	$0, 2958(%rbx)
	movl	$1, %ecx
.Ltmp229:
.LBB0_49:                               # %cleanup40
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- $rbx
	#DEBUG_VALUE: lzma_lzma_encode:mf <- $r13
	#DEBUG_VALUE: lzma_lzma_encode:out <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- $r15
	#DEBUG_VALUE: lzma_lzma_encode:out_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_lzma_encode:limit <- $ebp
	#DEBUG_VALUE: lzma_lzma_encode:coder <- $rbx
	.loc	0 408 1                         # liblzma/lzma/lzma_encoder.c:408:1
	movl	%ecx, %eax
	.loc	0 408 1 epilogue_begin is_stmt 0 # liblzma/lzma/lzma_encoder.c:408:1
	addq	$104, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp230:
	#DEBUG_VALUE: lzma_lzma_encode:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp231:
	#DEBUG_VALUE: lzma_lzma_encode:mf <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp232:
	#DEBUG_VALUE: lzma_lzma_encode:out_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp233:
	#DEBUG_VALUE: lzma_lzma_encode:limit <- [DW_OP_LLVM_entry_value 1] $r9d
	.cfi_def_cfa_offset 8
	retq
.Ltmp234:
.Lfunc_end0:
	.size	lzma_lzma_encode, .Lfunc_end0-lzma_lzma_encode
	.cfi_endproc
	.file	11 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	12 "liblzma/lzma" "lzma_encoder_private.h" md5 0x0c1b7b41ddfbed104b8c32f19cfcc2b2
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function rc_encode
	.type	rc_encode,@function
rc_encode:                              # @rc_encode
.Lfunc_begin1:
	.loc	4 152 0 is_stmt 1               # liblzma/rangecoder/range_encoder.h:152:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	24(%rdi), %rax
.Ltmp235:
	.loc	4 155 13 prologue_end           # liblzma/rangecoder/range_encoder.h:155:13
	movq	32(%rdi), %r9
	.loc	4 155 17 is_stmt 0              # liblzma/rangecoder/range_encoder.h:155:17
	cmpq	24(%rdi), %r9
	.loc	4 155 2                         # liblzma/rangecoder/range_encoder.h:155:2
	jae	.LBB1_25
.Ltmp236:
# %bb.1:                                # %while.body.lr.ph
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	.loc	4 0 2                           # liblzma/rangecoder/range_encoder.h:0:2
	movl	$4278190080, %r8d               # imm = 0xFF000000
	jmp	.LBB1_4
.Ltmp237:
.LBB1_2:                                # %sw.bb38
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	.loc	4 187 14 is_stmt 1              # liblzma/rangecoder/range_encoder.h:187:14
	shrl	%r10d
	movl	%r10d, 16(%rdi)
.Ltmp238:
	.p2align	4, 0x90
.LBB1_3:                                # %sw.epilog
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	.loc	4 215 3                         # liblzma/rangecoder/range_encoder.h:215:3
	movq	32(%rdi), %r9
	incq	%r9
	movq	%r9, 32(%rdi)
.Ltmp239:
	.loc	4 155 17                        # liblzma/rangecoder/range_encoder.h:155:17
	cmpq	24(%rdi), %r9
	.loc	4 155 2 is_stmt 0               # liblzma/rangecoder/range_encoder.h:155:2
	jae	.LBB1_25
.Ltmp240:
.LBB1_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	.loc	4 157 11 is_stmt 1              # liblzma/rangecoder/range_encoder.h:157:11
	movl	16(%rdi), %r10d
	.loc	4 157 17 is_stmt 0              # liblzma/rangecoder/range_encoder.h:157:17
	cmpl	$16777215, %r10d                # imm = 0xFFFFFF
.Ltmp241:
	.loc	4 157 7                         # liblzma/rangecoder/range_encoder.h:157:7
	ja	.LBB1_11
.Ltmp242:
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 127 21 is_stmt 1              # liblzma/rangecoder/range_encoder.h:127:21
	movq	(%rdi), %r11
	.loc	4 128 4                         # liblzma/rangecoder/range_encoder.h:128:4
	movq	%r11, %rbx
	andq	$-16777216, %rbx                # imm = 0xFF000000
	cmpq	%r8, %rbx
	jne	.LBB1_7
.Ltmp243:
# %bb.6:                                # %entry.if.end22_crit_edge.i
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 142 2                         # liblzma/rangecoder/range_encoder.h:142:2
	movq	8(%rdi), %rbx
	incq	%rbx
.Ltmp244:
	.loc	4 128 4                         # liblzma/rangecoder/range_encoder.h:128:4
	jmp	.LBB1_10
.Ltmp245:
	.p2align	4, 0x90
.LBB1_7:                                # %do.body.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 130 8                         # liblzma/rangecoder/range_encoder.h:130:8
	movq	(%rdx), %r9
	.loc	4 130 17 is_stmt 0              # liblzma/rangecoder/range_encoder.h:130:17
	cmpq	%rcx, %r9
.Ltmp246:
	.loc	4 130 8                         # liblzma/rangecoder/range_encoder.h:130:8
	je	.LBB1_16
.Ltmp247:
# %bb.8:                                # %if.end.i
                                        #   in Loop: Header=BB1_7 Depth=2
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 133 24 is_stmt 1              # liblzma/rangecoder/range_encoder.h:133:24
	movzbl	20(%rdi), %r10d
	.loc	4 133 30 is_stmt 0              # liblzma/rangecoder/range_encoder.h:133:30
	addb	4(%rdi), %r10b
	.loc	4 133 18                        # liblzma/rangecoder/range_encoder.h:133:18
	movb	%r10b, (%rsi,%r9)
	.loc	4 134 4 is_stmt 1               # liblzma/rangecoder/range_encoder.h:134:4
	incq	(%rdx)
	.loc	4 135 14                        # liblzma/rangecoder/range_encoder.h:135:14
	movb	$-1, 20(%rdi)
.Ltmp248:
	.loc	4 137 12                        # liblzma/rangecoder/range_encoder.h:137:12
	decq	8(%rdi)
.Ltmp249:
	.loc	4 137 3 is_stmt 0               # liblzma/rangecoder/range_encoder.h:137:3
	jne	.LBB1_7
.Ltmp250:
# %bb.9:                                # %do.end.i
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 139 20 is_stmt 1              # liblzma/rangecoder/range_encoder.h:139:20
	movq	(%rdi), %r11
	.loc	4 139 24 is_stmt 0              # liblzma/rangecoder/range_encoder.h:139:24
	movl	%r11d, %r9d
	shrl	$24, %r9d
	.loc	4 139 13                        # liblzma/rangecoder/range_encoder.h:139:13
	movb	%r9b, 20(%rdi)
.Ltmp251:
	.loc	4 161 14 is_stmt 1              # liblzma/rangecoder/range_encoder.h:161:14
	movl	16(%rdi), %r10d
.Ltmp252:
	.loc	4 165 27                        # liblzma/rangecoder/range_encoder.h:165:27
	movq	32(%rdi), %r9
	movl	$1, %ebx
.Ltmp253:
.LBB1_10:                               # %if.end
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 142 2                         # liblzma/rangecoder/range_encoder.h:142:2
	movq	%rbx, 8(%rdi)
	.loc	4 143 35                        # liblzma/rangecoder/range_encoder.h:143:35
	shll	$8, %r11d
	.loc	4 143 10 is_stmt 0              # liblzma/rangecoder/range_encoder.h:143:10
	movq	%r11, (%rdi)
.Ltmp254:
	.loc	4 161 14 is_stmt 1              # liblzma/rangecoder/range_encoder.h:161:14
	shll	$8, %r10d
	movl	%r10d, 16(%rdi)
.Ltmp255:
.LBB1_11:                               # %if.end4
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	.loc	4 165 11                        # liblzma/rangecoder/range_encoder.h:165:11
	movl	40(%rdi,%r9,4), %r11d
	cmpq	$4, %r11
	.loc	4 165 3 is_stmt 0               # liblzma/rangecoder/range_encoder.h:165:3
	ja	.LBB1_3
.Ltmp256:
# %bb.12:                               # %if.end4
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	jmpq	*.LJTI1_0(,%r11,8)
.Ltmp257:
.LBB1_13:                               # %sw.bb
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	.loc	4 167 24 is_stmt 1              # liblzma/rangecoder/range_encoder.h:167:24
	movq	272(%rdi,%r9,8), %r11
	.loc	4 167 23 is_stmt 0              # liblzma/rangecoder/range_encoder.h:167:23
	movzwl	(%r11), %r11d
.Ltmp258:
	#DEBUG_VALUE: prob <- $r11d
	.loc	4 168 27 is_stmt 1              # liblzma/rangecoder/range_encoder.h:168:27
	shrl	$11, %r10d
	.loc	4 169 6                         # liblzma/rangecoder/range_encoder.h:169:6
	imull	%r11d, %r10d
	.loc	4 168 14                        # liblzma/rangecoder/range_encoder.h:168:14
	movl	%r10d, 16(%rdi)
	.loc	4 170 32                        # liblzma/rangecoder/range_encoder.h:170:32
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r11d, %r10d
	.loc	4 170 40 is_stmt 0              # liblzma/rangecoder/range_encoder.h:170:40
	shrl	$5, %r10d
	.loc	4 170 9                         # liblzma/rangecoder/range_encoder.h:170:9
	addl	%r11d, %r10d
.Ltmp259:
	#DEBUG_VALUE: prob <- $r10w
	.loc	4 171 5 is_stmt 1               # liblzma/rangecoder/range_encoder.h:171:5
	movq	272(%rdi,%r9,8), %r9
	.loc	4 171 24 is_stmt 0              # liblzma/rangecoder/range_encoder.h:171:24
	movw	%r10w, (%r9)
	jmp	.LBB1_3
.Ltmp260:
.LBB1_14:                               # %sw.bb41
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	.loc	4 191 14 is_stmt 1              # liblzma/rangecoder/range_encoder.h:191:14
	shrl	%r10d
	movl	%r10d, 16(%rdi)
	.loc	4 192 12                        # liblzma/rangecoder/range_encoder.h:192:12
	addq	%r10, (%rdi)
	.loc	4 193 4                         # liblzma/rangecoder/range_encoder.h:193:4
	jmp	.LBB1_3
.Ltmp261:
.LBB1_15:                               # %sw.bb17
                                        #   in Loop: Header=BB1_4 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	.loc	4 176 24                        # liblzma/rangecoder/range_encoder.h:176:24
	movq	272(%rdi,%r9,8), %r11
	.loc	4 176 23 is_stmt 0              # liblzma/rangecoder/range_encoder.h:176:23
	movzwl	(%r11), %r11d
.Ltmp262:
	#DEBUG_VALUE: prob <- $r11d
	.loc	4 178 6 is_stmt 1               # liblzma/rangecoder/range_encoder.h:178:6
	movl	%r10d, %ebx
	shrl	$11, %ebx
	.loc	4 177 32                        # liblzma/rangecoder/range_encoder.h:177:32
	imull	%r11d, %ebx
.Ltmp263:
	#DEBUG_VALUE: bound <- $ebx
	.loc	4 179 12                        # liblzma/rangecoder/range_encoder.h:179:12
	addq	%rbx, (%rdi)
	.loc	4 180 14                        # liblzma/rangecoder/range_encoder.h:180:14
	subl	%ebx, %r10d
	movl	%r10d, 16(%rdi)
	.loc	4 181 17                        # liblzma/rangecoder/range_encoder.h:181:17
	movl	%r11d, %r10d
	shrl	$5, %r10d
	.loc	4 181 9 is_stmt 0               # liblzma/rangecoder/range_encoder.h:181:9
	subl	%r10d, %r11d
.Ltmp264:
	#DEBUG_VALUE: prob <- $r11w
	.loc	4 182 5 is_stmt 1               # liblzma/rangecoder/range_encoder.h:182:5
	movq	272(%rdi,%r9,8), %r9
	.loc	4 182 24 is_stmt 0              # liblzma/rangecoder/range_encoder.h:182:24
	movw	%r11w, (%r9)
	jmp	.LBB1_3
.Ltmp265:
.LBB1_17:                               # %sw.bb48
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	.loc	4 197 14 is_stmt 1              # liblzma/rangecoder/range_encoder.h:197:14
	movl	$-1, 16(%rdi)
.Ltmp266:
	.loc	4 127 21                        # liblzma/rangecoder/range_encoder.h:127:21
	movq	(%rdi), %r10
.Ltmp267:
.LBB1_18:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 128 4                         # liblzma/rangecoder/range_encoder.h:128:4
	movq	%r10, %r11
	andq	$-16777216, %r11                # imm = 0xFF000000
	cmpq	%r8, %r11
	jne	.LBB1_20
.Ltmp268:
# %bb.19:                               # %entry.if.end22_crit_edge.i125
                                        #   in Loop: Header=BB1_18 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 142 2                         # liblzma/rangecoder/range_encoder.h:142:2
	movq	8(%rdi), %r11
	incq	%r11
.Ltmp269:
	.loc	4 128 4                         # liblzma/rangecoder/range_encoder.h:128:4
	jmp	.LBB1_23
.Ltmp270:
	.p2align	4, 0x90
.LBB1_20:                               # %do.body.i106
                                        #   Parent Loop BB1_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 130 8                         # liblzma/rangecoder/range_encoder.h:130:8
	movq	(%rdx), %r9
	.loc	4 130 17 is_stmt 0              # liblzma/rangecoder/range_encoder.h:130:17
	cmpq	%rcx, %r9
.Ltmp271:
	.loc	4 130 8                         # liblzma/rangecoder/range_encoder.h:130:8
	je	.LBB1_16
.Ltmp272:
# %bb.21:                               # %if.end.i108
                                        #   in Loop: Header=BB1_20 Depth=2
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 133 24 is_stmt 1              # liblzma/rangecoder/range_encoder.h:133:24
	movzbl	20(%rdi), %r10d
	.loc	4 133 30 is_stmt 0              # liblzma/rangecoder/range_encoder.h:133:30
	addb	4(%rdi), %r10b
	.loc	4 133 18                        # liblzma/rangecoder/range_encoder.h:133:18
	movb	%r10b, (%rsi,%r9)
	.loc	4 134 4 is_stmt 1               # liblzma/rangecoder/range_encoder.h:134:4
	incq	(%rdx)
	.loc	4 135 14                        # liblzma/rangecoder/range_encoder.h:135:14
	movb	$-1, 20(%rdi)
.Ltmp273:
	.loc	4 137 12                        # liblzma/rangecoder/range_encoder.h:137:12
	decq	8(%rdi)
.Ltmp274:
	.loc	4 137 3 is_stmt 0               # liblzma/rangecoder/range_encoder.h:137:3
	jne	.LBB1_20
.Ltmp275:
# %bb.22:                               # %do.end.i116
                                        #   in Loop: Header=BB1_18 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 139 20 is_stmt 1              # liblzma/rangecoder/range_encoder.h:139:20
	movq	(%rdi), %r10
.Ltmp276:
	.loc	4 203 13                        # liblzma/rangecoder/range_encoder.h:203:13
	movq	32(%rdi), %r9
.Ltmp277:
	.loc	4 139 24                        # liblzma/rangecoder/range_encoder.h:139:24
	movl	%r10d, %r11d
	shrl	$24, %r11d
	.loc	4 139 13 is_stmt 0              # liblzma/rangecoder/range_encoder.h:139:13
	movb	%r11b, 20(%rdi)
	movl	$1, %r11d
.Ltmp278:
.LBB1_23:                               # %do.cond
                                        #   in Loop: Header=BB1_18 Depth=1
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_shift_low:rc <- $rdi
	#DEBUG_VALUE: rc_shift_low:out <- $rsi
	#DEBUG_VALUE: rc_shift_low:out_pos <- $rdx
	#DEBUG_VALUE: rc_shift_low:out_size <- $rcx
	.loc	4 142 2 is_stmt 1               # liblzma/rangecoder/range_encoder.h:142:2
	movq	%r11, 8(%rdi)
	.loc	4 143 35                        # liblzma/rangecoder/range_encoder.h:143:35
	shll	$8, %r10d
	.loc	4 143 10 is_stmt 0              # liblzma/rangecoder/range_encoder.h:143:10
	movq	%r10, (%rdi)
.Ltmp279:
	.loc	4 203 13 is_stmt 1              # liblzma/rangecoder/range_encoder.h:203:13
	incq	%r9
	movq	%r9, 32(%rdi)
	.loc	4 203 23 is_stmt 0              # liblzma/rangecoder/range_encoder.h:203:23
	cmpq	24(%rdi), %r9
.Ltmp280:
	.loc	4 203 4                         # liblzma/rangecoder/range_encoder.h:203:4
	jb	.LBB1_18
.Ltmp281:
# %bb.24:                               # %do.end
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	#DEBUG_VALUE: rc_reset:rc <- $rdi
	.loc	4 57 10 is_stmt 1               # liblzma/rangecoder/range_encoder.h:57:10
	movq	$0, (%rdi)
	.loc	4 58 17                         # liblzma/rangecoder/range_encoder.h:58:17
	movq	$1, 8(%rdi)
	.loc	4 59 12                         # liblzma/rangecoder/range_encoder.h:59:12
	movl	$-1, 16(%rdi)
	.loc	4 60 12                         # liblzma/rangecoder/range_encoder.h:60:12
	movb	$0, 20(%rdi)
.Ltmp282:
.LBB1_25:                               # %while.end
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	.loc	4 0 0 is_stmt 0                 # liblzma/rangecoder/range_encoder.h:0:0
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	.loc	4 222 1 epilogue_begin is_stmt 1 # liblzma/rangecoder/range_encoder.h:222:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp283:
.LBB1_16:
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: rc_encode:rc <- $rdi
	#DEBUG_VALUE: rc_encode:out <- $rsi
	#DEBUG_VALUE: rc_encode:out_pos <- $rdx
	#DEBUG_VALUE: rc_encode:out_size <- $rcx
	.loc	4 0 1 is_stmt 0                 # liblzma/rangecoder/range_encoder.h:0:1
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	.loc	4 222 1 epilogue_begin          # liblzma/rangecoder/range_encoder.h:222:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp284:
.Lfunc_end1:
	.size	rc_encode, .Lfunc_end1-rc_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_13
	.quad	.LBB1_15
	.quad	.LBB1_2
	.quad	.LBB1_14
	.quad	.LBB1_17
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_lzma_encoder_reset
.LCPI2_0:
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.text
	.globl	lzma_lzma_encoder_reset
	.p2align	4, 0x90
	.type	lzma_lzma_encoder_reset,@function
lzma_lzma_encoder_reset:                # @lzma_lzma_encoder_reset
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: is_options_valid:options <- $rsi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rsi
	.loc	7 35 18 prologue_end is_stmt 1  # liblzma/lzma/lzma_common.h:35:18
	movl	20(%rsi), %ecx
	movl	$8, %eax
	.loc	7 35 21 is_stmt 0               # liblzma/lzma/lzma_common.h:35:21
	cmpl	$4, %ecx
	.loc	7 35 38                         # liblzma/lzma/lzma_common.h:35:38
	ja	.LBB2_117
.Ltmp285:
# %bb.1:                                # %land.lhs.true.i.i
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: is_options_valid:options <- $rsi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rsi
	.loc	7 35 50                         # liblzma/lzma/lzma_common.h:35:50
	movl	24(%rsi), %edx
	.loc	7 35 53                         # liblzma/lzma/lzma_common.h:35:53
	cmpl	$5, %edx
	setb	%r8b
	addl	%edx, %ecx
	cmpl	$5, %ecx
	setb	%cl
	.loc	7 36 4 is_stmt 1                # liblzma/lzma/lzma_common.h:36:4
	andb	%r8b, %cl
	cmpb	$1, %cl
	jne	.LBB2_117
.Ltmp286:
# %bb.2:                                # %is_lclppb_valid.exit.i
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: is_options_valid:options <- $rsi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rsi
	.loc	7 37 16                         # liblzma/lzma/lzma_common.h:37:16
	movl	28(%rsi), %ecx
	.loc	7 37 19 is_stmt 0               # liblzma/lzma/lzma_common.h:37:19
	cmpl	$4, %ecx
.Ltmp287:
	.loc	0 435 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:435:4
	ja	.LBB2_117
.Ltmp288:
# %bb.3:                                # %land.lhs.true.i
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: is_options_valid:options <- $rsi
	.loc	0 435 16 is_stmt 0              # liblzma/lzma/lzma_encoder.c:435:16
	movl	36(%rsi), %edx
	.loc	0 436 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:436:4
	addl	$-2, %edx
	cmpl	$271, %edx                      # imm = 0x10F
	ja	.LBB2_117
.Ltmp289:
# %bb.4:                                # %is_options_valid.exit
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: is_options_valid:options <- $rsi
	.loc	0 437 17                        # liblzma/lzma/lzma_encoder.c:437:17
	movl	32(%rsi), %edx
	.loc	0 438 5                         # liblzma/lzma/lzma_encoder.c:438:5
	decl	%edx
	cmpl	$1, %edx
.Ltmp290:
	.loc	0 487 6                         # liblzma/lzma/lzma_encoder.c:487:6
	ja	.LBB2_117
.Ltmp291:
# %bb.5:                                # %if.end
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	.loc	0 490 40                        # liblzma/lzma/lzma_encoder.c:490:40
	movl	$-1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movl	$-1, %r8d
	movl	%eax, %edx
	notl	%edx
	.loc	0 490 18 is_stmt 0              # liblzma/lzma/lzma_encoder.c:490:18
	movl	%edx, 2960(%rdi)
	.loc	0 491 41 is_stmt 1              # liblzma/lzma/lzma_encoder.c:491:41
	movl	20(%rsi), %ecx
	.loc	0 491 30 is_stmt 0              # liblzma/lzma/lzma_encoder.c:491:30
	movl	%ecx, 2964(%rdi)
	.loc	0 492 44 is_stmt 1              # liblzma/lzma/lzma_encoder.c:492:44
	movzbl	24(%rsi), %ecx
	.loc	0 492 48 is_stmt 0              # liblzma/lzma/lzma_encoder.c:492:48
	shll	%cl, %r8d
	notl	%r8d
	.loc	0 492 26                        # liblzma/lzma/lzma_encoder.c:492:26
	movl	%r8d, 2968(%rdi)
.Ltmp292:
	#DEBUG_VALUE: rc_reset:rc <- $rdi
	.loc	4 57 10 is_stmt 1               # liblzma/rangecoder/range_encoder.h:57:10
	movq	$0, (%rdi)
	.loc	4 58 17                         # liblzma/rangecoder/range_encoder.h:58:17
	movq	$1, 8(%rdi)
	.loc	4 59 12                         # liblzma/rangecoder/range_encoder.h:59:12
	movl	$-1, 16(%rdi)
	.loc	4 60 12                         # liblzma/rangecoder/range_encoder.h:60:12
	movb	$0, 20(%rdi)
	.loc	4 61 12                         # liblzma/rangecoder/range_encoder.h:61:12
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rdi)
.Ltmp293:
	#DEBUG_VALUE: i <- undef
	.loc	0 502 22                        # liblzma/lzma/lzma_encoder.c:502:22
	leaq	2972(%rdi), %r8
	.loc	0 498 15                        # liblzma/lzma/lzma_encoder.c:498:15
	movups	%xmm0, 736(%rdi)
	movl	$0, 752(%rdi)
	.loc	0 502 53                        # liblzma/lzma/lzma_encoder.c:502:53
	movl	24(%rsi), %ecx
.Ltmp294:
	#DEBUG_VALUE: literal_init:lp <- $ecx
	#DEBUG_VALUE: literal_init:probs <- $r8
	#DEBUG_VALUE: literal_init:lc <- undef
	.loc	7 134 36                        # liblzma/lzma/lzma_common.h:134:36
	addl	20(%rsi), %ecx
.Ltmp295:
	#DEBUG_VALUE: literal_init:coders <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_shl, DW_OP_stack_value] 1, $ecx
	.loc	7 0 36 is_stmt 0                # liblzma/lzma/lzma_common.h:0:36
	movl	$1, %r9d
	#DEBUG_VALUE: i <- 0
	movaps	.LCPI2_0(%rip), %xmm0           # xmm0 = [1024,1024,1024,1024,1024,1024,1024,1024]
.Ltmp296:
	.p2align	4, 0x90
.LBB2_6:                                # %for.cond1.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: literal_init:probs <- $r8
	#DEBUG_VALUE: literal_init:coders <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_shl, DW_OP_stack_value] 1, $ecx
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $r9d
	#DEBUG_VALUE: j <- 0
	leal	-1(%r9), %r10d
.Ltmp297:
	.loc	7 138 4 is_stmt 1               # liblzma/lzma/lzma_common.h:138:4
	leaq	(%r10,%r10,2), %r10
	shlq	$9, %r10
	movups	%xmm0, (%r8,%r10)
	movups	%xmm0, 16(%r8,%r10)
	movups	%xmm0, 32(%r8,%r10)
	movups	%xmm0, 48(%r8,%r10)
	movups	%xmm0, 64(%r8,%r10)
	movups	%xmm0, 80(%r8,%r10)
	movups	%xmm0, 96(%r8,%r10)
	movups	%xmm0, 112(%r8,%r10)
	movups	%xmm0, 128(%r8,%r10)
	movups	%xmm0, 144(%r8,%r10)
	movups	%xmm0, 160(%r8,%r10)
	movups	%xmm0, 176(%r8,%r10)
	movups	%xmm0, 192(%r8,%r10)
	movups	%xmm0, 208(%r8,%r10)
	movups	%xmm0, 224(%r8,%r10)
	movups	%xmm0, 240(%r8,%r10)
	movups	%xmm0, 256(%r8,%r10)
	movups	%xmm0, 272(%r8,%r10)
	movups	%xmm0, 288(%r8,%r10)
	movups	%xmm0, 304(%r8,%r10)
	movups	%xmm0, 320(%r8,%r10)
	movups	%xmm0, 336(%r8,%r10)
	movups	%xmm0, 352(%r8,%r10)
	movups	%xmm0, 368(%r8,%r10)
	movups	%xmm0, 384(%r8,%r10)
	movups	%xmm0, 400(%r8,%r10)
	movups	%xmm0, 416(%r8,%r10)
	movups	%xmm0, 432(%r8,%r10)
	movups	%xmm0, 448(%r8,%r10)
	movups	%xmm0, 464(%r8,%r10)
	movups	%xmm0, 480(%r8,%r10)
	movups	%xmm0, 496(%r8,%r10)
	movups	%xmm0, 512(%r8,%r10)
	movups	%xmm0, 528(%r8,%r10)
	movups	%xmm0, 544(%r8,%r10)
	movups	%xmm0, 560(%r8,%r10)
	movups	%xmm0, 576(%r8,%r10)
	movups	%xmm0, 592(%r8,%r10)
	movups	%xmm0, 608(%r8,%r10)
	movups	%xmm0, 624(%r8,%r10)
	movups	%xmm0, 640(%r8,%r10)
	movups	%xmm0, 656(%r8,%r10)
	movups	%xmm0, 672(%r8,%r10)
	movups	%xmm0, 688(%r8,%r10)
	movups	%xmm0, 704(%r8,%r10)
	movups	%xmm0, 720(%r8,%r10)
	movups	%xmm0, 736(%r8,%r10)
	movups	%xmm0, 752(%r8,%r10)
	movups	%xmm0, 768(%r8,%r10)
	movups	%xmm0, 784(%r8,%r10)
	movups	%xmm0, 800(%r8,%r10)
	movups	%xmm0, 816(%r8,%r10)
	movups	%xmm0, 832(%r8,%r10)
	movups	%xmm0, 848(%r8,%r10)
	movups	%xmm0, 864(%r8,%r10)
	movups	%xmm0, 880(%r8,%r10)
	movups	%xmm0, 896(%r8,%r10)
	movups	%xmm0, 912(%r8,%r10)
	movups	%xmm0, 928(%r8,%r10)
	movups	%xmm0, 944(%r8,%r10)
	movups	%xmm0, 960(%r8,%r10)
	movups	%xmm0, 976(%r8,%r10)
	movups	%xmm0, 992(%r8,%r10)
	movups	%xmm0, 1008(%r8,%r10)
	movups	%xmm0, 1024(%r8,%r10)
	movups	%xmm0, 1040(%r8,%r10)
	movups	%xmm0, 1056(%r8,%r10)
	movups	%xmm0, 1072(%r8,%r10)
	movups	%xmm0, 1088(%r8,%r10)
	movups	%xmm0, 1104(%r8,%r10)
	movups	%xmm0, 1120(%r8,%r10)
	movups	%xmm0, 1136(%r8,%r10)
	movups	%xmm0, 1152(%r8,%r10)
	movups	%xmm0, 1168(%r8,%r10)
	movups	%xmm0, 1184(%r8,%r10)
	movups	%xmm0, 1200(%r8,%r10)
	movups	%xmm0, 1216(%r8,%r10)
	movups	%xmm0, 1232(%r8,%r10)
	movups	%xmm0, 1248(%r8,%r10)
	movups	%xmm0, 1264(%r8,%r10)
	movups	%xmm0, 1280(%r8,%r10)
	movups	%xmm0, 1296(%r8,%r10)
	movups	%xmm0, 1312(%r8,%r10)
	movups	%xmm0, 1328(%r8,%r10)
	movups	%xmm0, 1344(%r8,%r10)
	movups	%xmm0, 1360(%r8,%r10)
	movups	%xmm0, 1376(%r8,%r10)
	movups	%xmm0, 1392(%r8,%r10)
	movups	%xmm0, 1408(%r8,%r10)
	movups	%xmm0, 1424(%r8,%r10)
	movups	%xmm0, 1440(%r8,%r10)
	movups	%xmm0, 1456(%r8,%r10)
	movups	%xmm0, 1472(%r8,%r10)
	movups	%xmm0, 1488(%r8,%r10)
.Ltmp298:
	#DEBUG_VALUE: i <- $r9d
	.loc	7 136 25                        # liblzma/lzma/lzma_common.h:136:25
	movl	%r9d, %r11d
	shrl	%cl, %r11d
.Ltmp299:
	.loc	7 138 4                         # liblzma/lzma/lzma_common.h:138:4
	movups	%xmm0, 1504(%r8,%r10)
	movups	%xmm0, 1520(%r8,%r10)
.Ltmp300:
	.loc	7 136 2                         # liblzma/lzma/lzma_common.h:136:2
	incl	%r9d
.Ltmp301:
	.loc	7 136 25 is_stmt 0              # liblzma/lzma/lzma_common.h:136:25
	testl	%r11d, %r11d
.Ltmp302:
	.loc	7 136 2                         # liblzma/lzma/lzma_common.h:136:2
	je	.LBB2_6
.Ltmp303:
# %bb.7:                                # %for.cond6.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	7 0 2                           # liblzma/lzma/lzma_common.h:0:2
	movl	%edx, %ecx
.Ltmp304:
	.loc	0 506 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:506:3
	leaq	1(%rcx), %rdx
	cmpl	$-31, %eax
	jb	.LBB2_11
.Ltmp305:
# %bb.8:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%r8d, %r8d
	jmp	.LBB2_9
.Ltmp306:
.LBB2_11:                               # %vector.ph184
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
.Ltmp307:
	.p2align	4, 0x90
.LBB2_12:                               # %vector.body186
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27548(%rdi,%r9,2)
	movups	%xmm0, 27564(%rdi,%r9,2)
	movups	%xmm0, 27580(%rdi,%r9,2)
	movups	%xmm0, 27596(%rdi,%r9,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28028(%rdi,%r9,2)
	movups	%xmm0, 28044(%rdi,%r9,2)
	movups	%xmm0, 28060(%rdi,%r9,2)
	movups	%xmm0, 28076(%rdi,%r9,2)
.Ltmp308:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_12
.Ltmp309:
# %bb.13:                               # %middle.block182
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%r8d, %edx
	je	.LBB2_14
.Ltmp310:
.LBB2_9:                                # %for.body15.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: j <- 0
	decq	%r8
.Ltmp311:
	.p2align	4, 0x90
.LBB2_10:                               # %for.body15
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27550(%rdi,%r8,2)        # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28030(%rdi,%r8,2)        # imm = 0x400
.Ltmp312:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%r8
.Ltmp313:
	cmpq	%rcx, %r8
.Ltmp314:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_10
.Ltmp315:
.LBB2_14:                               # %for.cond.cleanup14
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27932(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27956(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 27980(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28004(%rdi)              # imm = 0x400
.Ltmp316:
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	$-32, %eax
	jbe	.LBB2_16
.Ltmp317:
# %bb.15:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%r8d, %r8d
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	jmp	.LBB2_19
.Ltmp318:
.LBB2_16:                               # %vector.ph192
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: j <- 0
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
.Ltmp319:
	.p2align	4, 0x90
.LBB2_17:                               # %vector.body196
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27580(%rdi,%r9,2)
	movups	%xmm0, 27596(%rdi,%r9,2)
	movups	%xmm0, 27612(%rdi,%r9,2)
	movups	%xmm0, 27628(%rdi,%r9,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28060(%rdi,%r9,2)
	movups	%xmm0, 28076(%rdi,%r9,2)
	movups	%xmm0, 28092(%rdi,%r9,2)
	movups	%xmm0, 28108(%rdi,%r9,2)
.Ltmp320:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_17
.Ltmp321:
# %bb.18:                               # %middle.block189
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%r8d, %edx
	je	.LBB2_21
.Ltmp322:
.LBB2_19:                               # %for.body15.1.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: j <- 0
	decq	%r8
.Ltmp323:
	.p2align	4, 0x90
.LBB2_20:                               # %for.body15.1
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 1
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27582(%rdi,%r8,2)        # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28062(%rdi,%r8,2)        # imm = 0x400
.Ltmp324:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%r8
.Ltmp325:
	cmpq	%rcx, %r8
.Ltmp326:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_20
.Ltmp327:
.LBB2_21:                               # %for.cond.cleanup14.1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 1
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27934(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27958(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 27982(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28006(%rdi)              # imm = 0x400
.Ltmp328:
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	$-32, %eax
	jbe	.LBB2_23
.Ltmp329:
# %bb.22:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%r8d, %r8d
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	jmp	.LBB2_26
.Ltmp330:
.LBB2_23:                               # %vector.ph203
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: j <- 0
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
.Ltmp331:
	.p2align	4, 0x90
.LBB2_24:                               # %vector.body207
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27612(%rdi,%r9,2)
	movups	%xmm0, 27628(%rdi,%r9,2)
	movups	%xmm0, 27644(%rdi,%r9,2)
	movups	%xmm0, 27660(%rdi,%r9,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28092(%rdi,%r9,2)
	movups	%xmm0, 28108(%rdi,%r9,2)
	movups	%xmm0, 28124(%rdi,%r9,2)
	movups	%xmm0, 28140(%rdi,%r9,2)
.Ltmp332:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_24
.Ltmp333:
# %bb.25:                               # %middle.block200
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%r8d, %edx
	je	.LBB2_28
.Ltmp334:
.LBB2_26:                               # %for.body15.2.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: j <- 0
	decq	%r8
.Ltmp335:
	.p2align	4, 0x90
.LBB2_27:                               # %for.body15.2
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 2
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27614(%rdi,%r8,2)        # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28094(%rdi,%r8,2)        # imm = 0x400
.Ltmp336:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%r8
.Ltmp337:
	cmpq	%rcx, %r8
.Ltmp338:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_27
.Ltmp339:
.LBB2_28:                               # %for.cond.cleanup14.2
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 2
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27936(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27960(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 27984(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28008(%rdi)              # imm = 0x400
.Ltmp340:
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	$-32, %eax
	jbe	.LBB2_30
.Ltmp341:
# %bb.29:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%r8d, %r8d
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	jmp	.LBB2_33
.Ltmp342:
.LBB2_30:                               # %vector.ph214
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: j <- 0
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
.Ltmp343:
	.p2align	4, 0x90
.LBB2_31:                               # %vector.body218
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27644(%rdi,%r9,2)
	movups	%xmm0, 27660(%rdi,%r9,2)
	movups	%xmm0, 27676(%rdi,%r9,2)
	movups	%xmm0, 27692(%rdi,%r9,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28124(%rdi,%r9,2)
	movups	%xmm0, 28140(%rdi,%r9,2)
	movups	%xmm0, 28156(%rdi,%r9,2)
	movups	%xmm0, 28172(%rdi,%r9,2)
.Ltmp344:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_31
.Ltmp345:
# %bb.32:                               # %middle.block211
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%r8d, %edx
	je	.LBB2_35
.Ltmp346:
.LBB2_33:                               # %for.body15.3.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: j <- 0
	decq	%r8
.Ltmp347:
	.p2align	4, 0x90
.LBB2_34:                               # %for.body15.3
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 3
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27646(%rdi,%r8,2)        # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28126(%rdi,%r8,2)        # imm = 0x400
.Ltmp348:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%r8
.Ltmp349:
	cmpq	%rcx, %r8
.Ltmp350:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_34
.Ltmp351:
.LBB2_35:                               # %for.cond.cleanup14.3
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 3
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27938(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27962(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 27986(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28010(%rdi)              # imm = 0x400
.Ltmp352:
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	$-32, %eax
	jbe	.LBB2_37
.Ltmp353:
# %bb.36:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%r8d, %r8d
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	jmp	.LBB2_40
.Ltmp354:
.LBB2_37:                               # %vector.ph225
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: j <- 0
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
.Ltmp355:
	.p2align	4, 0x90
.LBB2_38:                               # %vector.body229
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27676(%rdi,%r9,2)
	movups	%xmm0, 27692(%rdi,%r9,2)
	movups	%xmm0, 27708(%rdi,%r9,2)
	movups	%xmm0, 27724(%rdi,%r9,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28156(%rdi,%r9,2)
	movups	%xmm0, 28172(%rdi,%r9,2)
	movups	%xmm0, 28188(%rdi,%r9,2)
	movups	%xmm0, 28204(%rdi,%r9,2)
.Ltmp356:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_38
.Ltmp357:
# %bb.39:                               # %middle.block222
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%r8d, %edx
	je	.LBB2_42
.Ltmp358:
.LBB2_40:                               # %for.body15.4.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: j <- 0
	decq	%r8
.Ltmp359:
	.p2align	4, 0x90
.LBB2_41:                               # %for.body15.4
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 4
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27678(%rdi,%r8,2)        # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28158(%rdi,%r8,2)        # imm = 0x400
.Ltmp360:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%r8
.Ltmp361:
	cmpq	%rcx, %r8
.Ltmp362:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_41
.Ltmp363:
.LBB2_42:                               # %for.cond.cleanup14.4
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 4
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27940(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27964(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 27988(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28012(%rdi)              # imm = 0x400
.Ltmp364:
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	$-32, %eax
	jbe	.LBB2_44
.Ltmp365:
# %bb.43:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%r8d, %r8d
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	jmp	.LBB2_47
.Ltmp366:
.LBB2_44:                               # %vector.ph236
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: j <- 0
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
.Ltmp367:
	.p2align	4, 0x90
.LBB2_45:                               # %vector.body240
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27708(%rdi,%r9,2)
	movups	%xmm0, 27724(%rdi,%r9,2)
	movups	%xmm0, 27740(%rdi,%r9,2)
	movups	%xmm0, 27756(%rdi,%r9,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28188(%rdi,%r9,2)
	movups	%xmm0, 28204(%rdi,%r9,2)
	movups	%xmm0, 28220(%rdi,%r9,2)
	movups	%xmm0, 28236(%rdi,%r9,2)
.Ltmp368:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_45
.Ltmp369:
# %bb.46:                               # %middle.block233
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%r8d, %edx
	je	.LBB2_49
.Ltmp370:
.LBB2_47:                               # %for.body15.5.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: j <- 0
	decq	%r8
.Ltmp371:
	.p2align	4, 0x90
.LBB2_48:                               # %for.body15.5
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 5
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27710(%rdi,%r8,2)        # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28190(%rdi,%r8,2)        # imm = 0x400
.Ltmp372:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%r8
.Ltmp373:
	cmpq	%rcx, %r8
.Ltmp374:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_48
.Ltmp375:
.LBB2_49:                               # %for.cond.cleanup14.5
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 5
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27942(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27966(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 27990(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28014(%rdi)              # imm = 0x400
.Ltmp376:
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	$-32, %eax
	jbe	.LBB2_51
.Ltmp377:
# %bb.50:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%r8d, %r8d
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	jmp	.LBB2_54
.Ltmp378:
.LBB2_51:                               # %vector.ph247
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: j <- 0
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
.Ltmp379:
	.p2align	4, 0x90
.LBB2_52:                               # %vector.body251
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27740(%rdi,%r9,2)
	movups	%xmm0, 27756(%rdi,%r9,2)
	movups	%xmm0, 27772(%rdi,%r9,2)
	movups	%xmm0, 27788(%rdi,%r9,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28220(%rdi,%r9,2)
	movups	%xmm0, 28236(%rdi,%r9,2)
	movups	%xmm0, 28252(%rdi,%r9,2)
	movups	%xmm0, 28268(%rdi,%r9,2)
.Ltmp380:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_52
.Ltmp381:
# %bb.53:                               # %middle.block244
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%r8d, %edx
	je	.LBB2_56
.Ltmp382:
.LBB2_54:                               # %for.body15.6.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: j <- 0
	decq	%r8
.Ltmp383:
	.p2align	4, 0x90
.LBB2_55:                               # %for.body15.6
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 6
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27742(%rdi,%r8,2)        # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28222(%rdi,%r8,2)        # imm = 0x400
.Ltmp384:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%r8
.Ltmp385:
	cmpq	%rcx, %r8
.Ltmp386:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_55
.Ltmp387:
.LBB2_56:                               # %for.cond.cleanup14.6
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 6
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27944(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27968(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 27992(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28016(%rdi)              # imm = 0x400
.Ltmp388:
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	$-32, %eax
	jbe	.LBB2_58
.Ltmp389:
# %bb.57:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%r8d, %r8d
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	jmp	.LBB2_61
.Ltmp390:
.LBB2_58:                               # %vector.ph258
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: j <- 0
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
.Ltmp391:
	.p2align	4, 0x90
.LBB2_59:                               # %vector.body262
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27772(%rdi,%r9,2)
	movups	%xmm0, 27788(%rdi,%r9,2)
	movups	%xmm0, 27804(%rdi,%r9,2)
	movups	%xmm0, 27820(%rdi,%r9,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28252(%rdi,%r9,2)
	movups	%xmm0, 28268(%rdi,%r9,2)
	movups	%xmm0, 28284(%rdi,%r9,2)
	movups	%xmm0, 28300(%rdi,%r9,2)
.Ltmp392:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_59
.Ltmp393:
# %bb.60:                               # %middle.block255
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%r8d, %edx
	je	.LBB2_63
.Ltmp394:
.LBB2_61:                               # %for.body15.7.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: j <- 0
	decq	%r8
.Ltmp395:
	.p2align	4, 0x90
.LBB2_62:                               # %for.body15.7
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 7
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27774(%rdi,%r8,2)        # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28254(%rdi,%r8,2)        # imm = 0x400
.Ltmp396:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%r8
.Ltmp397:
	cmpq	%rcx, %r8
.Ltmp398:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_62
.Ltmp399:
.LBB2_63:                               # %for.cond.cleanup14.7
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 7
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27946(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27970(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 27994(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28018(%rdi)              # imm = 0x400
.Ltmp400:
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	$-32, %eax
	jbe	.LBB2_65
.Ltmp401:
# %bb.64:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%r8d, %r8d
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	jmp	.LBB2_68
.Ltmp402:
.LBB2_65:                               # %vector.ph269
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: j <- 0
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
.Ltmp403:
	.p2align	4, 0x90
.LBB2_66:                               # %vector.body273
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27804(%rdi,%r9,2)
	movups	%xmm0, 27820(%rdi,%r9,2)
	movups	%xmm0, 27836(%rdi,%r9,2)
	movups	%xmm0, 27852(%rdi,%r9,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28284(%rdi,%r9,2)
	movups	%xmm0, 28300(%rdi,%r9,2)
	movups	%xmm0, 28316(%rdi,%r9,2)
	movups	%xmm0, 28332(%rdi,%r9,2)
.Ltmp404:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_66
.Ltmp405:
# %bb.67:                               # %middle.block266
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%r8d, %edx
	je	.LBB2_70
.Ltmp406:
.LBB2_68:                               # %for.body15.8.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: j <- 0
	decq	%r8
.Ltmp407:
	.p2align	4, 0x90
.LBB2_69:                               # %for.body15.8
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27806(%rdi,%r8,2)        # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28286(%rdi,%r8,2)        # imm = 0x400
.Ltmp408:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%r8
.Ltmp409:
	cmpq	%rcx, %r8
.Ltmp410:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_69
.Ltmp411:
.LBB2_70:                               # %for.cond.cleanup14.8
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 8
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27948(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27972(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 27996(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28020(%rdi)              # imm = 0x400
.Ltmp412:
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	$-32, %eax
	jbe	.LBB2_72
.Ltmp413:
# %bb.71:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%r8d, %r8d
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	jmp	.LBB2_75
.Ltmp414:
.LBB2_72:                               # %vector.ph280
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: j <- 0
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
.Ltmp415:
	.p2align	4, 0x90
.LBB2_73:                               # %vector.body284
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27836(%rdi,%r9,2)
	movups	%xmm0, 27852(%rdi,%r9,2)
	movups	%xmm0, 27868(%rdi,%r9,2)
	movups	%xmm0, 27884(%rdi,%r9,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28316(%rdi,%r9,2)
	movups	%xmm0, 28332(%rdi,%r9,2)
	movups	%xmm0, 28348(%rdi,%r9,2)
	movups	%xmm0, 28364(%rdi,%r9,2)
.Ltmp416:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_73
.Ltmp417:
# %bb.74:                               # %middle.block277
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%r8d, %edx
	je	.LBB2_77
.Ltmp418:
.LBB2_75:                               # %for.body15.9.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: j <- 0
	decq	%r8
.Ltmp419:
	.p2align	4, 0x90
.LBB2_76:                               # %for.body15.9
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 9
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27838(%rdi,%r8,2)        # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28318(%rdi,%r8,2)        # imm = 0x400
.Ltmp420:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%r8
.Ltmp421:
	cmpq	%rcx, %r8
.Ltmp422:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_76
.Ltmp423:
.LBB2_77:                               # %for.cond.cleanup14.9
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 9
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27950(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27974(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 27998(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28022(%rdi)              # imm = 0x400
.Ltmp424:
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	$-32, %eax
	jbe	.LBB2_79
.Ltmp425:
# %bb.78:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%r8d, %r8d
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	jmp	.LBB2_82
.Ltmp426:
.LBB2_79:                               # %vector.ph291
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: j <- 0
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
.Ltmp427:
	.p2align	4, 0x90
.LBB2_80:                               # %vector.body295
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27868(%rdi,%r9,2)
	movups	%xmm0, 27884(%rdi,%r9,2)
	movups	%xmm0, 27900(%rdi,%r9,2)
	movups	%xmm0, 27916(%rdi,%r9,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28348(%rdi,%r9,2)
	movups	%xmm0, 28364(%rdi,%r9,2)
	movups	%xmm0, 28380(%rdi,%r9,2)
	movups	%xmm0, 28396(%rdi,%r9,2)
.Ltmp428:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_80
.Ltmp429:
# %bb.81:                               # %middle.block288
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%r8d, %edx
	je	.LBB2_84
.Ltmp430:
.LBB2_82:                               # %for.body15.10.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: j <- 0
	decq	%r8
.Ltmp431:
	.p2align	4, 0x90
.LBB2_83:                               # %for.body15.10
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 10
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r8
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27870(%rdi,%r8,2)        # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28350(%rdi,%r8,2)        # imm = 0x400
.Ltmp432:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $r8
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%r8
.Ltmp433:
	cmpq	%rcx, %r8
.Ltmp434:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_83
.Ltmp435:
.LBB2_84:                               # %for.cond.cleanup14.10
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 10
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27952(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27976(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 28000(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28024(%rdi)              # imm = 0x400
.Ltmp436:
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	$-32, %eax
	jbe	.LBB2_86
.Ltmp437:
# %bb.85:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:3
	xorl	%eax, %eax
	.loc	0 506 3                         # liblzma/lzma/lzma_encoder.c:506:3
	jmp	.LBB2_89
.Ltmp438:
.LBB2_86:                               # %vector.ph302
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: j <- 0
	movl	%edx, %eax
	andl	$224, %eax
	xorl	%r8d, %r8d
.Ltmp439:
	.p2align	4, 0x90
.LBB2_87:                               # %vector.body306
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: j <- 0
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movups	%xmm0, 27900(%rdi,%r8,2)
	movups	%xmm0, 27916(%rdi,%r8,2)
	movups	%xmm0, 27932(%rdi,%r8,2)
	movups	%xmm0, 27948(%rdi,%r8,2)
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movups	%xmm0, 28380(%rdi,%r8,2)
	movups	%xmm0, 28396(%rdi,%r8,2)
	movups	%xmm0, 28412(%rdi,%r8,2)
	movups	%xmm0, 28428(%rdi,%r8,2)
.Ltmp440:
	.loc	0 506 44                        # liblzma/lzma/lzma_encoder.c:506:44
	addq	$32, %r8
	cmpq	%r8, %rax
	jne	.LBB2_87
.Ltmp441:
# %bb.88:                               # %middle.block299
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: j <- 0
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	cmpl	%eax, %edx
	je	.LBB2_91
.Ltmp442:
.LBB2_89:                               # %for.body15.11.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: j <- 0
	decq	%rax
.Ltmp443:
	.p2align	4, 0x90
.LBB2_90:                               # %for.body15.11
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 11
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 507 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:507:4
	movw	$1024, 27902(%rdi,%rax,2)       # imm = 0x400
	.loc	0 508 4                         # liblzma/lzma/lzma_encoder.c:508:4
	movw	$1024, 28382(%rdi,%rax,2)       # imm = 0x400
.Ltmp444:
	#DEBUG_VALUE: j <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $rax
	.loc	0 506 24                        # liblzma/lzma/lzma_encoder.c:506:24
	incq	%rax
.Ltmp445:
	cmpq	%rcx, %rax
.Ltmp446:
	.loc	0 506 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:506:3
	jb	.LBB2_90
.Ltmp447:
.LBB2_91:                               # %for.cond.cleanup14.11
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: i <- 11
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	.loc	0 511 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:511:3
	movw	$1024, 27954(%rdi)              # imm = 0x400
	.loc	0 512 3                         # liblzma/lzma/lzma_encoder.c:512:3
	movw	$1024, 27978(%rdi)              # imm = 0x400
	.loc	0 513 3                         # liblzma/lzma/lzma_encoder.c:513:3
	movw	$1024, 28002(%rdi)              # imm = 0x400
	.loc	0 514 3                         # liblzma/lzma/lzma_encoder.c:514:3
	movw	$1024, 28026(%rdi)              # imm = 0x400
.Ltmp448:
	#DEBUG_VALUE: i <- 12
	#DEBUG_VALUE: i <- 0
	.loc	0 518 3                         # liblzma/lzma/lzma_encoder.c:518:3
	movups	%xmm0, 28924(%rdi)
	movups	%xmm0, 28940(%rdi)
	movups	%xmm0, 28956(%rdi)
	movups	%xmm0, 28972(%rdi)
	movups	%xmm0, 28988(%rdi)
	movups	%xmm0, 29004(%rdi)
	movups	%xmm0, 29020(%rdi)
	movups	%xmm0, 29036(%rdi)
	movups	%xmm0, 29052(%rdi)
	movups	%xmm0, 29068(%rdi)
	movups	%xmm0, 29084(%rdi)
	movups	%xmm0, 29100(%rdi)
.Ltmp449:
	#DEBUG_VALUE: i <- 96
	movups	%xmm0, 29116(%rdi)
.Ltmp450:
	#DEBUG_VALUE: i <- 97
	#DEBUG_VALUE: i <- 98
	#DEBUG_VALUE: i <- 99
	#DEBUG_VALUE: i <- 100
	#DEBUG_VALUE: i <- 101
	#DEBUG_VALUE: i <- 102
	#DEBUG_VALUE: i <- 103
	#DEBUG_VALUE: i <- 104
	movups	%xmm0, 29132(%rdi)
.Ltmp451:
	#DEBUG_VALUE: i <- 105
	#DEBUG_VALUE: i <- 106
	#DEBUG_VALUE: i <- 107
	#DEBUG_VALUE: i <- 108
	#DEBUG_VALUE: i <- 109
	#DEBUG_VALUE: i <- 110
	#DEBUG_VALUE: i <- 111
	#DEBUG_VALUE: i <- 112
	movl	$67109888, 29148(%rdi)          # imm = 0x4000400
.Ltmp452:
	#DEBUG_VALUE: i <- 113
	#DEBUG_VALUE: i <- 114
	#DEBUG_VALUE: i <- 0
	.loc	0 522 3                         # liblzma/lzma/lzma_encoder.c:522:3
	movups	%xmm0, 28412(%rdi)
	movups	%xmm0, 28428(%rdi)
	movups	%xmm0, 28444(%rdi)
	movups	%xmm0, 28460(%rdi)
	movups	%xmm0, 28476(%rdi)
	movups	%xmm0, 28492(%rdi)
	movups	%xmm0, 28508(%rdi)
	movups	%xmm0, 28524(%rdi)
	movups	%xmm0, 28540(%rdi)
	movups	%xmm0, 28556(%rdi)
	movups	%xmm0, 28572(%rdi)
	movups	%xmm0, 28588(%rdi)
	movups	%xmm0, 28604(%rdi)
	movups	%xmm0, 28620(%rdi)
	movups	%xmm0, 28636(%rdi)
	movups	%xmm0, 28652(%rdi)
	movups	%xmm0, 28668(%rdi)
	movups	%xmm0, 28684(%rdi)
	movups	%xmm0, 28700(%rdi)
	movups	%xmm0, 28716(%rdi)
	movups	%xmm0, 28732(%rdi)
	movups	%xmm0, 28748(%rdi)
	movups	%xmm0, 28764(%rdi)
	movups	%xmm0, 28780(%rdi)
	movups	%xmm0, 28796(%rdi)
	movups	%xmm0, 28812(%rdi)
	movups	%xmm0, 28828(%rdi)
	movups	%xmm0, 28844(%rdi)
	movups	%xmm0, 28860(%rdi)
	movups	%xmm0, 28876(%rdi)
	movups	%xmm0, 28892(%rdi)
	movups	%xmm0, 28908(%rdi)
.Ltmp453:
	#DEBUG_VALUE: bt_i <- 7
	.loc	0 524 2                         # liblzma/lzma/lzma_encoder.c:524:2
	movups	%xmm0, 29152(%rdi)
.Ltmp454:
	#DEBUG_VALUE: bt_i <- 8
	#DEBUG_VALUE: bt_i <- 15
	movups	%xmm0, 29168(%rdi)
.Ltmp455:
	#DEBUG_VALUE: bt_i <- 16
	.loc	0 528 19                        # liblzma/lzma/lzma_encoder.c:528:19
	movl	28(%rsi), %ecx
	movl	$1, %r12d
	.loc	0 528 7 is_stmt 0               # liblzma/lzma/lzma_encoder.c:528:7
	shlq	%cl, %r12
.Ltmp456:
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	.loc	0 528 30                        # liblzma/lzma/lzma_encoder.c:528:30
	movzbl	2956(%rdi), %eax
.Ltmp457:
	#DEBUG_VALUE: length_encoder_reset:lencoder <- undef
	.loc	0 464 2 is_stmt 1               # liblzma/lzma/lzma_encoder.c:464:2
	movl	$67109888, 29184(%rdi)          # imm = 0x4000400
.Ltmp458:
	#DEBUG_VALUE: pos_state <- 0
	.loc	0 467 2                         # liblzma/lzma/lzma_encoder.c:467:2
	cmpl	$2, %ecx
	jae	.LBB2_94
.Ltmp459:
# %bb.92:                               # %for.cond2.preheader.i.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- 0
	testl	%ecx, %ecx
	je	.LBB2_93
.Ltmp460:
# %bb.96:                               # %for.cond2.preheader.i.preheader2
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- 0
	leaq	29460(%rdi), %rdx
	xorl	%ecx, %ecx
.Ltmp461:
	.p2align	4, 0x90
.LBB2_97:                               # %for.cond2.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- $rcx
	#DEBUG_VALUE: bt_i <- 7
	.loc	0 468 3                         # liblzma/lzma/lzma_encoder.c:468:3
	movups	%xmm0, -272(%rdx)
.Ltmp462:
	#DEBUG_VALUE: bt_i <- 8
	#DEBUG_VALUE: bt_i <- 7
	.loc	0 469 3                         # liblzma/lzma/lzma_encoder.c:469:3
	movups	%xmm0, -16(%rdx)
.Ltmp463:
	#DEBUG_VALUE: bt_i <- 8
	#DEBUG_VALUE: pos_state <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rcx
	#DEBUG_VALUE: bt_i <- 7
	.loc	0 468 3                         # liblzma/lzma/lzma_encoder.c:468:3
	movups	%xmm0, -256(%rdx)
.Ltmp464:
	#DEBUG_VALUE: bt_i <- 8
	#DEBUG_VALUE: bt_i <- 7
	.loc	0 469 3                         # liblzma/lzma/lzma_encoder.c:469:3
	movups	%xmm0, (%rdx)
.Ltmp465:
	#DEBUG_VALUE: bt_i <- 8
	.loc	0 467 57                        # liblzma/lzma/lzma_encoder.c:467:57
	addq	$2, %rcx
.Ltmp466:
	#DEBUG_VALUE: pos_state <- $rcx
	.loc	0 467 2 is_stmt 0               # liblzma/lzma/lzma_encoder.c:467:2
	addq	$32, %rdx
	cmpq	$2, %rcx
	jne	.LBB2_97
	jmp	.LBB2_98
.Ltmp467:
.LBB2_94:                               # %vector.ph333
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- 0
	movl	%r12d, %ecx
	andl	$-4, %ecx
	leaq	29492(%rdi), %rdx
.Ltmp468:
	.p2align	4, 0x90
.LBB2_95:                               # %vector.body337
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- 0
	.loc	0 468 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:468:3
	movups	%xmm0, -304(%rdx)
	movups	%xmm0, -288(%rdx)
	movups	%xmm0, -272(%rdx)
	movups	%xmm0, -256(%rdx)
.Ltmp469:
	.loc	0 469 3                         # liblzma/lzma/lzma_encoder.c:469:3
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, (%rdx)
.Ltmp470:
	.loc	0 467 57                        # liblzma/lzma/lzma_encoder.c:467:57
	addq	$64, %rdx
	addq	$-4, %rcx
	jne	.LBB2_95
	jmp	.LBB2_100
.Ltmp471:
.LBB2_93:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- 0
	.loc	0 0 57 is_stmt 0                # liblzma/lzma/lzma_encoder.c:0:57
	xorl	%ecx, %ecx
.Ltmp472:
.LBB2_98:                               # %for.cond24.preheader.i.loopexit.unr-lcssa
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	.loc	0 467 2                         # liblzma/lzma/lzma_encoder.c:467:2
	testb	$1, %r12b
	je	.LBB2_100
.Ltmp473:
# %bb.99:                               # %for.cond2.preheader.i.epil
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	leaq	29188(%rdi), %rdx
	leaq	29444(%rdi), %r8
.Ltmp474:
	#DEBUG_VALUE: pos_state <- $rcx
	#DEBUG_VALUE: bt_i <- 0
	.loc	0 468 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:468:3
	shlq	$4, %rcx
.Ltmp475:
	#DEBUG_VALUE: bt_i <- 7
	movups	%xmm0, (%rdx,%rcx)
.Ltmp476:
	#DEBUG_VALUE: bt_i <- 8
	#DEBUG_VALUE: bt_i <- 0
	#DEBUG_VALUE: bt_i <- 7
	.loc	0 469 3                         # liblzma/lzma/lzma_encoder.c:469:3
	movups	%xmm0, (%r8,%rcx)
.Ltmp477:
	#DEBUG_VALUE: bt_i <- 8
	#DEBUG_VALUE: pos_state <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
.LBB2_100:                              # %vector.body345
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $rdi
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: bt_i <- 0
	.loc	0 472 2                         # liblzma/lzma/lzma_encoder.c:472:2
	movups	%xmm0, 29700(%rdi)
	movups	%xmm0, 29716(%rdi)
	movups	%xmm0, 29732(%rdi)
	movups	%xmm0, 29748(%rdi)
	movups	%xmm0, 29764(%rdi)
	movups	%xmm0, 29780(%rdi)
	movups	%xmm0, 29796(%rdi)
	movups	%xmm0, 29812(%rdi)
	movups	%xmm0, 29828(%rdi)
	movups	%xmm0, 29844(%rdi)
	movups	%xmm0, 29860(%rdi)
	movups	%xmm0, 29876(%rdi)
	movups	%xmm0, 29892(%rdi)
	movups	%xmm0, 29908(%rdi)
	movups	%xmm0, 29924(%rdi)
	movups	%xmm0, 29940(%rdi)
	movups	%xmm0, 29956(%rdi)
	movups	%xmm0, 29972(%rdi)
	movups	%xmm0, 29988(%rdi)
	movups	%xmm0, 30004(%rdi)
	movups	%xmm0, 30020(%rdi)
	movups	%xmm0, 30036(%rdi)
	movups	%xmm0, 30052(%rdi)
	movups	%xmm0, 30068(%rdi)
	movups	%xmm0, 30084(%rdi)
	movups	%xmm0, 30100(%rdi)
	movups	%xmm0, 30116(%rdi)
	movups	%xmm0, 30132(%rdi)
	movups	%xmm0, 30148(%rdi)
	movups	%xmm0, 30164(%rdi)
	movups	%xmm0, 30180(%rdi)
	movups	%xmm0, 30196(%rdi)
.Ltmp478:
	#DEBUG_VALUE: length_encoder_reset:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $al
	#DEBUG_VALUE: pos_state <- 0
	.loc	0 474 6                         # liblzma/lzma/lzma_encoder.c:474:6
	testb	%al, %al
	movq	%rdi, %r15
	jne	.LBB2_104
.Ltmp479:
# %bb.101:                              # %for.body40.i.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: bt_i <- 0
	#DEBUG_VALUE: length_encoder_reset:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $al
	#DEBUG_VALUE: pos_state <- 0
	.loc	0 0 6 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:6
	movq	%rsi, %r13
.Ltmp480:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $r13
	leaq	29184(%rdi), %rbx
.Ltmp481:
	#DEBUG_VALUE: length_encoder_reset:lencoder <- $rbx
	xorl	%r14d, %r14d
.Ltmp482:
	.p2align	4, 0x90
.LBB2_102:                              # %for.body40.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $r13
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: length_encoder_reset:lencoder <- $rbx
	#DEBUG_VALUE: pos_state <- $r14
	.loc	0 477 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:477:4
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	length_update_prices
.Ltmp483:
	.loc	0 476 5                         # liblzma/lzma/lzma_encoder.c:476:5
	incq	%r14
.Ltmp484:
	#DEBUG_VALUE: pos_state <- $r14
	.loc	0 475 40                        # liblzma/lzma/lzma_encoder.c:475:40
	cmpq	%r14, %r12
.Ltmp485:
	.loc	0 475 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:475:3
	jne	.LBB2_102
.Ltmp486:
# %bb.103:                              # %length_encoder_reset.exit.loopexit
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $r13
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	.loc	0 0 3                           # liblzma/lzma/lzma_encoder.c:0:3
	movq	%r15, %rdi
	.loc	0 531 30 is_stmt 1              # liblzma/lzma/lzma_encoder.c:531:30
	movzbl	2956(%r15), %eax
	movq	%r13, %rsi
	movaps	.LCPI2_0(%rip), %xmm0           # xmm0 = [1024,1024,1024,1024,1024,1024,1024,1024]
.Ltmp487:
.LBB2_104:                              # %length_encoder_reset.exit
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	.loc	0 531 19 is_stmt 0              # liblzma/lzma/lzma_encoder.c:531:19
	movl	28(%rsi), %ecx
	movl	$1, %r12d
	.loc	0 531 7                         # liblzma/lzma/lzma_encoder.c:531:7
	shlq	%cl, %r12
.Ltmp488:
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: length_encoder_reset:lencoder <- undef
	.loc	0 464 2 is_stmt 1               # liblzma/lzma/lzma_encoder.c:464:2
	movl	$67109888, 47688(%rdi)          # imm = 0x4000400
.Ltmp489:
	#DEBUG_VALUE: pos_state <- 0
	.loc	0 467 2                         # liblzma/lzma/lzma_encoder.c:467:2
	cmpl	$1, %ecx
	ja	.LBB2_107
.Ltmp490:
# %bb.105:                              # %for.cond2.preheader.i135.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- 0
	testl	%ecx, %ecx
	je	.LBB2_106
.Ltmp491:
# %bb.109:                              # %for.cond2.preheader.i135.preheader1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- 0
	leaq	47964(%rdi), %rdx
	xorl	%ecx, %ecx
.Ltmp492:
	.p2align	4, 0x90
.LBB2_110:                              # %for.cond2.preheader.i135
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- $rcx
	#DEBUG_VALUE: bt_i <- 7
	.loc	0 468 3                         # liblzma/lzma/lzma_encoder.c:468:3
	movups	%xmm0, -272(%rdx)
.Ltmp493:
	#DEBUG_VALUE: bt_i <- 8
	#DEBUG_VALUE: bt_i <- 7
	.loc	0 469 3                         # liblzma/lzma/lzma_encoder.c:469:3
	movups	%xmm0, -16(%rdx)
.Ltmp494:
	#DEBUG_VALUE: bt_i <- 8
	#DEBUG_VALUE: pos_state <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rcx
	#DEBUG_VALUE: bt_i <- 7
	.loc	0 468 3                         # liblzma/lzma/lzma_encoder.c:468:3
	movups	%xmm0, -256(%rdx)
.Ltmp495:
	#DEBUG_VALUE: bt_i <- 8
	#DEBUG_VALUE: bt_i <- 7
	.loc	0 469 3                         # liblzma/lzma/lzma_encoder.c:469:3
	movups	%xmm0, (%rdx)
.Ltmp496:
	#DEBUG_VALUE: bt_i <- 8
	.loc	0 467 57                        # liblzma/lzma/lzma_encoder.c:467:57
	addq	$2, %rcx
.Ltmp497:
	#DEBUG_VALUE: pos_state <- $rcx
	.loc	0 467 2 is_stmt 0               # liblzma/lzma/lzma_encoder.c:467:2
	addq	$32, %rdx
	cmpq	$2, %rcx
	jne	.LBB2_110
	jmp	.LBB2_111
.Ltmp498:
.LBB2_107:                              # %vector.ph351
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- 0
	movl	%r12d, %ecx
	andl	$-4, %ecx
	leaq	47996(%rdi), %rdx
.Ltmp499:
	.p2align	4, 0x90
.LBB2_108:                              # %vector.body355
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- 0
	.loc	0 468 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:468:3
	movups	%xmm0, -304(%rdx)
	movups	%xmm0, -288(%rdx)
	movups	%xmm0, -272(%rdx)
	movups	%xmm0, -256(%rdx)
.Ltmp500:
	.loc	0 469 3                         # liblzma/lzma/lzma_encoder.c:469:3
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, (%rdx)
.Ltmp501:
	.loc	0 467 57                        # liblzma/lzma/lzma_encoder.c:467:57
	addq	$64, %rdx
	addq	$-4, %rcx
	jne	.LBB2_108
	jmp	.LBB2_113
.Ltmp502:
.LBB2_106:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: pos_state <- 0
	.loc	0 0 57 is_stmt 0                # liblzma/lzma/lzma_encoder.c:0:57
	xorl	%ecx, %ecx
.Ltmp503:
.LBB2_111:                              # %for.cond24.preheader.i155.loopexit.unr-lcssa
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	.loc	0 467 2                         # liblzma/lzma/lzma_encoder.c:467:2
	testb	$1, %r12b
	je	.LBB2_113
.Ltmp504:
# %bb.112:                              # %for.cond2.preheader.i135.epil
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	leaq	47692(%rdi), %rdx
	leaq	47948(%rdi), %rsi
.Ltmp505:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: pos_state <- $rcx
	#DEBUG_VALUE: bt_i <- 0
	.loc	0 468 3 is_stmt 1               # liblzma/lzma/lzma_encoder.c:468:3
	shlq	$4, %rcx
.Ltmp506:
	#DEBUG_VALUE: bt_i <- 7
	movups	%xmm0, (%rdx,%rcx)
.Ltmp507:
	#DEBUG_VALUE: bt_i <- 8
	#DEBUG_VALUE: bt_i <- 0
	#DEBUG_VALUE: bt_i <- 7
	.loc	0 469 3                         # liblzma/lzma/lzma_encoder.c:469:3
	movups	%xmm0, (%rsi,%rcx)
.Ltmp508:
	#DEBUG_VALUE: bt_i <- 8
	#DEBUG_VALUE: pos_state <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
.LBB2_113:                              # %vector.body363
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: bt_i <- 0
	.loc	0 472 2                         # liblzma/lzma/lzma_encoder.c:472:2
	movups	%xmm0, 48204(%rdi)
	movups	%xmm0, 48220(%rdi)
	movups	%xmm0, 48236(%rdi)
	movups	%xmm0, 48252(%rdi)
	movups	%xmm0, 48268(%rdi)
	movups	%xmm0, 48284(%rdi)
	movups	%xmm0, 48300(%rdi)
	movups	%xmm0, 48316(%rdi)
	movups	%xmm0, 48332(%rdi)
	movups	%xmm0, 48348(%rdi)
	movups	%xmm0, 48364(%rdi)
	movups	%xmm0, 48380(%rdi)
	movups	%xmm0, 48396(%rdi)
	movups	%xmm0, 48412(%rdi)
	movups	%xmm0, 48428(%rdi)
	movups	%xmm0, 48444(%rdi)
	movups	%xmm0, 48460(%rdi)
	movups	%xmm0, 48476(%rdi)
	movups	%xmm0, 48492(%rdi)
	movups	%xmm0, 48508(%rdi)
	movups	%xmm0, 48524(%rdi)
	movups	%xmm0, 48540(%rdi)
	movups	%xmm0, 48556(%rdi)
	movups	%xmm0, 48572(%rdi)
	movups	%xmm0, 48588(%rdi)
	movups	%xmm0, 48604(%rdi)
	movups	%xmm0, 48620(%rdi)
	movups	%xmm0, 48636(%rdi)
	movups	%xmm0, 48652(%rdi)
	movups	%xmm0, 48668(%rdi)
	movups	%xmm0, 48684(%rdi)
	movups	%xmm0, 48700(%rdi)
.Ltmp509:
	#DEBUG_VALUE: length_encoder_reset:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $al
	#DEBUG_VALUE: pos_state <- 0
	.loc	0 474 6                         # liblzma/lzma/lzma_encoder.c:474:6
	testb	$1, %al
	jne	.LBB2_116
.Ltmp510:
# %bb.114:                              # %for.body40.i163.preheader
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: bt_i <- 0
	#DEBUG_VALUE: length_encoder_reset:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $al
	#DEBUG_VALUE: pos_state <- 0
	.loc	0 0 6 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:6
	leaq	47688(%r15), %rbx
.Ltmp511:
	#DEBUG_VALUE: length_encoder_reset:lencoder <- $rbx
	xorl	%r14d, %r14d
.Ltmp512:
	.p2align	4, 0x90
.LBB2_115:                              # %for.body40.i163
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	#DEBUG_VALUE: length_encoder_reset:num_pos_states <- $r12
	#DEBUG_VALUE: length_encoder_reset:lencoder <- $rbx
	#DEBUG_VALUE: pos_state <- $r14
	.loc	0 477 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:477:4
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	length_update_prices
.Ltmp513:
	.loc	0 476 5                         # liblzma/lzma/lzma_encoder.c:476:5
	incq	%r14
.Ltmp514:
	#DEBUG_VALUE: pos_state <- $r14
	.loc	0 475 40                        # liblzma/lzma/lzma_encoder.c:475:40
	cmpq	%r14, %r12
.Ltmp515:
	.loc	0 475 3 is_stmt 0               # liblzma/lzma/lzma_encoder.c:475:3
	jne	.LBB2_115
.Ltmp516:
.LBB2_116:                              # %length_encoder_reset.exit168
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:coder <- $r15
	.loc	0 546 27 is_stmt 1              # liblzma/lzma/lzma_encoder.c:546:27
	movl	$2147483647, 69268(%r15)        # imm = 0x7FFFFFFF
	.loc	0 547 27                        # liblzma/lzma/lzma_encoder.c:547:27
	movq	$2147483647, 69336(%r15)        # imm = 0x7FFFFFFF
	.loc	0 550 28                        # liblzma/lzma/lzma_encoder.c:550:28
	movl	$0, 69344(%r15)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp517:
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
.LBB2_117:                              # %cleanup
	#DEBUG_VALUE: lzma_lzma_encoder_reset:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_reset:options <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 553 1                         # liblzma/lzma/lzma_encoder.c:553:1
	retq
.Ltmp518:
.Lfunc_end2:
	.size	lzma_lzma_encoder_reset, .Lfunc_end2-lzma_lzma_encoder_reset
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_encoder_create        # -- Begin function lzma_lzma_encoder_create
	.p2align	4, 0x90
	.type	lzma_lzma_encoder_create,@function
lzma_lzma_encoder_create:               # @lzma_lzma_encoder_create
.Lfunc_begin3:
	.loc	0 559 0                         # liblzma/lzma/lzma_encoder.c:559:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
.Ltmp519:
	.loc	0 561 6 prologue_end            # liblzma/lzma/lzma_encoder.c:561:6
	movq	(%rdi), %rdi
.Ltmp520:
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	.loc	0 561 17 is_stmt 0              # liblzma/lzma/lzma_encoder.c:561:17
	testq	%rdi, %rdi
.Ltmp521:
	.loc	0 561 6                         # liblzma/lzma/lzma_encoder.c:561:6
	jne	.LBB3_4
.Ltmp522:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	.loc	0 562 16 is_stmt 1              # liblzma/lzma/lzma_encoder.c:562:16
	movl	$249576, %edi                   # imm = 0x3CEE8
	movq	%rdx, %r15
.Ltmp523:
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- $r15
	callq	lzma_alloc@PLT
.Ltmp524:
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 0 16 is_stmt 0                # liblzma/lzma/lzma_encoder.c:0:16
	movq	%r15, %rdx
	.loc	0 562 16                        # liblzma/lzma/lzma_encoder.c:562:16
	movq	%rax, %rdi
	.loc	0 562 14                        # liblzma/lzma/lzma_encoder.c:562:14
	movq	%rax, (%r14)
.Ltmp525:
	.loc	0 563 18 is_stmt 1              # liblzma/lzma/lzma_encoder.c:563:18
	testq	%rax, %rax
.Ltmp526:
	.loc	0 563 7 is_stmt 0               # liblzma/lzma/lzma_encoder.c:563:7
	je	.LBB3_2
.Ltmp527:
.LBB3_4:                                # %if.end3
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder <- $rdi
	.loc	0 573 19 is_stmt 1              # liblzma/lzma/lzma_encoder.c:573:19
	movl	32(%rdx), %ecx
	.loc	0 573 2 is_stmt 0               # liblzma/lzma/lzma_encoder.c:573:2
	cmpl	$2, %ecx
	je	.LBB3_7
.Ltmp528:
# %bb.5:                                # %if.end3
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder <- $rdi
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	movl	$8, %eax
	.loc	0 573 2                         # liblzma/lzma/lzma_encoder.c:573:2
	cmpl	$1, %ecx
	jne	.LBB3_3
.Ltmp529:
# %bb.6:                                # %sw.bb
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder <- $rdi
	.loc	0 575 21 is_stmt 1              # liblzma/lzma/lzma_encoder.c:575:21
	movb	$1, 2956(%rdi)
.Ltmp530:
	.loc	0 605 47                        # liblzma/lzma/lzma_encoder.c:605:47
	cmpq	$0, 8(%rdx)
	.loc	0 606 4                         # liblzma/lzma/lzma_encoder.c:606:4
	je	.LBB3_11
.Ltmp531:
.LBB3_12:                               # %land.rhs
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder <- $rdi
	.loc	0 606 33 is_stmt 0              # liblzma/lzma/lzma_encoder.c:606:33
	cmpl	$0, 16(%rdx)
	setne	%al
	jmp	.LBB3_13
.Ltmp532:
.LBB3_7:                                # %sw.bb4
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder <- $rdi
	.loc	0 579 21 is_stmt 1              # liblzma/lzma/lzma_encoder.c:579:21
	movb	$0, 2956(%rdi)
.Ltmp533:
	#DEBUG_VALUE: log_size <- 0
	.loc	0 0 21 is_stmt 0                # liblzma/lzma/lzma_encoder.c:0:21
	movl	(%rdx), %eax
	xorl	%ecx, %ecx
	movl	$-2, %esi
.Ltmp534:
	.p2align	4, 0x90
.LBB3_8:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder <- $rdi
	#DEBUG_VALUE: log_size <- $ecx
	.loc	0 584 24 is_stmt 1              # liblzma/lzma/lzma_encoder.c:584:24
	movl	$1, %r8d
	shll	%cl, %r8d
	.loc	0 585 5                         # liblzma/lzma/lzma_encoder.c:585:5
	incl	%ecx
.Ltmp535:
	#DEBUG_VALUE: log_size <- $ecx
	.loc	0 584 4                         # liblzma/lzma/lzma_encoder.c:584:4
	addl	$2, %esi
	.loc	0 584 37 is_stmt 0              # liblzma/lzma/lzma_encoder.c:584:37
	cmpl	%eax, %r8d
	.loc	0 584 4                         # liblzma/lzma/lzma_encoder.c:584:4
	jb	.LBB3_8
.Ltmp536:
# %bb.9:                                # %while.end
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder <- $rdi
	#DEBUG_VALUE: log_size <- $ecx
	.loc	0 587 27 is_stmt 1              # liblzma/lzma/lzma_encoder.c:587:27
	movl	%esi, 69264(%rdi)
	.loc	0 591 16                        # liblzma/lzma/lzma_encoder.c:591:16
	movl	36(%rdx), %eax
	.loc	0 591 29 is_stmt 0              # liblzma/lzma/lzma_encoder.c:591:29
	decl	%eax
	.loc	0 591 5                         # liblzma/lzma/lzma_encoder.c:591:5
	movl	%eax, 47620(%rdi)
	.loc	0 593 16 is_stmt 1              # liblzma/lzma/lzma_encoder.c:593:16
	movl	36(%rdx), %eax
	.loc	0 593 29 is_stmt 0              # liblzma/lzma/lzma_encoder.c:593:29
	decl	%eax
	.loc	0 593 5                         # liblzma/lzma/lzma_encoder.c:593:5
	movl	%eax, 66124(%rdi)
.Ltmp537:
	.loc	0 605 47 is_stmt 1              # liblzma/lzma/lzma_encoder.c:605:47
	cmpq	$0, 8(%rdx)
	.loc	0 606 4                         # liblzma/lzma/lzma_encoder.c:606:4
	jne	.LBB3_12
.Ltmp538:
.LBB3_11:
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder <- $rdi
	.loc	0 0 4 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:4
	xorl	%eax, %eax
.Ltmp539:
.LBB3_13:                               # %land.end
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder <- $rdi
	.loc	0 605 24 is_stmt 1              # liblzma/lzma/lzma_encoder.c:605:24
	movb	%al, 2957(%rdi)
	.loc	0 607 20                        # liblzma/lzma/lzma_encoder.c:607:20
	movb	$0, 2958(%rdi)
.Ltmp540:
	#DEBUG_VALUE: set_lz_options:lz_options <- $rbx
	#DEBUG_VALUE: set_lz_options:options <- undef
	.loc	0 447 26                        # liblzma/lzma/lzma_encoder.c:447:26
	movq	$4096, (%rbx)                   # imm = 0x1000
	.loc	0 448 35                        # liblzma/lzma/lzma_encoder.c:448:35
	movl	(%rdx), %eax
	.loc	0 448 24 is_stmt 0              # liblzma/lzma/lzma_encoder.c:448:24
	movq	%rax, 8(%rbx)
	.loc	0 449 25 is_stmt 1              # liblzma/lzma/lzma_encoder.c:449:25
	movq	$4097, 16(%rbx)                 # imm = 0x1001
	.loc	0 450 28                        # liblzma/lzma/lzma_encoder.c:450:28
	movq	$273, 24(%rbx)                  # imm = 0x111
	.loc	0 451 34                        # liblzma/lzma/lzma_encoder.c:451:34
	movl	36(%rdx), %eax
	.loc	0 451 23 is_stmt 0              # liblzma/lzma/lzma_encoder.c:451:23
	movq	%rax, 32(%rbx)
	.loc	0 452 38 is_stmt 1              # liblzma/lzma/lzma_encoder.c:452:38
	movl	40(%rdx), %eax
	.loc	0 452 27 is_stmt 0              # liblzma/lzma/lzma_encoder.c:452:27
	movl	%eax, 40(%rbx)
	.loc	0 453 31 is_stmt 1              # liblzma/lzma/lzma_encoder.c:453:31
	movl	44(%rdx), %eax
	.loc	0 453 20 is_stmt 0              # liblzma/lzma/lzma_encoder.c:453:20
	movl	%eax, 44(%rbx)
	.loc	0 454 37 is_stmt 1              # liblzma/lzma/lzma_encoder.c:454:37
	movq	8(%rdx), %rax
	.loc	0 454 26 is_stmt 0              # liblzma/lzma/lzma_encoder.c:454:26
	movq	%rax, 48(%rbx)
	.loc	0 455 42 is_stmt 1              # liblzma/lzma/lzma_encoder.c:455:42
	movl	16(%rdx), %eax
	.loc	0 455 31 is_stmt 0              # liblzma/lzma/lzma_encoder.c:455:31
	movl	%eax, 56(%rbx)
.Ltmp541:
	.loc	0 611 9 is_stmt 1               # liblzma/lzma/lzma_encoder.c:611:9
	movq	%rdx, %rsi
	.loc	0 611 9 epilogue_begin is_stmt 0 # liblzma/lzma/lzma_encoder.c:611:9
	popq	%rbx
.Ltmp542:
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp543:
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.Ltmp544:
	jmp	lzma_lzma_encoder_reset         # TAILCALL
.Ltmp545:
.LBB3_2:
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- $r15
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	.loc	0 0 9                           # liblzma/lzma/lzma_encoder.c:0:9
	movl	$5, %eax
.Ltmp546:
.LBB3_3:                                # %return
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- $r14
	#DEBUG_VALUE: lzma_lzma_encoder_create:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_create:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- $rbx
	.loc	0 612 1 epilogue_begin is_stmt 1 # liblzma/lzma/lzma_encoder.c:612:1
	popq	%rbx
.Ltmp547:
	#DEBUG_VALUE: lzma_lzma_encoder_create:lz_options <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp548:
	#DEBUG_VALUE: lzma_lzma_encoder_create:coder_ptr <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp549:
.Lfunc_end3:
	.size	lzma_lzma_encoder_create, .Lfunc_end3-lzma_lzma_encoder_create
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_encoder_init          # -- Begin function lzma_lzma_encoder_init
	.p2align	4, 0x90
	.type	lzma_lzma_encoder_init,@function
lzma_lzma_encoder_init:                 # @lzma_lzma_encoder_init
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_lzma_encoder_init:filters <- $rdx
	.loc	0 629 9 prologue_end            # liblzma/lzma/lzma_encoder.c:629:9
	movl	$lzma_encoder_init, %ecx
.Ltmp550:
	jmp	lzma_lz_encoder_init@PLT        # TAILCALL
.Ltmp551:
.Lfunc_end4:
	.size	lzma_lzma_encoder_init, .Lfunc_end4-lzma_lzma_encoder_init
	.cfi_endproc
	.file	13 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	14 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	15 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma_encoder_init
	.type	lzma_encoder_init,@function
lzma_encoder_init:                      # @lzma_encoder_init
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_encoder_init:lz <- $rdi
	#DEBUG_VALUE: lzma_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_encoder_init:options <- $rdx
	#DEBUG_VALUE: lzma_encoder_init:lz_options <- $rcx
	.loc	0 619 11 prologue_end           # liblzma/lzma/lzma_encoder.c:619:11
	movq	$lzma_encode, 8(%rdi)
.Ltmp552:
	.loc	0 620 9                         # liblzma/lzma/lzma_encoder.c:620:9
	jmp	lzma_lzma_encoder_create        # TAILCALL
.Ltmp553:
.Lfunc_end5:
	.size	lzma_encoder_init, .Lfunc_end5-lzma_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_encoder_memusage      # -- Begin function lzma_lzma_encoder_memusage
	.p2align	4, 0x90
	.type	lzma_lzma_encoder_memusage,@function
lzma_lzma_encoder_memusage:             # @lzma_lzma_encoder_memusage
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_options <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: is_options_valid:options <- $rdi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rdi
	.loc	7 35 18 prologue_end            # liblzma/lzma/lzma_common.h:35:18
	movl	20(%rdi), %ecx
	movq	$-1, %rax
	.loc	7 35 21 is_stmt 0               # liblzma/lzma/lzma_common.h:35:21
	cmpl	$4, %ecx
	.loc	7 35 38                         # liblzma/lzma/lzma_common.h:35:38
	ja	.LBB6_6
.Ltmp554:
# %bb.1:                                # %land.lhs.true.i.i
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_options <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: is_options_valid:options <- $rdi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rdi
	.loc	7 35 50                         # liblzma/lzma/lzma_common.h:35:50
	movl	24(%rdi), %edx
	.loc	7 35 53                         # liblzma/lzma/lzma_common.h:35:53
	cmpl	$5, %edx
	setb	%sil
	addl	%edx, %ecx
	cmpl	$5, %ecx
	setb	%cl
	.loc	7 36 4 is_stmt 1                # liblzma/lzma/lzma_common.h:36:4
	andb	%sil, %cl
	cmpb	$1, %cl
	jne	.LBB6_6
.Ltmp555:
# %bb.2:                                # %is_lclppb_valid.exit.i
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_options <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: is_options_valid:options <- $rdi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rdi
	.loc	7 37 19                         # liblzma/lzma/lzma_common.h:37:19
	cmpl	$4, 28(%rdi)
.Ltmp556:
	.loc	0 435 4                         # liblzma/lzma/lzma_encoder.c:435:4
	ja	.LBB6_6
.Ltmp557:
# %bb.3:                                # %land.lhs.true.i
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_options <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: is_options_valid:options <- $rdi
	.loc	0 435 16 is_stmt 0              # liblzma/lzma/lzma_encoder.c:435:16
	movl	36(%rdi), %ecx
	.loc	0 436 4 is_stmt 1               # liblzma/lzma/lzma_encoder.c:436:4
	leal	-2(%rcx), %edx
	cmpl	$271, %edx                      # imm = 0x10F
	ja	.LBB6_6
.Ltmp558:
# %bb.4:                                # %is_options_valid.exit
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_options <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: is_options_valid:options <- $rdi
	.loc	0 437 17                        # liblzma/lzma/lzma_encoder.c:437:17
	movl	32(%rdi), %edx
	.loc	0 438 5                         # liblzma/lzma/lzma_encoder.c:438:5
	decl	%edx
	cmpl	$1, %edx
.Ltmp559:
	.loc	0 637 6                         # liblzma/lzma/lzma_encoder.c:637:6
	ja	.LBB6_6
.Ltmp560:
# %bb.5:                                # %if.end
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_options <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
.Ltmp561:
	#DEBUG_VALUE: set_lz_options:lz_options <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: set_lz_options:options <- $rdi
	.loc	0 447 26                        # liblzma/lzma/lzma_encoder.c:447:26
	movq	$4096, 8(%rsp)                  # imm = 0x1000
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_options <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	.loc	0 448 35                        # liblzma/lzma/lzma_encoder.c:448:35
	movl	(%rdi), %eax
	.loc	0 448 24 is_stmt 0              # liblzma/lzma/lzma_encoder.c:448:24
	movq	%rax, 16(%rsp)
	.loc	0 449 25 is_stmt 1              # liblzma/lzma/lzma_encoder.c:449:25
	movq	$4097, 24(%rsp)                 # imm = 0x1001
	.loc	0 450 28                        # liblzma/lzma/lzma_encoder.c:450:28
	movq	$273, 32(%rsp)                  # imm = 0x111
	.loc	0 451 23                        # liblzma/lzma/lzma_encoder.c:451:23
	movq	%rcx, 40(%rsp)
.Ltmp562:
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_options <- [DW_OP_LLVM_fragment 320 32] undef
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_options <- [DW_OP_plus_uconst 8, DW_OP_deref, DW_OP_LLVM_fragment 0 320] $rsp
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_options <- [DW_OP_plus_uconst 8, DW_OP_plus_uconst 44, DW_OP_deref, DW_OP_LLVM_fragment 352 160] $rsp
	.loc	0 452 38                        # liblzma/lzma/lzma_encoder.c:452:38
	movq	40(%rdi), %rax
	.loc	0 452 27 is_stmt 0              # liblzma/lzma/lzma_encoder.c:452:27
	movq	%rax, 48(%rsp)
.Ltmp563:
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_options <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	.loc	0 454 37 is_stmt 1              # liblzma/lzma/lzma_encoder.c:454:37
	movq	8(%rdi), %rax
	.loc	0 454 26 is_stmt 0              # liblzma/lzma/lzma_encoder.c:454:26
	movq	%rax, 56(%rsp)
	.loc	0 455 42 is_stmt 1              # liblzma/lzma/lzma_encoder.c:455:42
	movl	16(%rdi), %eax
	.loc	0 455 31 is_stmt 0              # liblzma/lzma/lzma_encoder.c:455:31
	movl	%eax, 64(%rsp)
	leaq	8(%rsp), %rdi
.Ltmp564:
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:options <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 643 31 is_stmt 1              # liblzma/lzma/lzma_encoder.c:643:31
	callq	lzma_lz_encoder_memusage@PLT
.Ltmp565:
	movq	%rax, %rcx
.Ltmp566:
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:lz_memusage <- $rcx
	.loc	0 644 6                         # liblzma/lzma/lzma_encoder.c:644:6
	addq	$249576, %rax                   # imm = 0x3CEE8
.Ltmp567:
	.loc	0 644 18 is_stmt 0              # liblzma/lzma/lzma_encoder.c:644:18
	cmpq	$-1, %rcx
.Ltmp568:
	.loc	0 644 6                         # liblzma/lzma/lzma_encoder.c:644:6
	cmoveq	%rcx, %rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
.Ltmp569:
.LBB6_6:                                # %return
	#DEBUG_VALUE: lzma_lzma_encoder_memusage:options <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 648 1 is_stmt 1               # liblzma/lzma/lzma_encoder.c:648:1
	retq
.Ltmp570:
.Lfunc_end6:
	.size	lzma_lzma_encoder_memusage, .Lfunc_end6-lzma_lzma_encoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_lclppb_encode         # -- Begin function lzma_lzma_lclppb_encode
	.p2align	4, 0x90
	.type	lzma_lzma_lclppb_encode,@function
lzma_lzma_lclppb_encode:                # @lzma_lzma_lclppb_encode
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:byte <- $rsi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rdi
	.loc	7 35 18 prologue_end            # liblzma/lzma/lzma_common.h:35:18
	movl	20(%rdi), %ecx
	movb	$1, %al
	.loc	7 35 21 is_stmt 0               # liblzma/lzma/lzma_common.h:35:21
	cmpl	$4, %ecx
	.loc	7 35 38                         # liblzma/lzma/lzma_common.h:35:38
	ja	.LBB7_4
.Ltmp571:
# %bb.1:                                # %land.lhs.true.i
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:byte <- $rsi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rdi
	.loc	7 35 50                         # liblzma/lzma/lzma_common.h:35:50
	movl	24(%rdi), %edx
	.loc	7 35 53                         # liblzma/lzma/lzma_common.h:35:53
	cmpl	$5, %edx
	setb	%r8b
	leal	(%rdx,%rcx), %r9d
	cmpl	$5, %r9d
	setb	%r9b
	.loc	7 36 4 is_stmt 1                # liblzma/lzma/lzma_common.h:36:4
	andb	%r8b, %r9b
	cmpb	$1, %r9b
	jne	.LBB7_4
.Ltmp572:
# %bb.2:                                # %is_lclppb_valid.exit
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:byte <- $rsi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rdi
	.loc	7 37 16                         # liblzma/lzma/lzma_common.h:37:16
	movl	28(%rdi), %edi
.Ltmp573:
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	7 37 19 is_stmt 0               # liblzma/lzma/lzma_common.h:37:19
	cmpl	$4, %edi
.Ltmp574:
	.loc	0 654 6 is_stmt 1               # liblzma/lzma/lzma_encoder.c:654:6
	ja	.LBB7_4
.Ltmp575:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:byte <- $rsi
	.loc	0 657 23                        # liblzma/lzma/lzma_encoder.c:657:23
	leal	(%rdi,%rdi,4), %eax
	.loc	0 657 27 is_stmt 0              # liblzma/lzma/lzma_encoder.c:657:27
	addl	%edx, %eax
	.loc	0 657 42                        # liblzma/lzma/lzma_encoder.c:657:42
	leal	(%rax,%rax,8), %eax
	.loc	0 657 46                        # liblzma/lzma/lzma_encoder.c:657:46
	addl	%ecx, %eax
	.loc	0 657 8                         # liblzma/lzma/lzma_encoder.c:657:8
	movb	%al, (%rsi)
	xorl	%eax, %eax
.Ltmp576:
.LBB7_4:                                # %return
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:byte <- $rsi
                                        # kill: def $al killed $al killed $eax
	.loc	0 661 1 is_stmt 1               # liblzma/lzma/lzma_encoder.c:661:1
	retq
.Ltmp577:
.Lfunc_end7:
	.size	lzma_lzma_lclppb_encode, .Lfunc_end7-lzma_lzma_lclppb_encode
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_props_encode          # -- Begin function lzma_lzma_props_encode
	.p2align	4, 0x90
	.type	lzma_lzma_props_encode,@function
lzma_lzma_props_encode:                 # @lzma_lzma_props_encode
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:byte <- $rsi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_props_encode:opt <- $rdi
	.loc	7 35 18 prologue_end            # liblzma/lzma/lzma_common.h:35:18
	movl	20(%rdi), %ecx
	movl	$11, %eax
	.loc	7 35 21 is_stmt 0               # liblzma/lzma/lzma_common.h:35:21
	cmpl	$4, %ecx
	.loc	7 35 38                         # liblzma/lzma/lzma_common.h:35:38
	ja	.LBB8_4
.Ltmp578:
# %bb.1:                                # %land.lhs.true.i.i
	#DEBUG_VALUE: lzma_lzma_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:byte <- $rsi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_props_encode:opt <- $rdi
	.loc	7 35 50                         # liblzma/lzma/lzma_common.h:35:50
	movl	24(%rdi), %edx
	.loc	7 35 53                         # liblzma/lzma/lzma_common.h:35:53
	cmpl	$5, %edx
	setb	%r8b
	leal	(%rdx,%rcx), %r9d
	cmpl	$5, %r9d
	setb	%r9b
	.loc	7 36 4 is_stmt 1                # liblzma/lzma/lzma_common.h:36:4
	andb	%r8b, %r9b
	cmpb	$1, %r9b
	jne	.LBB8_4
.Ltmp579:
# %bb.2:                                # %is_lclppb_valid.exit.i
	#DEBUG_VALUE: lzma_lzma_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:byte <- $rsi
	#DEBUG_VALUE: is_lclppb_valid:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_props_encode:opt <- $rdi
	.loc	7 37 16                         # liblzma/lzma/lzma_common.h:37:16
	movl	28(%rdi), %r8d
	.loc	7 37 19 is_stmt 0               # liblzma/lzma/lzma_common.h:37:19
	cmpl	$4, %r8d
.Ltmp580:
	.loc	0 654 6 is_stmt 1               # liblzma/lzma/lzma_encoder.c:654:6
	ja	.LBB8_4
.Ltmp581:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: lzma_lzma_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_lclppb_encode:byte <- $rsi
	#DEBUG_VALUE: lzma_lzma_props_encode:opt <- $rdi
	.loc	0 657 23                        # liblzma/lzma/lzma_encoder.c:657:23
	leal	(%r8,%r8,4), %eax
	.loc	0 657 27 is_stmt 0              # liblzma/lzma/lzma_encoder.c:657:27
	addl	%edx, %eax
	.loc	0 657 42                        # liblzma/lzma/lzma_encoder.c:657:42
	leal	(%rax,%rax,8), %eax
	.loc	0 657 46                        # liblzma/lzma/lzma_encoder.c:657:46
	addl	%ecx, %eax
	.loc	0 657 8                         # liblzma/lzma/lzma_encoder.c:657:8
	movb	%al, (%rsi)
.Ltmp582:
	.loc	0 673 36 is_stmt 1              # liblzma/lzma/lzma_encoder.c:673:36
	movl	(%rdi), %eax
.Ltmp583:
	#DEBUG_VALUE: unaligned_write32le:num <- $eax
	#DEBUG_VALUE: unaligned_write32le:buf <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rsi
	.file	16 "common" "tuklib_integer.h" md5 0x877bd6a1d04ec1170bc985c87ef412ed
	.loc	16 356 9                        # common/tuklib_integer.h:356:9
	movl	%eax, 1(%rsi)
	xorl	%eax, %eax
.Ltmp584:
.LBB8_4:                                # %cleanup
	#DEBUG_VALUE: lzma_lzma_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_lzma_props_encode:opt <- $rdi
	.loc	0 676 1                         # liblzma/lzma/lzma_encoder.c:676:1
	retq
.Ltmp585:
.Lfunc_end8:
	.size	lzma_lzma_props_encode, .Lfunc_end8-lzma_lzma_props_encode
	.cfi_endproc
                                        # -- End function
	.globl	lzma_mode_is_supported          # -- Begin function lzma_mode_is_supported
	.p2align	4, 0x90
	.type	lzma_mode_is_supported,@function
lzma_mode_is_supported:                 # @lzma_mode_is_supported
.Lfunc_begin9:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_mode_is_supported:mode <- $edi
	.loc	0 683 32 prologue_end           # liblzma/lzma/lzma_encoder.c:683:32
	decl	%edi
.Ltmp586:
	#DEBUG_VALUE: lzma_mode_is_supported:mode <- [DW_OP_LLVM_entry_value 1] $edi
	cmpl	$2, %edi
	setb	%al
	.loc	0 683 2 is_stmt 0               # liblzma/lzma/lzma_encoder.c:683:2
	retq
.Ltmp587:
.Lfunc_end9:
	.size	lzma_mode_is_supported, .Lfunc_end9-lzma_mode_is_supported
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function match
	.type	match,@function
match:                                  # @match
.Lfunc_begin10:
	.loc	0 146 0 is_stmt 1               # liblzma/lzma/lzma_encoder.c:146:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: match:pcoder <- $rdi
	#DEBUG_VALUE: match:pos_state <- $esi
	#DEBUG_VALUE: match:distance <- $edx
	#DEBUG_VALUE: match:len <- $ecx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
.Ltmp588:
	#DEBUG_VALUE: match:coder <- $rdi
	movl	%ecx, %r15d
	movl	%edx, %ebx
	movl	%esi, %edx
.Ltmp589:
	#DEBUG_VALUE: match:distance <- $ebx
	movq	%rdi, %r14
.Ltmp590:
	.loc	0 148 2 prologue_end            # liblzma/lzma/lzma_encoder.c:148:2
	xorl	%eax, %eax
	cmpl	$7, 736(%rdi)
	setae	%al
	leal	(%rax,%rax,2), %eax
	addl	$7, %eax
	movl	%eax, 736(%rdi)
	.loc	0 150 29                        # liblzma/lzma/lzma_encoder.c:150:29
	leaq	29184(%rdi), %rsi
.Ltmp591:
	#DEBUG_VALUE: match:pos_state <- $edx
	.loc	0 151 11                        # liblzma/lzma/lzma_encoder.c:151:11
	movzbl	2956(%rdi), %r8d
	.loc	0 150 2                         # liblzma/lzma/lzma_encoder.c:150:2
	callq	length
.Ltmp592:
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: get_pos_slot:pos <- $ebx
	.file	17 "liblzma/lzma" "fastpos.h" md5 0xcbaa9cd9040be4a8dee21ea4da47c8df
	.loc	17 112 10                       # liblzma/lzma/fastpos.h:112:10
	cmpl	$8191, %ebx                     # imm = 0x1FFF
.Ltmp593:
	.loc	17 112 6 is_stmt 0              # liblzma/lzma/fastpos.h:112:6
	ja	.LBB10_2
.Ltmp594:
# %bb.1:                                # %if.then.i
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: get_pos_slot:pos <- $ebx
	.loc	17 113 10 is_stmt 1             # liblzma/lzma/fastpos.h:113:10
	movl	%ebx, %eax
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%rax), %esi
	.loc	17 113 3 is_stmt 0              # liblzma/lzma/fastpos.h:113:3
	jmp	.LBB10_5
.Ltmp595:
.LBB10_2:                               # %if.end.i
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: get_pos_slot:pos <- $ebx
	.loc	17 118 9 is_stmt 1              # liblzma/lzma/fastpos.h:118:9
	movl	%ebx, %eax
.Ltmp596:
	.loc	17 115 10                       # liblzma/lzma/fastpos.h:115:10
	cmpl	$33554431, %ebx                 # imm = 0x1FFFFFF
.Ltmp597:
	.loc	17 115 6 is_stmt 0              # liblzma/lzma/fastpos.h:115:6
	ja	.LBB10_4
.Ltmp598:
# %bb.3:                                # %if.then3.i
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: get_pos_slot:pos <- $ebx
	.loc	17 116 10 is_stmt 1             # liblzma/lzma/fastpos.h:116:10
	shrl	$12, %eax
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	$24, %esi
	.loc	17 116 3 is_stmt 0              # liblzma/lzma/fastpos.h:116:3
	jmp	.LBB10_5
.Ltmp599:
.LBB10_4:                               # %if.end7.i
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: get_pos_slot:pos <- $ebx
	.loc	17 118 9 is_stmt 1              # liblzma/lzma/fastpos.h:118:9
	shrl	$24, %eax
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	$48, %esi
.Ltmp600:
.LBB10_5:                               # %get_pos_slot.exit
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: match:pos_slot <- $esi
	.loc	0 154 36                        # liblzma/lzma/lzma_encoder.c:154:36
	leal	-2(%r15), %eax
	cmpl	$6, %r15d
	movl	$3, %ecx
	cmovbl	%eax, %ecx
.Ltmp601:
	#DEBUG_VALUE: match:len_to_pos_state <- $ecx
	.loc	0 155 25                        # liblzma/lzma/lzma_encoder.c:155:25
	shlq	$7, %rcx
.Ltmp602:
	.loc	0 155 32 is_stmt 0              # liblzma/lzma/lzma_encoder.c:155:32
	leaq	(%r14,%rcx), %rax
.Ltmp603:
	#DEBUG_VALUE: rc_bittree:rc <- $r14
	#DEBUG_VALUE: rc_bittree:bit_count <- 6
	#DEBUG_VALUE: rc_bittree:symbol <- $esi
	#DEBUG_VALUE: rc_bittree:model_index <- 1
	#DEBUG_VALUE: rc_bittree:probs <- [DW_OP_plus_uconst 28412, DW_OP_stack_value] $rax
	.loc	4 69 18 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:18
	movq	24(%r14), %rdx
.Ltmp604:
	#DEBUG_VALUE: rc_bittree:bit_count <- 5
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%esi, %edi
	shrl	$5, %edi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %edi
.Ltmp605:
	#DEBUG_VALUE: bit <- $edi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	addq	%r14, %rcx
	addq	$28414, %rcx                    # imm = 0x6EFE
.Ltmp606:
	#DEBUG_VALUE: rc_bit:prob <- $rcx
	#DEBUG_VALUE: rc_bit:rc <- $r14
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 40(%r14,%rdx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rdx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rcx, 272(%r14,%rdx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %rcx
.Ltmp607:
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%r14)
.Ltmp608:
	#DEBUG_VALUE: rc_bittree:model_index <- undef
	#DEBUG_VALUE: rc_bittree:bit_count <- 4
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%esi, %edx
	shrl	$4, %edx
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %edx
.Ltmp609:
	#DEBUG_VALUE: bit <- $edx
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leal	4(,%rdi,2), %r8d
	addq	%rax, %r8
	addq	$28412, %r8                     # imm = 0x6EFC
.Ltmp610:
	#DEBUG_VALUE: rc_bit:prob <- $r8
	#DEBUG_VALUE: rc_bit:bit <- $edx
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edx, 44(%r14,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r8, 272(%r14,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %rcx
	leaq	1(%rcx), %r8
.Ltmp611:
	movq	%r8, 24(%r14)
.Ltmp612:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rdx,%rdi,2), %edx
.Ltmp613:
	addl	$4, %edx
.Ltmp614:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 3
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%esi, %edi
	shrl	$3, %edi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %edi
.Ltmp615:
	#DEBUG_VALUE: bit <- $edi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leal	(%rdx,%rdx), %r8d
	addq	%rax, %r8
	addq	$28412, %r8                     # imm = 0x6EFC
.Ltmp616:
	#DEBUG_VALUE: rc_bit:prob <- $r8
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%r14,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r8, 272(%r14,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %rcx
	leaq	1(%rcx), %r8
.Ltmp617:
	movq	%r8, 24(%r14)
.Ltmp618:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rdi,%rdx,2), %edx
.Ltmp619:
	#DEBUG_VALUE: rc_bittree:model_index <- $edx
	#DEBUG_VALUE: rc_bittree:bit_count <- 2
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%esi, %edi
.Ltmp620:
	shrl	$2, %edi
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %edi
.Ltmp621:
	#DEBUG_VALUE: bit <- $edi
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rax,%rdx,2), %r8
	addq	$28412, %r8                     # imm = 0x6EFC
.Ltmp622:
	#DEBUG_VALUE: rc_bit:prob <- $r8
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%r14,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r8, 272(%r14,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %rcx
	leaq	1(%rcx), %r8
.Ltmp623:
	movq	%r8, 24(%r14)
.Ltmp624:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rdi,%rdx,2), %edi
.Ltmp625:
	#DEBUG_VALUE: rc_bittree:model_index <- $edi
	#DEBUG_VALUE: rc_bittree:bit_count <- 1
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%esi, %edx
	shrl	%edx
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	movl	%edx, %r8d
	andl	$1, %r8d
.Ltmp626:
	#DEBUG_VALUE: bit <- $r8d
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rax,%rdi,2), %r9
	addq	$28412, %r9                     # imm = 0x6EFC
.Ltmp627:
	#DEBUG_VALUE: rc_bit:prob <- $r9
	#DEBUG_VALUE: rc_bit:bit <- $r8d
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%r8d, 44(%r14,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r9, 272(%r14,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %rcx
	leaq	1(%rcx), %r9
.Ltmp628:
	movq	%r9, 24(%r14)
.Ltmp629:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%r8,%rdi,2), %edi
.Ltmp630:
	#DEBUG_VALUE: rc_bittree:model_index <- $edi
	#DEBUG_VALUE: rc_bittree:bit_count <- 0
	.loc	4 82 48                         # liblzma/rangecoder/range_encoder.h:82:48
	movl	%esi, %r8d
.Ltmp631:
	andl	$1, %r8d
.Ltmp632:
	#DEBUG_VALUE: bit <- $r8d
	.loc	4 83 15                         # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rax,%rdi,2), %rax
.Ltmp633:
	addq	$28412, %rax                    # imm = 0x6EFC
.Ltmp634:
	#DEBUG_VALUE: rc_bit:prob <- $rax
	#DEBUG_VALUE: rc_bit:bit <- $r8d
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%r8d, 44(%r14,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rax, 272(%r14,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %rdi
.Ltmp635:
	leaq	1(%rdi), %rax
.Ltmp636:
	movq	%rax, 24(%r14)
.Ltmp637:
	#DEBUG_VALUE: rc_bittree:model_index <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 1, DW_OP_shl, DW_OP_or, DW_OP_stack_value] undef, undef
	.loc	0 158 15                        # liblzma/lzma/lzma_encoder.c:158:15
	cmpl	$4, %esi
.Ltmp638:
	.loc	0 158 6 is_stmt 0               # liblzma/lzma/lzma_encoder.c:158:6
	jb	.LBB10_18
.Ltmp639:
# %bb.6:                                # %if.then
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: match:pos_slot <- $esi
	#DEBUG_VALUE: footer_bits <- undef
	.loc	0 160 28 is_stmt 1              # liblzma/lzma/lzma_encoder.c:160:28
	orl	$2, %r8d
	.loc	0 160 46 is_stmt 0              # liblzma/lzma/lzma_encoder.c:160:46
	leal	-1(%rdx), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r8d
.Ltmp640:
	#DEBUG_VALUE: base <- $r8d
	.loc	0 161 41 is_stmt 1              # liblzma/lzma/lzma_encoder.c:161:41
	movl	%ebx, %eax
	subl	%r8d, %eax
.Ltmp641:
	#DEBUG_VALUE: pos_reduced <- $eax
	.loc	0 163 16                        # liblzma/lzma/lzma_encoder.c:163:16
	cmpl	$13, %esi
.Ltmp642:
	.loc	0 163 7 is_stmt 0               # liblzma/lzma/lzma_encoder.c:163:7
	ja	.LBB10_12
.Ltmp643:
# %bb.7:                                # %if.then10
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: match:pos_slot <- $esi
	#DEBUG_VALUE: base <- $r8d
	#DEBUG_VALUE: pos_reduced <- $eax
	.loc	0 167 24 is_stmt 1              # liblzma/lzma/lzma_encoder.c:167:24
	movl	%r8d, %ecx
	.loc	0 167 12 is_stmt 0              # liblzma/lzma/lzma_encoder.c:167:12
	leaq	(%r14,%rcx,2), %rcx
	.loc	0 167 31                        # liblzma/lzma/lzma_encoder.c:167:31
	addl	%esi, %esi
.Ltmp644:
	subq	%rsi, %rcx
	leaq	28924(%rcx), %r8
.Ltmp645:
	#DEBUG_VALUE: rc_bittree_reverse:rc <- $r14
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- 1
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- $eax
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $edx
	#DEBUG_VALUE: rc_bit:prob <- $r8
	#DEBUG_VALUE: rc_bittree_reverse:probs <- undef
	.loc	4 96 31 is_stmt 1               # liblzma/rangecoder/range_encoder.h:96:31
	movl	%eax, %esi
	andl	$1, %esi
.Ltmp646:
	#DEBUG_VALUE: bit <- $esi
	#DEBUG_VALUE: rc_bit:bit <- $esi
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- [DW_OP_constu 1, DW_OP_shr, DW_OP_stack_value] $eax
	#DEBUG_VALUE: rc_bit:rc <- $r14
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%esi, 44(%r14,%rdi,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rdi
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r8, 272(%r14,%rdi,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %r8
.Ltmp647:
	leaq	1(%r8), %rdi
	movq	%rdi, 24(%r14)
.Ltmp648:
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_stack_value] 2, $esi
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $edx
	.loc	4 100 23                        # liblzma/rangecoder/range_encoder.h:100:23
	cmpl	$2, %edx
.Ltmp649:
	.loc	4 100 2 is_stmt 0               # liblzma/rangecoder/range_encoder.h:100:2
	je	.LBB10_18
.Ltmp650:
# %bb.8:                                # %do.body.i79.1
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: pos_reduced <- $eax
	#DEBUG_VALUE: rc_bittree_reverse:rc <- $r14
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_stack_value] 2, $esi
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- [DW_OP_constu 1, DW_OP_shr, DW_OP_stack_value] $eax
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $edx
	#DEBUG_VALUE: bit <- $esi
	#DEBUG_VALUE: rc_bit:bit <- $esi
	#DEBUG_VALUE: rc_bit:rc <- $r14
	.loc	0 0 0                           # liblzma/lzma/lzma_encoder.c:0:0
	addq	$28922, %rcx                    # imm = 0x70FA
.Ltmp651:
	#DEBUG_VALUE: rc_bittree_reverse:probs <- $rcx
	.loc	4 99 36 is_stmt 1               # liblzma/rangecoder/range_encoder.h:99:36
	orl	$2, %esi
.Ltmp652:
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- $esi
	.loc	4 97 10                         # liblzma/rangecoder/range_encoder.h:97:10
	movl	%eax, %edi
	shrl	%edi
.Ltmp653:
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- $edi
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $edx
	.loc	4 96 31                         # liblzma/rangecoder/range_encoder.h:96:31
	andl	$1, %edi
.Ltmp654:
	#DEBUG_VALUE: bit <- $edi
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- [DW_OP_constu 1, DW_OP_shr, DW_OP_stack_value] undef
	.loc	4 98 15                         # liblzma/rangecoder/range_encoder.h:98:15
	leaq	(%rcx,%rsi,2), %r9
.Ltmp655:
	#DEBUG_VALUE: rc_bit:prob <- $r9
	#DEBUG_VALUE: rc_bit:rc <- $r14
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%r14,%r8,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %r8
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r9, 272(%r14,%r8,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %r8
	leaq	1(%r8), %r9
.Ltmp656:
	movq	%r9, 24(%r14)
.Ltmp657:
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- [DW_OP_LLVM_arg 0, DW_OP_constu 1, DW_OP_shl, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_stack_value] $esi, $edi
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 3, DW_OP_minus, DW_OP_stack_value] $edx
	.loc	4 100 23                        # liblzma/rangecoder/range_encoder.h:100:23
	cmpl	$3, %edx
.Ltmp658:
	.loc	4 100 2 is_stmt 0               # liblzma/rangecoder/range_encoder.h:100:2
	je	.LBB10_18
.Ltmp659:
# %bb.9:                                # %do.body.i79.2
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: pos_reduced <- $eax
	#DEBUG_VALUE: rc_bittree_reverse:rc <- $r14
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- [DW_OP_LLVM_arg 0, DW_OP_constu 1, DW_OP_shl, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_stack_value] $esi, $edi
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 3, DW_OP_minus, DW_OP_stack_value] $edx
	#DEBUG_VALUE: rc_bittree_reverse:probs <- $rcx
	#DEBUG_VALUE: bit <- $edi
	#DEBUG_VALUE: rc_bit:bit <- $edi
	#DEBUG_VALUE: rc_bit:rc <- $r14
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- undef
	.loc	4 99 36 is_stmt 1               # liblzma/rangecoder/range_encoder.h:99:36
	leal	(%rdi,%rsi,2), %esi
.Ltmp660:
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- $esi
	.loc	4 97 10                         # liblzma/rangecoder/range_encoder.h:97:10
	movl	%eax, %edi
.Ltmp661:
	shrl	$2, %edi
.Ltmp662:
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- $edi
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 3, DW_OP_minus, DW_OP_stack_value] $edx
	.loc	4 96 31                         # liblzma/rangecoder/range_encoder.h:96:31
	andl	$1, %edi
.Ltmp663:
	#DEBUG_VALUE: bit <- $edi
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- [DW_OP_constu 1, DW_OP_shr, DW_OP_stack_value] undef
	.loc	4 98 15                         # liblzma/rangecoder/range_encoder.h:98:15
	leaq	(%rcx,%rsi,2), %r9
.Ltmp664:
	#DEBUG_VALUE: rc_bit:prob <- $r9
	#DEBUG_VALUE: rc_bit:rc <- $r14
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%r14,%r8,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %r8
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r9, 272(%r14,%r8,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %r8
	leaq	1(%r8), %r9
.Ltmp665:
	movq	%r9, 24(%r14)
.Ltmp666:
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- [DW_OP_LLVM_arg 0, DW_OP_constu 1, DW_OP_shl, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_stack_value] $esi, $edi
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 4, DW_OP_minus, DW_OP_stack_value] $edx
	.loc	4 100 23                        # liblzma/rangecoder/range_encoder.h:100:23
	cmpl	$4, %edx
.Ltmp667:
	.loc	4 100 2 is_stmt 0               # liblzma/rangecoder/range_encoder.h:100:2
	je	.LBB10_18
.Ltmp668:
# %bb.10:                               # %do.body.i79.3
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: pos_reduced <- $eax
	#DEBUG_VALUE: rc_bittree_reverse:rc <- $r14
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- [DW_OP_LLVM_arg 0, DW_OP_constu 1, DW_OP_shl, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_stack_value] $esi, $edi
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 4, DW_OP_minus, DW_OP_stack_value] $edx
	#DEBUG_VALUE: rc_bittree_reverse:probs <- $rcx
	#DEBUG_VALUE: bit <- $edi
	#DEBUG_VALUE: rc_bit:bit <- $edi
	#DEBUG_VALUE: rc_bit:rc <- $r14
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- undef
	.loc	4 99 36 is_stmt 1               # liblzma/rangecoder/range_encoder.h:99:36
	leal	(%rdi,%rsi,2), %esi
.Ltmp669:
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- $esi
	.loc	4 97 10                         # liblzma/rangecoder/range_encoder.h:97:10
	movl	%eax, %edi
.Ltmp670:
	shrl	$3, %edi
.Ltmp671:
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- $edi
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 4, DW_OP_minus, DW_OP_stack_value] $edx
	.loc	4 96 31                         # liblzma/rangecoder/range_encoder.h:96:31
	andl	$1, %edi
.Ltmp672:
	#DEBUG_VALUE: bit <- $edi
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- [DW_OP_constu 1, DW_OP_shr, DW_OP_stack_value] undef
	.loc	4 98 15                         # liblzma/rangecoder/range_encoder.h:98:15
	leaq	(%rcx,%rsi,2), %r9
.Ltmp673:
	#DEBUG_VALUE: rc_bit:prob <- $r9
	#DEBUG_VALUE: rc_bit:rc <- $r14
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%r14,%r8,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %r8
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r9, 272(%r14,%r8,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %r8
	leaq	1(%r8), %r9
.Ltmp674:
	movq	%r9, 24(%r14)
.Ltmp675:
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- [DW_OP_LLVM_arg 0, DW_OP_constu 1, DW_OP_shl, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_stack_value] $esi, $edi
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 5, DW_OP_minus, DW_OP_stack_value] $edx
	.loc	4 100 23                        # liblzma/rangecoder/range_encoder.h:100:23
	cmpl	$5, %edx
.Ltmp676:
	.loc	4 100 2 is_stmt 0               # liblzma/rangecoder/range_encoder.h:100:2
	je	.LBB10_18
.Ltmp677:
# %bb.11:                               # %do.body.i79.4
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: pos_reduced <- $eax
	#DEBUG_VALUE: rc_bittree_reverse:rc <- $r14
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- [DW_OP_LLVM_arg 0, DW_OP_constu 1, DW_OP_shl, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_stack_value] $esi, $edi
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 5, DW_OP_minus, DW_OP_stack_value] $edx
	#DEBUG_VALUE: rc_bittree_reverse:probs <- $rcx
	#DEBUG_VALUE: bit <- $edi
	#DEBUG_VALUE: rc_bit:bit <- $edi
	#DEBUG_VALUE: rc_bit:rc <- $r14
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- undef
	.loc	4 97 10 is_stmt 1               # liblzma/rangecoder/range_encoder.h:97:10
	shrl	$4, %eax
.Ltmp678:
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- $eax
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 5, DW_OP_minus, DW_OP_stack_value] $edx
	.loc	4 96 31                         # liblzma/rangecoder/range_encoder.h:96:31
	andl	$1, %eax
.Ltmp679:
	#DEBUG_VALUE: bit <- $eax
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- [DW_OP_constu 1, DW_OP_shr, DW_OP_stack_value] undef
	.loc	4 98 15                         # liblzma/rangecoder/range_encoder.h:98:15
	addl	%edi, %edi
	leal	(%rdi,%rsi,4), %edx
.Ltmp680:
	addq	%rdx, %rcx
.Ltmp681:
	#DEBUG_VALUE: rc_bit:prob <- $rcx
	#DEBUG_VALUE: rc_bit:rc <- $r14
	#DEBUG_VALUE: rc_bit:bit <- $eax
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%eax, 44(%r14,%r8,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rax
.Ltmp682:
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rcx, 272(%r14,%rax,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	incq	24(%r14)
.Ltmp683:
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- [DW_OP_constu 6, DW_OP_minus, DW_OP_stack_value] undef
	.loc	4 0 2 is_stmt 0                 # liblzma/rangecoder/range_encoder.h:0:2
	jmp	.LBB10_18
.Ltmp684:
.LBB10_12:                              # %if.else
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: match:pos_slot <- $esi
	#DEBUG_VALUE: base <- $r8d
	#DEBUG_VALUE: pos_reduced <- $eax
	.loc	0 170 38 is_stmt 1              # liblzma/lzma/lzma_encoder.c:170:38
	movl	%eax, %ecx
	shrl	$4, %ecx
	.loc	0 171 18                        # liblzma/lzma/lzma_encoder.c:171:18
	leal	-5(%rdx), %esi
.Ltmp685:
	#DEBUG_VALUE: rc_direct:bit_count <- $esi
	#DEBUG_VALUE: rc_direct:rc <- $r14
	#DEBUG_VALUE: rc_direct:value <- $ecx
	.loc	4 108 2                         # liblzma/rangecoder/range_encoder.h:108:2
	testb	$1, %sil
	je	.LBB10_14
.Ltmp686:
# %bb.13:                               # %do.body.i93.prol
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: base <- $r8d
	#DEBUG_VALUE: pos_reduced <- $eax
	#DEBUG_VALUE: rc_direct:bit_count <- $esi
	#DEBUG_VALUE: rc_direct:rc <- $r14
	#DEBUG_VALUE: rc_direct:value <- $ecx
	#DEBUG_VALUE: rc_direct:bit_count <- $esi
	.loc	4 110 32                        # liblzma/rangecoder/range_encoder.h:110:32
	leal	-6(%rdx), %esi
.Ltmp687:
	#DEBUG_VALUE: rc_direct:bit_count <- $esi
	.loc	4 0 32 is_stmt 0                # liblzma/rangecoder/range_encoder.h:0:32
	xorl	%edi, %edi
	.loc	4 110 45                        # liblzma/rangecoder/range_encoder.h:110:45
	btl	%esi, %ecx
	.loc	4 110 19                        # liblzma/rangecoder/range_encoder.h:110:19
	adcl	$2, %edi
	.loc	4 109 24 is_stmt 1              # liblzma/rangecoder/range_encoder.h:109:24
	movq	24(%r14), %r8
.Ltmp688:
	leaq	1(%r8), %r9
	movq	%r9, 24(%r14)
	.loc	4 110 5                         # liblzma/rangecoder/range_encoder.h:110:5
	movl	%edi, 40(%r14,%r8,4)
.Ltmp689:
.LBB10_14:                              # %do.body.i93.prol.loopexit
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: pos_reduced <- $eax
	#DEBUG_VALUE: rc_direct:bit_count <- $esi
	#DEBUG_VALUE: rc_direct:rc <- $r14
	#DEBUG_VALUE: rc_direct:value <- $ecx
	.loc	4 108 2                         # liblzma/rangecoder/range_encoder.h:108:2
	cmpl	$6, %edx
	je	.LBB10_17
.Ltmp690:
# %bb.15:                               # %do.body.i93.preheader
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: pos_reduced <- $eax
	#DEBUG_VALUE: rc_direct:bit_count <- $esi
	#DEBUG_VALUE: rc_direct:rc <- $r14
	#DEBUG_VALUE: rc_direct:value <- $ecx
	decl	%esi
.Ltmp691:
	.p2align	4, 0x90
.LBB10_16:                              # %do.body.i93
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: pos_reduced <- $eax
	#DEBUG_VALUE: rc_direct:rc <- $r14
	#DEBUG_VALUE: rc_direct:value <- $ecx
	#DEBUG_VALUE: rc_direct:bit_count <- $esi
	.loc	4 110 45                        # liblzma/rangecoder/range_encoder.h:110:45
	btl	%esi, %ecx
	.loc	4 110 19 is_stmt 0              # liblzma/rangecoder/range_encoder.h:110:19
	movl	$0, %edx
	adcl	$2, %edx
	.loc	4 109 24 is_stmt 1              # liblzma/rangecoder/range_encoder.h:109:24
	movq	24(%r14), %rdi
	leaq	1(%rdi), %r8
	movq	%r8, 24(%r14)
	.loc	4 110 5                         # liblzma/rangecoder/range_encoder.h:110:5
	movl	%edx, 40(%r14,%rdi,4)
.Ltmp692:
	#DEBUG_VALUE: rc_direct:bit_count <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $esi
	.loc	4 110 29 is_stmt 0              # liblzma/rangecoder/range_encoder.h:110:29
	leal	-1(%rsi), %edx
	.loc	4 110 45                        # liblzma/rangecoder/range_encoder.h:110:45
	movzbl	%dl, %edx
	btl	%edx, %ecx
	.loc	4 110 19                        # liblzma/rangecoder/range_encoder.h:110:19
	movl	$0, %edx
	adcl	$2, %edx
	.loc	4 109 24 is_stmt 1              # liblzma/rangecoder/range_encoder.h:109:24
	movq	24(%r14), %rdi
	leaq	1(%rdi), %r8
	movq	%r8, 24(%r14)
	.loc	4 110 5                         # liblzma/rangecoder/range_encoder.h:110:5
	movl	%edx, 40(%r14,%rdi,4)
.Ltmp693:
	.loc	4 111 21                        # liblzma/rangecoder/range_encoder.h:111:21
	addl	$-2, %esi
.Ltmp694:
	cmpl	$-1, %esi
.Ltmp695:
	.loc	4 111 2 is_stmt 0               # liblzma/rangecoder/range_encoder.h:111:2
	jne	.LBB10_16
.Ltmp696:
.LBB10_17:                              # %rc_direct.exit
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	#DEBUG_VALUE: pos_reduced <- $eax
	#DEBUG_VALUE: rc_bittree_reverse:probs <- [DW_OP_plus_uconst 29152, DW_OP_stack_value] $r14
	#DEBUG_VALUE: rc_bittree_reverse:rc <- $r14
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- 4
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- $eax
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- 1
	.loc	4 69 18 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:18
	movq	24(%r14), %rcx
.Ltmp697:
	.loc	4 96 31                         # liblzma/rangecoder/range_encoder.h:96:31
	movl	%eax, %edx
	andl	$1, %edx
.Ltmp698:
	#DEBUG_VALUE: bit <- $edx
	.loc	4 97 10                         # liblzma/rangecoder/range_encoder.h:97:10
	movl	%eax, %esi
	shrl	%esi
.Ltmp699:
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- $esi
	.loc	4 98 15                         # liblzma/rangecoder/range_encoder.h:98:15
	leaq	29154(%r14), %rdi
.Ltmp700:
	#DEBUG_VALUE: rc_bit:prob <- $rdi
	#DEBUG_VALUE: rc_bit:rc <- $r14
	#DEBUG_VALUE: rc_bit:bit <- $edx
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edx, 40(%r14,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdi, 272(%r14,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %rcx
	leaq	1(%rcx), %rdi
.Ltmp701:
	movq	%rdi, 24(%r14)
.Ltmp702:
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- undef
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- 3
	.loc	4 96 31                         # liblzma/rangecoder/range_encoder.h:96:31
	andl	$1, %esi
.Ltmp703:
	#DEBUG_VALUE: bit <- $esi
	.loc	4 97 10                         # liblzma/rangecoder/range_encoder.h:97:10
	movl	%eax, %edi
	shrl	$2, %edi
.Ltmp704:
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- $edi
	.loc	4 98 15                         # liblzma/rangecoder/range_encoder.h:98:15
	leal	4(,%rdx,2), %r8d
	addq	%r14, %r8
	addq	$29152, %r8                     # imm = 0x71E0
.Ltmp705:
	#DEBUG_VALUE: rc_bit:prob <- $r8
	#DEBUG_VALUE: rc_bit:bit <- $esi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%esi, 44(%r14,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r8, 272(%r14,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %rcx
	leaq	1(%rcx), %r8
.Ltmp706:
	movq	%r8, 24(%r14)
.Ltmp707:
	.loc	4 99 36                         # liblzma/rangecoder/range_encoder.h:99:36
	leal	(%rsi,%rdx,2), %edx
	addl	$4, %edx
.Ltmp708:
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- $edx
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- 2
	.loc	4 96 31                         # liblzma/rangecoder/range_encoder.h:96:31
	andl	$1, %edi
.Ltmp709:
	#DEBUG_VALUE: bit <- $edi
	.loc	4 97 10                         # liblzma/rangecoder/range_encoder.h:97:10
	shrl	$3, %eax
.Ltmp710:
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- $eax
	.loc	4 98 15                         # liblzma/rangecoder/range_encoder.h:98:15
	leal	(%rdx,%rdx), %esi
.Ltmp711:
	addq	%r14, %rsi
	addq	$29152, %rsi                    # imm = 0x71E0
.Ltmp712:
	#DEBUG_VALUE: rc_bit:prob <- $rsi
	#DEBUG_VALUE: rc_bit:bit <- $edi
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%edi, 44(%r14,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rsi, 272(%r14,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%r14), %rcx
	leaq	1(%rcx), %rsi
.Ltmp713:
	movq	%rsi, 24(%r14)
.Ltmp714:
	.loc	4 99 36                         # liblzma/rangecoder/range_encoder.h:99:36
	leal	(%rdi,%rdx,2), %edx
.Ltmp715:
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- $edx
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- 1
	.loc	4 96 31                         # liblzma/rangecoder/range_encoder.h:96:31
	andl	$1, %eax
.Ltmp716:
	#DEBUG_VALUE: bit <- $eax
	#DEBUG_VALUE: rc_bittree_reverse:symbol <- [DW_OP_constu 1, DW_OP_shr, DW_OP_stack_value] undef
	.loc	4 98 15                         # liblzma/rangecoder/range_encoder.h:98:15
	leaq	(%r14,%rdx,2), %rdx
.Ltmp717:
	addq	$29152, %rdx                    # imm = 0x71E0
.Ltmp718:
	#DEBUG_VALUE: rc_bit:prob <- $rdx
	#DEBUG_VALUE: rc_bit:bit <- $eax
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%eax, 44(%r14,%rcx,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%r14), %rax
.Ltmp719:
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rdx, 272(%r14,%rax,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	incq	24(%r14)
.Ltmp720:
	#DEBUG_VALUE: rc_bittree_reverse:model_index <- [DW_OP_LLVM_arg 0, DW_OP_constu 1, DW_OP_shl, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_stack_value] undef, undef
	#DEBUG_VALUE: rc_bittree_reverse:bit_count <- 0
	.loc	0 175 4                         # liblzma/lzma/lzma_encoder.c:175:4
	incl	69336(%r14)
.Ltmp721:
.LBB10_18:                              # %if.end22
	#DEBUG_VALUE: match:pcoder <- $r14
	#DEBUG_VALUE: match:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: match:distance <- $ebx
	#DEBUG_VALUE: match:len <- $r15d
	#DEBUG_VALUE: match:coder <- $r14
	.loc	0 179 19                        # liblzma/lzma/lzma_encoder.c:179:19
	movl	748(%r14), %eax
	.loc	0 179 17 is_stmt 0              # liblzma/lzma/lzma_encoder.c:179:17
	movl	%eax, 752(%r14)
	.loc	0 181 19 is_stmt 1              # liblzma/lzma/lzma_encoder.c:181:19
	movq	740(%r14), %rax
	.loc	0 181 17 is_stmt 0              # liblzma/lzma/lzma_encoder.c:181:17
	movq	%rax, 744(%r14)
	.loc	0 182 17 is_stmt 1              # liblzma/lzma/lzma_encoder.c:182:17
	movl	%ebx, 740(%r14)
	.loc	0 183 2                         # liblzma/lzma/lzma_encoder.c:183:2
	incl	69268(%r14)
	.loc	0 184 1 epilogue_begin          # liblzma/lzma/lzma_encoder.c:184:1
	popq	%rbx
.Ltmp722:
	#DEBUG_VALUE: match:distance <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp723:
	#DEBUG_VALUE: match:pcoder <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp724:
	#DEBUG_VALUE: match:len <- [DW_OP_LLVM_entry_value 1] $ecx
	.cfi_def_cfa_offset 8
	retq
.Ltmp725:
.Lfunc_end10:
	.size	match, .Lfunc_end10-match
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function length
	.type	length,@function
length:                                 # @length
.Lfunc_begin11:
	.loc	0 110 0                         # liblzma/lzma/lzma_encoder.c:110:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: length:rc <- $rdi
	#DEBUG_VALUE: length:lc <- $rsi
	#DEBUG_VALUE: length:pos_state <- $edx
	#DEBUG_VALUE: length:len <- $ecx
	#DEBUG_VALUE: length:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
                                        # kill: def $ecx killed $ecx def $rcx
	#DEBUG_VALUE: rc_bit:rc <- $rdi
	#DEBUG_VALUE: rc_bit:rc <- $rdi
.Ltmp726:
	#DEBUG_VALUE: length:len <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $ecx
	.loc	0 112 6 prologue_end            # liblzma/lzma/lzma_encoder.c:112:6
	leal	-2(%rcx), %eax
.Ltmp727:
	.loc	4 69 18                         # liblzma/rangecoder/range_encoder.h:69:18
	movq	24(%rdi), %r9
.Ltmp728:
	.loc	0 114 10                        # liblzma/lzma/lzma_encoder.c:114:10
	cmpl	$7, %eax
.Ltmp729:
	#DEBUG_VALUE: rc_bit:prob <- undef
	#DEBUG_VALUE: rc_bit:prob <- undef
	.loc	0 114 6 is_stmt 0               # liblzma/lzma/lzma_encoder.c:114:6
	ja	.LBB11_3
.Ltmp730:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: length:rc <- $rdi
	#DEBUG_VALUE: length:lc <- $rsi
	#DEBUG_VALUE: length:pos_state <- $edx
	#DEBUG_VALUE: length:len <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $ecx
	#DEBUG_VALUE: length:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: rc_bit:rc <- $rdi
	#DEBUG_VALUE: rc_bit:bit <- 0
	.loc	4 69 25 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:25
	movl	$0, 40(%rdi,%r9,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %r9
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rsi, 272(%rdi,%r9,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r11
	leaq	1(%r11), %r9
	movq	%r9, 24(%rdi)
.Ltmp731:
	.loc	0 116 18                        # liblzma/lzma/lzma_encoder.c:116:18
	movl	%edx, %ebx
	shlq	$4, %rbx
	leaq	(%rsi,%rbx), %r9
	addq	$4, %r9
.Ltmp732:
	#DEBUG_VALUE: rc_bittree:probs <- $r9
	#DEBUG_VALUE: rc_bittree:rc <- $rdi
	#DEBUG_VALUE: rc_bittree:symbol <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $ecx
	#DEBUG_VALUE: rc_bittree:model_index <- 1
	#DEBUG_VALUE: rc_bittree:bit_count <- 2
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %r10d
	shrl	$2, %r10d
.Ltmp733:
	#DEBUG_VALUE: bit <- $r10d
	.loc	4 83 15                         # liblzma/rangecoder/range_encoder.h:83:15
	addq	%rsi, %rbx
	addq	$6, %rbx
	jmp	.LBB11_2
.Ltmp734:
.LBB11_3:                               # %if.else
	#DEBUG_VALUE: length:rc <- $rdi
	#DEBUG_VALUE: length:lc <- $rsi
	#DEBUG_VALUE: length:pos_state <- $edx
	#DEBUG_VALUE: length:len <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $ecx
	#DEBUG_VALUE: length:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: rc_bit:rc <- $rdi
	#DEBUG_VALUE: rc_bit:bit <- 1
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	$1, 40(%rdi,%r9,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %rax
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rsi, 272(%rdi,%rax,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r9
	leaq	1(%r9), %rax
	movq	%rax, 24(%rdi)
.Ltmp735:
	.loc	0 119 7                         # liblzma/lzma/lzma_encoder.c:119:7
	leal	-10(%rcx), %eax
.Ltmp736:
	.loc	0 0 0 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:0
	leaq	2(%rsi), %r10
	#DEBUG_VALUE: rc_bit:prob <- $r10
	#DEBUG_VALUE: rc_bit:prob <- $r10
	.loc	0 121 11 is_stmt 1              # liblzma/lzma/lzma_encoder.c:121:11
	cmpl	$7, %eax
.Ltmp737:
	#DEBUG_VALUE: rc_bit:rc <- $rdi
	#DEBUG_VALUE: rc_bit:rc <- $rdi
	#DEBUG_VALUE: length:len <- [DW_OP_constu 10, DW_OP_minus, DW_OP_stack_value] undef
	.loc	0 121 7 is_stmt 0               # liblzma/lzma/lzma_encoder.c:121:7
	ja	.LBB11_5
.Ltmp738:
# %bb.4:                                # %if.then4
	#DEBUG_VALUE: length:rc <- $rdi
	#DEBUG_VALUE: length:lc <- $rsi
	#DEBUG_VALUE: length:pos_state <- $edx
	#DEBUG_VALUE: length:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: rc_bit:prob <- $r10
	#DEBUG_VALUE: rc_bit:rc <- $rdi
	#DEBUG_VALUE: rc_bit:bit <- 0
	.loc	4 69 25 is_stmt 1               # liblzma/rangecoder/range_encoder.h:69:25
	movl	$0, 44(%rdi,%r9,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %r9
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r10, 272(%rdi,%r9,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r11
	leaq	1(%r11), %r9
	movq	%r9, 24(%rdi)
.Ltmp739:
	.loc	0 123 19                        # liblzma/lzma/lzma_encoder.c:123:19
	movl	%edx, %ebx
	shlq	$4, %rbx
	leaq	(%rsi,%rbx), %r9
	addq	$260, %r9                       # imm = 0x104
.Ltmp740:
	#DEBUG_VALUE: rc_bittree:probs <- $r9
	#DEBUG_VALUE: rc_bittree:rc <- $rdi
	#DEBUG_VALUE: rc_bittree:symbol <- [DW_OP_constu 10, DW_OP_minus, DW_OP_stack_value] $ecx
	#DEBUG_VALUE: rc_bittree:model_index <- 1
	#DEBUG_VALUE: rc_bittree:bit_count <- 2
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %r10d
.Ltmp741:
	shrl	$2, %r10d
.Ltmp742:
	#DEBUG_VALUE: bit <- $r10d
	.loc	4 83 15                         # liblzma/rangecoder/range_encoder.h:83:15
	addq	%rsi, %rbx
	addq	$262, %rbx                      # imm = 0x106
.Ltmp743:
.LBB11_2:                               # %if.end12
	#DEBUG_VALUE: length:rc <- $rdi
	#DEBUG_VALUE: length:lc <- $rsi
	#DEBUG_VALUE: length:pos_state <- $edx
	#DEBUG_VALUE: length:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%r10d, 44(%rdi,%r11,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %r11
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rbx, 272(%rdi,%r11,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r11
	incq	%r11
	movq	%r11, 24(%rdi)
.Ltmp744:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	orl	$2, %r10d
.Ltmp745:
	#DEBUG_VALUE: rc_bittree:bit_count <- 0
	#DEBUG_VALUE: rc_bittree:model_index <- undef
	.loc	0 133 6                         # liblzma/lzma/lzma_encoder.c:133:6
	jmp	.LBB11_6
.Ltmp746:
.LBB11_5:                               # %if.else8
	#DEBUG_VALUE: length:rc <- $rdi
	#DEBUG_VALUE: length:lc <- $rsi
	#DEBUG_VALUE: length:pos_state <- $edx
	#DEBUG_VALUE: length:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: rc_bit:prob <- $r10
	#DEBUG_VALUE: rc_bit:rc <- $rdi
	#DEBUG_VALUE: rc_bit:bit <- 1
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	$1, 44(%rdi,%r9,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %rax
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r10, 272(%rdi,%rax,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r10
.Ltmp747:
	leaq	1(%r10), %rax
	movq	%rax, 24(%rdi)
.Ltmp748:
	.loc	0 126 8                         # liblzma/lzma/lzma_encoder.c:126:8
	leal	-18(%rcx), %eax
	.loc	0 127 23                        # liblzma/lzma/lzma_encoder.c:127:23
	leaq	516(%rsi), %r9
.Ltmp749:
	#DEBUG_VALUE: rc_bittree:probs <- $r9
	#DEBUG_VALUE: rc_bittree:rc <- $rdi
	#DEBUG_VALUE: rc_bittree:symbol <- [DW_OP_constu 18, DW_OP_minus, DW_OP_stack_value] $ecx
	#DEBUG_VALUE: rc_bittree:model_index <- 1
	#DEBUG_VALUE: rc_bittree:bit_count <- 7
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %r11d
	shrl	$7, %r11d
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %r11d
.Ltmp750:
	#DEBUG_VALUE: bit <- $r11d
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	518(%rsi), %rbx
.Ltmp751:
	#DEBUG_VALUE: rc_bit:prob <- $rbx
	#DEBUG_VALUE: rc_bit:rc <- $rdi
	#DEBUG_VALUE: rc_bit:bit <- $r11d
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%r11d, 44(%rdi,%r10,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %r10
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rbx, 272(%rdi,%r10,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r10
	leaq	1(%r10), %rbx
.Ltmp752:
	movq	%rbx, 24(%rdi)
.Ltmp753:
	#DEBUG_VALUE: rc_bittree:model_index <- undef
	#DEBUG_VALUE: rc_bittree:bit_count <- 6
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %ebx
	shrl	$6, %ebx
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %ebx
.Ltmp754:
	#DEBUG_VALUE: bit <- $ebx
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leal	4(,%r11,2), %r14d
	addq	%rsi, %r14
	addq	$516, %r14                      # imm = 0x204
.Ltmp755:
	#DEBUG_VALUE: rc_bit:prob <- $r14
	#DEBUG_VALUE: rc_bit:bit <- $ebx
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%ebx, 44(%rdi,%r10,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %r10
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r14, 272(%rdi,%r10,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r10
	leaq	1(%r10), %r14
.Ltmp756:
	movq	%r14, 24(%rdi)
.Ltmp757:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rbx,%r11,2), %r11d
	addl	$4, %r11d
.Ltmp758:
	#DEBUG_VALUE: rc_bittree:model_index <- $r11d
	#DEBUG_VALUE: rc_bittree:bit_count <- 5
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %ebx
.Ltmp759:
	shrl	$5, %ebx
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %ebx
.Ltmp760:
	#DEBUG_VALUE: bit <- $ebx
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leal	(%r11,%r11), %r14d
	addq	%rsi, %r14
	addq	$516, %r14                      # imm = 0x204
.Ltmp761:
	#DEBUG_VALUE: rc_bit:prob <- $r14
	#DEBUG_VALUE: rc_bit:bit <- $ebx
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%ebx, 44(%rdi,%r10,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %r10
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r14, 272(%rdi,%r10,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r10
	leaq	1(%r10), %r14
.Ltmp762:
	movq	%r14, 24(%rdi)
.Ltmp763:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rbx,%r11,2), %r11d
.Ltmp764:
	#DEBUG_VALUE: rc_bittree:model_index <- $r11d
	#DEBUG_VALUE: rc_bittree:bit_count <- 4
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %ebx
.Ltmp765:
	shrl	$4, %ebx
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %ebx
.Ltmp766:
	#DEBUG_VALUE: bit <- $ebx
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rsi,%r11,2), %r14
	addq	$516, %r14                      # imm = 0x204
.Ltmp767:
	#DEBUG_VALUE: rc_bit:prob <- $r14
	#DEBUG_VALUE: rc_bit:bit <- $ebx
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%ebx, 44(%rdi,%r10,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %r10
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r14, 272(%rdi,%r10,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r10
	leaq	1(%r10), %r14
.Ltmp768:
	movq	%r14, 24(%rdi)
.Ltmp769:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rbx,%r11,2), %r11d
.Ltmp770:
	#DEBUG_VALUE: rc_bittree:model_index <- $r11d
	#DEBUG_VALUE: rc_bittree:bit_count <- 3
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %ebx
.Ltmp771:
	shrl	$3, %ebx
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %ebx
.Ltmp772:
	#DEBUG_VALUE: bit <- $ebx
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rsi,%r11,2), %r14
	addq	$516, %r14                      # imm = 0x204
.Ltmp773:
	#DEBUG_VALUE: rc_bit:prob <- $r14
	#DEBUG_VALUE: rc_bit:bit <- $ebx
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%ebx, 44(%rdi,%r10,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %r10
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r14, 272(%rdi,%r10,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r10
	leaq	1(%r10), %r14
.Ltmp774:
	movq	%r14, 24(%rdi)
.Ltmp775:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rbx,%r11,2), %ebx
.Ltmp776:
	#DEBUG_VALUE: rc_bittree:model_index <- $ebx
	#DEBUG_VALUE: rc_bittree:bit_count <- 2
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	movl	%eax, %r14d
	shrl	$2, %r14d
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %r14d
.Ltmp777:
	#DEBUG_VALUE: bit <- $r14d
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%rsi,%rbx,2), %r11
	addq	$516, %r11                      # imm = 0x204
.Ltmp778:
	#DEBUG_VALUE: rc_bit:prob <- $r11
	#DEBUG_VALUE: rc_bit:bit <- $r14d
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%r14d, 44(%rdi,%r10,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %r10
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%r11, 272(%rdi,%r10,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r11
.Ltmp779:
	incq	%r11
	movq	%r11, 24(%rdi)
.Ltmp780:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%r14,%rbx,2), %r10d
.Ltmp781:
	#DEBUG_VALUE: rc_bittree:bit_count <- 0
	#DEBUG_VALUE: length:len <- [DW_OP_constu 18, DW_OP_minus, DW_OP_stack_value] undef
.LBB11_6:                               # %if.end12
	#DEBUG_VALUE: length:rc <- $rdi
	#DEBUG_VALUE: length:lc <- $rsi
	#DEBUG_VALUE: length:pos_state <- $edx
	#DEBUG_VALUE: length:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	.loc	4 82 32                         # liblzma/rangecoder/range_encoder.h:82:32
	shrl	%eax
	.loc	4 82 48 is_stmt 0               # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %eax
	#DEBUG_VALUE: rc_bit:bit <- $eax
	#DEBUG_VALUE: bit <- $eax
	#DEBUG_VALUE: bit <- $eax
	#DEBUG_VALUE: bit <- $eax
	.loc	4 83 15 is_stmt 1               # liblzma/rangecoder/range_encoder.h:83:15
	leal	(%r10,%r10), %ebx
	addq	%r9, %rbx
	#DEBUG_VALUE: rc_bit:prob <- $rbx
.Ltmp782:
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%eax, 40(%rdi,%r11,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %r11
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rbx, 272(%rdi,%r11,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	movq	24(%rdi), %r11
	leaq	1(%r11), %rbx
	movq	%rbx, 24(%rdi)
.Ltmp783:
	.loc	4 84 36                         # liblzma/rangecoder/range_encoder.h:84:36
	leal	(%rax,%r10,2), %eax
	#DEBUG_VALUE: rc_bittree:model_index <- $eax
	#DEBUG_VALUE: rc_bittree:model_index <- $eax
	#DEBUG_VALUE: rc_bittree:model_index <- $eax
	.loc	4 82 48                         # liblzma/rangecoder/range_encoder.h:82:48
	andl	$1, %ecx
	#DEBUG_VALUE: rc_bit:bit <- $ecx
	#DEBUG_VALUE: bit <- $ecx
	#DEBUG_VALUE: bit <- $ecx
	#DEBUG_VALUE: bit <- $ecx
	.loc	4 83 15                         # liblzma/rangecoder/range_encoder.h:83:15
	leaq	(%r9,%rax,2), %rax
	#DEBUG_VALUE: rc_bit:prob <- $rax
.Ltmp784:
	.loc	4 69 25                         # liblzma/rangecoder/range_encoder.h:69:25
	movl	%ecx, 44(%rdi,%r11,4)
	.loc	4 70 16                         # liblzma/rangecoder/range_encoder.h:70:16
	movq	24(%rdi), %rcx
	.loc	4 70 23 is_stmt 0               # liblzma/rangecoder/range_encoder.h:70:23
	movq	%rax, 272(%rdi,%rcx,8)
	.loc	4 71 2 is_stmt 1                # liblzma/rangecoder/range_encoder.h:71:2
	incq	24(%rdi)
.Ltmp785:
	.loc	0 133 6                         # liblzma/lzma/lzma_encoder.c:133:6
	testb	%r8b, %r8b
	jne	.LBB11_8
.Ltmp786:
# %bb.7:                                # %if.then13
	#DEBUG_VALUE: length:rc <- $rdi
	#DEBUG_VALUE: length:lc <- $rsi
	#DEBUG_VALUE: length:pos_state <- $edx
	#DEBUG_VALUE: length:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	.loc	0 134 9                         # liblzma/lzma/lzma_encoder.c:134:9
	movl	%edx, %eax
	.loc	0 134 7 is_stmt 0               # liblzma/lzma/lzma_encoder.c:134:7
	decl	18440(%rsi,%rax,4)
.Ltmp787:
	.loc	0 134 7                         # liblzma/lzma/lzma_encoder.c:134:7
	je	.LBB11_9
.Ltmp788:
.LBB11_8:                               # %if.end19
	#DEBUG_VALUE: length:rc <- $rdi
	#DEBUG_VALUE: length:lc <- $rsi
	#DEBUG_VALUE: length:pos_state <- $edx
	#DEBUG_VALUE: length:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	.loc	0 136 1 epilogue_begin is_stmt 1 # liblzma/lzma/lzma_encoder.c:136:1
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Ltmp789:
.LBB11_9:                               # %if.then17
	.cfi_def_cfa_offset 24
	#DEBUG_VALUE: length:rc <- $rdi
	#DEBUG_VALUE: length:lc <- $rsi
	#DEBUG_VALUE: length:pos_state <- $edx
	#DEBUG_VALUE: length:fast_mode <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	.loc	0 135 4                         # liblzma/lzma/lzma_encoder.c:135:4
	movq	%rsi, %rdi
.Ltmp790:
	#DEBUG_VALUE: length:rc <- [DW_OP_LLVM_entry_value 1] $rdi
	movl	%edx, %esi
.Ltmp791:
	#DEBUG_VALUE: length:lc <- $rdi
	.loc	0 135 4 epilogue_begin is_stmt 0 # liblzma/lzma/lzma_encoder.c:135:4
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
.Ltmp792:
	jmp	length_update_prices            # TAILCALL
.Ltmp793:
.Lfunc_end11:
	.size	length, .Lfunc_end11-length
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function length_update_prices
	.type	length_update_prices,@function
length_update_prices:                   # @length_update_prices
.Lfunc_begin12:
	.loc	0 80 0 is_stmt 1                # liblzma/lzma/lzma_encoder.c:80:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- $esi
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	.loc	0 81 34 prologue_end            # liblzma/lzma/lzma_encoder.c:81:34
	movl	18436(%rdi), %eax
.Ltmp794:
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	.loc	0 82 2                          # liblzma/lzma/lzma_encoder.c:82:2
	movl	%esi, %r11d
	.loc	0 82 26 is_stmt 0               # liblzma/lzma/lzma_encoder.c:82:26
	movl	%eax, 18440(%rdi,%r11,4)
	.loc	0 84 41 is_stmt 1               # liblzma/lzma/lzma_encoder.c:84:41
	movzwl	(%rdi), %ebx
.Ltmp795:
	#DEBUG_VALUE: rc_bit_0_price:prob <- undef
	.file	18 "liblzma/rangecoder" "price.h" md5 0x97acd9ecb91079df77ddfdfaeeb4fcaf
	.loc	18 39 29                        # liblzma/rangecoder/price.h:39:29
	shrl	$4, %ebx
	.loc	18 39 9 is_stmt 0               # liblzma/rangecoder/price.h:39:9
	movq	lzma_rc_prices@GOTPCREL(%rip), %rcx
.Ltmp796:
	#DEBUG_VALUE: rc_bit_1_price:prob <- undef
	#DEBUG_VALUE: length_update_prices:a0 <- undef
	.loc	18 47 4 is_stmt 1               # liblzma/rangecoder/price.h:47:4
	movq	%rbx, %rdx
	xorq	$127, %rdx
	.loc	18 46 9                         # liblzma/rangecoder/price.h:46:9
	movzbl	(%rcx,%rdx), %r8d
.Ltmp797:
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	.loc	0 86 46                         # liblzma/lzma/lzma_encoder.c:86:46
	movzwl	2(%rdi), %r9d
.Ltmp798:
	#DEBUG_VALUE: rc_bit_0_price:prob <- undef
	.loc	18 39 29                        # liblzma/rangecoder/price.h:39:29
	shrl	$4, %r9d
.Ltmp799:
	#DEBUG_VALUE: length_update_prices:b0 <- undef
	#DEBUG_VALUE: rc_bit_1_price:prob <- undef
	.loc	18 47 4                         # liblzma/rangecoder/price.h:47:4
	movq	%r9, %rdx
	xorq	$127, %rdx
	.loc	18 46 9                         # liblzma/rangecoder/price.h:46:9
	movzbl	(%rcx,%rdx), %edx
.Ltmp800:
	#DEBUG_VALUE: length_update_prices:b1 <- undef
	.loc	0 88 27                         # liblzma/lzma/lzma_encoder.c:88:27
	imulq	$1088, %r11, %rsi               # imm = 0x440
.Ltmp801:
	#DEBUG_VALUE: length_update_prices:pos_state <- $r11d
	#DEBUG_VALUE: length_update_prices:i <- 0
	.loc	0 91 7                          # liblzma/lzma/lzma_encoder.c:91:7
	cmpl	$8, %eax
	movl	$8, %r15d
	movl	$8, %r10d
	cmovbl	%eax, %r10d
.Ltmp802:
	.loc	0 88 27                         # liblzma/lzma/lzma_encoder.c:88:27
	addq	%rdi, %rsi
	addq	$1028, %rsi                     # imm = 0x404
.Ltmp803:
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 81 34                         # liblzma/lzma/lzma_encoder.c:81:34
	testq	%rax, %rax
.Ltmp804:
	.loc	0 91 2                          # liblzma/lzma/lzma_encoder.c:91:2
	je	.LBB12_1
.Ltmp805:
# %bb.10:                               # %for.body.lr.ph
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- $r11d
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:i <- 0
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 0 2 is_stmt 0                 # liblzma/lzma/lzma_encoder.c:0:2
	movzbl	(%rcx,%r9), %r9d
	addl	%r8d, %r9d
.Ltmp806:
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	movzbl	(%rcx,%rbx), %ebx
.Ltmp807:
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	shlq	$4, %r11
.Ltmp808:
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	leaq	(%rdi,%r11), %r14
	addq	$4, %r14
.Ltmp809:
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	xorl	%ebp, %ebp
	#DEBUG_VALUE: length_update_prices:i <- 0
.Ltmp810:
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:price <- 0
	#DEBUG_VALUE: rc_bittree_price:symbol <- [DW_OP_constu 8, DW_OP_or, DW_OP_stack_value] 0
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	$8, %r12d
.Ltmp811:
	.p2align	4, 0x90
.LBB12_11:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 0
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r15d
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r15d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp812:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%r12d
.Ltmp813:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r15d
	movzwl	(%r14,%r15), %r15d
.Ltmp814:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r15d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r15d
.Ltmp815:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r15d, %ebp
.Ltmp816:
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%r12d, %r15d
.Ltmp817:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %r12d
.Ltmp818:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_11
.Ltmp819:
# %bb.12:                               # %rc_bittree_price.exit
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 0
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 92 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:92:18
	addl	%ebx, %ebp
	.loc	0 92 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:92:13
	movl	%ebp, (%rsi)
.Ltmp820:
	#DEBUG_VALUE: length_update_prices:i <- 1
	.loc	0 91 29 is_stmt 1               # liblzma/lzma/lzma_encoder.c:91:29
	cmpl	$1, %eax
.Ltmp821:
	.loc	0 91 2 is_stmt 0                # liblzma/lzma/lzma_encoder.c:91:2
	je	.LBB12_8
.Ltmp822:
# %bb.13:                               # %do.body.i.1.preheader
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 1
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	movl	$9, %r12d
	xorl	%ebp, %ebp
.Ltmp823:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	$9, %r15d
.Ltmp824:
	.p2align	4, 0x90
.LBB12_14:                              # %do.body.i.1
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 1
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp825:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%r15d
.Ltmp826:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r15d
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp827:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp828:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %ebp
.Ltmp829:
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%r15d, %r12d
.Ltmp830:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %r15d
.Ltmp831:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_14
.Ltmp832:
# %bb.15:                               # %rc_bittree_price.exit.1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 1
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 92 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:92:18
	addl	%ebx, %ebp
	.loc	0 92 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:92:13
	movl	%ebp, 4(%rsi)
.Ltmp833:
	#DEBUG_VALUE: length_update_prices:i <- 2
	.loc	0 91 29 is_stmt 1               # liblzma/lzma/lzma_encoder.c:91:29
	cmpl	$2, %eax
.Ltmp834:
	.loc	0 91 2 is_stmt 0                # liblzma/lzma/lzma_encoder.c:91:2
	je	.LBB12_8
.Ltmp835:
# %bb.16:                               # %do.body.i.2.preheader
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 2
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	movl	$10, %r12d
	xorl	%ebp, %ebp
.Ltmp836:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	$10, %r15d
.Ltmp837:
	.p2align	4, 0x90
.LBB12_17:                              # %do.body.i.2
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 2
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp838:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%r15d
.Ltmp839:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r15d
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp840:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp841:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %ebp
.Ltmp842:
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%r15d, %r12d
.Ltmp843:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %r15d
.Ltmp844:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_17
.Ltmp845:
# %bb.18:                               # %rc_bittree_price.exit.2
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 2
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 92 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:92:18
	addl	%ebx, %ebp
	.loc	0 92 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:92:13
	movl	%ebp, 8(%rsi)
.Ltmp846:
	#DEBUG_VALUE: length_update_prices:i <- 3
	.loc	0 91 29 is_stmt 1               # liblzma/lzma/lzma_encoder.c:91:29
	cmpl	$3, %eax
.Ltmp847:
	.loc	0 91 2 is_stmt 0                # liblzma/lzma/lzma_encoder.c:91:2
	je	.LBB12_8
.Ltmp848:
# %bb.19:                               # %do.body.i.3.preheader
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 3
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	movl	$11, %r12d
	xorl	%ebp, %ebp
.Ltmp849:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	$11, %r15d
.Ltmp850:
	.p2align	4, 0x90
.LBB12_20:                              # %do.body.i.3
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 3
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp851:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%r15d
.Ltmp852:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r15d
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp853:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp854:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %ebp
.Ltmp855:
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%r15d, %r12d
.Ltmp856:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %r15d
.Ltmp857:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_20
.Ltmp858:
# %bb.21:                               # %rc_bittree_price.exit.3
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 3
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 92 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:92:18
	addl	%ebx, %ebp
	.loc	0 92 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:92:13
	movl	%ebp, 12(%rsi)
.Ltmp859:
	#DEBUG_VALUE: length_update_prices:i <- 4
	.loc	0 91 29 is_stmt 1               # liblzma/lzma/lzma_encoder.c:91:29
	cmpl	$4, %eax
.Ltmp860:
	.loc	0 91 2 is_stmt 0                # liblzma/lzma/lzma_encoder.c:91:2
	je	.LBB12_8
.Ltmp861:
# %bb.22:                               # %do.body.i.4.preheader
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 4
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	movl	$12, %r12d
	xorl	%ebp, %ebp
.Ltmp862:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	$12, %r15d
.Ltmp863:
	.p2align	4, 0x90
.LBB12_23:                              # %do.body.i.4
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 4
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp864:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%r15d
.Ltmp865:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r15d
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp866:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp867:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %ebp
.Ltmp868:
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%r15d, %r12d
.Ltmp869:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %r15d
.Ltmp870:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_23
.Ltmp871:
# %bb.24:                               # %rc_bittree_price.exit.4
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 4
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 92 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:92:18
	addl	%ebx, %ebp
	.loc	0 92 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:92:13
	movl	%ebp, 16(%rsi)
.Ltmp872:
	#DEBUG_VALUE: length_update_prices:i <- 5
	.loc	0 91 29 is_stmt 1               # liblzma/lzma/lzma_encoder.c:91:29
	cmpl	$5, %eax
.Ltmp873:
	.loc	0 91 2 is_stmt 0                # liblzma/lzma/lzma_encoder.c:91:2
	je	.LBB12_8
.Ltmp874:
# %bb.25:                               # %do.body.i.5.preheader
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 5
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	movl	$13, %r12d
	xorl	%ebp, %ebp
.Ltmp875:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	$13, %r15d
.Ltmp876:
	.p2align	4, 0x90
.LBB12_26:                              # %do.body.i.5
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 5
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp877:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%r15d
.Ltmp878:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r15d
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp879:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp880:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %ebp
.Ltmp881:
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%r15d, %r12d
.Ltmp882:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %r15d
.Ltmp883:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_26
.Ltmp884:
# %bb.27:                               # %rc_bittree_price.exit.5
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 5
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 92 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:92:18
	addl	%ebx, %ebp
	.loc	0 92 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:92:13
	movl	%ebp, 20(%rsi)
.Ltmp885:
	#DEBUG_VALUE: length_update_prices:i <- 6
	.loc	0 91 29 is_stmt 1               # liblzma/lzma/lzma_encoder.c:91:29
	cmpl	$6, %eax
.Ltmp886:
	.loc	0 91 2 is_stmt 0                # liblzma/lzma/lzma_encoder.c:91:2
	je	.LBB12_8
.Ltmp887:
# %bb.28:                               # %do.body.i.6.preheader
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 6
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	movl	$14, %r12d
	xorl	%ebp, %ebp
.Ltmp888:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	$14, %r15d
.Ltmp889:
	.p2align	4, 0x90
.LBB12_29:                              # %do.body.i.6
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 6
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp890:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%r15d
.Ltmp891:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r15d
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp892:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp893:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %ebp
.Ltmp894:
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%r15d, %r12d
.Ltmp895:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %r15d
.Ltmp896:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_29
.Ltmp897:
# %bb.30:                               # %rc_bittree_price.exit.6
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 6
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 92 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:92:18
	addl	%ebx, %ebp
	.loc	0 92 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:92:13
	movl	%ebp, 24(%rsi)
.Ltmp898:
	#DEBUG_VALUE: length_update_prices:i <- 7
	.loc	0 91 29 is_stmt 1               # liblzma/lzma/lzma_encoder.c:91:29
	cmpl	$7, %eax
.Ltmp899:
	.loc	0 91 2 is_stmt 0                # liblzma/lzma/lzma_encoder.c:91:2
	je	.LBB12_8
.Ltmp900:
# %bb.31:                               # %do.body.i.7.preheader
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 7
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	movl	$15, %r12d
	xorl	%ebp, %ebp
.Ltmp901:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	$15, %r15d
.Ltmp902:
.LBB12_32:                              # %do.body.i.7
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 7
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp903:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%r15d
.Ltmp904:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r15d
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp905:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp906:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %ebp
.Ltmp907:
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%r15d, %r12d
.Ltmp908:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %r15d
.Ltmp909:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_32
.Ltmp910:
# %bb.33:                               # %rc_bittree_price.exit.7
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- 7
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 92 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:92:18
	addl	%ebx, %ebp
	.loc	0 92 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:92:13
	movl	%ebp, 28(%rsi)
.Ltmp911:
	#DEBUG_VALUE: length_update_prices:i <- 8
.LBB12_8:                               # %for.cond20.preheader
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a0 <- $ebx
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 95 2 is_stmt 1                # liblzma/lzma/lzma_encoder.c:95:2
	cmpl	$16, %eax
	movl	$16, %ebx
.Ltmp912:
	cmovbl	%eax, %ebx
.Ltmp913:
	#DEBUG_VALUE: length_update_prices:i <- $r10d
	.loc	0 95 24 is_stmt 0               # liblzma/lzma/lzma_encoder.c:95:24
	cmpl	$9, %eax
.Ltmp914:
	.loc	0 95 2                          # liblzma/lzma/lzma_encoder.c:95:2
	jb	.LBB12_9
.Ltmp915:
# %bb.34:                               # %for.body25.lr.ph
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- $r10d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	leaq	(%rdi,%r11), %r14
	addq	$260, %r14                      # imm = 0x104
.Ltmp916:
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	.loc	0 95 2                          # liblzma/lzma/lzma_encoder.c:95:2
	movl	%r10d, %r11d
.Ltmp917:
	#DEBUG_VALUE: length_update_prices:i <- $r11d
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r11d
	.loc	0 95 24                         # liblzma/lzma/lzma_encoder.c:95:24
	movl	%ebx, %r15d
	xorl	%ebp, %ebp
.Ltmp918:
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:price <- 0
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	%r10d, %r12d
.Ltmp919:
	.p2align	4, 0x90
.LBB12_35:                              # %do.body.i92
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- $r11d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r10d
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r10d
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r10d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp920:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%r12d
.Ltmp921:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r10d
	movzwl	(%r14,%r10), %r10d
.Ltmp922:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r10d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r10d
.Ltmp923:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r10d, %ebp
.Ltmp924:
	#DEBUG_VALUE: rc_bittree_price:price <- $ebp
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%r12d, %r10d
.Ltmp925:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %r12d
.Ltmp926:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_35
.Ltmp927:
# %bb.36:                               # %rc_bittree_price.exit107
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- $r11d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 96 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:96:18
	addl	%r9d, %ebp
	.loc	0 96 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:96:13
	movl	%ebp, (%rsi,%r11,4)
	.loc	0 95 66 is_stmt 1               # liblzma/lzma/lzma_encoder.c:95:66
	leaq	1(%r11), %r12
.Ltmp928:
	#DEBUG_VALUE: length_update_prices:i <- $r12
	.loc	0 95 24 is_stmt 0               # liblzma/lzma/lzma_encoder.c:95:24
	cmpq	%r15, %r12
.Ltmp929:
	.loc	0 95 2                          # liblzma/lzma/lzma_encoder.c:95:2
	je	.LBB12_2
.Ltmp930:
# %bb.37:                               # %for.body25.1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:price <- 0
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	xorl	%r10d, %r10d
.Ltmp931:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	%r12d, %ebp
.Ltmp932:
	.p2align	4, 0x90
.LBB12_38:                              # %do.body.i92.1
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp933:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%ebp
.Ltmp934:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $ebp
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp935:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp936:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %r10d
.Ltmp937:
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%ebp, %r12d
.Ltmp938:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %ebp
.Ltmp939:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_38
.Ltmp940:
# %bb.39:                               # %rc_bittree_price.exit107.1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 96 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:96:18
	addl	%r9d, %r10d
	.loc	0 96 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:96:13
	movl	%r10d, 4(%rsi,%r11,4)
	.loc	0 95 66 is_stmt 1               # liblzma/lzma/lzma_encoder.c:95:66
	leaq	2(%r11), %r12
.Ltmp941:
	#DEBUG_VALUE: length_update_prices:i <- $r12
	.loc	0 95 24 is_stmt 0               # liblzma/lzma/lzma_encoder.c:95:24
	cmpq	%r15, %r12
.Ltmp942:
	.loc	0 95 2                          # liblzma/lzma/lzma_encoder.c:95:2
	je	.LBB12_2
.Ltmp943:
# %bb.40:                               # %for.body25.2
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:price <- 0
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	xorl	%r10d, %r10d
.Ltmp944:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	%r12d, %ebp
.Ltmp945:
	.p2align	4, 0x90
.LBB12_41:                              # %do.body.i92.2
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp946:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%ebp
.Ltmp947:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $ebp
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp948:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp949:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %r10d
.Ltmp950:
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%ebp, %r12d
.Ltmp951:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %ebp
.Ltmp952:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_41
.Ltmp953:
# %bb.42:                               # %rc_bittree_price.exit107.2
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 96 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:96:18
	addl	%r9d, %r10d
	.loc	0 96 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:96:13
	movl	%r10d, 8(%rsi,%r11,4)
	.loc	0 95 66 is_stmt 1               # liblzma/lzma/lzma_encoder.c:95:66
	leaq	3(%r11), %r12
.Ltmp954:
	#DEBUG_VALUE: length_update_prices:i <- $r12
	.loc	0 95 24 is_stmt 0               # liblzma/lzma/lzma_encoder.c:95:24
	cmpq	%r15, %r12
.Ltmp955:
	.loc	0 95 2                          # liblzma/lzma/lzma_encoder.c:95:2
	je	.LBB12_2
.Ltmp956:
# %bb.43:                               # %for.body25.3
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:price <- 0
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	xorl	%r10d, %r10d
.Ltmp957:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	%r12d, %ebp
.Ltmp958:
	.p2align	4, 0x90
.LBB12_44:                              # %do.body.i92.3
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp959:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%ebp
.Ltmp960:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $ebp
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp961:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp962:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %r10d
.Ltmp963:
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%ebp, %r12d
.Ltmp964:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %ebp
.Ltmp965:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_44
.Ltmp966:
# %bb.45:                               # %rc_bittree_price.exit107.3
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 96 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:96:18
	addl	%r9d, %r10d
	.loc	0 96 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:96:13
	movl	%r10d, 12(%rsi,%r11,4)
	.loc	0 95 66 is_stmt 1               # liblzma/lzma/lzma_encoder.c:95:66
	leaq	4(%r11), %r12
.Ltmp967:
	#DEBUG_VALUE: length_update_prices:i <- $r12
	.loc	0 95 24 is_stmt 0               # liblzma/lzma/lzma_encoder.c:95:24
	cmpq	%r15, %r12
.Ltmp968:
	.loc	0 95 2                          # liblzma/lzma/lzma_encoder.c:95:2
	je	.LBB12_2
.Ltmp969:
# %bb.46:                               # %for.body25.4
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:price <- 0
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	xorl	%r10d, %r10d
.Ltmp970:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	%r12d, %ebp
.Ltmp971:
	.p2align	4, 0x90
.LBB12_47:                              # %do.body.i92.4
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp972:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%ebp
.Ltmp973:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $ebp
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp974:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp975:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %r10d
.Ltmp976:
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%ebp, %r12d
.Ltmp977:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %ebp
.Ltmp978:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_47
.Ltmp979:
# %bb.48:                               # %rc_bittree_price.exit107.4
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 96 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:96:18
	addl	%r9d, %r10d
	.loc	0 96 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:96:13
	movl	%r10d, 16(%rsi,%r11,4)
	.loc	0 95 66 is_stmt 1               # liblzma/lzma/lzma_encoder.c:95:66
	leaq	5(%r11), %r12
.Ltmp980:
	#DEBUG_VALUE: length_update_prices:i <- $r12
	.loc	0 95 24 is_stmt 0               # liblzma/lzma/lzma_encoder.c:95:24
	cmpq	%r15, %r12
.Ltmp981:
	.loc	0 95 2                          # liblzma/lzma/lzma_encoder.c:95:2
	je	.LBB12_2
.Ltmp982:
# %bb.49:                               # %for.body25.5
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:price <- 0
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	xorl	%r10d, %r10d
.Ltmp983:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	%r12d, %ebp
.Ltmp984:
	.p2align	4, 0x90
.LBB12_50:                              # %do.body.i92.5
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp985:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%ebp
.Ltmp986:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $ebp
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp987:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp988:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %r10d
.Ltmp989:
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%ebp, %r12d
.Ltmp990:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %ebp
.Ltmp991:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_50
.Ltmp992:
# %bb.51:                               # %rc_bittree_price.exit107.5
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 96 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:96:18
	addl	%r9d, %r10d
	.loc	0 96 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:96:13
	movl	%r10d, 20(%rsi,%r11,4)
	.loc	0 95 66 is_stmt 1               # liblzma/lzma/lzma_encoder.c:95:66
	leaq	6(%r11), %r12
.Ltmp993:
	#DEBUG_VALUE: length_update_prices:i <- $r12
	.loc	0 95 24 is_stmt 0               # liblzma/lzma/lzma_encoder.c:95:24
	cmpq	%r15, %r12
.Ltmp994:
	.loc	0 95 2                          # liblzma/lzma/lzma_encoder.c:95:2
	je	.LBB12_2
.Ltmp995:
# %bb.52:                               # %for.body25.6
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:price <- 0
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	xorl	%r10d, %r10d
.Ltmp996:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	%r12d, %ebp
.Ltmp997:
.LBB12_53:                              # %do.body.i92.6
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
.Ltmp998:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%ebp
.Ltmp999:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $ebp
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp1000:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r13d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r13), %r12d
.Ltmp1001:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r12d, %r10d
.Ltmp1002:
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%ebp, %r12d
.Ltmp1003:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %ebp
.Ltmp1004:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_53
.Ltmp1005:
# %bb.54:                               # %rc_bittree_price.exit107.6
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 96 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:96:18
	addl	%r9d, %r10d
	.loc	0 96 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:96:13
	movl	%r10d, 24(%rsi,%r11,4)
	.loc	0 95 66 is_stmt 1               # liblzma/lzma/lzma_encoder.c:95:66
	leaq	7(%r11), %r12
.Ltmp1006:
	#DEBUG_VALUE: length_update_prices:i <- $r12
	.loc	0 95 24 is_stmt 0               # liblzma/lzma/lzma_encoder.c:95:24
	cmpq	%r15, %r12
.Ltmp1007:
	.loc	0 95 2                          # liblzma/lzma/lzma_encoder.c:95:2
	je	.LBB12_2
.Ltmp1008:
# %bb.55:                               # %for.body25.7
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: length_update_prices:i <- $r12
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:price <- 0
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	xorl	%r10d, %r10d
.Ltmp1009:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	%r12d, %ebp
.Ltmp1010:
.LBB12_56:                              # %do.body.i92.7
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- $r14
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 3
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r12d
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r12d, %r15d
	andl	$1, %r15d
	negl	%r15d
.Ltmp1011:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%ebp
.Ltmp1012:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $ebp
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
.Ltmp1013:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %r15d                    # imm = 0x7F0
	xorl	%r12d, %r15d
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %r15d
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%r15), %r15d
.Ltmp1014:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r15d, %r10d
.Ltmp1015:
	#DEBUG_VALUE: rc_bittree_price:price <- $r10d
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%ebp, %r12d
.Ltmp1016:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %ebp
.Ltmp1017:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_56
.Ltmp1018:
# %bb.57:                               # %rc_bittree_price.exit107.7
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 96 18 is_stmt 1               # liblzma/lzma/lzma_encoder.c:96:18
	addl	%r10d, %r9d
.Ltmp1019:
	.loc	0 96 13 is_stmt 0               # liblzma/lzma/lzma_encoder.c:96:13
	movl	%r9d, 28(%rsi,%r11,4)
.Ltmp1020:
	#DEBUG_VALUE: length_update_prices:i <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $r11d
	#DEBUG_VALUE: length_update_prices:i <- $ebx
	.loc	0 99 11 is_stmt 1               # liblzma/lzma/lzma_encoder.c:99:11
	cmpl	%eax, %ebx
.Ltmp1021:
	.loc	0 99 2 is_stmt 0                # liblzma/lzma/lzma_encoder.c:99:2
	jb	.LBB12_3
	jmp	.LBB12_7
.Ltmp1022:
.LBB12_1:
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- $r11d
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:i <- 0
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	xorl	%ebx, %ebx
.Ltmp1023:
.LBB12_2:                               # %for.cond36.preheader
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: length_update_prices:i <- $ebx
	.loc	0 99 11                         # liblzma/lzma/lzma_encoder.c:99:11
	cmpl	%eax, %ebx
.Ltmp1024:
	.loc	0 99 2                          # liblzma/lzma/lzma_encoder.c:99:2
	jb	.LBB12_3
	jmp	.LBB12_7
.Ltmp1025:
.LBB12_9:
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:b0 <- $r9d
	#DEBUG_VALUE: length_update_prices:i <- $r10d
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	movl	%r10d, %ebx
.Ltmp1026:
	#DEBUG_VALUE: length_update_prices:i <- $ebx
	.loc	0 99 11                         # liblzma/lzma/lzma_encoder.c:99:11
	cmpl	%eax, %ebx
.Ltmp1027:
	.loc	0 99 2                          # liblzma/lzma/lzma_encoder.c:99:2
	jae	.LBB12_7
.Ltmp1028:
.LBB12_3:                               # %for.body38.lr.ph
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:a1 <- $r8d
	#DEBUG_VALUE: length_update_prices:i <- $ebx
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 0 2                           # liblzma/lzma/lzma_encoder.c:0:2
	addl	%r8d, %edx
.Ltmp1029:
	#DEBUG_VALUE: length_update_prices:b1 <- $edx
	.loc	0 99 2                          # liblzma/lzma/lzma_encoder.c:99:2
	movl	%ebx, %r8d
.Ltmp1030:
	.p2align	4, 0x90
.LBB12_4:                               # %for.body38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_5 Depth 2
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:b1 <- $edx
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: length_update_prices:i <- $r8
	#DEBUG_VALUE: rc_bittree_price:probs <- [DW_OP_plus_uconst 516, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 8
	#DEBUG_VALUE: rc_bittree_price:symbol <- [DW_OP_constu 16, DW_OP_minus, DW_OP_stack_value] $r8
	#DEBUG_VALUE: rc_bittree_price:price <- 0
	.loc	18 56 9 is_stmt 1               # liblzma/rangecoder/price.h:56:9
	leal	240(%r8), %r11d
.Ltmp1031:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r11d
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	xorl	%r9d, %r9d
.Ltmp1032:
	.loc	18 60 10 is_stmt 1              # liblzma/rangecoder/price.h:60:10
	movl	%r11d, %r10d
.Ltmp1033:
	.p2align	4, 0x90
.LBB12_5:                               # %do.body.i109
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:b1 <- $edx
	#DEBUG_VALUE: length_update_prices:i <- $r8
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	#DEBUG_VALUE: rc_bittree_price:probs <- [DW_OP_plus_uconst 516, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: rc_bittree_price:bit_levels <- 8
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r11d
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r11d
	#DEBUG_VALUE: rc_bittree_price:price <- $r9d
	.loc	18 59 31                        # liblzma/rangecoder/price.h:59:31
	movl	%r11d, %ebx
	andl	$1, %ebx
	negl	%ebx
.Ltmp1034:
	#DEBUG_VALUE: bit <- undef
	.loc	18 60 10                        # liblzma/rangecoder/price.h:60:10
	shrl	%r10d
.Ltmp1035:
	#DEBUG_VALUE: rc_bittree_price:symbol <- $r10d
	.loc	18 61 25                        # liblzma/rangecoder/price.h:61:25
	andl	$-2, %r11d
	movzwl	516(%rdi,%r11), %r11d
.Ltmp1036:
	#DEBUG_VALUE: rc_bit_price:prob <- undef
	#DEBUG_VALUE: rc_bit_price:bit <- undef
	.loc	18 31 30                        # liblzma/rangecoder/price.h:31:30
	andl	$2032, %ebx                     # imm = 0x7F0
	xorl	%r11d, %ebx
	.loc	18 32 33                        # liblzma/rangecoder/price.h:32:33
	shrl	$4, %ebx
	.loc	18 31 9                         # liblzma/rangecoder/price.h:31:9
	movzbl	(%rcx,%rbx), %r11d
.Ltmp1037:
	.loc	18 61 9                         # liblzma/rangecoder/price.h:61:9
	addl	%r11d, %r9d
.Ltmp1038:
	#DEBUG_VALUE: rc_bittree_price:price <- $r9d
	.loc	18 0 9 is_stmt 0                # liblzma/rangecoder/price.h:0:9
	movl	%r10d, %r11d
.Ltmp1039:
	.loc	18 62 18 is_stmt 1              # liblzma/rangecoder/price.h:62:18
	cmpl	$1, %r10d
.Ltmp1040:
	.loc	18 62 2 is_stmt 0               # liblzma/rangecoder/price.h:62:2
	jne	.LBB12_5
.Ltmp1041:
# %bb.6:                                # %rc_bittree_price.exit124
                                        #   in Loop: Header=BB12_4 Depth=1
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:b1 <- $edx
	#DEBUG_VALUE: length_update_prices:i <- $r8
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 100 18 is_stmt 1              # liblzma/lzma/lzma_encoder.c:100:18
	addl	%edx, %r9d
	.loc	0 100 13 is_stmt 0              # liblzma/lzma/lzma_encoder.c:100:13
	movl	%r9d, (%rsi,%r8,4)
	.loc	0 99 25 is_stmt 1               # liblzma/lzma/lzma_encoder.c:99:25
	incq	%r8
.Ltmp1042:
	#DEBUG_VALUE: length_update_prices:i <- $r8
	.loc	0 99 11 is_stmt 0               # liblzma/lzma/lzma_encoder.c:99:11
	cmpq	%rax, %r8
.Ltmp1043:
	.loc	0 99 2                          # liblzma/lzma/lzma_encoder.c:99:2
	jne	.LBB12_4
.Ltmp1044:
.LBB12_7:                               # %for.end48
	#DEBUG_VALUE: length_update_prices:lc <- $rdi
	#DEBUG_VALUE: length_update_prices:pos_state <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: length_update_prices:table_size <- $eax
	#DEBUG_VALUE: length_update_prices:prices <- $rsi
	.loc	0 104 1 epilogue_begin is_stmt 1 # liblzma/lzma/lzma_encoder.c:104:1
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
.Ltmp1045:
.Lfunc_end12:
	.size	length_update_prices, .Lfunc_end12-length_update_prices
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma_encode
	.type	lzma_encode,@function
lzma_encode:                            # @lzma_encode
.Lfunc_begin13:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_encode:pcoder <- $rdi
	#DEBUG_VALUE: lzma_encode:mf <- $rsi
	#DEBUG_VALUE: lzma_encode:out <- $rdx
	#DEBUG_VALUE: lzma_encode:out_pos <- $rcx
	#DEBUG_VALUE: lzma_encode:out_size <- $r8
	#DEBUG_VALUE: lzma_encode:coder <- $rdi
	.loc	0 418 6 prologue_end            # liblzma/lzma/lzma_encoder.c:418:6
	cmpl	$1, 104(%rsi)
.Ltmp1046:
	.loc	0 418 6 is_stmt 0               # liblzma/lzma/lzma_encoder.c:418:6
	jne	.LBB13_2
.Ltmp1047:
# %bb.1:                                # %cleanup
	#DEBUG_VALUE: lzma_encode:pcoder <- $rdi
	#DEBUG_VALUE: lzma_encode:mf <- $rsi
	#DEBUG_VALUE: lzma_encode:out <- $rdx
	#DEBUG_VALUE: lzma_encode:out_pos <- $rcx
	#DEBUG_VALUE: lzma_encode:out_size <- $r8
	#DEBUG_VALUE: lzma_encode:coder <- $rdi
	.loc	0 422 1 is_stmt 1               # liblzma/lzma/lzma_encoder.c:422:1
	movl	$8, %eax
	retq
.Ltmp1048:
.LBB13_2:                               # %if.end
	#DEBUG_VALUE: lzma_encode:pcoder <- $rdi
	#DEBUG_VALUE: lzma_encode:mf <- $rsi
	#DEBUG_VALUE: lzma_encode:out <- $rdx
	#DEBUG_VALUE: lzma_encode:out_pos <- $rcx
	#DEBUG_VALUE: lzma_encode:out_size <- $r8
	#DEBUG_VALUE: lzma_encode:coder <- $rdi
	.loc	0 421 9                         # liblzma/lzma/lzma_encoder.c:421:9
	movl	$-1, %r9d
.Ltmp1049:
	jmp	lzma_lzma_encode                # TAILCALL
.Ltmp1050:
.Lfunc_end13:
	.size	lzma_encode, .Lfunc_end13-lzma_encode
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	153                             # Offset entry count
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
	.long	.Ldebug_loc45-.Lloclists_table_base0
	.long	.Ldebug_loc46-.Lloclists_table_base0
	.long	.Ldebug_loc47-.Lloclists_table_base0
	.long	.Ldebug_loc48-.Lloclists_table_base0
	.long	.Ldebug_loc49-.Lloclists_table_base0
	.long	.Ldebug_loc50-.Lloclists_table_base0
	.long	.Ldebug_loc51-.Lloclists_table_base0
	.long	.Ldebug_loc52-.Lloclists_table_base0
	.long	.Ldebug_loc53-.Lloclists_table_base0
	.long	.Ldebug_loc54-.Lloclists_table_base0
	.long	.Ldebug_loc55-.Lloclists_table_base0
	.long	.Ldebug_loc56-.Lloclists_table_base0
	.long	.Ldebug_loc57-.Lloclists_table_base0
	.long	.Ldebug_loc58-.Lloclists_table_base0
	.long	.Ldebug_loc59-.Lloclists_table_base0
	.long	.Ldebug_loc60-.Lloclists_table_base0
	.long	.Ldebug_loc61-.Lloclists_table_base0
	.long	.Ldebug_loc62-.Lloclists_table_base0
	.long	.Ldebug_loc63-.Lloclists_table_base0
	.long	.Ldebug_loc64-.Lloclists_table_base0
	.long	.Ldebug_loc65-.Lloclists_table_base0
	.long	.Ldebug_loc66-.Lloclists_table_base0
	.long	.Ldebug_loc67-.Lloclists_table_base0
	.long	.Ldebug_loc68-.Lloclists_table_base0
	.long	.Ldebug_loc69-.Lloclists_table_base0
	.long	.Ldebug_loc70-.Lloclists_table_base0
	.long	.Ldebug_loc71-.Lloclists_table_base0
	.long	.Ldebug_loc72-.Lloclists_table_base0
	.long	.Ldebug_loc73-.Lloclists_table_base0
	.long	.Ldebug_loc74-.Lloclists_table_base0
	.long	.Ldebug_loc75-.Lloclists_table_base0
	.long	.Ldebug_loc76-.Lloclists_table_base0
	.long	.Ldebug_loc77-.Lloclists_table_base0
	.long	.Ldebug_loc78-.Lloclists_table_base0
	.long	.Ldebug_loc79-.Lloclists_table_base0
	.long	.Ldebug_loc80-.Lloclists_table_base0
	.long	.Ldebug_loc81-.Lloclists_table_base0
	.long	.Ldebug_loc82-.Lloclists_table_base0
	.long	.Ldebug_loc83-.Lloclists_table_base0
	.long	.Ldebug_loc84-.Lloclists_table_base0
	.long	.Ldebug_loc85-.Lloclists_table_base0
	.long	.Ldebug_loc86-.Lloclists_table_base0
	.long	.Ldebug_loc87-.Lloclists_table_base0
	.long	.Ldebug_loc88-.Lloclists_table_base0
	.long	.Ldebug_loc89-.Lloclists_table_base0
	.long	.Ldebug_loc90-.Lloclists_table_base0
	.long	.Ldebug_loc91-.Lloclists_table_base0
	.long	.Ldebug_loc92-.Lloclists_table_base0
	.long	.Ldebug_loc93-.Lloclists_table_base0
	.long	.Ldebug_loc94-.Lloclists_table_base0
	.long	.Ldebug_loc95-.Lloclists_table_base0
	.long	.Ldebug_loc96-.Lloclists_table_base0
	.long	.Ldebug_loc97-.Lloclists_table_base0
	.long	.Ldebug_loc98-.Lloclists_table_base0
	.long	.Ldebug_loc99-.Lloclists_table_base0
	.long	.Ldebug_loc100-.Lloclists_table_base0
	.long	.Ldebug_loc101-.Lloclists_table_base0
	.long	.Ldebug_loc102-.Lloclists_table_base0
	.long	.Ldebug_loc103-.Lloclists_table_base0
	.long	.Ldebug_loc104-.Lloclists_table_base0
	.long	.Ldebug_loc105-.Lloclists_table_base0
	.long	.Ldebug_loc106-.Lloclists_table_base0
	.long	.Ldebug_loc107-.Lloclists_table_base0
	.long	.Ldebug_loc108-.Lloclists_table_base0
	.long	.Ldebug_loc109-.Lloclists_table_base0
	.long	.Ldebug_loc110-.Lloclists_table_base0
	.long	.Ldebug_loc111-.Lloclists_table_base0
	.long	.Ldebug_loc112-.Lloclists_table_base0
	.long	.Ldebug_loc113-.Lloclists_table_base0
	.long	.Ldebug_loc114-.Lloclists_table_base0
	.long	.Ldebug_loc115-.Lloclists_table_base0
	.long	.Ldebug_loc116-.Lloclists_table_base0
	.long	.Ldebug_loc117-.Lloclists_table_base0
	.long	.Ldebug_loc118-.Lloclists_table_base0
	.long	.Ldebug_loc119-.Lloclists_table_base0
	.long	.Ldebug_loc120-.Lloclists_table_base0
	.long	.Ldebug_loc121-.Lloclists_table_base0
	.long	.Ldebug_loc122-.Lloclists_table_base0
	.long	.Ldebug_loc123-.Lloclists_table_base0
	.long	.Ldebug_loc124-.Lloclists_table_base0
	.long	.Ldebug_loc125-.Lloclists_table_base0
	.long	.Ldebug_loc126-.Lloclists_table_base0
	.long	.Ldebug_loc127-.Lloclists_table_base0
	.long	.Ldebug_loc128-.Lloclists_table_base0
	.long	.Ldebug_loc129-.Lloclists_table_base0
	.long	.Ldebug_loc130-.Lloclists_table_base0
	.long	.Ldebug_loc131-.Lloclists_table_base0
	.long	.Ldebug_loc132-.Lloclists_table_base0
	.long	.Ldebug_loc133-.Lloclists_table_base0
	.long	.Ldebug_loc134-.Lloclists_table_base0
	.long	.Ldebug_loc135-.Lloclists_table_base0
	.long	.Ldebug_loc136-.Lloclists_table_base0
	.long	.Ldebug_loc137-.Lloclists_table_base0
	.long	.Ldebug_loc138-.Lloclists_table_base0
	.long	.Ldebug_loc139-.Lloclists_table_base0
	.long	.Ldebug_loc140-.Lloclists_table_base0
	.long	.Ldebug_loc141-.Lloclists_table_base0
	.long	.Ldebug_loc142-.Lloclists_table_base0
	.long	.Ldebug_loc143-.Lloclists_table_base0
	.long	.Ldebug_loc144-.Lloclists_table_base0
	.long	.Ldebug_loc145-.Lloclists_table_base0
	.long	.Ldebug_loc146-.Lloclists_table_base0
	.long	.Ldebug_loc147-.Lloclists_table_base0
	.long	.Ldebug_loc148-.Lloclists_table_base0
	.long	.Ldebug_loc149-.Lloclists_table_base0
	.long	.Ldebug_loc150-.Lloclists_table_base0
	.long	.Ldebug_loc151-.Lloclists_table_base0
	.long	.Ldebug_loc152-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp230-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp231-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp232-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp232-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	56                              # 56
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # super-register DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	20                              # Loc expr size
	.byte	126                             # DW_OP_breg14
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp214-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp205-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp197-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	19                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\260\200\200"                  # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	19                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\260\200\200"                  # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp144-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp153-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp171-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp173-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 256
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp171-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp181-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp177-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp176-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp179-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp178-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp189-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp190-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp213-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp214-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp214-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp221-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp222-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp222-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp223-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp223-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp224-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp225-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp225-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp226-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp226-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp228-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp258-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp259-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp259-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp260-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp264-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp264-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp263-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp267-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp267-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp267-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp267-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc61:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp479-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp479-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp517-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp517-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc62:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp480-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp480-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp487-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp487-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc63:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp479-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp479-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp517-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc64:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp294-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp295-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc65:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	36                              # DW_OP_shl
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc66:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp296-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp298-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	121                             # DW_OP_breg9
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp298-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp301-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc67:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp316-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp316-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp328-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp328-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp340-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp340-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp352-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp364-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp364-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp376-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp376-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp388-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp388-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp400-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp400-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp412-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp412-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp424-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	57                              # DW_OP_lit9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp424-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp436-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	58                              # DW_OP_lit10
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp436-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp448-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	59                              # DW_OP_lit11
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp448-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp459-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	60                              # DW_OP_lit12
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc68:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp311-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp312-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp312-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp313-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp316-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp323-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp323-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp324-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp324-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp325-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp328-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp335-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp335-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp336-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp336-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp337-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp340-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp347-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp347-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp348-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp348-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp349-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp359-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp359-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp360-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp360-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp361-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp364-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp371-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp371-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp372-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp372-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp373-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp376-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp383-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp383-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp384-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp384-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp385-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp388-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp395-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp395-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp396-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp396-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp397-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp400-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp407-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp407-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp408-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp408-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp409-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp412-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp419-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp419-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp420-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp420-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp421-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp424-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp431-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp431-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp432-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp433-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp436-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp443-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp443-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp444-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp444-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc69:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp448-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp449-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp449-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	96                              # 96
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp451-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	104                             # 104
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp451-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp452-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	112                             # 112
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp452-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp459-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	114                             # 114
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc70:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp453-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp454-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp454-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp455-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	63                              # DW_OP_lit15
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp455-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp459-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	64                              # DW_OP_lit16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc71:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp481-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp486-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc72:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp458-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp461-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp461-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp463-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp466-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp466-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp467-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp467-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp472-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp474-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp475-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc73:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp461-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp462-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp463-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp464-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp464-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp467-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp474-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp475-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp475-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp476-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp476-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp477-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc74:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp463-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp464-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp464-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp465-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp467-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp476-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp477-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc75:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp478-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp482-.Lfunc_begin0         #   ending offset
	.byte	17                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 255
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\265\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\260\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc76:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp511-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp516-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc77:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp492-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp492-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp494-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp494-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp497-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp497-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp498-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp498-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp503-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp506-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc78:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp492-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp493-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp493-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp494-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp494-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp495-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp495-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp498-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp506-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp506-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp507-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp507-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp508-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc79:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp493-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp494-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp494-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp495-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp495-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp496-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp498-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	56                              # DW_OP_lit8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp507-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp508-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc80:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp509-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp512-.Lfunc_begin0         #   ending offset
	.byte	17                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 255
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\265\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\260\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc81:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp520-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp520-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp543-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp543-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp545-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp545-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp548-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp548-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc82:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp524-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp524-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc83:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp523-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp527-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp545-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp545-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp546-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp546-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc84:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp522-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp522-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp542-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp542-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp545-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp545-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp547-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp547-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc85:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp545-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc86:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp533-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp534-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp534-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp538-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc87:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp564-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp564-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc88:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp562-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp562-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp563-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	147                             # DW_OP_piece
	.byte	40                              # 40
	.byte	147                             # DW_OP_piece
	.byte	4                               # 4
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	35                              # DW_OP_plus_uconst
	.byte	44                              # 44
	.byte	147                             # DW_OP_piece
	.byte	20                              # 20
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp563-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp569-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc89:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp566-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp569-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc90:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp573-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp573-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc91:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp573-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc92:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp586-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp586-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc93:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp723-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp723-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc94:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp591-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp591-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc95:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp589-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp589-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp722-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp722-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc96:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp724-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp724-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc97:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp588-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp723-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc98:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp600-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp644-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp684-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp685-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc99:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp601-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp602-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc100:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp603-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp604-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp604-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp608-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp608-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp614-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp614-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp619-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp619-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp625-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp625-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp630-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp630-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc101:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp603-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp608-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp614-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp625-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp625-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp635-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc102:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp603-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp633-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	252                             # 28412
	.byte	221                             # 
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc103:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp605-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp609-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp609-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp613-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp615-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp620-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp621-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp625-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp626-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp631-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp632-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc104:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp606-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp607-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp610-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp611-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp616-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp617-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp622-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp623-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp627-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp628-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp634-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp636-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc105:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp606-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc106:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp606-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp610-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp610-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp613-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp616-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp620-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp622-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp625-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp627-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp631-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp634-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc107:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp640-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp645-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp684-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp688-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc108:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp641-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp678-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp684-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp710-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc109:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp645-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp648-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp648-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp652-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp652-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp657-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp657-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp659-.Lfunc_begin0         #   ending offset
	.byte	22                              # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	36                              # DW_OP_shl
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp660-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp666-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp666-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp668-.Lfunc_begin0         #   ending offset
	.byte	22                              # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	36                              # DW_OP_shl
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp669-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp675-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp675-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp677-.Lfunc_begin0         #   ending offset
	.byte	22                              # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	36                              # DW_OP_shl
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc110:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp645-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp646-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp646-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp653-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	37                              # DW_OP_shr
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp653-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp654-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp662-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp663-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp671-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp672-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp678-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp679-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc111:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp645-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp648-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp648-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp657-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp657-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp666-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	51                              # DW_OP_lit3
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp666-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp675-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	52                              # DW_OP_lit4
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp675-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp680-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	53                              # DW_OP_lit5
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc112:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp645-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp647-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp655-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp656-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp664-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp665-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp673-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp674-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp681-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc113:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp651-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp681-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc114:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp646-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp652-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp654-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp661-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp663-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp670-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp672-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp679-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp679-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp682-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc115:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp646-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp650-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp655-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp659-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp664-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp668-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp673-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp677-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp681-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp682-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc116:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp685-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp692-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp692-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp694-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc117:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp696-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp702-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp702-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp708-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp708-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp715-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp715-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp720-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp720-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp721-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc118:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp696-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp699-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp699-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp703-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp709-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp710-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp716-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc119:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp696-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp702-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp708-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp717-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc120:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp698-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp703-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp703-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp709-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp709-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp716-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp716-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp719-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc121:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp700-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp701-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp705-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp706-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp712-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp713-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp718-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp721-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc122:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp700-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp721-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc123:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp700-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp705-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp705-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp711-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp712-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp718-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp718-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp719-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc124:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp790-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp790-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc125:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp791-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp791-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp793-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc126:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp726-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp726-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp737-.Lfunc_begin0         #   ending offset
	.byte	12                              # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	50                              # DW_OP_lit2
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc127:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp733-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp734-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc128:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp746-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp747-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc129:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp742-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp743-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc130:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp749-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp753-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp758-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp776-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp776-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp781-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc131:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp749-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp753-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp753-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp758-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp758-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp764-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp764-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp770-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp770-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp776-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp776-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp781-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc132:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp750-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp754-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp754-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp759-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp760-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp765-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp766-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp771-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp772-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp776-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp777-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp781-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc133:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp751-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp752-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp755-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp756-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp761-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp762-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp767-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp768-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp773-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp774-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp778-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp779-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc134:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp751-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp755-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp755-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp759-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp761-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp765-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp767-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp771-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp773-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp776-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp778-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp781-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc135:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp801-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp801-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp808-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp808-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp1022-.Lfunc_begin0        #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1022-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1023-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1023-.Lfunc_begin0        #   starting offset
	.uleb128 .Lfunc_end12-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc136:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp794-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end12-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc137:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp807-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp912-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc138:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp797-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp1030-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc139:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp806-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp1019-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1025-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1028-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc140:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1029-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1044-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc141:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp801-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp820-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp820-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp833-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp833-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp846-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp846-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp859-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp859-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp872-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp872-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp885-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp885-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp898-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp898-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp911-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	55                              # DW_OP_lit7
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp913-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp917-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp917-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp928-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp928-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp932-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp941-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp945-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp954-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp958-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp967-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp971-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp980-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp984-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp993-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp997-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1006-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1010-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1020-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1022-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1022-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1023-.Lfunc_begin0        #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1023-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1025-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1025-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1026-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1026-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1030-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1030-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1044-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc142:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp803-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end12-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc143:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp809-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp819-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp822-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp832-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp835-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp848-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp858-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp861-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp871-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp874-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp884-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp887-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp897-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp900-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp910-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc144:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp810-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp819-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp822-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp832-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp835-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp848-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp858-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp861-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp871-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp874-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp884-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp887-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp897-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp900-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp910-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc145:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp810-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp811-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp811-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp819-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp824-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp832-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp837-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp850-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp858-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp863-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp871-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp876-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp884-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp889-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp897-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp902-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp910-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc146:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp810-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp811-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	56                              # DW_OP_lit8
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp811-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp813-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp813-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp819-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp824-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp826-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp826-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp832-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp837-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp839-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp839-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp850-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp852-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp852-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp858-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp863-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp865-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp865-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp871-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp876-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp878-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp878-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp884-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp889-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp891-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp891-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp897-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp902-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp904-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp904-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp910-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc147:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp916-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp927-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp930-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp940-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp943-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp953-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp956-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp966-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp969-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp979-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp982-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp992-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp995-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp1005-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1008-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1018-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc148:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp917-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp919-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp919-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp921-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp921-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp927-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp930-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp932-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp932-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp934-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp934-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp940-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp943-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp945-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp945-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp947-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp947-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp953-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp956-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp958-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp958-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp960-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp960-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp966-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp969-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp971-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp971-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp973-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp973-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp979-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp982-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp984-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp984-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp986-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp986-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp992-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp995-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp997-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp997-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp999-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp999-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp1005-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1008-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1010-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1010-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1012-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1012-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1018-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc149:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp918-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp927-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp930-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp940-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp943-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp953-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp956-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp966-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp969-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp979-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp982-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp992-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp995-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp1005-.Lfunc_begin0        #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1008-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1018-.Lfunc_begin0        #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc150:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp918-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp919-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp919-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp927-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp930-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp932-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp932-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp940-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp943-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp945-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp945-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp953-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp956-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp958-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp958-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp966-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp969-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp971-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp971-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp979-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp982-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp984-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp984-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp992-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp995-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp997-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp997-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp1005-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1008-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1010-.Lfunc_begin0        #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1010-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1018-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc151:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1030-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1031-.Lfunc_begin0        #   ending offset
	.byte	3                               # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	112                             # -16
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1031-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1035-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1035-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1041-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc152:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1030-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1033-.Lfunc_begin0        #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1033-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1041-.Lfunc_begin0        #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
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
	.byte	38                              # DW_FORM_strx2
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	6                               # DW_FORM_data4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
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
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
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
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
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
	.byte	38                              # DW_FORM_strx2
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
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
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
	.byte	49                              # Abbreviation Code
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
	.byte	50                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	51                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
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
	.byte	52                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	53                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	54                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	38                              # DW_FORM_strx2
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
	.byte	56                              # Abbreviation Code
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
	.byte	57                              # Abbreviation Code
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
	.byte	58                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	59                              # Abbreviation Code
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
	.byte	60                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	61                              # Abbreviation Code
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
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	62                              # Abbreviation Code
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
	.byte	63                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	64                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	65                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	66                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
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
	.byte	67                              # Abbreviation Code
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
	.byte	68                              # Abbreviation Code
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
	.byte	69                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
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
	.byte	70                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
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
	.byte	71                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	72                              # Abbreviation Code
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
	.byte	73                              # Abbreviation Code
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
	.byte	74                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	75                              # Abbreviation Code
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
	.byte	76                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	77                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	78                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	79                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	80                              # Abbreviation Code
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
	.byte	38                              # DW_FORM_strx2
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
	.byte	81                              # Abbreviation Code
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
	.byte	82                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	83                              # Abbreviation Code
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
	.byte	84                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	85                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	86                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	87                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	88                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	89                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	90                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
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
	.byte	1                               # Abbrev [1] 0xc:0x1dfa DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin0      # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x5 DW_TAG_base_type
	.short	277                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x30:0x5 DW_TAG_base_type
	.short	276                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x35:0x5 DW_TAG_base_type
	.short	275                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x3a:0x2d DW_TAG_enumeration_type
	.long	103                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x42:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x45:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x48:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x4b:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x4e:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x51:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x54:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x57:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x5a:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x5d:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x60:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x63:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x67:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x6b:0x15 DW_TAG_enumeration_type
	.long	103                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x73:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x76:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x79:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x7c:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x80:0x67 DW_TAG_structure_type
	.short	736                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x85:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x8e:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x97:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xa0:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	267                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xa9:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	287                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xb2:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	287                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0xbb:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	295                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0xc4:0x18 DW_TAG_enumeration_type
	.long	103                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xcc:0x3 DW_TAG_enumerator
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0xcf:0x3 DW_TAG_enumerator
	.byte	37                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0xd2:0x3 DW_TAG_enumerator
	.byte	38                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0xd5:0x3 DW_TAG_enumerator
	.byte	39                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0xd8:0x3 DW_TAG_enumerator
	.byte	40                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xdc:0xa DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	311                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.short	272                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xe7:0x8 DW_TAG_typedef
	.long	239                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xef:0x8 DW_TAG_typedef
	.long	247                             # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xf7:0x4 DW_TAG_base_type
	.byte	21                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xfb:0x8 DW_TAG_typedef
	.long	259                             # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x103:0x8 DW_TAG_typedef
	.long	103                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x10b:0x8 DW_TAG_typedef
	.long	275                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x113:0x8 DW_TAG_typedef
	.long	283                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x11b:0x4 DW_TAG_base_type
	.byte	29                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x11f:0x8 DW_TAG_typedef
	.long	247                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x127:0xc DW_TAG_array_type
	.long	196                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x12c:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	58                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x133:0x4 DW_TAG_base_type
	.byte	41                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	10                              # Abbrev [10] 0x137:0xc DW_TAG_array_type
	.long	323                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x13c:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	58                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x143:0x5 DW_TAG_pointer_type
	.long	328                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x148:0x8 DW_TAG_typedef
	.long	336                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x150:0x8 DW_TAG_typedef
	.long	344                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x158:0x8 DW_TAG_typedef
	.long	352                             # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x160:0x4 DW_TAG_base_type
	.byte	43                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x164:0x2d DW_TAG_enumeration_type
	.long	103                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x16c:0x3 DW_TAG_enumerator
	.byte	47                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x16f:0x3 DW_TAG_enumerator
	.byte	48                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x172:0x3 DW_TAG_enumerator
	.byte	49                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x175:0x3 DW_TAG_enumerator
	.byte	50                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x178:0x3 DW_TAG_enumerator
	.byte	51                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x17b:0x3 DW_TAG_enumerator
	.byte	52                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x17e:0x3 DW_TAG_enumerator
	.byte	53                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x181:0x3 DW_TAG_enumerator
	.byte	54                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x184:0x3 DW_TAG_enumerator
	.byte	55                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x187:0x3 DW_TAG_enumerator
	.byte	56                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x18a:0x3 DW_TAG_enumerator
	.byte	57                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x18d:0x3 DW_TAG_enumerator
	.byte	58                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x191:0xf DW_TAG_enumeration_type
	.long	103                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x199:0x3 DW_TAG_enumerator
	.byte	59                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x19c:0x3 DW_TAG_enumerator
	.byte	60                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x1a0:0x18 DW_TAG_enumeration_type
	.long	103                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1a8:0x3 DW_TAG_enumerator
	.byte	61                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x1ab:0x3 DW_TAG_enumerator
	.byte	62                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x1ae:0x3 DW_TAG_enumerator
	.byte	63                              # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x1b1:0x3 DW_TAG_enumerator
	.byte	64                              # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x1b4:0x3 DW_TAG_enumerator
	.byte	65                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x1b8:0xc DW_TAG_enumeration_type
	.long	103                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1c0:0x3 DW_TAG_enumerator
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x1c4:0x15 DW_TAG_enumeration_type
	.long	103                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1cc:0x3 DW_TAG_enumerator
	.byte	67                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x1cf:0x3 DW_TAG_enumerator
	.byte	68                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x1d2:0x3 DW_TAG_enumerator
	.byte	69                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x1d5:0x3 DW_TAG_enumerator
	.byte	70                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1d9:0x1 DW_TAG_pointer_type
	.byte	15                              # Abbrev [15] 0x1da:0x25 DW_TAG_subprogram
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	511                             # DW_AT_type
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x1e3:0x9 DW_TAG_formal_parameter
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1ec:0x9 DW_TAG_formal_parameter
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	272                             # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1f5:0x9 DW_TAG_variable
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
	.long	843                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1ff:0x4 DW_TAG_base_type
	.byte	72                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x203:0x5 DW_TAG_pointer_type
	.long	520                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x208:0x4 DW_TAG_typedef
	.byte	74                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x20c:0x5 DW_TAG_pointer_type
	.long	529                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x211:0x8 DW_TAG_typedef
	.long	537                             # DW_AT_type
	.byte	104                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x219:0xd5 DW_TAG_structure_type
	.byte	103                             # DW_AT_name
	.byte	120                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x21e:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	750                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x227:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x230:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x239:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x242:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x24b:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x254:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x25d:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x266:0x9 DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x26f:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x278:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x281:0x9 DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x28a:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x293:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x29c:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2a5:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2ae:0x9 DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2b7:0x9 DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2c0:0x9 DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2c9:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2d2:0x9 DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	834                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2db:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.byte	108                             # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x2e4:0x9 DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x2ee:0x5 DW_TAG_pointer_type
	.long	267                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2f3:0x5 DW_TAG_pointer_type
	.long	760                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x2f8:0x10 DW_TAG_subroutine_type
	.long	251                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x2fd:0x5 DW_TAG_formal_parameter
	.long	524                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x302:0x5 DW_TAG_formal_parameter
	.long	776                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x308:0x5 DW_TAG_pointer_type
	.long	781                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x30d:0x8 DW_TAG_typedef
	.long	789                             # DW_AT_type
	.byte	89                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x315:0x17 DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x319:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x322:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x32c:0x5 DW_TAG_pointer_type
	.long	817                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x331:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x332:0x5 DW_TAG_formal_parameter
	.long	524                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x337:0x5 DW_TAG_formal_parameter
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x33d:0x5 DW_TAG_pointer_type
	.long	251                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x342:0x9 DW_TAG_typedef
	.long	107                             # DW_AT_type
	.byte	100                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x34b:0x5 DW_TAG_pointer_type
	.long	848                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x350:0x164 DW_TAG_structure_type
	.byte	158                             # DW_AT_name
	.long	249576                          # DW_AT_byte_size
	.byte	12                              # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x358:0x9 DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	1204                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x361:0xa DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	1212                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.short	736                             # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x36b:0xa DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	1220                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.short	740                             # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x375:0xa DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	1232                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.short	756                             # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x37f:0xa DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.short	2948                            # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x389:0xa DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.short	2952                            # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x393:0xa DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.short	2956                            # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x39d:0xa DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.short	2957                            # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3a7:0xa DW_TAG_member
	.byte	116                             # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.short	2958                            # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3b1:0xa DW_TAG_member
	.byte	117                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.short	2960                            # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3bb:0xa DW_TAG_member
	.byte	118                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.short	2964                            # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3c5:0xa DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.short	2968                            # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3cf:0xa DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	1245                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.short	2972                            # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3d9:0xa DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	1264                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.short	27548                           # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3e3:0xa DW_TAG_member
	.byte	122                             # DW_AT_name
	.long	1282                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.short	27932                           # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3ed:0xa DW_TAG_member
	.byte	123                             # DW_AT_name
	.long	1282                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.short	27956                           # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3f7:0xa DW_TAG_member
	.byte	124                             # DW_AT_name
	.long	1282                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.short	27980                           # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x401:0xa DW_TAG_member
	.byte	125                             # DW_AT_name
	.long	1282                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.short	28004                           # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x40b:0xa DW_TAG_member
	.byte	126                             # DW_AT_name
	.long	1264                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.short	28028                           # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x415:0xa DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	1294                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.short	28412                           # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x41f:0xa DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	1312                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.short	28924                           # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x429:0xa DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	1324                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.short	29152                           # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x433:0xa DW_TAG_member
	.byte	130                             # DW_AT_name
	.long	1336                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.short	29184                           # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x43d:0xa DW_TAG_member
	.byte	139                             # DW_AT_name
	.long	1336                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.short	47688                           # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x447:0xc DW_TAG_member
	.byte	140                             # DW_AT_name
	.long	1489                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	66192                           # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x453:0xc DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	1507                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	67216                           # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x45f:0xc DW_TAG_member
	.byte	142                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	69264                           # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x46b:0xc DW_TAG_member
	.byte	143                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.long	69268                           # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x477:0xc DW_TAG_member
	.byte	144                             # DW_AT_name
	.long	1477                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.long	69272                           # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x483:0xc DW_TAG_member
	.byte	145                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.long	69336                           # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x48f:0xc DW_TAG_member
	.byte	146                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	69340                           # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x49b:0xc DW_TAG_member
	.byte	147                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.long	69344                           # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x4a7:0xc DW_TAG_member
	.byte	148                             # DW_AT_name
	.long	1525                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.long	69348                           # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x4b4:0x8 DW_TAG_typedef
	.long	128                             # DW_AT_type
	.byte	107                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4bc:0x8 DW_TAG_typedef
	.long	356                             # DW_AT_type
	.byte	109                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4c4:0xc DW_TAG_array_type
	.long	251                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4c9:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x4d0:0xd DW_TAG_array_type
	.long	781                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x4d5:0x7 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.short	274                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x4dd:0x13 DW_TAG_array_type
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4e2:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	27                              # Abbrev [27] 0x4e8:0x7 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.short	768                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x4f0:0x12 DW_TAG_array_type
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4f5:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	12                              # DW_AT_count
	.byte	11                              # Abbrev [11] 0x4fb:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x502:0xc DW_TAG_array_type
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x507:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	12                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x50e:0x12 DW_TAG_array_type
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x513:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	11                              # Abbrev [11] 0x519:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x520:0xc DW_TAG_array_type
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x525:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	114                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x52c:0xc DW_TAG_array_type
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x531:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x538:0x8 DW_TAG_typedef
	.long	1344                            # DW_AT_type
	.byte	138                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x540:0x53 DW_TAG_structure_type
	.short	18504                           # DW_AT_byte_size
	.byte	12                              # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x545:0x9 DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x54e:0x9 DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	328                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x557:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	1427                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x560:0xa DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	1427                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.short	260                             # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x56a:0xa DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	1445                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.short	516                             # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x574:0xa DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	1458                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.short	1028                            # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x57e:0xa DW_TAG_member
	.byte	136                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.short	18436                           # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x588:0xa DW_TAG_member
	.byte	137                             # DW_AT_name
	.long	1477                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.short	18440                           # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x593:0x12 DW_TAG_array_type
	.long	328                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x598:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	11                              # Abbrev [11] 0x59e:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5a5:0xd DW_TAG_array_type
	.long	328                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x5aa:0x7 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5b2:0x13 DW_TAG_array_type
	.long	251                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5b7:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	27                              # Abbrev [27] 0x5bd:0x7 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.short	272                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5c5:0xc DW_TAG_array_type
	.long	251                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5ca:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5d1:0x12 DW_TAG_array_type
	.long	251                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5d6:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	11                              # Abbrev [11] 0x5dc:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5e3:0x12 DW_TAG_array_type
	.long	251                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5e8:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	11                              # Abbrev [11] 0x5ee:0x6 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.byte	128                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5f5:0xd DW_TAG_array_type
	.long	1538                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x5fa:0x7 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.short	4096                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x602:0x8 DW_TAG_typedef
	.long	1546                            # DW_AT_type
	.byte	157                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x60a:0x56 DW_TAG_structure_type
	.byte	44                              # DW_AT_byte_size
	.byte	12                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x60e:0x9 DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	1212                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x617:0x9 DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x620:0x9 DW_TAG_member
	.byte	150                             # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	5                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x629:0x9 DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x632:0x9 DW_TAG_member
	.byte	152                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x63b:0x9 DW_TAG_member
	.byte	153                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x644:0x9 DW_TAG_member
	.byte	154                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x64d:0x9 DW_TAG_member
	.byte	155                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x656:0x9 DW_TAG_member
	.byte	156                             # DW_AT_name
	.long	1220                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x660:0x18 DW_TAG_subprogram
	.byte	159                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x665:0x9 DW_TAG_formal_parameter
	.byte	75                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x66e:0x9 DW_TAG_formal_parameter
	.byte	160                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x678:0x1d DW_TAG_subprogram
	.byte	161                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x67c:0x8 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	1685                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x684:0x8 DW_TAG_formal_parameter
	.byte	162                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	323                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x68c:0x8 DW_TAG_formal_parameter
	.byte	163                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x695:0x5 DW_TAG_pointer_type
	.long	1204                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x69a:0x37 DW_TAG_subprogram
	.byte	164                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x69e:0x8 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	1685                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6a6:0x8 DW_TAG_formal_parameter
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	323                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6ae:0x8 DW_TAG_formal_parameter
	.byte	165                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6b6:0x8 DW_TAG_formal_parameter
	.byte	166                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x6be:0x8 DW_TAG_variable
	.byte	167                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x6c6:0xa DW_TAG_lexical_block
	.byte	31                              # Abbrev [31] 0x6c7:0x8 DW_TAG_variable
	.byte	163                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x6d1:0x5 DW_TAG_const_type
	.long	251                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x6d6:0x11 DW_TAG_subprogram
	.byte	168                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	251                             # DW_AT_type
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x6de:0x8 DW_TAG_formal_parameter
	.byte	75                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	1767                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x6e7:0x5 DW_TAG_pointer_type
	.long	1772                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x6ec:0x5 DW_TAG_const_type
	.long	529                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x6f1:0x3f DW_TAG_subprogram
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x6f5:0x8 DW_TAG_formal_parameter
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6fd:0x8 DW_TAG_formal_parameter
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x705:0x8 DW_TAG_formal_parameter
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x70d:0x8 DW_TAG_variable
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	843                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x715:0x8 DW_TAG_variable
	.byte	170                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	1840                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x71d:0x8 DW_TAG_variable
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	323                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x725:0xa DW_TAG_lexical_block
	.byte	31                              # Abbrev [31] 0x726:0x8 DW_TAG_variable
	.byte	172                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.long	1840                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x730:0x5 DW_TAG_const_type
	.long	267                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x735:0x3d DW_TAG_subprogram
	.byte	173                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x739:0x8 DW_TAG_formal_parameter
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x741:0x8 DW_TAG_formal_parameter
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.long	524                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x749:0x8 DW_TAG_formal_parameter
	.byte	174                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x751:0x8 DW_TAG_formal_parameter
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x759:0x8 DW_TAG_formal_parameter
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x761:0x8 DW_TAG_variable
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.long	843                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x769:0x8 DW_TAG_variable
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x772:0x37 DW_TAG_subprogram
	.byte	176                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x776:0x8 DW_TAG_formal_parameter
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x77e:0x8 DW_TAG_formal_parameter
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x786:0x8 DW_TAG_formal_parameter
	.byte	177                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x78e:0x8 DW_TAG_formal_parameter
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x796:0x8 DW_TAG_variable
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.long	843                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x79e:0xa DW_TAG_lexical_block
	.byte	31                              # Abbrev [31] 0x79f:0x8 DW_TAG_variable
	.byte	178                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x7a9:0x47 DW_TAG_subprogram
	.byte	179                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x7ad:0x8 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	1685                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x7b5:0x8 DW_TAG_formal_parameter
	.byte	171                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	323                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x7bd:0x8 DW_TAG_formal_parameter
	.byte	172                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x7c5:0x8 DW_TAG_formal_parameter
	.byte	166                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x7cd:0x8 DW_TAG_variable
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x7d5:0x1a DW_TAG_lexical_block
	.byte	31                              # Abbrev [31] 0x7d6:0x8 DW_TAG_variable
	.byte	180                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x7de:0x8 DW_TAG_variable
	.byte	181                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x7e6:0x8 DW_TAG_variable
	.byte	163                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x7f0:0x2a DW_TAG_subprogram
	.byte	182                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x7f5:0x9 DW_TAG_formal_parameter
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x7fe:0x9 DW_TAG_formal_parameter
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x807:0x9 DW_TAG_variable
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	303                             # DW_AT_decl_line
	.long	843                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x810:0x9 DW_TAG_variable
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	304                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x81a:0x17 DW_TAG_subprogram
	.byte	183                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x81e:0x8 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	1685                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x826:0xa DW_TAG_lexical_block
	.byte	31                              # Abbrev [31] 0x827:0x8 DW_TAG_variable
	.byte	184                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.long	287                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x831:0x49f DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	278                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6236                            # DW_AT_type
                                        # DW_AT_external
	.byte	36                              # Abbrev [36] 0x842:0xa DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x84c:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.long	3502                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x856:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	188                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	319                             # DW_AT_decl_line
	.long	6425                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x860:0xa DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	189                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	319                             # DW_AT_decl_line
	.long	6420                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x86a:0xa DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	190                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	320                             # DW_AT_decl_line
	.long	287                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x874:0xb DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.short	292                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	320                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x87f:0xa DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.long	7660                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x889:0xa DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	169                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	328                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x893:0xbb DW_TAG_inlined_subroutine
	.long	474                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp59-.Ltmp3                  # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	324                             # DW_AT_call_line
	.byte	33                              # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x8a1:0x6 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.long	483                             # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x8a7:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.long	492                             # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x8ad:0x6 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.long	501                             # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0x8b3:0x1c DW_TAG_inlined_subroutine
	.long	1632                            # DW_AT_abstract_origin
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp9-.Ltmp8                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x8c1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	93
	.long	1637                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x8c8:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1646                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x8cf:0x22 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp12-.Ltmp10                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	289                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x8dd:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x8e4:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x8ea:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x8f1:0x5c DW_TAG_inlined_subroutine
	.long	1690                            # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp58-.Ltmp13                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	290                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x8ff:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1694                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x906:0xa DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	115
	.ascii	"\234\027"
	.byte	159
	.long	1702                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x910:0x6 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.long	1710                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x916:0x6 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.long	1718                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x91c:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.long	1726                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x922:0x2a DW_TAG_lexical_block
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp58-.Ltmp13                 # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x928:0x6 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.long	1735                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0x92e:0x1d DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.byte	83                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x937:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x93e:0x6 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x944:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x94e:0x2ae DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	47                              # Abbrev [47] 0x950:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	12
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	369                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	47                              # Abbrev [47] 0x95c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	28
	.byte	174                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	370                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	48                              # Abbrev [48] 0x968:0x293 DW_TAG_inlined_subroutine
	.long	1845                            # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	378                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x972:0x6 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.long	1849                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x978:0x6 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.long	1857                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x97e:0x6 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.long	1873                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x984:0x6 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.long	1881                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x98a:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	1889                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0x990:0xec DW_TAG_inlined_subroutine
	.long	1777                            # DW_AT_abstract_origin
	.byte	3                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	248                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x999:0x6 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.long	1781                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x99f:0x6 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.long	1789                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x9a5:0x6 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.long	1797                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x9ab:0x6 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.long	1805                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x9b1:0x6 DW_TAG_variable
	.byte	35                              # DW_AT_location
	.long	1813                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x9b7:0x6 DW_TAG_variable
	.byte	36                              # DW_AT_location
	.long	1821                            # DW_AT_abstract_origin
	.byte	49                              # Abbrev [49] 0x9bd:0x57 DW_TAG_inlined_subroutine
	.long	1690                            # DW_AT_abstract_origin
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp165-.Ltmp122               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x9ca:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1694                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x9d1:0x6 DW_TAG_formal_parameter
	.byte	37                              # DW_AT_location
	.long	1702                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x9d7:0x6 DW_TAG_formal_parameter
	.byte	40                              # DW_AT_location
	.long	1710                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x9dd:0x6 DW_TAG_formal_parameter
	.byte	38                              # DW_AT_location
	.long	1718                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x9e3:0x6 DW_TAG_variable
	.byte	39                              # DW_AT_location
	.long	1726                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x9e9:0x2a DW_TAG_lexical_block
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp165-.Ltmp122               # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x9ef:0x6 DW_TAG_variable
	.byte	41                              # DW_AT_location
	.long	1735                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0x9f5:0x1d DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	4                               # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.byte	83                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x9fe:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xa05:0x6 DW_TAG_formal_parameter
	.byte	43                              # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xa0b:0x6 DW_TAG_formal_parameter
	.byte	42                              # DW_AT_location
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xa14:0x67 DW_TAG_inlined_subroutine
	.long	1961                            # DW_AT_abstract_origin
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp185-.Ltmp171               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	67                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xa21:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1965                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xa28:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	1973                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xa2f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	1981                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xa36:0x6 DW_TAG_formal_parameter
	.byte	45                              # DW_AT_location
	.long	1989                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0xa3c:0x6 DW_TAG_variable
	.byte	44                              # DW_AT_location
	.long	1997                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0xa42:0x38 DW_TAG_lexical_block
	.byte	5                               # DW_AT_ranges
	.byte	41                              # Abbrev [41] 0xa44:0x6 DW_TAG_variable
	.byte	46                              # DW_AT_location
	.long	2006                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0xa4a:0x6 DW_TAG_variable
	.byte	47                              # DW_AT_location
	.long	2014                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0xa50:0x6 DW_TAG_variable
	.byte	48                              # DW_AT_location
	.long	2022                            # DW_AT_abstract_origin
	.byte	49                              # Abbrev [49] 0xa56:0x23 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp180-.Ltmp179               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	36                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xa63:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xa6a:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	89
	.long	1668                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xa71:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xa7c:0x22 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp116-.Ltmp115               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	246                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xa89:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xa90:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xa97:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0xa9e:0xc DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp97-.Ltmp96                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	49                              # Abbrev [49] 0xaaa:0x21 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp101-.Ltmp99                # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	251                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xab7:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xabe:0x6 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xac4:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0xacb:0x22 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp105-.Ltmp103               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	257                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xad9:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xae0:0x6 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xae6:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0xaed:0xea DW_TAG_inlined_subroutine
	.long	1906                            # DW_AT_abstract_origin
	.byte	6                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	258                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0xaf7:0x6 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.long	1910                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xafd:0x6 DW_TAG_formal_parameter
	.byte	30                              # DW_AT_location
	.long	1934                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0xb03:0x6 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.long	1942                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0xb09:0x90 DW_TAG_lexical_block
	.byte	7                               # DW_AT_ranges
	.byte	41                              # Abbrev [41] 0xb0b:0x6 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.long	1951                            # DW_AT_abstract_origin
	.byte	49                              # Abbrev [49] 0xb11:0x21 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp111-.Ltmp109               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	203                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xb1e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xb25:0x6 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xb2b:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xb32:0x22 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp114-.Ltmp113               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	206                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xb3f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xb46:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xb4d:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xb54:0x21 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	14                              # DW_AT_low_pc
	.long	.Ltmp198-.Ltmp196               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	208                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xb61:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xb68:0x6 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xb6e:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xb75:0x23 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	15                              # DW_AT_low_pc
	.long	.Ltmp200-.Ltmp199               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	209                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xb82:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xb89:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1668                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xb90:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xb99:0x21 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	16                              # DW_AT_low_pc
	.long	.Ltmp191-.Ltmp189               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	197                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xba6:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xbad:0x6 DW_TAG_formal_parameter
	.byte	49                              # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xbb3:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xbba:0x1c DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	17                              # DW_AT_low_pc
	.long	.Ltmp194-.Ltmp193               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	198                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xbc7:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xbce:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	1668                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0xbd7:0x23 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	18                              # DW_AT_low_pc
	.long	.Ltmp167-.Ltmp166               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	261                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xbe5:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xbec:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xbf3:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0xbfc:0xe DW_TAG_inlined_subroutine
	.long	1750                            # DW_AT_abstract_origin
	.byte	19                              # DW_AT_low_pc
	.long	.Ltmp66-.Ltmp64                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	328                             # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	39                              # Abbrev [39] 0xc0a:0x6e DW_TAG_inlined_subroutine
	.long	2032                            # DW_AT_abstract_origin
	.byte	20                              # DW_AT_low_pc
	.long	.Ltmp221-.Ltmp213               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	389                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xc18:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2037                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xc1f:0x6 DW_TAG_formal_parameter
	.byte	50                              # DW_AT_location
	.long	2046                            # DW_AT_abstract_origin
	.byte	52                              # Abbrev [52] 0xc25:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2055                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0xc2c:0x6 DW_TAG_variable
	.byte	51                              # DW_AT_location
	.long	2064                            # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0xc32:0x22 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	21                              # DW_AT_low_pc
	.long	.Ltmp217-.Ltmp215               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	305                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xc40:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xc47:0x6 DW_TAG_formal_parameter
	.byte	52                              # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xc4d:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0xc54:0x23 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	22                              # DW_AT_low_pc
	.long	.Ltmp219-.Ltmp218               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	306                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xc62:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1660                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xc69:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xc70:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0xc78:0x23 DW_TAG_inlined_subroutine
	.long	2074                            # DW_AT_abstract_origin
	.byte	23                              # DW_AT_low_pc
	.long	.Ltmp226-.Ltmp221               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	392                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xc86:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2078                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0xc8d:0xd DW_TAG_lexical_block
	.byte	23                              # DW_AT_low_pc
	.long	.Ltmp226-.Ltmp221               # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0xc93:0x6 DW_TAG_variable
	.byte	53                              # DW_AT_location
	.long	2087                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	53                              # Abbrev [53] 0xc9b:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	93
	.byte	24                              # DW_AT_call_return_pc
	.byte	54                              # Abbrev [54] 0xc9f:0x6 DW_TAG_call_site
	.long	3280                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	54                              # Abbrev [54] 0xca5:0x6 DW_TAG_call_site
	.long	3280                            # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	54                              # Abbrev [54] 0xcab:0x6 DW_TAG_call_site
	.long	3472                            # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	54                              # Abbrev [54] 0xcb1:0x6 DW_TAG_call_site
	.long	3512                            # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	54                              # Abbrev [54] 0xcb7:0x6 DW_TAG_call_site
	.long	3542                            # DW_AT_call_origin
	.byte	29                              # DW_AT_call_return_pc
	.byte	54                              # Abbrev [54] 0xcbd:0x6 DW_TAG_call_site
	.long	3973                            # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	54                              # Abbrev [54] 0xcc3:0x6 DW_TAG_call_site
	.long	3542                            # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	54                              # Abbrev [54] 0xcc9:0x6 DW_TAG_call_site
	.long	3280                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0xcd0:0xc0 DW_TAG_subprogram
	.byte	32                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	279                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	511                             # DW_AT_type
	.byte	56                              # Abbrev [56] 0xce0:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	106                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	1685                            # DW_AT_type
	.byte	56                              # Abbrev [56] 0xcea:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	188                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	750                             # DW_AT_type
	.byte	56                              # Abbrev [56] 0xcf4:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	189                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	4499                            # DW_AT_type
	.byte	56                              # Abbrev [56] 0xcfe:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	190                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	287                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0xd08:0x10 DW_TAG_lexical_block
	.byte	33                              # DW_AT_low_pc
	.long	.Ltmp260-.Ltmp257               # DW_AT_high_pc
	.byte	57                              # Abbrev [57] 0xd0e:0x9 DW_TAG_variable
	.byte	54                              # DW_AT_location
	.byte	162                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.long	328                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0xd18:0x1a DW_TAG_lexical_block
	.byte	34                              # DW_AT_low_pc
	.long	.Ltmp265-.Ltmp261               # DW_AT_high_pc
	.byte	57                              # Abbrev [57] 0xd1e:0x9 DW_TAG_variable
	.byte	55                              # DW_AT_location
	.byte	162                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.long	328                             # DW_AT_type
	.byte	58                              # Abbrev [58] 0xd27:0xa DW_TAG_variable
	.byte	56                              # DW_AT_location
	.short	293                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xd32:0x22 DW_TAG_inlined_subroutine
	.long	4458                            # DW_AT_abstract_origin
	.byte	8                               # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.byte	201                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0xd3b:0x6 DW_TAG_formal_parameter
	.byte	57                              # DW_AT_location
	.long	4466                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xd41:0x6 DW_TAG_formal_parameter
	.byte	58                              # DW_AT_location
	.long	4474                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xd47:0x6 DW_TAG_formal_parameter
	.byte	59                              # DW_AT_location
	.long	4482                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xd4d:0x6 DW_TAG_formal_parameter
	.byte	60                              # DW_AT_location
	.long	4490                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xd54:0x15 DW_TAG_inlined_subroutine
	.long	4504                            # DW_AT_abstract_origin
	.byte	35                              # DW_AT_low_pc
	.long	.Ltmp282-.Ltmp281               # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	207                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xd61:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	4508                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xd69:0x26 DW_TAG_inlined_subroutine
	.long	4458                            # DW_AT_abstract_origin
	.byte	9                               # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.byte	158                             # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xd72:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	4466                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xd79:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	4474                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xd80:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	4482                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xd87:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	4490                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	59                              # Abbrev [59] 0xd90:0x19 DW_TAG_subprogram
	.byte	185                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0xd94:0x5 DW_TAG_formal_parameter
	.long	3497                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xd99:0x5 DW_TAG_formal_parameter
	.long	3502                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xd9e:0x5 DW_TAG_formal_parameter
	.long	3507                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xda3:0x5 DW_TAG_formal_parameter
	.long	3507                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	60                              # Abbrev [60] 0xda9:0x5 DW_TAG_restrict_type
	.long	515                             # DW_AT_type
	.byte	60                              # Abbrev [60] 0xdae:0x5 DW_TAG_restrict_type
	.long	524                             # DW_AT_type
	.byte	60                              # Abbrev [60] 0xdb3:0x5 DW_TAG_restrict_type
	.long	829                             # DW_AT_type
	.byte	59                              # Abbrev [59] 0xdb8:0x1e DW_TAG_subprogram
	.byte	186                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0xdbc:0x5 DW_TAG_formal_parameter
	.long	3497                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xdc1:0x5 DW_TAG_formal_parameter
	.long	3502                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xdc6:0x5 DW_TAG_formal_parameter
	.long	3507                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xdcb:0x5 DW_TAG_formal_parameter
	.long	3507                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xdd0:0x5 DW_TAG_formal_parameter
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	61                              # Abbrev [61] 0xdd6:0x1af DW_TAG_subprogram
	.byte	70                              # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	288                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	62                              # Abbrev [62] 0xde2:0x9 DW_TAG_formal_parameter
	.byte	93                              # DW_AT_location
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	62                              # Abbrev [62] 0xdeb:0x9 DW_TAG_formal_parameter
	.byte	94                              # DW_AT_location
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	62                              # Abbrev [62] 0xdf4:0x9 DW_TAG_formal_parameter
	.byte	95                              # DW_AT_location
	.byte	178                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	62                              # Abbrev [62] 0xdfd:0x9 DW_TAG_formal_parameter
	.byte	96                              # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	57                              # Abbrev [57] 0xe06:0x9 DW_TAG_variable
	.byte	97                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.long	843                             # DW_AT_type
	.byte	57                              # Abbrev [57] 0xe0f:0x9 DW_TAG_variable
	.byte	98                              # DW_AT_location
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	58                              # Abbrev [58] 0xe18:0xa DW_TAG_variable
	.byte	99                              # DW_AT_location
	.short	302                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	49                              # Abbrev [49] 0xe22:0x15 DW_TAG_inlined_subroutine
	.long	7326                            # DW_AT_abstract_origin
	.byte	71                              # DW_AT_low_pc
	.long	.Ltmp600-.Ltmp592               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	153                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xe2f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	7335                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xe37:0x57 DW_TAG_inlined_subroutine
	.long	1690                            # DW_AT_abstract_origin
	.byte	72                              # DW_AT_low_pc
	.long	.Ltmp637-.Ltmp603               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	155                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xe44:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1694                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xe4b:0x6 DW_TAG_formal_parameter
	.byte	102                             # DW_AT_location
	.long	1702                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xe51:0x6 DW_TAG_formal_parameter
	.byte	100                             # DW_AT_location
	.long	1710                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xe57:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	1718                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0xe5e:0x6 DW_TAG_variable
	.byte	101                             # DW_AT_location
	.long	1726                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0xe64:0x29 DW_TAG_lexical_block
	.byte	72                              # DW_AT_low_pc
	.long	.Ltmp637-.Ltmp603               # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0xe6a:0x6 DW_TAG_variable
	.byte	103                             # DW_AT_location
	.long	1735                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0xe70:0x1c DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	16                              # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.byte	83                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0xe79:0x6 DW_TAG_formal_parameter
	.byte	105                             # DW_AT_location
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xe7f:0x6 DW_TAG_formal_parameter
	.byte	104                             # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xe85:0x6 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_location
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0xe8e:0xf0 DW_TAG_lexical_block
	.byte	73                              # DW_AT_low_pc
	.long	.Ltmp721-.Ltmp639               # DW_AT_high_pc
	.byte	58                              # Abbrev [58] 0xe94:0xa DW_TAG_variable
	.byte	107                             # DW_AT_location
	.short	303                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	58                              # Abbrev [58] 0xe9e:0xa DW_TAG_variable
	.byte	108                             # DW_AT_location
	.short	304                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	63                              # Abbrev [63] 0xea8:0x9 DW_TAG_variable
	.short	305                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	45                              # Abbrev [45] 0xeb1:0x4f DW_TAG_inlined_subroutine
	.long	7344                            # DW_AT_abstract_origin
	.byte	17                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	166                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xeba:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	7349                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xec1:0x6 DW_TAG_formal_parameter
	.byte	113                             # DW_AT_location
	.long	7357                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xec7:0x6 DW_TAG_formal_parameter
	.byte	111                             # DW_AT_location
	.long	7365                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xecd:0x6 DW_TAG_formal_parameter
	.byte	110                             # DW_AT_location
	.long	7373                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0xed3:0x6 DW_TAG_variable
	.byte	109                             # DW_AT_location
	.long	7381                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0xed9:0x26 DW_TAG_lexical_block
	.byte	18                              # DW_AT_ranges
	.byte	41                              # Abbrev [41] 0xedb:0x6 DW_TAG_variable
	.byte	114                             # DW_AT_location
	.long	7390                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0xee1:0x1d DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	19                              # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.byte	98                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xeea:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xef1:0x6 DW_TAG_formal_parameter
	.byte	112                             # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xef7:0x6 DW_TAG_formal_parameter
	.byte	115                             # DW_AT_location
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xf00:0x22 DW_TAG_inlined_subroutine
	.long	7400                            # DW_AT_abstract_origin
	.byte	74                              # DW_AT_low_pc
	.long	.Ltmp696-.Ltmp685               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	170                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xf0d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	7405                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xf14:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	7413                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xf1b:0x6 DW_TAG_formal_parameter
	.byte	116                             # DW_AT_location
	.long	7422                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xf22:0x5b DW_TAG_inlined_subroutine
	.long	7344                            # DW_AT_abstract_origin
	.byte	75                              # DW_AT_low_pc
	.long	.Ltmp720-.Ltmp696               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	172                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xf2f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	7349                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0xf36:0xb DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	126
	.ascii	"\340\343\001"
	.byte	159
	.long	7357                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xf41:0x6 DW_TAG_formal_parameter
	.byte	117                             # DW_AT_location
	.long	7365                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xf47:0x6 DW_TAG_formal_parameter
	.byte	118                             # DW_AT_location
	.long	7373                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0xf4d:0x6 DW_TAG_variable
	.byte	119                             # DW_AT_location
	.long	7381                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0xf53:0x29 DW_TAG_lexical_block
	.byte	75                              # DW_AT_low_pc
	.long	.Ltmp720-.Ltmp696               # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0xf59:0x6 DW_TAG_variable
	.byte	120                             # DW_AT_location
	.long	7390                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0xf5f:0x1c DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	20                              # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.byte	98                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0xf68:0x6 DW_TAG_formal_parameter
	.byte	122                             # DW_AT_location
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xf6e:0x6 DW_TAG_formal_parameter
	.byte	121                             # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0xf74:0x6 DW_TAG_formal_parameter
	.byte	123                             # DW_AT_location
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0xf7e:0x6 DW_TAG_call_site
	.long	3973                            # DW_AT_call_origin
	.byte	71                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	61                              # Abbrev [61] 0xf85:0x1e5 DW_TAG_subprogram
	.byte	76                              # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	289                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	62                              # Abbrev [62] 0xf91:0x9 DW_TAG_formal_parameter
	.byte	124                             # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	1685                            # DW_AT_type
	.byte	62                              # Abbrev [62] 0xf9a:0x9 DW_TAG_formal_parameter
	.byte	125                             # DW_AT_location
	.byte	197                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	5006                            # DW_AT_type
	.byte	56                              # Abbrev [56] 0xfa3:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	62                              # Abbrev [62] 0xfad:0x9 DW_TAG_formal_parameter
	.byte	126                             # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	56                              # Abbrev [56] 0xfb6:0x1d DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	120
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	168
	.asciz	"\265\200\200"
	.byte	168
	.asciz	"\260\200\200"
	.byte	159
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	5011                            # DW_AT_type
	.byte	50                              # Abbrev [50] 0xfd3:0xc DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	77                              # DW_AT_low_pc
	.long	.Ltmp728-.Ltmp727               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	49                              # Abbrev [49] 0xfdf:0x1b DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	78                              # DW_AT_low_pc
	.long	.Ltmp731-.Ltmp730               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	115                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0xfec:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1660                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0xff3:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xffa:0x47 DW_TAG_inlined_subroutine
	.long	1690                            # DW_AT_abstract_origin
	.byte	79                              # DW_AT_low_pc
	.long	.Ltmp734-.Ltmp732               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	116                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1007:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1694                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x100e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	89
	.long	1702                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x1015:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	1710                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x101b:0x12 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	114
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	50
	.byte	28
	.byte	159
	.long	1718                            # DW_AT_abstract_origin
	.byte	64                              # Abbrev [64] 0x102d:0x6 DW_TAG_variable
	.byte	1                               # DW_AT_const_value
	.long	1726                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x1033:0xd DW_TAG_lexical_block
	.byte	79                              # DW_AT_low_pc
	.long	.Ltmp734-.Ltmp732               # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x1039:0x6 DW_TAG_variable
	.byte	127                             # DW_AT_location
	.long	1735                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x1041:0x1b DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	80                              # DW_AT_low_pc
	.long	.Ltmp735-.Ltmp734               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	118                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x104e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1660                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x1055:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x105c:0x22 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	81                              # DW_AT_low_pc
	.long	.Ltmp739-.Ltmp738               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	122                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1069:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1660                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x1070:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	90
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x1077:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x107e:0x48 DW_TAG_inlined_subroutine
	.long	1690                            # DW_AT_abstract_origin
	.byte	82                              # DW_AT_low_pc
	.long	.Ltmp743-.Ltmp740               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	123                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x108b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1694                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x1092:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	89
	.long	1702                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x1099:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_const_value
	.long	1710                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x109f:0x12 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	114
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	58
	.byte	28
	.byte	159
	.long	1718                            # DW_AT_abstract_origin
	.byte	64                              # Abbrev [64] 0x10b1:0x6 DW_TAG_variable
	.byte	1                               # DW_AT_const_value
	.long	1726                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x10b7:0xe DW_TAG_lexical_block
	.byte	82                              # DW_AT_low_pc
	.long	.Ltmp743-.Ltmp740               # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x10bd:0x7 DW_TAG_variable
	.ascii	"\201\001"                      # DW_AT_location
	.long	1735                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x10c6:0x22 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	83                              # DW_AT_low_pc
	.long	.Ltmp748-.Ltmp746               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	125                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x10d3:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x10da:0x7 DW_TAG_formal_parameter
	.ascii	"\200\001"                      # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x10e1:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x10e8:0x69 DW_TAG_inlined_subroutine
	.long	1690                            # DW_AT_abstract_origin
	.byte	84                              # DW_AT_low_pc
	.long	.Ltmp781-.Ltmp749               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	127                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x10f5:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1694                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x10fc:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	89
	.long	1702                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x1103:0x7 DW_TAG_formal_parameter
	.ascii	"\203\001"                      # DW_AT_location
	.long	1710                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x110a:0x12 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	114
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	66
	.byte	28
	.byte	159
	.long	1718                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x111c:0x7 DW_TAG_variable
	.ascii	"\202\001"                      # DW_AT_location
	.long	1726                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x1123:0x2d DW_TAG_lexical_block
	.byte	84                              # DW_AT_low_pc
	.long	.Ltmp781-.Ltmp749               # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x1129:0x7 DW_TAG_variable
	.ascii	"\204\001"                      # DW_AT_location
	.long	1735                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0x1130:0x1f DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	21                              # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.byte	83                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1139:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1660                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x1140:0x7 DW_TAG_formal_parameter
	.ascii	"\205\001"                      # DW_AT_location
	.long	1668                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x1147:0x7 DW_TAG_formal_parameter
	.ascii	"\206\001"                      # DW_AT_location
	.long	1676                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	65                              # Abbrev [65] 0x1151:0x12 DW_TAG_inlined_subroutine
	.long	1690                            # DW_AT_abstract_origin
	.byte	22                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	66                              # Abbrev [66] 0x1159:0x9 DW_TAG_inlined_subroutine
	.long	1656                            # DW_AT_abstract_origin
	.byte	23                              # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.byte	83                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	67                              # Abbrev [67] 0x1163:0x6 DW_TAG_call_site
	.long	5479                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	85                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x116a:0x29 DW_TAG_subprogram
	.byte	187                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	511                             # DW_AT_type
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x1172:0x8 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	1685                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x117a:0x8 DW_TAG_formal_parameter
	.byte	188                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	750                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x1182:0x8 DW_TAG_formal_parameter
	.byte	189                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	4499                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x118a:0x8 DW_TAG_formal_parameter
	.byte	190                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	287                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1193:0x5 DW_TAG_pointer_type
	.long	287                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1198:0xd DW_TAG_subprogram
	.byte	191                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x119c:0x8 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	1685                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x11a5:0x11 DW_TAG_subprogram
	.byte	192                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	511                             # DW_AT_type
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x11ad:0x8 DW_TAG_formal_parameter
	.byte	193                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	4534                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x11b6:0x5 DW_TAG_pointer_type
	.long	4539                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x11bb:0x5 DW_TAG_const_type
	.long	4544                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x11c0:0x9 DW_TAG_typedef
	.long	4553                            # DW_AT_type
	.byte	218                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x11c9:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x11cd:0x9 DW_TAG_member
	.byte	194                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x11d6:0x9 DW_TAG_member
	.byte	195                             # DW_AT_name
	.long	4795                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x11df:0x9 DW_TAG_member
	.byte	196                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x11e8:0xa DW_TAG_member
	.byte	197                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x11f2:0xa DW_TAG_member
	.byte	198                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x11fc:0xa DW_TAG_member
	.byte	199                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x1206:0xa DW_TAG_member
	.byte	200                             # DW_AT_name
	.long	4800                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x1210:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x121a:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	4808                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x1224:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x122e:0xa DW_TAG_member
	.byte	203                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x1238:0xa DW_TAG_member
	.byte	204                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x1242:0xa DW_TAG_member
	.byte	205                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x124c:0xa DW_TAG_member
	.byte	206                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x1256:0xa DW_TAG_member
	.byte	207                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x1260:0xa DW_TAG_member
	.byte	208                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x126a:0xa DW_TAG_member
	.byte	209                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x1274:0xa DW_TAG_member
	.byte	210                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x127e:0xa DW_TAG_member
	.byte	211                             # DW_AT_name
	.long	4816                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x1288:0xa DW_TAG_member
	.byte	213                             # DW_AT_name
	.long	4816                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x1292:0xa DW_TAG_member
	.byte	214                             # DW_AT_name
	.long	4816                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x129c:0xa DW_TAG_member
	.byte	215                             # DW_AT_name
	.long	4816                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x12a6:0xa DW_TAG_member
	.byte	216                             # DW_AT_name
	.long	473                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x12b0:0xa DW_TAG_member
	.byte	217                             # DW_AT_name
	.long	473                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x12bb:0x5 DW_TAG_pointer_type
	.long	1840                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x12c0:0x8 DW_TAG_typedef
	.long	401                             # DW_AT_type
	.byte	201                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x12c8:0x8 DW_TAG_typedef
	.long	416                             # DW_AT_type
	.byte	202                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x12d0:0x8 DW_TAG_typedef
	.long	440                             # DW_AT_type
	.byte	212                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x12d8:0x13 DW_TAG_subprogram
	.byte	219                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	430                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	511                             # DW_AT_type
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x12e1:0x9 DW_TAG_formal_parameter
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	430                             # DW_AT_decl_line
	.long	4534                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x12eb:0x39 DW_TAG_subprogram
	.byte	220                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x12ef:0x8 DW_TAG_formal_parameter
	.byte	42                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.long	4900                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x12f7:0x8 DW_TAG_formal_parameter
	.byte	197                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x12ff:0x8 DW_TAG_formal_parameter
	.byte	198                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x1307:0x8 DW_TAG_variable
	.byte	221                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x130f:0x14 DW_TAG_lexical_block
	.byte	31                              # Abbrev [31] 0x1310:0x8 DW_TAG_variable
	.byte	184                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x1318:0xa DW_TAG_lexical_block
	.byte	31                              # Abbrev [31] 0x1319:0x8 DW_TAG_variable
	.byte	222                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1324:0x5 DW_TAG_pointer_type
	.long	4905                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1329:0xd DW_TAG_array_type
	.long	328                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x132e:0x7 DW_TAG_subrange_type
	.long	307                             # DW_AT_type
	.short	768                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x1336:0x58 DW_TAG_subprogram
	.byte	223                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	461                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x133b:0x9 DW_TAG_formal_parameter
	.byte	224                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	461                             # DW_AT_decl_line
	.long	5006                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1344:0x9 DW_TAG_formal_parameter
	.byte	225                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	462                             # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x134d:0x9 DW_TAG_formal_parameter
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	462                             # DW_AT_decl_line
	.long	5011                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x1356:0x21 DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x1357:0x9 DW_TAG_variable
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	467                             # DW_AT_decl_line
	.long	287                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x1360:0xb DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x1361:0x9 DW_TAG_variable
	.byte	226                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x136b:0xb DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x136c:0x9 DW_TAG_variable
	.byte	226                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	469                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x1377:0xb DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x1378:0x9 DW_TAG_variable
	.byte	226                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	472                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x1382:0xb DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x1383:0x9 DW_TAG_variable
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	475                             # DW_AT_decl_line
	.long	287                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x138e:0x5 DW_TAG_pointer_type
	.long	1336                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1393:0x5 DW_TAG_const_type
	.long	511                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x1398:0x1cf DW_TAG_subprogram
	.byte	36                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	280                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6236                            # DW_AT_type
                                        # DW_AT_external
	.byte	36                              # Abbrev [36] 0x13a9:0xa DW_TAG_formal_parameter
	.byte	61                              # DW_AT_location
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x13b3:0xa DW_TAG_formal_parameter
	.byte	62                              # DW_AT_location
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.long	4534                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x13bd:0xa DW_TAG_variable
	.byte	63                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.long	843                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x13c7:0x2c DW_TAG_inlined_subroutine
	.long	4824                            # DW_AT_abstract_origin
	.byte	36                              # DW_AT_low_pc
	.long	.Ltmp290-.Lfunc_begin2          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	487                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x13d5:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	4833                            # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0x13dc:0x16 DW_TAG_inlined_subroutine
	.long	4517                            # DW_AT_abstract_origin
	.byte	36                              # DW_AT_low_pc
	.long	.Ltmp287-.Lfunc_begin2          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	434                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x13ea:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	4525                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x13f3:0x16 DW_TAG_inlined_subroutine
	.long	4504                            # DW_AT_abstract_origin
	.byte	37                              # DW_AT_low_pc
	.long	.Ltmp293-.Ltmp292               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	495                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1401:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	4508                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x1409:0x38 DW_TAG_inlined_subroutine
	.long	4843                            # DW_AT_abstract_origin
	.byte	38                              # DW_AT_low_pc
	.long	.Ltmp303-.Ltmp294               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	502                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1417:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.long	4847                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x141e:0x6 DW_TAG_formal_parameter
	.byte	64                              # DW_AT_location
	.long	4863                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x1424:0x6 DW_TAG_variable
	.byte	65                              # DW_AT_location
	.long	4871                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x142a:0x16 DW_TAG_lexical_block
	.byte	39                              # DW_AT_low_pc
	.long	.Ltmp303-.Ltmp297               # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x1430:0x6 DW_TAG_variable
	.byte	66                              # DW_AT_location
	.long	4880                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x1436:0x9 DW_TAG_lexical_block
	.byte	10                              # DW_AT_ranges
	.byte	64                              # Abbrev [64] 0x1438:0x6 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.long	4889                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x1441:0x1e DW_TAG_lexical_block
	.byte	40                              # DW_AT_low_pc
	.long	.Ltmp448-.Ltmp304               # DW_AT_high_pc
	.byte	38                              # Abbrev [38] 0x1447:0xa DW_TAG_variable
	.byte	67                              # DW_AT_location
	.byte	184                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	505                             # DW_AT_decl_line
	.long	287                             # DW_AT_type
	.byte	46                              # Abbrev [46] 0x1451:0xd DW_TAG_lexical_block
	.byte	11                              # DW_AT_ranges
	.byte	38                              # Abbrev [38] 0x1453:0xa DW_TAG_variable
	.byte	68                              # DW_AT_location
	.byte	222                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	506                             # DW_AT_decl_line
	.long	287                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x145f:0x11 DW_TAG_lexical_block
	.byte	41                              # DW_AT_low_pc
	.long	.Ltmp452-.Ltmp448               # DW_AT_high_pc
	.byte	38                              # Abbrev [38] 0x1465:0xa DW_TAG_variable
	.byte	69                              # DW_AT_location
	.byte	184                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	517                             # DW_AT_decl_line
	.long	287                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x1470:0x21 DW_TAG_lexical_block
	.byte	42                              # DW_AT_low_pc
	.long	.Ltmp453-.Ltmp452               # DW_AT_high_pc
	.byte	69                              # Abbrev [69] 0x1476:0xa DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	184                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	521                             # DW_AT_decl_line
	.long	287                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x1480:0x10 DW_TAG_lexical_block
	.byte	42                              # DW_AT_low_pc
	.long	.Ltmp453-.Ltmp452               # DW_AT_high_pc
	.byte	17                              # Abbrev [17] 0x1486:0x9 DW_TAG_variable
	.byte	226                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	522                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x1491:0x11 DW_TAG_lexical_block
	.byte	43                              # DW_AT_low_pc
	.long	.Ltmp455-.Ltmp453               # DW_AT_high_pc
	.byte	38                              # Abbrev [38] 0x1497:0xa DW_TAG_variable
	.byte	70                              # DW_AT_location
	.byte	226                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	524                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x14a2:0x5c DW_TAG_inlined_subroutine
	.long	4918                            # DW_AT_abstract_origin
	.byte	44                              # DW_AT_low_pc
	.long	.Ltmp486-.Ltmp457               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	527                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x14b0:0x6 DW_TAG_formal_parameter
	.byte	71                              # DW_AT_location
	.long	4923                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x14b6:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.long	4932                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x14bd:0x6 DW_TAG_formal_parameter
	.byte	75                              # DW_AT_location
	.long	4941                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x14c3:0x1f DW_TAG_lexical_block
	.byte	45                              # DW_AT_low_pc
	.long	.Ltmp477-.Ltmp458               # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x14c9:0x6 DW_TAG_variable
	.byte	72                              # DW_AT_location
	.long	4951                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x14cf:0x9 DW_TAG_lexical_block
	.byte	12                              # DW_AT_ranges
	.byte	41                              # Abbrev [41] 0x14d1:0x6 DW_TAG_variable
	.byte	73                              # DW_AT_location
	.long	4961                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x14d8:0x9 DW_TAG_lexical_block
	.byte	13                              # DW_AT_ranges
	.byte	41                              # Abbrev [41] 0x14da:0x6 DW_TAG_variable
	.byte	74                              # DW_AT_location
	.long	4972                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x14e2:0xd DW_TAG_lexical_block
	.byte	46                              # DW_AT_low_pc
	.long	.Ltmp478-.Ltmp477               # DW_AT_high_pc
	.byte	64                              # Abbrev [64] 0x14e8:0x6 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.long	4984                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x14ef:0xe DW_TAG_lexical_block
	.byte	47                              # DW_AT_low_pc
	.long	.Ltmp486-.Ltmp482               # DW_AT_high_pc
	.byte	52                              # Abbrev [52] 0x14f5:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	94
	.long	4995                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x14fe:0x5c DW_TAG_inlined_subroutine
	.long	4918                            # DW_AT_abstract_origin
	.byte	48                              # DW_AT_low_pc
	.long	.Ltmp516-.Ltmp488               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	530                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x150c:0x6 DW_TAG_formal_parameter
	.byte	76                              # DW_AT_location
	.long	4923                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x1512:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.long	4932                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x1519:0x6 DW_TAG_formal_parameter
	.byte	80                              # DW_AT_location
	.long	4941                            # DW_AT_abstract_origin
	.byte	44                              # Abbrev [44] 0x151f:0x1f DW_TAG_lexical_block
	.byte	49                              # DW_AT_low_pc
	.long	.Ltmp508-.Ltmp489               # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x1525:0x6 DW_TAG_variable
	.byte	77                              # DW_AT_location
	.long	4951                            # DW_AT_abstract_origin
	.byte	46                              # Abbrev [46] 0x152b:0x9 DW_TAG_lexical_block
	.byte	14                              # DW_AT_ranges
	.byte	41                              # Abbrev [41] 0x152d:0x6 DW_TAG_variable
	.byte	78                              # DW_AT_location
	.long	4961                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x1534:0x9 DW_TAG_lexical_block
	.byte	15                              # DW_AT_ranges
	.byte	41                              # Abbrev [41] 0x1536:0x6 DW_TAG_variable
	.byte	79                              # DW_AT_location
	.long	4972                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x153e:0xd DW_TAG_lexical_block
	.byte	50                              # DW_AT_low_pc
	.long	.Ltmp509-.Ltmp508               # DW_AT_high_pc
	.byte	64                              # Abbrev [64] 0x1544:0x6 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.long	4984                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x154b:0xe DW_TAG_lexical_block
	.byte	51                              # DW_AT_low_pc
	.long	.Ltmp516-.Ltmp512               # DW_AT_high_pc
	.byte	52                              # Abbrev [52] 0x1551:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	94
	.long	4995                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x155a:0x6 DW_TAG_call_site
	.long	5479                            # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	54                              # Abbrev [54] 0x1560:0x6 DW_TAG_call_site
	.long	5479                            # DW_AT_call_origin
	.byte	53                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	61                              # Abbrev [61] 0x1567:0x136 DW_TAG_subprogram
	.byte	86                              # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	290                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	56                              # Abbrev [56] 0x1573:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	197                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	5006                            # DW_AT_type
	.byte	62                              # Abbrev [62] 0x157d:0xa DW_TAG_formal_parameter
	.ascii	"\207\001"                      # DW_AT_location
	.byte	175                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	57                              # Abbrev [57] 0x1587:0xa DW_TAG_variable
	.ascii	"\210\001"                      # DW_AT_location
	.byte	136                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	58                              # Abbrev [58] 0x1591:0xb DW_TAG_variable
	.ascii	"\211\001"                      # DW_AT_location
	.short	306                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	58                              # Abbrev [58] 0x159c:0xb DW_TAG_variable
	.ascii	"\212\001"                      # DW_AT_location
	.short	307                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	58                              # Abbrev [58] 0x15a7:0xb DW_TAG_variable
	.ascii	"\213\001"                      # DW_AT_location
	.short	308                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	58                              # Abbrev [58] 0x15b2:0xb DW_TAG_variable
	.ascii	"\214\001"                      # DW_AT_location
	.short	309                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	57                              # Abbrev [57] 0x15bd:0xa DW_TAG_variable
	.ascii	"\215\001"                      # DW_AT_location
	.byte	184                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	57                              # Abbrev [57] 0x15c7:0xa DW_TAG_variable
	.ascii	"\216\001"                      # DW_AT_location
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.long	7680                            # DW_AT_type
	.byte	70                              # Abbrev [70] 0x15d1:0xd DW_TAG_inlined_subroutine
	.long	7431                            # DW_AT_abstract_origin
	.byte	87                              # DW_AT_low_pc
	.long	.Ltmp796-.Ltmp795               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	84                              # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	70                              # Abbrev [70] 0x15de:0xd DW_TAG_inlined_subroutine
	.long	7454                            # DW_AT_abstract_origin
	.byte	88                              # DW_AT_low_pc
	.long	.Ltmp797-.Ltmp796               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	85                              # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	70                              # Abbrev [70] 0x15eb:0xd DW_TAG_inlined_subroutine
	.long	7431                            # DW_AT_abstract_origin
	.byte	89                              # DW_AT_low_pc
	.long	.Ltmp799-.Ltmp798               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	86                              # DW_AT_call_line
	.byte	27                              # DW_AT_call_column
	.byte	70                              # Abbrev [70] 0x15f8:0xd DW_TAG_inlined_subroutine
	.long	7454                            # DW_AT_abstract_origin
	.byte	90                              # DW_AT_low_pc
	.long	.Ltmp800-.Ltmp799               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	87                              # DW_AT_call_line
	.byte	27                              # DW_AT_call_column
	.byte	45                              # Abbrev [45] 0x1605:0x2f DW_TAG_inlined_subroutine
	.long	7472                            # DW_AT_abstract_origin
	.byte	24                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	92                              # DW_AT_call_line
	.byte	20                              # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x160e:0x7 DW_TAG_formal_parameter
	.ascii	"\217\001"                      # DW_AT_location
	.long	7481                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x1615:0x7 DW_TAG_formal_parameter
	.ascii	"\220\001"                      # DW_AT_location
	.long	7489                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x161c:0x7 DW_TAG_formal_parameter
	.ascii	"\222\001"                      # DW_AT_location
	.long	7498                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x1623:0x7 DW_TAG_variable
	.ascii	"\221\001"                      # DW_AT_location
	.long	7506                            # DW_AT_abstract_origin
	.byte	66                              # Abbrev [66] 0x162a:0x9 DW_TAG_inlined_subroutine
	.long	7535                            # DW_AT_abstract_origin
	.byte	25                              # DW_AT_ranges
	.byte	18                              # DW_AT_call_file
	.byte	61                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x1634:0x2f DW_TAG_inlined_subroutine
	.long	7472                            # DW_AT_abstract_origin
	.byte	26                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	96                              # DW_AT_call_line
	.byte	20                              # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x163d:0x7 DW_TAG_formal_parameter
	.ascii	"\223\001"                      # DW_AT_location
	.long	7481                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x1644:0x7 DW_TAG_formal_parameter
	.ascii	"\225\001"                      # DW_AT_location
	.long	7489                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x164b:0x7 DW_TAG_formal_parameter
	.ascii	"\224\001"                      # DW_AT_location
	.long	7498                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x1652:0x7 DW_TAG_variable
	.ascii	"\226\001"                      # DW_AT_location
	.long	7506                            # DW_AT_abstract_origin
	.byte	66                              # Abbrev [66] 0x1659:0x9 DW_TAG_inlined_subroutine
	.long	7535                            # DW_AT_abstract_origin
	.byte	27                              # DW_AT_ranges
	.byte	18                              # DW_AT_call_file
	.byte	61                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x1663:0x39 DW_TAG_inlined_subroutine
	.long	7472                            # DW_AT_abstract_origin
	.byte	91                              # DW_AT_low_pc
	.long	.Ltmp1041-.Ltmp1030             # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	100                             # DW_AT_call_line
	.byte	20                              # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1670:0xa DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	117
	.ascii	"\204\004"
	.byte	159
	.long	7481                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x167a:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_const_value
	.long	7489                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x1680:0x7 DW_TAG_formal_parameter
	.ascii	"\227\001"                      # DW_AT_location
	.long	7498                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x1687:0x7 DW_TAG_variable
	.ascii	"\230\001"                      # DW_AT_location
	.long	7506                            # DW_AT_abstract_origin
	.byte	70                              # Abbrev [70] 0x168e:0xd DW_TAG_inlined_subroutine
	.long	7535                            # DW_AT_abstract_origin
	.byte	92                              # DW_AT_low_pc
	.long	.Ltmp1037-.Ltmp1036             # DW_AT_high_pc
	.byte	18                              # DW_AT_call_file
	.byte	61                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x169d:0x18 DW_TAG_subprogram
	.byte	227                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	443                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x16a2:0x9 DW_TAG_formal_parameter
	.byte	228                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	443                             # DW_AT_decl_line
	.long	5813                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x16ab:0x9 DW_TAG_formal_parameter
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	443                             # DW_AT_decl_line
	.long	4534                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x16b5:0x5 DW_TAG_pointer_type
	.long	5818                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x16ba:0x8 DW_TAG_typedef
	.long	5826                            # DW_AT_type
	.byte	232                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x16c2:0x56 DW_TAG_structure_type
	.byte	64                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x16c6:0x9 DW_TAG_member
	.byte	229                             # DW_AT_name
	.long	287                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x16cf:0x9 DW_TAG_member
	.byte	194                             # DW_AT_name
	.long	287                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x16d8:0x9 DW_TAG_member
	.byte	230                             # DW_AT_name
	.long	287                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x16e1:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	287                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x16ea:0x9 DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	287                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x16f3:0x9 DW_TAG_member
	.byte	231                             # DW_AT_name
	.long	4808                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x16fc:0x9 DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x1705:0x9 DW_TAG_member
	.byte	195                             # DW_AT_name
	.long	4795                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x170e:0x9 DW_TAG_member
	.byte	196                             # DW_AT_name
	.long	251                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x1718:0x7a DW_TAG_subprogram
	.byte	54                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	281                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	557                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6236                            # DW_AT_type
                                        # DW_AT_external
	.byte	37                              # Abbrev [37] 0x1729:0xb DW_TAG_formal_parameter
	.byte	81                              # DW_AT_location
	.short	294                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	557                             # DW_AT_decl_line
	.long	7665                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x1734:0xb DW_TAG_formal_parameter
	.byte	82                              # DW_AT_location
	.short	295                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	557                             # DW_AT_decl_line
	.long	6053                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x173f:0xa DW_TAG_formal_parameter
	.byte	83                              # DW_AT_location
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	558                             # DW_AT_decl_line
	.long	4534                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x1749:0xa DW_TAG_formal_parameter
	.byte	84                              # DW_AT_location
	.byte	228                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	558                             # DW_AT_decl_line
	.long	5813                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x1753:0xa DW_TAG_variable
	.byte	85                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	567                             # DW_AT_decl_line
	.long	843                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x175d:0x12 DW_TAG_lexical_block
	.byte	55                              # DW_AT_low_pc
	.long	.Ltmp537-.Ltmp532               # DW_AT_high_pc
	.byte	71                              # Abbrev [71] 0x1763:0xb DW_TAG_variable
	.byte	86                              # DW_AT_location
	.short	296                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	583                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x176f:0x16 DW_TAG_inlined_subroutine
	.long	5789                            # DW_AT_abstract_origin
	.byte	56                              # DW_AT_low_pc
	.long	.Ltmp541-.Ltmp540               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	609                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x177d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	5794                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x1785:0x6 DW_TAG_call_site
	.long	6034                            # DW_AT_call_origin
	.byte	57                              # DW_AT_call_return_pc
	.byte	67                              # Abbrev [67] 0x178b:0x6 DW_TAG_call_site
	.long	5016                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	58                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	72                              # Abbrev [72] 0x1792:0x13 DW_TAG_subprogram
	.byte	233                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	473                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x179a:0x5 DW_TAG_formal_parameter
	.long	287                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x179f:0x5 DW_TAG_formal_parameter
	.long	6053                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x17a5:0x5 DW_TAG_pointer_type
	.long	6058                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x17aa:0x9 DW_TAG_typedef
	.long	6067                            # DW_AT_type
	.byte	237                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	73                              # Abbrev [73] 0x17b3:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	68                              # Abbrev [68] 0x17b8:0xa DW_TAG_member
	.byte	234                             # DW_AT_name
	.long	6103                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x17c2:0xa DW_TAG_member
	.byte	235                             # DW_AT_name
	.long	6129                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	68                              # Abbrev [68] 0x17cc:0xa DW_TAG_member
	.byte	236                             # DW_AT_name
	.long	473                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x17d7:0x5 DW_TAG_pointer_type
	.long	6108                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x17dc:0x15 DW_TAG_subroutine_type
	.long	473                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x17e1:0x5 DW_TAG_formal_parameter
	.long	473                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x17e6:0x5 DW_TAG_formal_parameter
	.long	287                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x17eb:0x5 DW_TAG_formal_parameter
	.long	287                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x17f1:0x5 DW_TAG_pointer_type
	.long	6134                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x17f6:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x17f7:0x5 DW_TAG_formal_parameter
	.long	473                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x17fc:0x5 DW_TAG_formal_parameter
	.long	473                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x1802:0x3c DW_TAG_subprogram
	.byte	59                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	282                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	626                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6236                            # DW_AT_type
                                        # DW_AT_external
	.byte	74                              # Abbrev [74] 0x1813:0xc DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.short	297                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	626                             # DW_AT_decl_line
	.long	6244                            # DW_AT_type
	.byte	74                              # Abbrev [74] 0x181f:0xc DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.short	295                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	626                             # DW_AT_decl_line
	.long	6053                            # DW_AT_type
	.byte	74                              # Abbrev [74] 0x182b:0xc DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.short	298                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	627                             # DW_AT_decl_line
	.long	6597                            # DW_AT_type
	.byte	67                              # Abbrev [67] 0x1837:0x6 DW_TAG_call_site
	.long	6206                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	60                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	75                              # Abbrev [75] 0x183e:0x1e DW_TAG_subprogram
	.byte	238                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	298                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6236                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x1847:0x5 DW_TAG_formal_parameter
	.long	6244                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x184c:0x5 DW_TAG_formal_parameter
	.long	6053                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1851:0x5 DW_TAG_formal_parameter
	.long	6597                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1856:0x5 DW_TAG_formal_parameter
	.long	6684                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x185c:0x8 DW_TAG_typedef
	.long	58                              # DW_AT_type
	.byte	239                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1864:0x5 DW_TAG_pointer_type
	.long	6249                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1869:0x8 DW_TAG_typedef
	.long	6257                            # DW_AT_type
	.byte	254                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x1871:0x4e DW_TAG_structure_type
	.byte	253                             # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1876:0x9 DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x187f:0x9 DW_TAG_member
	.byte	240                             # DW_AT_name
	.long	6335                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x1888:0x9 DW_TAG_member
	.byte	242                             # DW_AT_name
	.long	6343                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x1891:0x9 DW_TAG_member
	.byte	244                             # DW_AT_name
	.long	6351                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x189a:0x9 DW_TAG_member
	.byte	246                             # DW_AT_name
	.long	6430                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x18a3:0x9 DW_TAG_member
	.byte	248                             # DW_AT_name
	.long	6455                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x18ac:0x9 DW_TAG_member
	.byte	250                             # DW_AT_name
	.long	6489                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x18b5:0x9 DW_TAG_member
	.byte	251                             # DW_AT_name
	.long	6525                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x18bf:0x8 DW_TAG_typedef
	.long	231                             # DW_AT_type
	.byte	241                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x18c7:0x8 DW_TAG_typedef
	.long	247                             # DW_AT_type
	.byte	243                             # DW_AT_name
	.byte	14                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x18cf:0x8 DW_TAG_typedef
	.long	6359                            # DW_AT_type
	.byte	245                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x18d7:0x5 DW_TAG_pointer_type
	.long	6364                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x18dc:0x33 DW_TAG_subroutine_type
	.long	6236                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x18e1:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x18e6:0x5 DW_TAG_formal_parameter
	.long	6053                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x18eb:0x5 DW_TAG_formal_parameter
	.long	6415                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x18f0:0x5 DW_TAG_formal_parameter
	.long	6420                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x18f5:0x5 DW_TAG_formal_parameter
	.long	287                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x18fa:0x5 DW_TAG_formal_parameter
	.long	6425                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x18ff:0x5 DW_TAG_formal_parameter
	.long	6420                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1904:0x5 DW_TAG_formal_parameter
	.long	287                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1909:0x5 DW_TAG_formal_parameter
	.long	834                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	60                              # Abbrev [60] 0x190f:0x5 DW_TAG_restrict_type
	.long	4795                            # DW_AT_type
	.byte	60                              # Abbrev [60] 0x1914:0x5 DW_TAG_restrict_type
	.long	4499                            # DW_AT_type
	.byte	60                              # Abbrev [60] 0x1919:0x5 DW_TAG_restrict_type
	.long	750                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x191e:0x8 DW_TAG_typedef
	.long	6438                            # DW_AT_type
	.byte	247                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1926:0x5 DW_TAG_pointer_type
	.long	6443                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x192b:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x192c:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1931:0x5 DW_TAG_formal_parameter
	.long	6053                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1937:0x5 DW_TAG_pointer_type
	.long	6460                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x193c:0xb DW_TAG_subroutine_type
	.long	6471                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x1941:0x5 DW_TAG_formal_parameter
	.long	6479                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1947:0x8 DW_TAG_typedef
	.long	452                             # DW_AT_type
	.byte	249                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x194f:0x5 DW_TAG_pointer_type
	.long	6484                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1954:0x5 DW_TAG_const_type
	.long	520                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1959:0x5 DW_TAG_pointer_type
	.long	6494                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x195e:0x1a DW_TAG_subroutine_type
	.long	6236                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x1963:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1968:0x5 DW_TAG_formal_parameter
	.long	6520                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x196d:0x5 DW_TAG_formal_parameter
	.long	6520                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1972:0x5 DW_TAG_formal_parameter
	.long	231                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1978:0x5 DW_TAG_pointer_type
	.long	231                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x197d:0x5 DW_TAG_pointer_type
	.long	6530                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1982:0x1a DW_TAG_subroutine_type
	.long	6236                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x1987:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x198c:0x5 DW_TAG_formal_parameter
	.long	6053                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1991:0x5 DW_TAG_formal_parameter
	.long	6556                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1996:0x5 DW_TAG_formal_parameter
	.long	6556                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x199c:0x5 DW_TAG_pointer_type
	.long	6561                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x19a1:0x5 DW_TAG_const_type
	.long	6566                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x19a6:0x8 DW_TAG_typedef
	.long	6574                            # DW_AT_type
	.byte	252                             # DW_AT_name
	.byte	15                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x19ae:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	15                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x19b2:0x9 DW_TAG_member
	.byte	240                             # DW_AT_name
	.long	6335                            # DW_AT_type
	.byte	15                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x19bb:0x9 DW_TAG_member
	.byte	193                             # DW_AT_name
	.long	473                             # DW_AT_type
	.byte	15                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x19c5:0x5 DW_TAG_pointer_type
	.long	6602                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x19ca:0x5 DW_TAG_const_type
	.long	6607                            # DW_AT_type
	.byte	76                              # Abbrev [76] 0x19cf:0x9 DW_TAG_typedef
	.long	6616                            # DW_AT_type
	.short	257                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	77                              # Abbrev [77] 0x19d8:0x22 DW_TAG_structure_type
	.short	256                             # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x19de:0x9 DW_TAG_member
	.byte	240                             # DW_AT_name
	.long	6335                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x19e7:0x9 DW_TAG_member
	.byte	242                             # DW_AT_name
	.long	6650                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x19f0:0x9 DW_TAG_member
	.byte	193                             # DW_AT_name
	.long	473                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x19fa:0x8 DW_TAG_typedef
	.long	6658                            # DW_AT_type
	.byte	255                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1a02:0x5 DW_TAG_pointer_type
	.long	6663                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1a07:0x15 DW_TAG_subroutine_type
	.long	6236                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x1a0c:0x5 DW_TAG_formal_parameter
	.long	6244                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1a11:0x5 DW_TAG_formal_parameter
	.long	6053                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1a16:0x5 DW_TAG_formal_parameter
	.long	6597                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1a1c:0x5 DW_TAG_pointer_type
	.long	6689                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1a21:0x1a DW_TAG_subroutine_type
	.long	6236                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x1a26:0x5 DW_TAG_formal_parameter
	.long	6715                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1a2b:0x5 DW_TAG_formal_parameter
	.long	6053                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1a30:0x5 DW_TAG_formal_parameter
	.long	6828                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1a35:0x5 DW_TAG_formal_parameter
	.long	5813                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1a3b:0x5 DW_TAG_pointer_type
	.long	6720                            # DW_AT_type
	.byte	76                              # Abbrev [76] 0x1a40:0x9 DW_TAG_typedef
	.long	6729                            # DW_AT_type
	.short	259                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x1a49:0x2a DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1a4d:0x9 DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x1a56:0x9 DW_TAG_member
	.byte	244                             # DW_AT_name
	.long	6771                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x1a5f:0x9 DW_TAG_member
	.byte	246                             # DW_AT_name
	.long	6438                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	78                              # Abbrev [78] 0x1a68:0xa DW_TAG_member
	.short	258                             # DW_AT_name
	.long	6807                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1a73:0x5 DW_TAG_pointer_type
	.long	6776                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1a78:0x1f DW_TAG_subroutine_type
	.long	6236                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x1a7d:0x5 DW_TAG_formal_parameter
	.long	3497                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1a82:0x5 DW_TAG_formal_parameter
	.long	3502                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1a87:0x5 DW_TAG_formal_parameter
	.long	6425                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1a8c:0x5 DW_TAG_formal_parameter
	.long	6420                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1a91:0x5 DW_TAG_formal_parameter
	.long	287                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1a97:0x5 DW_TAG_pointer_type
	.long	6812                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1a9c:0x10 DW_TAG_subroutine_type
	.long	6236                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x1aa1:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1aa6:0x5 DW_TAG_formal_parameter
	.long	6556                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1aac:0x5 DW_TAG_pointer_type
	.long	6833                            # DW_AT_type
	.byte	79                              # Abbrev [79] 0x1ab1:0x1 DW_TAG_const_type
	.byte	80                              # Abbrev [80] 0x1ab2:0x46 DW_TAG_subprogram
	.byte	61                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	283                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	616                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6236                            # DW_AT_type
	.byte	74                              # Abbrev [74] 0x1ac3:0xc DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.short	299                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	616                             # DW_AT_decl_line
	.long	6715                            # DW_AT_type
	.byte	74                              # Abbrev [74] 0x1acf:0xc DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.short	295                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	616                             # DW_AT_decl_line
	.long	6053                            # DW_AT_type
	.byte	81                              # Abbrev [81] 0x1adb:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	617                             # DW_AT_decl_line
	.long	6828                            # DW_AT_type
	.byte	81                              # Abbrev [81] 0x1ae6:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	228                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	617                             # DW_AT_decl_line
	.long	5813                            # DW_AT_type
	.byte	67                              # Abbrev [67] 0x1af1:0x6 DW_TAG_call_site
	.long	5912                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	62                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x1af8:0x82 DW_TAG_subprogram
	.byte	63                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	284                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	635                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	231                             # DW_AT_type
                                        # DW_AT_external
	.byte	36                              # Abbrev [36] 0x1b09:0xa DW_TAG_formal_parameter
	.byte	87                              # DW_AT_location
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	635                             # DW_AT_decl_line
	.long	6828                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x1b13:0xa DW_TAG_variable
	.byte	88                              # DW_AT_location
	.byte	228                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	640                             # DW_AT_decl_line
	.long	5818                            # DW_AT_type
	.byte	71                              # Abbrev [71] 0x1b1d:0xb DW_TAG_variable
	.byte	89                              # DW_AT_location
	.short	300                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	643                             # DW_AT_decl_line
	.long	7670                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x1b28:0x2c DW_TAG_inlined_subroutine
	.long	4824                            # DW_AT_abstract_origin
	.byte	63                              # DW_AT_low_pc
	.long	.Ltmp559-.Lfunc_begin6          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	637                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1b36:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	4833                            # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0x1b3d:0x16 DW_TAG_inlined_subroutine
	.long	4517                            # DW_AT_abstract_origin
	.byte	63                              # DW_AT_low_pc
	.long	.Ltmp556-.Lfunc_begin6          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	434                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1b4b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	4525                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x1b54:0x1f DW_TAG_inlined_subroutine
	.long	5789                            # DW_AT_abstract_origin
	.byte	64                              # DW_AT_low_pc
	.long	.Ltmp564-.Ltmp561               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	641                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1b62:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	159
	.long	5794                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x1b6b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	5803                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x1b73:0x6 DW_TAG_call_site
	.long	7034                            # DW_AT_call_origin
	.byte	65                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	82                              # Abbrev [82] 0x1b7a:0x10 DW_TAG_subprogram
	.short	260                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	231                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	21                              # Abbrev [21] 0x1b84:0x5 DW_TAG_formal_parameter
	.long	7050                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1b8a:0x5 DW_TAG_pointer_type
	.long	7055                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1b8f:0x5 DW_TAG_const_type
	.long	5818                            # DW_AT_type
	.byte	83                              # Abbrev [83] 0x1b94:0x2f DW_TAG_subprogram
	.byte	66                              # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	7107                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x1ba0:0x6 DW_TAG_formal_parameter
	.byte	90                              # DW_AT_location
	.long	7117                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x1ba6:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	7126                            # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0x1bad:0x15 DW_TAG_inlined_subroutine
	.long	4517                            # DW_AT_abstract_origin
	.byte	66                              # DW_AT_low_pc
	.long	.Ltmp574-.Lfunc_begin7          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	654                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x1bbb:0x6 DW_TAG_formal_parameter
	.byte	91                              # DW_AT_location
	.long	4525                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	84                              # Abbrev [84] 0x1bc3:0x1e DW_TAG_subprogram
	.short	261                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	652                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	511                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x1bcd:0x9 DW_TAG_formal_parameter
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	652                             # DW_AT_decl_line
	.long	4534                            # DW_AT_type
	.byte	85                              # Abbrev [85] 0x1bd6:0xa DW_TAG_formal_parameter
	.short	262                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	652                             # DW_AT_decl_line
	.long	750                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	86                              # Abbrev [86] 0x1be1:0x1b DW_TAG_subprogram
	.short	263                             # DW_AT_name
	.byte	16                              # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	85                              # Abbrev [85] 0x1be7:0xa DW_TAG_formal_parameter
	.short	264                             # DW_AT_name
	.byte	16                              # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	750                             # DW_AT_type
	.byte	85                              # Abbrev [85] 0x1bf1:0xa DW_TAG_formal_parameter
	.short	265                             # DW_AT_name
	.byte	16                              # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x1bfc:0x86 DW_TAG_subprogram
	.byte	67                              # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	285                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	666                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6236                            # DW_AT_type
                                        # DW_AT_external
	.byte	81                              # Abbrev [81] 0x1c0d:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	666                             # DW_AT_decl_line
	.long	6828                            # DW_AT_type
	.byte	81                              # Abbrev [81] 0x1c18:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	188                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	666                             # DW_AT_decl_line
	.long	750                             # DW_AT_type
	.byte	87                              # Abbrev [87] 0x1c23:0xc DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.short	301                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	668                             # DW_AT_decl_line
	.long	7675                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x1c2f:0x33 DW_TAG_inlined_subroutine
	.long	7107                            # DW_AT_abstract_origin
	.byte	67                              # DW_AT_low_pc
	.long	.Ltmp582-.Lfunc_begin8          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	670                             # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1c3d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	7117                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x1c44:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	7126                            # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0x1c4b:0x16 DW_TAG_inlined_subroutine
	.long	4517                            # DW_AT_abstract_origin
	.byte	67                              # DW_AT_low_pc
	.long	.Ltmp580-.Lfunc_begin8          # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	654                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1c59:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	4525                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x1c62:0x1f DW_TAG_inlined_subroutine
	.long	7137                            # DW_AT_abstract_origin
	.byte	68                              # DW_AT_low_pc
	.long	.Ltmp584-.Ltmp583               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	673                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	42                              # Abbrev [42] 0x1c70:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	116
	.byte	1
	.byte	159
	.long	7143                            # DW_AT_abstract_origin
	.byte	42                              # Abbrev [42] 0x1c79:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	80
	.long	7153                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x1c82:0x1c DW_TAG_subprogram
	.byte	69                              # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	286                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	681                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	7651                            # DW_AT_type
                                        # DW_AT_external
	.byte	36                              # Abbrev [36] 0x1c93:0xa DW_TAG_formal_parameter
	.byte	92                              # DW_AT_location
	.byte	200                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	681                             # DW_AT_decl_line
	.long	4800                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	88                              # Abbrev [88] 0x1c9e:0x12 DW_TAG_subprogram
	.short	266                             # DW_AT_name
	.byte	17                              # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	251                             # DW_AT_type
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x1ca7:0x8 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_name
	.byte	17                              # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	89                              # Abbrev [89] 0x1cb0:0x38 DW_TAG_subprogram
	.short	267                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x1cb5:0x8 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	1685                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x1cbd:0x8 DW_TAG_formal_parameter
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	323                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x1cc5:0x8 DW_TAG_formal_parameter
	.byte	165                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x1ccd:0x8 DW_TAG_formal_parameter
	.byte	166                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x1cd5:0x8 DW_TAG_variable
	.byte	167                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x1cdd:0xa DW_TAG_lexical_block
	.byte	31                              # Abbrev [31] 0x1cde:0x8 DW_TAG_variable
	.byte	163                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	89                              # Abbrev [89] 0x1ce8:0x1f DW_TAG_subprogram
	.short	268                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x1ced:0x8 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.long	1685                            # DW_AT_type
	.byte	90                              # Abbrev [90] 0x1cf5:0x9 DW_TAG_formal_parameter
	.short	269                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x1cfe:0x8 DW_TAG_formal_parameter
	.byte	165                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	88                              # Abbrev [88] 0x1d07:0x12 DW_TAG_subprogram
	.short	270                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	251                             # DW_AT_type
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x1d10:0x8 DW_TAG_formal_parameter
	.byte	162                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	7449                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x1d19:0x5 DW_TAG_const_type
	.long	328                             # DW_AT_type
	.byte	88                              # Abbrev [88] 0x1d1e:0x12 DW_TAG_subprogram
	.short	271                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	251                             # DW_AT_type
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x1d27:0x8 DW_TAG_formal_parameter
	.byte	162                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	7449                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	88                              # Abbrev [88] 0x1d30:0x35 DW_TAG_subprogram
	.short	272                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	251                             # DW_AT_type
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x1d39:0x8 DW_TAG_formal_parameter
	.byte	42                              # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	7525                            # DW_AT_type
	.byte	90                              # Abbrev [90] 0x1d41:0x9 DW_TAG_formal_parameter
	.short	273                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x1d4a:0x8 DW_TAG_formal_parameter
	.byte	166                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x1d52:0x8 DW_TAG_variable
	.byte	153                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	251                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x1d5a:0xa DW_TAG_lexical_block
	.byte	31                              # Abbrev [31] 0x1d5b:0x8 DW_TAG_variable
	.byte	163                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x1d65:0x5 DW_TAG_const_type
	.long	7530                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1d6a:0x5 DW_TAG_pointer_type
	.long	7449                            # DW_AT_type
	.byte	88                              # Abbrev [88] 0x1d6f:0x1a DW_TAG_subprogram
	.short	274                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	251                             # DW_AT_type
                                        # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x1d78:0x8 DW_TAG_formal_parameter
	.byte	162                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	7449                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x1d80:0x8 DW_TAG_formal_parameter
	.byte	163                             # DW_AT_name
	.byte	18                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	1745                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	80                              # Abbrev [80] 0x1d89:0x5a DW_TAG_subprogram
	.byte	93                              # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.short	291                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	412                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6236                            # DW_AT_type
	.byte	81                              # Abbrev [81] 0x1d9a:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	412                             # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	81                              # Abbrev [81] 0x1da5:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	412                             # DW_AT_decl_line
	.long	3502                            # DW_AT_type
	.byte	81                              # Abbrev [81] 0x1db0:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	188                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	413                             # DW_AT_decl_line
	.long	6425                            # DW_AT_type
	.byte	81                              # Abbrev [81] 0x1dbb:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	189                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	413                             # DW_AT_decl_line
	.long	6420                            # DW_AT_type
	.byte	81                              # Abbrev [81] 0x1dc6:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.byte	190                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	414                             # DW_AT_decl_line
	.long	287                             # DW_AT_type
	.byte	47                              # Abbrev [47] 0x1dd1:0xb DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	416                             # DW_AT_decl_line
	.long	7660                            # DW_AT_type
	.byte	67                              # Abbrev [67] 0x1ddc:0x6 DW_TAG_call_site
	.long	2097                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	94                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1de3:0x9 DW_TAG_typedef
	.long	283                             # DW_AT_type
	.short	287                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	60                              # Abbrev [60] 0x1dec:0x5 DW_TAG_restrict_type
	.long	843                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1df1:0x5 DW_TAG_pointer_type
	.long	515                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1df6:0x5 DW_TAG_const_type
	.long	231                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1dfb:0x5 DW_TAG_const_type
	.long	4534                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1e00:0x5 DW_TAG_const_type
	.long	829                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	28                              # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
	.long	.Ldebug_ranges4-.Lrnglists_table_base0
	.long	.Ldebug_ranges5-.Lrnglists_table_base0
	.long	.Ldebug_ranges6-.Lrnglists_table_base0
	.long	.Ldebug_ranges7-.Lrnglists_table_base0
	.long	.Ldebug_ranges8-.Lrnglists_table_base0
	.long	.Ldebug_ranges9-.Lrnglists_table_base0
	.long	.Ldebug_ranges10-.Lrnglists_table_base0
	.long	.Ldebug_ranges11-.Lrnglists_table_base0
	.long	.Ldebug_ranges12-.Lrnglists_table_base0
	.long	.Ldebug_ranges13-.Lrnglists_table_base0
	.long	.Ldebug_ranges14-.Lrnglists_table_base0
	.long	.Ldebug_ranges15-.Lrnglists_table_base0
	.long	.Ldebug_ranges16-.Lrnglists_table_base0
	.long	.Ldebug_ranges17-.Lrnglists_table_base0
	.long	.Ldebug_ranges18-.Lrnglists_table_base0
	.long	.Ldebug_ranges19-.Lrnglists_table_base0
	.long	.Ldebug_ranges20-.Lrnglists_table_base0
	.long	.Ldebug_ranges21-.Lrnglists_table_base0
	.long	.Ldebug_ranges22-.Lrnglists_table_base0
	.long	.Ldebug_ranges23-.Lrnglists_table_base0
	.long	.Ldebug_ranges24-.Lrnglists_table_base0
	.long	.Ldebug_ranges25-.Lrnglists_table_base0
	.long	.Ldebug_ranges26-.Lrnglists_table_base0
	.long	.Ldebug_ranges27-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp140-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp146-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp173-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp183-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges6:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges7:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp205-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges8:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp266-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp276-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp277-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges9:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp242-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp254-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges10:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp298-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp299-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp300-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges11:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp315-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp316-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp328-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp339-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp340-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp363-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp364-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp375-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp376-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp387-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp388-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp399-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp400-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp411-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp412-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp424-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp435-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp436-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp447-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges12:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp461-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp462-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp463-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp464-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp468-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp469-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp474-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp476-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges13:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp462-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp463-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp464-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp469-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp476-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp477-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges14:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp492-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp493-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp494-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp495-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp499-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp500-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp507-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges15:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp493-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp494-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp495-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp496-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp500-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp501-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp507-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp508-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges16:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp603-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp604-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp606-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp608-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp610-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp612-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp616-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp618-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp622-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp624-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp627-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp629-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp634-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp637-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges17:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp645-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp650-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp651-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges18:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp645-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp648-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp649-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp650-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp651-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp657-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp658-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp666-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp667-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp675-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp676-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges19:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp646-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp648-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp655-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp657-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp664-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp666-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp673-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp675-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp681-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges20:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp696-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp697-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp700-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp702-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp705-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp707-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp712-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp714-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp718-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp720-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges21:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp751-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp753-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp755-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp757-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp761-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp763-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp767-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp769-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp773-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp775-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp778-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp780-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges22:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp743-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp745-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp781-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp785-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges23:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp743-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp744-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp782-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp783-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp784-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp785-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges24:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp810-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp819-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp823-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp832-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp836-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp845-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp849-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp858-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp862-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp871-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp875-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp884-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp888-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp897-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp901-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp910-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges25:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp814-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp815-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp827-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp828-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp840-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp841-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp853-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp854-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp866-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp867-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp879-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp880-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp892-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp893-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp905-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp906-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges26:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp918-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp927-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp931-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp940-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp944-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp953-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp957-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp966-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp970-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp979-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp983-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp992-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp996-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp1005-.Lfunc_begin0        #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp1009-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1018-.Lfunc_begin0        #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges27:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp922-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp923-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp935-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp936-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp948-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp949-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp961-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp962-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp974-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp975-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp987-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp988-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp1000-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1001-.Lfunc_begin0        #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp1013-.Lfunc_begin0        #   starting offset
	.uleb128 .Ltmp1014-.Lfunc_begin0        #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	1244                            # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/lzma/lzma_encoder.c"   # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=133
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=165
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=178
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=186
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=202
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=216
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=239
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=254
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=269
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=289
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=307
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=326
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=342
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=357
.Linfo_string16:
	.asciz	"LZMA_RUN"                      # string offset=373
.Linfo_string17:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=382
.Linfo_string18:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=398
.Linfo_string19:
	.asciz	"LZMA_FINISH"                   # string offset=414
.Linfo_string20:
	.asciz	"low"                           # string offset=426
.Linfo_string21:
	.asciz	"unsigned long"                 # string offset=430
.Linfo_string22:
	.asciz	"__uint64_t"                    # string offset=444
.Linfo_string23:
	.asciz	"uint64_t"                      # string offset=455
.Linfo_string24:
	.asciz	"cache_size"                    # string offset=464
.Linfo_string25:
	.asciz	"range"                         # string offset=475
.Linfo_string26:
	.asciz	"__uint32_t"                    # string offset=481
.Linfo_string27:
	.asciz	"uint32_t"                      # string offset=492
.Linfo_string28:
	.asciz	"cache"                         # string offset=501
.Linfo_string29:
	.asciz	"unsigned char"                 # string offset=507
.Linfo_string30:
	.asciz	"__uint8_t"                     # string offset=521
.Linfo_string31:
	.asciz	"uint8_t"                       # string offset=531
.Linfo_string32:
	.asciz	"count"                         # string offset=539
.Linfo_string33:
	.asciz	"size_t"                        # string offset=545
.Linfo_string34:
	.asciz	"pos"                           # string offset=552
.Linfo_string35:
	.asciz	"symbols"                       # string offset=556
.Linfo_string36:
	.asciz	"RC_BIT_0"                      # string offset=564
.Linfo_string37:
	.asciz	"RC_BIT_1"                      # string offset=573
.Linfo_string38:
	.asciz	"RC_DIRECT_0"                   # string offset=582
.Linfo_string39:
	.asciz	"RC_DIRECT_1"                   # string offset=594
.Linfo_string40:
	.asciz	"RC_FLUSH"                      # string offset=606
.Linfo_string41:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=615
.Linfo_string42:
	.asciz	"probs"                         # string offset=635
.Linfo_string43:
	.asciz	"unsigned short"                # string offset=641
.Linfo_string44:
	.asciz	"__uint16_t"                    # string offset=656
.Linfo_string45:
	.asciz	"uint16_t"                      # string offset=667
.Linfo_string46:
	.asciz	"probability"                   # string offset=676
.Linfo_string47:
	.asciz	"STATE_LIT_LIT"                 # string offset=688
.Linfo_string48:
	.asciz	"STATE_MATCH_LIT_LIT"           # string offset=702
.Linfo_string49:
	.asciz	"STATE_REP_LIT_LIT"             # string offset=722
.Linfo_string50:
	.asciz	"STATE_SHORTREP_LIT_LIT"        # string offset=740
.Linfo_string51:
	.asciz	"STATE_MATCH_LIT"               # string offset=763
.Linfo_string52:
	.asciz	"STATE_REP_LIT"                 # string offset=779
.Linfo_string53:
	.asciz	"STATE_SHORTREP_LIT"            # string offset=793
.Linfo_string54:
	.asciz	"STATE_LIT_MATCH"               # string offset=812
.Linfo_string55:
	.asciz	"STATE_LIT_LONGREP"             # string offset=828
.Linfo_string56:
	.asciz	"STATE_LIT_SHORTREP"            # string offset=846
.Linfo_string57:
	.asciz	"STATE_NONLIT_MATCH"            # string offset=865
.Linfo_string58:
	.asciz	"STATE_NONLIT_REP"              # string offset=884
.Linfo_string59:
	.asciz	"LZMA_MODE_FAST"                # string offset=901
.Linfo_string60:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=916
.Linfo_string61:
	.asciz	"LZMA_MF_HC3"                   # string offset=933
.Linfo_string62:
	.asciz	"LZMA_MF_HC4"                   # string offset=945
.Linfo_string63:
	.asciz	"LZMA_MF_BT2"                   # string offset=957
.Linfo_string64:
	.asciz	"LZMA_MF_BT3"                   # string offset=969
.Linfo_string65:
	.asciz	"LZMA_MF_BT4"                   # string offset=981
.Linfo_string66:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=993
.Linfo_string67:
	.asciz	"LZMA_CHECK_NONE"               # string offset=1012
.Linfo_string68:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=1028
.Linfo_string69:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=1045
.Linfo_string70:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=1062
.Linfo_string71:
	.asciz	"encode_init"                   # string offset=1080
.Linfo_string72:
	.asciz	"_Bool"                         # string offset=1092
.Linfo_string73:
	.asciz	"pcoder"                        # string offset=1098
.Linfo_string74:
	.asciz	"lzma_coder"                    # string offset=1105
.Linfo_string75:
	.asciz	"mf"                            # string offset=1116
.Linfo_string76:
	.asciz	"buffer"                        # string offset=1119
.Linfo_string77:
	.asciz	"size"                          # string offset=1126
.Linfo_string78:
	.asciz	"keep_size_before"              # string offset=1131
.Linfo_string79:
	.asciz	"keep_size_after"               # string offset=1148
.Linfo_string80:
	.asciz	"offset"                        # string offset=1164
.Linfo_string81:
	.asciz	"read_pos"                      # string offset=1171
.Linfo_string82:
	.asciz	"read_ahead"                    # string offset=1180
.Linfo_string83:
	.asciz	"read_limit"                    # string offset=1191
.Linfo_string84:
	.asciz	"write_pos"                     # string offset=1202
.Linfo_string85:
	.asciz	"pending"                       # string offset=1212
.Linfo_string86:
	.asciz	"find"                          # string offset=1220
.Linfo_string87:
	.asciz	"len"                           # string offset=1225
.Linfo_string88:
	.asciz	"dist"                          # string offset=1229
.Linfo_string89:
	.asciz	"lzma_match"                    # string offset=1234
.Linfo_string90:
	.asciz	"skip"                          # string offset=1245
.Linfo_string91:
	.asciz	"hash"                          # string offset=1250
.Linfo_string92:
	.asciz	"son"                           # string offset=1255
.Linfo_string93:
	.asciz	"cyclic_pos"                    # string offset=1259
.Linfo_string94:
	.asciz	"cyclic_size"                   # string offset=1270
.Linfo_string95:
	.asciz	"hash_mask"                     # string offset=1282
.Linfo_string96:
	.asciz	"depth"                         # string offset=1292
.Linfo_string97:
	.asciz	"nice_len"                      # string offset=1298
.Linfo_string98:
	.asciz	"match_len_max"                 # string offset=1307
.Linfo_string99:
	.asciz	"action"                        # string offset=1321
.Linfo_string100:
	.asciz	"lzma_action"                   # string offset=1328
.Linfo_string101:
	.asciz	"hash_size_sum"                 # string offset=1340
.Linfo_string102:
	.asciz	"sons_count"                    # string offset=1354
.Linfo_string103:
	.asciz	"lzma_mf_s"                     # string offset=1365
.Linfo_string104:
	.asciz	"lzma_mf"                       # string offset=1375
.Linfo_string105:
	.asciz	"coder"                         # string offset=1383
.Linfo_string106:
	.asciz	"rc"                            # string offset=1389
.Linfo_string107:
	.asciz	"lzma_range_encoder"            # string offset=1392
.Linfo_string108:
	.asciz	"state"                         # string offset=1411
.Linfo_string109:
	.asciz	"lzma_lzma_state"               # string offset=1417
.Linfo_string110:
	.asciz	"reps"                          # string offset=1433
.Linfo_string111:
	.asciz	"matches"                       # string offset=1438
.Linfo_string112:
	.asciz	"matches_count"                 # string offset=1446
.Linfo_string113:
	.asciz	"longest_match_length"          # string offset=1460
.Linfo_string114:
	.asciz	"fast_mode"                     # string offset=1481
.Linfo_string115:
	.asciz	"is_initialized"                # string offset=1491
.Linfo_string116:
	.asciz	"is_flushed"                    # string offset=1506
.Linfo_string117:
	.asciz	"pos_mask"                      # string offset=1517
.Linfo_string118:
	.asciz	"literal_context_bits"          # string offset=1526
.Linfo_string119:
	.asciz	"literal_pos_mask"              # string offset=1547
.Linfo_string120:
	.asciz	"literal"                       # string offset=1564
.Linfo_string121:
	.asciz	"is_match"                      # string offset=1572
.Linfo_string122:
	.asciz	"is_rep"                        # string offset=1581
.Linfo_string123:
	.asciz	"is_rep0"                       # string offset=1588
.Linfo_string124:
	.asciz	"is_rep1"                       # string offset=1596
.Linfo_string125:
	.asciz	"is_rep2"                       # string offset=1604
.Linfo_string126:
	.asciz	"is_rep0_long"                  # string offset=1612
.Linfo_string127:
	.asciz	"pos_slot"                      # string offset=1625
.Linfo_string128:
	.asciz	"pos_special"                   # string offset=1634
.Linfo_string129:
	.asciz	"pos_align"                     # string offset=1646
.Linfo_string130:
	.asciz	"match_len_encoder"             # string offset=1656
.Linfo_string131:
	.asciz	"choice"                        # string offset=1674
.Linfo_string132:
	.asciz	"choice2"                       # string offset=1681
.Linfo_string133:
	.asciz	"mid"                           # string offset=1689
.Linfo_string134:
	.asciz	"high"                          # string offset=1693
.Linfo_string135:
	.asciz	"prices"                        # string offset=1698
.Linfo_string136:
	.asciz	"table_size"                    # string offset=1705
.Linfo_string137:
	.asciz	"counters"                      # string offset=1716
.Linfo_string138:
	.asciz	"lzma_length_encoder"           # string offset=1725
.Linfo_string139:
	.asciz	"rep_len_encoder"               # string offset=1745
.Linfo_string140:
	.asciz	"pos_slot_prices"               # string offset=1761
.Linfo_string141:
	.asciz	"distances_prices"              # string offset=1777
.Linfo_string142:
	.asciz	"dist_table_size"               # string offset=1794
.Linfo_string143:
	.asciz	"match_price_count"             # string offset=1810
.Linfo_string144:
	.asciz	"align_prices"                  # string offset=1828
.Linfo_string145:
	.asciz	"align_price_count"             # string offset=1841
.Linfo_string146:
	.asciz	"opts_end_index"                # string offset=1859
.Linfo_string147:
	.asciz	"opts_current_index"            # string offset=1874
.Linfo_string148:
	.asciz	"opts"                          # string offset=1893
.Linfo_string149:
	.asciz	"prev_1_is_literal"             # string offset=1898
.Linfo_string150:
	.asciz	"prev_2"                        # string offset=1916
.Linfo_string151:
	.asciz	"pos_prev_2"                    # string offset=1923
.Linfo_string152:
	.asciz	"back_prev_2"                   # string offset=1934
.Linfo_string153:
	.asciz	"price"                         # string offset=1946
.Linfo_string154:
	.asciz	"pos_prev"                      # string offset=1952
.Linfo_string155:
	.asciz	"back_prev"                     # string offset=1961
.Linfo_string156:
	.asciz	"backs"                         # string offset=1971
.Linfo_string157:
	.asciz	"lzma_optimal"                  # string offset=1977
.Linfo_string158:
	.asciz	"lzma_coder_s"                  # string offset=1990
.Linfo_string159:
	.asciz	"mf_skip"                       # string offset=2003
.Linfo_string160:
	.asciz	"amount"                        # string offset=2011
.Linfo_string161:
	.asciz	"rc_bit"                        # string offset=2018
.Linfo_string162:
	.asciz	"prob"                          # string offset=2025
.Linfo_string163:
	.asciz	"bit"                           # string offset=2030
.Linfo_string164:
	.asciz	"rc_bittree"                    # string offset=2034
.Linfo_string165:
	.asciz	"bit_count"                     # string offset=2045
.Linfo_string166:
	.asciz	"symbol"                        # string offset=2055
.Linfo_string167:
	.asciz	"model_index"                   # string offset=2062
.Linfo_string168:
	.asciz	"mf_position"                   # string offset=2074
.Linfo_string169:
	.asciz	"position"                      # string offset=2086
.Linfo_string170:
	.asciz	"cur_byte"                      # string offset=2095
.Linfo_string171:
	.asciz	"subcoder"                      # string offset=2104
.Linfo_string172:
	.asciz	"match_byte"                    # string offset=2113
.Linfo_string173:
	.asciz	"encode_symbol"                 # string offset=2124
.Linfo_string174:
	.asciz	"back"                          # string offset=2138
.Linfo_string175:
	.asciz	"pos_state"                     # string offset=2143
.Linfo_string176:
	.asciz	"rep_match"                     # string offset=2153
.Linfo_string177:
	.asciz	"rep"                           # string offset=2163
.Linfo_string178:
	.asciz	"distance"                      # string offset=2167
.Linfo_string179:
	.asciz	"literal_matched"               # string offset=2176
.Linfo_string180:
	.asciz	"match_bit"                     # string offset=2192
.Linfo_string181:
	.asciz	"subcoder_index"                # string offset=2202
.Linfo_string182:
	.asciz	"encode_eopm"                   # string offset=2217
.Linfo_string183:
	.asciz	"rc_flush"                      # string offset=2229
.Linfo_string184:
	.asciz	"i"                             # string offset=2238
.Linfo_string185:
	.asciz	"lzma_lzma_optimum_fast"        # string offset=2240
.Linfo_string186:
	.asciz	"lzma_lzma_optimum_normal"      # string offset=2263
.Linfo_string187:
	.asciz	"rc_shift_low"                  # string offset=2288
.Linfo_string188:
	.asciz	"out"                           # string offset=2301
.Linfo_string189:
	.asciz	"out_pos"                       # string offset=2305
.Linfo_string190:
	.asciz	"out_size"                      # string offset=2313
.Linfo_string191:
	.asciz	"rc_reset"                      # string offset=2322
.Linfo_string192:
	.asciz	"is_lclppb_valid"               # string offset=2331
.Linfo_string193:
	.asciz	"options"                       # string offset=2347
.Linfo_string194:
	.asciz	"dict_size"                     # string offset=2355
.Linfo_string195:
	.asciz	"preset_dict"                   # string offset=2365
.Linfo_string196:
	.asciz	"preset_dict_size"              # string offset=2377
.Linfo_string197:
	.asciz	"lc"                            # string offset=2394
.Linfo_string198:
	.asciz	"lp"                            # string offset=2397
.Linfo_string199:
	.asciz	"pb"                            # string offset=2400
.Linfo_string200:
	.asciz	"mode"                          # string offset=2403
.Linfo_string201:
	.asciz	"lzma_mode"                     # string offset=2408
.Linfo_string202:
	.asciz	"lzma_match_finder"             # string offset=2418
.Linfo_string203:
	.asciz	"reserved_int1"                 # string offset=2436
.Linfo_string204:
	.asciz	"reserved_int2"                 # string offset=2450
.Linfo_string205:
	.asciz	"reserved_int3"                 # string offset=2464
.Linfo_string206:
	.asciz	"reserved_int4"                 # string offset=2478
.Linfo_string207:
	.asciz	"reserved_int5"                 # string offset=2492
.Linfo_string208:
	.asciz	"reserved_int6"                 # string offset=2506
.Linfo_string209:
	.asciz	"reserved_int7"                 # string offset=2520
.Linfo_string210:
	.asciz	"reserved_int8"                 # string offset=2534
.Linfo_string211:
	.asciz	"reserved_enum1"                # string offset=2548
.Linfo_string212:
	.asciz	"lzma_reserved_enum"            # string offset=2563
.Linfo_string213:
	.asciz	"reserved_enum2"                # string offset=2582
.Linfo_string214:
	.asciz	"reserved_enum3"                # string offset=2597
.Linfo_string215:
	.asciz	"reserved_enum4"                # string offset=2612
.Linfo_string216:
	.asciz	"reserved_ptr1"                 # string offset=2627
.Linfo_string217:
	.asciz	"reserved_ptr2"                 # string offset=2641
.Linfo_string218:
	.asciz	"lzma_options_lzma"             # string offset=2655
.Linfo_string219:
	.asciz	"is_options_valid"              # string offset=2673
.Linfo_string220:
	.asciz	"literal_init"                  # string offset=2690
.Linfo_string221:
	.asciz	"coders"                        # string offset=2703
.Linfo_string222:
	.asciz	"j"                             # string offset=2710
.Linfo_string223:
	.asciz	"length_encoder_reset"          # string offset=2712
.Linfo_string224:
	.asciz	"lencoder"                      # string offset=2733
.Linfo_string225:
	.asciz	"num_pos_states"                # string offset=2742
.Linfo_string226:
	.asciz	"bt_i"                          # string offset=2757
.Linfo_string227:
	.asciz	"set_lz_options"                # string offset=2762
.Linfo_string228:
	.asciz	"lz_options"                    # string offset=2777
.Linfo_string229:
	.asciz	"before_size"                   # string offset=2788
.Linfo_string230:
	.asciz	"after_size"                    # string offset=2800
.Linfo_string231:
	.asciz	"match_finder"                  # string offset=2811
.Linfo_string232:
	.asciz	"lzma_lz_options"               # string offset=2824
.Linfo_string233:
	.asciz	"lzma_alloc"                    # string offset=2840
.Linfo_string234:
	.asciz	"alloc"                         # string offset=2851
.Linfo_string235:
	.asciz	"free"                          # string offset=2857
.Linfo_string236:
	.asciz	"opaque"                        # string offset=2862
.Linfo_string237:
	.asciz	"lzma_allocator"                # string offset=2869
.Linfo_string238:
	.asciz	"lzma_lz_encoder_init"          # string offset=2884
.Linfo_string239:
	.asciz	"lzma_ret"                      # string offset=2905
.Linfo_string240:
	.asciz	"id"                            # string offset=2914
.Linfo_string241:
	.asciz	"lzma_vli"                      # string offset=2917
.Linfo_string242:
	.asciz	"init"                          # string offset=2926
.Linfo_string243:
	.asciz	"uintptr_t"                     # string offset=2931
.Linfo_string244:
	.asciz	"code"                          # string offset=2941
.Linfo_string245:
	.asciz	"lzma_code_function"            # string offset=2946
.Linfo_string246:
	.asciz	"end"                           # string offset=2965
.Linfo_string247:
	.asciz	"lzma_end_function"             # string offset=2969
.Linfo_string248:
	.asciz	"get_check"                     # string offset=2987
.Linfo_string249:
	.asciz	"lzma_check"                    # string offset=2997
.Linfo_string250:
	.asciz	"memconfig"                     # string offset=3008
.Linfo_string251:
	.asciz	"update"                        # string offset=3018
.Linfo_string252:
	.asciz	"lzma_filter"                   # string offset=3025
.Linfo_string253:
	.asciz	"lzma_next_coder_s"             # string offset=3037
.Linfo_string254:
	.asciz	"lzma_next_coder"               # string offset=3055
.Linfo_string255:
	.asciz	"lzma_init_function"            # string offset=3071
.Linfo_string256:
	.asciz	"lzma_filter_info_s"            # string offset=3090
.Linfo_string257:
	.asciz	"lzma_filter_info"              # string offset=3109
.Linfo_string258:
	.asciz	"options_update"                # string offset=3126
.Linfo_string259:
	.asciz	"lzma_lz_encoder"               # string offset=3141
.Linfo_string260:
	.asciz	"lzma_lz_encoder_memusage"      # string offset=3157
.Linfo_string261:
	.asciz	"lzma_lzma_lclppb_encode"       # string offset=3182
.Linfo_string262:
	.asciz	"byte"                          # string offset=3206
.Linfo_string263:
	.asciz	"unaligned_write32le"           # string offset=3211
.Linfo_string264:
	.asciz	"buf"                           # string offset=3231
.Linfo_string265:
	.asciz	"num"                           # string offset=3235
.Linfo_string266:
	.asciz	"get_pos_slot"                  # string offset=3239
.Linfo_string267:
	.asciz	"rc_bittree_reverse"            # string offset=3252
.Linfo_string268:
	.asciz	"rc_direct"                     # string offset=3271
.Linfo_string269:
	.asciz	"value"                         # string offset=3281
.Linfo_string270:
	.asciz	"rc_bit_0_price"                # string offset=3287
.Linfo_string271:
	.asciz	"rc_bit_1_price"                # string offset=3302
.Linfo_string272:
	.asciz	"rc_bittree_price"              # string offset=3317
.Linfo_string273:
	.asciz	"bit_levels"                    # string offset=3334
.Linfo_string274:
	.asciz	"rc_bit_price"                  # string offset=3345
.Linfo_string275:
	.asciz	"DW_ATE_unsigned_1"             # string offset=3358
.Linfo_string276:
	.asciz	"DW_ATE_unsigned_8"             # string offset=3376
.Linfo_string277:
	.asciz	"DW_ATE_unsigned_32"            # string offset=3394
.Linfo_string278:
	.asciz	"lzma_lzma_encode"              # string offset=3413
.Linfo_string279:
	.asciz	"rc_encode"                     # string offset=3430
.Linfo_string280:
	.asciz	"lzma_lzma_encoder_reset"       # string offset=3440
.Linfo_string281:
	.asciz	"lzma_lzma_encoder_create"      # string offset=3464
.Linfo_string282:
	.asciz	"lzma_lzma_encoder_init"        # string offset=3489
.Linfo_string283:
	.asciz	"lzma_encoder_init"             # string offset=3512
.Linfo_string284:
	.asciz	"lzma_lzma_encoder_memusage"    # string offset=3530
.Linfo_string285:
	.asciz	"lzma_lzma_props_encode"        # string offset=3557
.Linfo_string286:
	.asciz	"lzma_mode_is_supported"        # string offset=3580
.Linfo_string287:
	.asciz	"lzma_bool"                     # string offset=3603
.Linfo_string288:
	.asciz	"match"                         # string offset=3613
.Linfo_string289:
	.asciz	"length"                        # string offset=3619
.Linfo_string290:
	.asciz	"length_update_prices"          # string offset=3626
.Linfo_string291:
	.asciz	"lzma_encode"                   # string offset=3647
.Linfo_string292:
	.asciz	"limit"                         # string offset=3659
.Linfo_string293:
	.asciz	"bound"                         # string offset=3665
.Linfo_string294:
	.asciz	"coder_ptr"                     # string offset=3671
.Linfo_string295:
	.asciz	"allocator"                     # string offset=3681
.Linfo_string296:
	.asciz	"log_size"                      # string offset=3691
.Linfo_string297:
	.asciz	"next"                          # string offset=3700
.Linfo_string298:
	.asciz	"filters"                       # string offset=3705
.Linfo_string299:
	.asciz	"lz"                            # string offset=3713
.Linfo_string300:
	.asciz	"lz_memusage"                   # string offset=3716
.Linfo_string301:
	.asciz	"opt"                           # string offset=3728
.Linfo_string302:
	.asciz	"len_to_pos_state"              # string offset=3732
.Linfo_string303:
	.asciz	"base"                          # string offset=3749
.Linfo_string304:
	.asciz	"pos_reduced"                   # string offset=3754
.Linfo_string305:
	.asciz	"footer_bits"                   # string offset=3766
.Linfo_string306:
	.asciz	"a0"                            # string offset=3778
.Linfo_string307:
	.asciz	"a1"                            # string offset=3781
.Linfo_string308:
	.asciz	"b0"                            # string offset=3784
.Linfo_string309:
	.asciz	"b1"                            # string offset=3787
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
	.long	.Linfo_string185
	.long	.Linfo_string186
	.long	.Linfo_string187
	.long	.Linfo_string188
	.long	.Linfo_string189
	.long	.Linfo_string190
	.long	.Linfo_string191
	.long	.Linfo_string192
	.long	.Linfo_string193
	.long	.Linfo_string194
	.long	.Linfo_string195
	.long	.Linfo_string196
	.long	.Linfo_string197
	.long	.Linfo_string198
	.long	.Linfo_string199
	.long	.Linfo_string200
	.long	.Linfo_string201
	.long	.Linfo_string202
	.long	.Linfo_string203
	.long	.Linfo_string204
	.long	.Linfo_string205
	.long	.Linfo_string206
	.long	.Linfo_string207
	.long	.Linfo_string208
	.long	.Linfo_string209
	.long	.Linfo_string210
	.long	.Linfo_string211
	.long	.Linfo_string212
	.long	.Linfo_string213
	.long	.Linfo_string214
	.long	.Linfo_string215
	.long	.Linfo_string216
	.long	.Linfo_string217
	.long	.Linfo_string218
	.long	.Linfo_string219
	.long	.Linfo_string220
	.long	.Linfo_string221
	.long	.Linfo_string222
	.long	.Linfo_string223
	.long	.Linfo_string224
	.long	.Linfo_string225
	.long	.Linfo_string226
	.long	.Linfo_string227
	.long	.Linfo_string228
	.long	.Linfo_string229
	.long	.Linfo_string230
	.long	.Linfo_string231
	.long	.Linfo_string232
	.long	.Linfo_string233
	.long	.Linfo_string234
	.long	.Linfo_string235
	.long	.Linfo_string236
	.long	.Linfo_string237
	.long	.Linfo_string238
	.long	.Linfo_string239
	.long	.Linfo_string240
	.long	.Linfo_string241
	.long	.Linfo_string242
	.long	.Linfo_string243
	.long	.Linfo_string244
	.long	.Linfo_string245
	.long	.Linfo_string246
	.long	.Linfo_string247
	.long	.Linfo_string248
	.long	.Linfo_string249
	.long	.Linfo_string250
	.long	.Linfo_string251
	.long	.Linfo_string252
	.long	.Linfo_string253
	.long	.Linfo_string254
	.long	.Linfo_string255
	.long	.Linfo_string256
	.long	.Linfo_string257
	.long	.Linfo_string258
	.long	.Linfo_string259
	.long	.Linfo_string260
	.long	.Linfo_string261
	.long	.Linfo_string262
	.long	.Linfo_string263
	.long	.Linfo_string264
	.long	.Linfo_string265
	.long	.Linfo_string266
	.long	.Linfo_string267
	.long	.Linfo_string268
	.long	.Linfo_string269
	.long	.Linfo_string270
	.long	.Linfo_string271
	.long	.Linfo_string272
	.long	.Linfo_string273
	.long	.Linfo_string274
	.long	.Linfo_string275
	.long	.Linfo_string276
	.long	.Linfo_string277
	.long	.Linfo_string278
	.long	.Linfo_string279
	.long	.Linfo_string280
	.long	.Linfo_string281
	.long	.Linfo_string282
	.long	.Linfo_string283
	.long	.Linfo_string284
	.long	.Linfo_string285
	.long	.Linfo_string286
	.long	.Linfo_string287
	.long	.Linfo_string288
	.long	.Linfo_string289
	.long	.Linfo_string290
	.long	.Linfo_string291
	.long	.Linfo_string292
	.long	.Linfo_string293
	.long	.Linfo_string294
	.long	.Linfo_string295
	.long	.Linfo_string296
	.long	.Linfo_string297
	.long	.Linfo_string298
	.long	.Linfo_string299
	.long	.Linfo_string300
	.long	.Linfo_string301
	.long	.Linfo_string302
	.long	.Linfo_string303
	.long	.Linfo_string304
	.long	.Linfo_string305
	.long	.Linfo_string306
	.long	.Linfo_string307
	.long	.Linfo_string308
	.long	.Linfo_string309
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp3
	.quad	.Ltmp8
	.quad	.Ltmp10
	.quad	.Ltmp13
	.quad	.Ltmp122
	.quad	.Ltmp171
	.quad	.Ltmp179
	.quad	.Ltmp115
	.quad	.Ltmp96
	.quad	.Ltmp99
	.quad	.Ltmp103
	.quad	.Ltmp109
	.quad	.Ltmp113
	.quad	.Ltmp196
	.quad	.Ltmp199
	.quad	.Ltmp189
	.quad	.Ltmp193
	.quad	.Ltmp166
	.quad	.Ltmp64
	.quad	.Ltmp213
	.quad	.Ltmp215
	.quad	.Ltmp218
	.quad	.Ltmp221
	.quad	.Ltmp9
	.quad	.Ltmp62
	.quad	.Ltmp73
	.quad	.Ltmp88
	.quad	.Ltmp90
	.quad	.Ltmp169
	.quad	.Ltmp208
	.quad	.Ltmp227
	.quad	.Lfunc_begin1
	.quad	.Ltmp257
	.quad	.Ltmp261
	.quad	.Ltmp281
	.quad	.Lfunc_begin2
	.quad	.Ltmp292
	.quad	.Ltmp294
	.quad	.Ltmp297
	.quad	.Ltmp304
	.quad	.Ltmp448
	.quad	.Ltmp452
	.quad	.Ltmp453
	.quad	.Ltmp457
	.quad	.Ltmp458
	.quad	.Ltmp477
	.quad	.Ltmp482
	.quad	.Ltmp488
	.quad	.Ltmp489
	.quad	.Ltmp508
	.quad	.Ltmp512
	.quad	.Ltmp483
	.quad	.Ltmp513
	.quad	.Lfunc_begin3
	.quad	.Ltmp532
	.quad	.Ltmp540
	.quad	.Ltmp524
	.quad	.Ltmp544
	.quad	.Lfunc_begin4
	.quad	.Ltmp550
	.quad	.Lfunc_begin5
	.quad	.Ltmp552
	.quad	.Lfunc_begin6
	.quad	.Ltmp561
	.quad	.Ltmp565
	.quad	.Lfunc_begin7
	.quad	.Lfunc_begin8
	.quad	.Ltmp583
	.quad	.Lfunc_begin9
	.quad	.Lfunc_begin10
	.quad	.Ltmp592
	.quad	.Ltmp603
	.quad	.Ltmp639
	.quad	.Ltmp685
	.quad	.Ltmp696
	.quad	.Lfunc_begin11
	.quad	.Ltmp727
	.quad	.Ltmp730
	.quad	.Ltmp732
	.quad	.Ltmp734
	.quad	.Ltmp738
	.quad	.Ltmp740
	.quad	.Ltmp746
	.quad	.Ltmp749
	.quad	.Ltmp792
	.quad	.Lfunc_begin12
	.quad	.Ltmp795
	.quad	.Ltmp796
	.quad	.Ltmp798
	.quad	.Ltmp799
	.quad	.Ltmp1030
	.quad	.Ltmp1036
	.quad	.Lfunc_begin13
	.quad	.Ltmp1049
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
