	.text
	.file	"stream_buffer_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/stream_buffer_decoder.c" md5 0x0690b7f38e6e5e8b11f02aee3af00bbd
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.globl	lzma_stream_buffer_decode       # -- Begin function lzma_stream_buffer_decode
	.p2align	4, 0x90
	.type	lzma_stream_buffer_decode,@function
lzma_stream_buffer_decode:              # @lzma_stream_buffer_decode
.Lfunc_begin0:
	.loc	0 21 0                          # liblzma/common/stream_buffer_decoder.c:21:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- $rdi
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rdx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $rcx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- $r8
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- $r9
	#DEBUG_VALUE: lzma_stream_buffer_decode:out <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:out_pos <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:out_size <- [DW_OP_plus_uconst 192] [$rsp+0]
	movl	$11, %eax
.Ltmp0:
	.loc	0 23 13 prologue_end            # liblzma/common/stream_buffer_decoder.c:23:13
	testq	%r8, %r8
	.loc	0 23 21 is_stmt 0               # liblzma/common/stream_buffer_decoder.c:23:21
	je	.LBB0_15
.Ltmp1:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- $rdi
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rdx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $rcx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- $r8
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- $r9
	#DEBUG_VALUE: lzma_stream_buffer_decode:out <- [DW_OP_plus_uconst 176] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:out_pos <- [DW_OP_plus_uconst 184] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:out_size <- [DW_OP_plus_uconst 192] [$rsp+0]
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
	subq	$128, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	.loc	0 23 28                         # liblzma/common/stream_buffer_decoder.c:23:28
	testq	%rcx, %rcx
	setne	%r11b
	.loc	0 24 7 is_stmt 1                # liblzma/common/stream_buffer_decoder.c:24:7
	movq	(%r8), %r10
	cmpq	%r9, %r10
	sete	%bl
	.loc	0 23 36                         # liblzma/common/stream_buffer_decoder.c:23:36
	orb	%r11b, %bl
	cmpb	$1, %bl
	jne	.LBB0_14
.Ltmp2:
# %bb.2:                                # %lor.lhs.false3
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- $rdi
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rdx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $rcx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- $r8
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- $r9
	.loc	0 24 15                         # liblzma/common/stream_buffer_decoder.c:24:15
	cmpq	%r9, %r10
	seta	%r10b
	movq	184(%rsp), %rbp
	testq	%rbp, %rbp
	sete	%r11b
	.loc	0 24 25 is_stmt 0               # liblzma/common/stream_buffer_decoder.c:24:25
	orb	%r10b, %r11b
	jne	.LBB0_14
.Ltmp3:
# %bb.3:                                # %lor.lhs.false7
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- $rdi
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rdx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $rcx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- $r8
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- $r9
	.loc	0 0 25                          # liblzma/common/stream_buffer_decoder.c:0:25
	movq	192(%rsp), %r15
	movq	176(%rsp), %r14
	.loc	0 25 12 is_stmt 1               # liblzma/common/stream_buffer_decoder.c:25:12
	testq	%r14, %r14
	setne	%r11b
	.loc	0 26 7                          # liblzma/common/stream_buffer_decoder.c:26:7
	movq	(%rbp), %r10
	cmpq	%r15, %r10
	sete	%bl
	.loc	0 25 20                         # liblzma/common/stream_buffer_decoder.c:25:20
	orb	%r11b, %bl
	cmpb	$1, %bl
	jne	.LBB0_14
.Ltmp4:
# %bb.4:                                # %lor.lhs.false11
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- $rdi
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rdx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $rcx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- $r8
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- $r9
	.loc	0 26 16                         # liblzma/common/stream_buffer_decoder.c:26:16
	cmpq	%r15, %r10
	seta	%r10b
	movl	%esi, %r11d
	andl	$4, %r11d
	shrl	$2, %r11d
.Ltmp5:
	.loc	0 23 6                          # liblzma/common/stream_buffer_decoder.c:23:6
	orb	%r10b, %r11b
	jne	.LBB0_14
.Ltmp6:
# %bb.5:                                # %if.end14
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- $rdi
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rdx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $rcx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- $r8
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- $r9
	.loc	0 0 6 is_stmt 0                 # liblzma/common/stream_buffer_decoder.c:0:6
	movq	%rcx, %r12
.Ltmp7:
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $r12
	movq	%r8, 16(%rsp)                   # 8-byte Spill
.Ltmp8:
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- [DW_OP_plus_uconst 16] [$rsp+0]
	movq	%r9, 8(%rsp)                    # 8-byte Spill
.Ltmp9:
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	.loc	0 36 18 is_stmt 1               # liblzma/common/stream_buffer_decoder.c:36:18
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	$-1, 56(%rsp)
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
.Ltmp10:
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	0 38 32                         # liblzma/common/stream_buffer_decoder.c:38:32
	movq	(%rdi), %rax
	leaq	48(%rsp), %rdi
	movq	%rdx, %rbx
	movl	%esi, %ecx
	.loc	0 37 17                         # liblzma/common/stream_buffer_decoder.c:37:17
	movq	%rdx, %rsi
.Ltmp11:
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- $ecx
	movq	%rax, %rdx
.Ltmp12:
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rsi
	callq	lzma_stream_decoder_init@PLT
.Ltmp13:
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $eax
	.loc	0 40 10                         # liblzma/common/stream_buffer_decoder.c:40:10
	testl	%eax, %eax
.Ltmp14:
	.loc	0 40 6 is_stmt 0                # liblzma/common/stream_buffer_decoder.c:40:6
	je	.LBB0_7
.Ltmp15:
# %bb.6:
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $eax
	.loc	0 0 6                           # liblzma/common/stream_buffer_decoder.c:0:6
	movq	%rbx, %rsi
	.loc	0 40 6                          # liblzma/common/stream_buffer_decoder.c:40:6
	jmp	.LBB0_13
.Ltmp16:
.LBB0_7:                                # %if.then16
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $eax
	.loc	0 0 6                           # liblzma/common/stream_buffer_decoder.c:0:6
	movq	16(%rsp), %rcx                  # 8-byte Reload
.Ltmp17:
	.loc	0 43 27 is_stmt 1               # liblzma/common/stream_buffer_decoder.c:43:27
	movq	(%rcx), %rax
.Ltmp18:
	#DEBUG_VALUE: in_start <- $rax
	.loc	0 0 27 is_stmt 0                # liblzma/common/stream_buffer_decoder.c:0:27
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.Ltmp19:
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 44 28 is_stmt 1               # liblzma/common/stream_buffer_decoder.c:44:28
	movq	(%rbp), %rax
.Ltmp20:
	#DEBUG_VALUE: out_start <- $rax
	.loc	0 0 28 is_stmt 0                # liblzma/common/stream_buffer_decoder.c:0:28
	movq	%rax, 24(%rsp)                  # 8-byte Spill
.Ltmp21:
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 47 44 is_stmt 1               # liblzma/common/stream_buffer_decoder.c:47:44
	movq	48(%rsp), %rdi
	.loc	0 47 9 is_stmt 0                # liblzma/common/stream_buffer_decoder.c:47:9
	subq	$8, %rsp
.Ltmp22:
	.cfi_adjust_cfa_offset 8
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	%r14, %r9
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	*104(%rsp)
.Ltmp23:
	.loc	0 0 9                           # liblzma/common/stream_buffer_decoder.c:0:9
	movq	%rbx, %rsi
	.loc	0 47 9                          # liblzma/common/stream_buffer_decoder.c:47:9
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %ecx
.Ltmp24:
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $eax
	.loc	0 0 9                           # liblzma/common/stream_buffer_decoder.c:0:9
	xorl	%eax, %eax
.Ltmp25:
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $ecx
	.loc	0 51 11 is_stmt 1               # liblzma/common/stream_buffer_decoder.c:51:11
	cmpl	$1, %ecx
.Ltmp26:
	.loc	0 51 7 is_stmt 0                # liblzma/common/stream_buffer_decoder.c:51:7
	je	.LBB0_13
.Ltmp27:
# %bb.8:                                # %if.else
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $ecx
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 7                           # liblzma/common/stream_buffer_decoder.c:0:7
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
.Ltmp28:
	.loc	0 55 12 is_stmt 1               # liblzma/common/stream_buffer_decoder.c:55:12
	movq	%rax, (%rdx)
	movq	24(%rsp), %rax                  # 8-byte Reload
	.loc	0 56 13                         # liblzma/common/stream_buffer_decoder.c:56:13
	movq	%rax, (%rbp)
	.loc	0 58 8                          # liblzma/common/stream_buffer_decoder.c:58:8
	cmpl	$6, %ecx
	je	.LBB0_12
.Ltmp29:
# %bb.9:                                # %if.else
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $ecx
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	testl	%ecx, %ecx
	jne	.LBB0_10
.Ltmp30:
# %bb.11:                               # %if.then21
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $ecx
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 8 is_stmt 0                 # liblzma/common/stream_buffer_decoder.c:0:8
	xorl	%eax, %eax
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp31:
	.loc	0 69 17 is_stmt 1               # liblzma/common/stream_buffer_decoder.c:69:17
	cmpq	%rcx, (%rdx)
	setne	%al
	addl	$9, %eax
	jmp	.LBB0_13
.Ltmp32:
.LBB0_12:                               # %if.then28
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $ecx
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 79 22                         # liblzma/common/stream_buffer_decoder.c:79:22
	movq	48(%rsp), %rdi
	leaq	120(%rsp), %rdx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	.loc	0 78 11                         # liblzma/common/stream_buffer_decoder.c:78:11
	xorl	%ecx, %ecx
.Ltmp33:
	callq	*96(%rsp)
.Ltmp34:
	.loc	0 0 11 is_stmt 0                # liblzma/common/stream_buffer_decoder.c:0:11
	movq	%rbx, %rsi
	movl	$6, %eax
	jmp	.LBB0_13
.Ltmp35:
.LBB0_10:
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $ecx
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	movl	%ecx, %eax
.Ltmp36:
.LBB0_13:                               # %if.end34
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $eax
	leaq	48(%rsp), %rdi
	movl	%eax, %ebx
.Ltmp37:
	#DEBUG_VALUE: lzma_stream_buffer_decode:ret <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 88 2 is_stmt 1                # liblzma/common/stream_buffer_decoder.c:88:2
	callq	lzma_next_end@PLT
.Ltmp38:
	.loc	0 0 2 is_stmt 0                 # liblzma/common/stream_buffer_decoder.c:0:2
	movl	%ebx, %eax
.Ltmp39:
.LBB0_14:
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r9
	addq	$128, %rsp
	.cfi_def_cfa_offset 48
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.Ltmp40:
.LBB0_15:                               # %return
	#DEBUG_VALUE: lzma_stream_buffer_decode:memlimit <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_stream_buffer_decode:flags <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_stream_buffer_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 91 1 is_stmt 1                # liblzma/common/stream_buffer_decoder.c:91:1
	retq
.Ltmp41:
.Lfunc_end0:
	.size	lzma_stream_buffer_decode, .Lfunc_end0-lzma_stream_buffer_decode
	.cfi_endproc
	.file	4 "liblzma/common" "stream_decoder.h" md5 0x82f2a7f1e50521ce1ad27540f4230cca
	.file	5 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	7 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	8 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	9 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	10 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	12                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
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
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
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
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	176                             # 176
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	184                             # 184
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 192
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x38e DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0x2d DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x2f:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x32:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x35:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x38:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3b:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3e:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x41:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x44:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x47:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4a:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4d:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x50:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x54:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x58:0x15 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x60:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x63:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x66:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x69:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x6d:0x15 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x75:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x78:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7b:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7e:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x82:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x83:0x8 DW_TAG_typedef
	.long	139                             # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x8b:0x4 DW_TAG_base_type
	.byte	24                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x8f:0xb9 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\320~"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	357                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0xa2:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	808                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xab:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	885                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xb4:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	553                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xbd:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	659                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xc6:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	694                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xcf:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	67                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	629                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xd8:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	704                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xe1:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	694                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xea:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	629                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xf3:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	48
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	370                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xfe:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	357                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x107:0x2c DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp35-.Ltmp17                 # DW_AT_high_pc
	.byte	10                              # Abbrev [10] 0x10d:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	916                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x116:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	916                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x11f:0x13 DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp35-.Ltmp32                 # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0x125:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\370"
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	473                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x133:0x6 DW_TAG_call_site
	.long	328                             # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x139:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	87
	.byte	4                               # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x13d:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	87
	.byte	5                               # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x141:0x6 DW_TAG_call_site
	.long	901                             # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x148:0x1d DW_TAG_subprogram
	.byte	26                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	357                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x150:0x5 DW_TAG_formal_parameter
	.long	365                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x155:0x5 DW_TAG_formal_parameter
	.long	553                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x15a:0x5 DW_TAG_formal_parameter
	.long	473                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x15f:0x5 DW_TAG_formal_parameter
	.long	885                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x165:0x8 DW_TAG_typedef
	.long	39                              # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x16d:0x5 DW_TAG_pointer_type
	.long	370                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x172:0x8 DW_TAG_typedef
	.long	378                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x17a:0x4e DW_TAG_structure_type
	.byte	54                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x17f:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	456                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x188:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	465                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x191:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	131                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x19a:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	489                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x1a3:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	718                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x1ac:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	743                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x1b5:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	777                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x1be:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	813                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x1c8:0x5 DW_TAG_pointer_type
	.long	461                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x1cd:0x4 DW_TAG_typedef
	.byte	29                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1d1:0x8 DW_TAG_typedef
	.long	473                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1d9:0x8 DW_TAG_typedef
	.long	481                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1e1:0x8 DW_TAG_typedef
	.long	139                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1e9:0x8 DW_TAG_typedef
	.long	497                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x1f1:0x5 DW_TAG_pointer_type
	.long	502                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1f6:0x33 DW_TAG_subroutine_type
	.long	357                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x1fb:0x5 DW_TAG_formal_parameter
	.long	456                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x200:0x5 DW_TAG_formal_parameter
	.long	553                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x205:0x5 DW_TAG_formal_parameter
	.long	654                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x20a:0x5 DW_TAG_formal_parameter
	.long	689                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x20f:0x5 DW_TAG_formal_parameter
	.long	629                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x214:0x5 DW_TAG_formal_parameter
	.long	699                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x219:0x5 DW_TAG_formal_parameter
	.long	689                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x21e:0x5 DW_TAG_formal_parameter
	.long	629                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x223:0x5 DW_TAG_formal_parameter
	.long	709                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x229:0x5 DW_TAG_pointer_type
	.long	558                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x22e:0x9 DW_TAG_typedef
	.long	567                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x237:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x23c:0xa DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	603                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x246:0xa DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	637                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x250:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	130                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x25b:0x5 DW_TAG_pointer_type
	.long	608                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x260:0x15 DW_TAG_subroutine_type
	.long	130                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x265:0x5 DW_TAG_formal_parameter
	.long	130                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x26a:0x5 DW_TAG_formal_parameter
	.long	629                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x26f:0x5 DW_TAG_formal_parameter
	.long	629                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x275:0x8 DW_TAG_typedef
	.long	139                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x27d:0x5 DW_TAG_pointer_type
	.long	642                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x282:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x283:0x5 DW_TAG_formal_parameter
	.long	130                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x288:0x5 DW_TAG_formal_parameter
	.long	130                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x28e:0x5 DW_TAG_restrict_type
	.long	659                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x293:0x5 DW_TAG_pointer_type
	.long	664                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x298:0x5 DW_TAG_const_type
	.long	669                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x29d:0x8 DW_TAG_typedef
	.long	677                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2a5:0x8 DW_TAG_typedef
	.long	685                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x2ad:0x4 DW_TAG_base_type
	.byte	41                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	25                              # Abbrev [25] 0x2b1:0x5 DW_TAG_restrict_type
	.long	694                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2b6:0x5 DW_TAG_pointer_type
	.long	629                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2bb:0x5 DW_TAG_restrict_type
	.long	704                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2c0:0x5 DW_TAG_pointer_type
	.long	669                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2c5:0x9 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2ce:0x8 DW_TAG_typedef
	.long	726                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x2d6:0x5 DW_TAG_pointer_type
	.long	731                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x2db:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x2dc:0x5 DW_TAG_formal_parameter
	.long	456                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2e1:0x5 DW_TAG_formal_parameter
	.long	553                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x2e7:0x5 DW_TAG_pointer_type
	.long	748                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x2ec:0xb DW_TAG_subroutine_type
	.long	759                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x2f1:0x5 DW_TAG_formal_parameter
	.long	767                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2f7:0x8 DW_TAG_typedef
	.long	109                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x2ff:0x5 DW_TAG_pointer_type
	.long	772                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x304:0x5 DW_TAG_const_type
	.long	461                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x309:0x5 DW_TAG_pointer_type
	.long	782                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x30e:0x1a DW_TAG_subroutine_type
	.long	357                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x313:0x5 DW_TAG_formal_parameter
	.long	456                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x318:0x5 DW_TAG_formal_parameter
	.long	808                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x31d:0x5 DW_TAG_formal_parameter
	.long	808                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x322:0x5 DW_TAG_formal_parameter
	.long	473                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x328:0x5 DW_TAG_pointer_type
	.long	473                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x32d:0x5 DW_TAG_pointer_type
	.long	818                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x332:0x1a DW_TAG_subroutine_type
	.long	357                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x337:0x5 DW_TAG_formal_parameter
	.long	456                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x33c:0x5 DW_TAG_formal_parameter
	.long	553                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x341:0x5 DW_TAG_formal_parameter
	.long	844                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x346:0x5 DW_TAG_formal_parameter
	.long	844                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x34c:0x5 DW_TAG_pointer_type
	.long	849                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x351:0x5 DW_TAG_const_type
	.long	854                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x356:0x8 DW_TAG_typedef
	.long	862                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x35e:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x362:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	465                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x36b:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	130                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x375:0x8 DW_TAG_typedef
	.long	893                             # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x37d:0x8 DW_TAG_typedef
	.long	84                              # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	28                              # Abbrev [28] 0x385:0xf DW_TAG_subprogram
	.byte	58                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x389:0x5 DW_TAG_formal_parameter
	.long	365                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x38e:0x5 DW_TAG_formal_parameter
	.long	553                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x394:0x5 DW_TAG_const_type
	.long	629                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	300                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/stream_buffer_decoder.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=144
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=176
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=189
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=197
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=213
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=227
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=250
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=265
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=280
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=300
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=318
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=337
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=353
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=368
.Linfo_string16:
	.asciz	"LZMA_RUN"                      # string offset=384
.Linfo_string17:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=393
.Linfo_string18:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=409
.Linfo_string19:
	.asciz	"LZMA_FINISH"                   # string offset=425
.Linfo_string20:
	.asciz	"LZMA_CHECK_NONE"               # string offset=437
.Linfo_string21:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=453
.Linfo_string22:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=470
.Linfo_string23:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=487
.Linfo_string24:
	.asciz	"unsigned long"                 # string offset=505
.Linfo_string25:
	.asciz	"uintptr_t"                     # string offset=519
.Linfo_string26:
	.asciz	"lzma_stream_decoder_init"      # string offset=529
.Linfo_string27:
	.asciz	"lzma_ret"                      # string offset=554
.Linfo_string28:
	.asciz	"coder"                         # string offset=563
.Linfo_string29:
	.asciz	"lzma_coder"                    # string offset=569
.Linfo_string30:
	.asciz	"id"                            # string offset=580
.Linfo_string31:
	.asciz	"__uint64_t"                    # string offset=583
.Linfo_string32:
	.asciz	"uint64_t"                      # string offset=594
.Linfo_string33:
	.asciz	"lzma_vli"                      # string offset=603
.Linfo_string34:
	.asciz	"init"                          # string offset=612
.Linfo_string35:
	.asciz	"code"                          # string offset=617
.Linfo_string36:
	.asciz	"alloc"                         # string offset=622
.Linfo_string37:
	.asciz	"size_t"                        # string offset=628
.Linfo_string38:
	.asciz	"free"                          # string offset=635
.Linfo_string39:
	.asciz	"opaque"                        # string offset=640
.Linfo_string40:
	.asciz	"lzma_allocator"                # string offset=647
.Linfo_string41:
	.asciz	"unsigned char"                 # string offset=662
.Linfo_string42:
	.asciz	"__uint8_t"                     # string offset=676
.Linfo_string43:
	.asciz	"uint8_t"                       # string offset=686
.Linfo_string44:
	.asciz	"lzma_action"                   # string offset=694
.Linfo_string45:
	.asciz	"lzma_code_function"            # string offset=706
.Linfo_string46:
	.asciz	"end"                           # string offset=725
.Linfo_string47:
	.asciz	"lzma_end_function"             # string offset=729
.Linfo_string48:
	.asciz	"get_check"                     # string offset=747
.Linfo_string49:
	.asciz	"lzma_check"                    # string offset=757
.Linfo_string50:
	.asciz	"memconfig"                     # string offset=768
.Linfo_string51:
	.asciz	"update"                        # string offset=778
.Linfo_string52:
	.asciz	"options"                       # string offset=785
.Linfo_string53:
	.asciz	"lzma_filter"                   # string offset=793
.Linfo_string54:
	.asciz	"lzma_next_coder_s"             # string offset=805
.Linfo_string55:
	.asciz	"lzma_next_coder"               # string offset=823
.Linfo_string56:
	.asciz	"__uint32_t"                    # string offset=839
.Linfo_string57:
	.asciz	"uint32_t"                      # string offset=850
.Linfo_string58:
	.asciz	"lzma_next_end"                 # string offset=859
.Linfo_string59:
	.asciz	"lzma_stream_buffer_decode"     # string offset=873
.Linfo_string60:
	.asciz	"stream_decoder"                # string offset=899
.Linfo_string61:
	.asciz	"memusage"                      # string offset=914
.Linfo_string62:
	.asciz	"memlimit"                      # string offset=923
.Linfo_string63:
	.asciz	"flags"                         # string offset=932
.Linfo_string64:
	.asciz	"allocator"                     # string offset=938
.Linfo_string65:
	.asciz	"in"                            # string offset=948
.Linfo_string66:
	.asciz	"in_pos"                        # string offset=951
.Linfo_string67:
	.asciz	"in_size"                       # string offset=958
.Linfo_string68:
	.asciz	"out"                           # string offset=966
.Linfo_string69:
	.asciz	"out_pos"                       # string offset=970
.Linfo_string70:
	.asciz	"out_size"                      # string offset=978
.Linfo_string71:
	.asciz	"ret"                           # string offset=987
.Linfo_string72:
	.asciz	"in_start"                      # string offset=991
.Linfo_string73:
	.asciz	"out_start"                     # string offset=1000
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp17
	.quad	.Ltmp32
	.quad	.Ltmp13
	.quad	.Ltmp23
	.quad	.Ltmp34
	.quad	.Ltmp38
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
