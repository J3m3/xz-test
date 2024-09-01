	.text
	.file	"spec.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "spec.c" md5 0xd78d7e82cc4121814f31761ecc6ce2c6
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.loc	0 25 0                          # spec.c:25:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: main:argc <- $edi
	#DEBUG_VALUE: main:argv <- $rsi
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movl	%edi, %r14d
.Ltmp0:
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- 0
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_name <- 0
	#DEBUG_VALUE: main:sha <- 0
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- 0
	.loc	0 40 34 prologue_end            # spec.c:40:34
	movl	$64, %edi
.Ltmp1:
	#DEBUG_VALUE: main:argc <- $r14d
	callq	malloc@PLT
.Ltmp2:
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:check_sha <- $rax
	.loc	0 0 34 is_stmt 0                # spec.c:0:34
	movq	%rax, 24(%rsp)                  # 8-byte Spill
.Ltmp3:
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 41 19 is_stmt 1               # spec.c:41:19
	testq	%rax, %rax
.Ltmp4:
	.loc	0 41 9 is_stmt 0                # spec.c:41:9
	je	.LBB0_39
.Ltmp5:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- 0
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_name <- 0
	#DEBUG_VALUE: main:sha <- 0
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 9                           # spec.c:0:9
	movq	$-1, (%rsp)                     # 8-byte Folded Spill
	xorl	%ebx, %ebx
.Ltmp6:
	.loc	0 47 14 is_stmt 1               # spec.c:47:14
	cmpl	$2, %r14d
.Ltmp7:
	.loc	0 47 9 is_stmt 0                # spec.c:47:9
	jl	.LBB0_7
.Ltmp8:
# %bb.2:                                # %if.end4
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- 0
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_name <- 0
	#DEBUG_VALUE: main:sha <- 0
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 47 37                         # spec.c:47:37
	movq	8(%r13), %rbp
.Ltmp9:
	#DEBUG_VALUE: main:input_name <- $rbp
	.loc	0 0 37                          # spec.c:0:37
	xorl	%ebx, %ebx
.Ltmp10:
	.loc	0 48 14 is_stmt 1               # spec.c:48:14
	cmpl	$2, %r14d
.Ltmp11:
	.loc	0 48 9 is_stmt 0                # spec.c:48:9
	je	.LBB0_8
.Ltmp12:
# %bb.3:                                # %if.end9
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- 0
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_name <- $rbp
	#DEBUG_VALUE: main:sha <- 0
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 48 44                         # spec.c:48:44
	movq	16(%r13), %rdi
	xorl	%ebx, %ebx
	.loc	0 48 37                         # spec.c:48:37
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
.Ltmp13:
	movq	%rax, %r12
.Ltmp14:
	#DEBUG_VALUE: main:input_size <- $r12
	.loc	0 49 14 is_stmt 1               # spec.c:49:14
	cmpl	$4, %r14d
.Ltmp15:
	.loc	0 49 9 is_stmt 0                # spec.c:49:9
	jb	.LBB0_9
.Ltmp16:
# %bb.4:                                # %if.then11
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- $r12
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_name <- $rbp
	#DEBUG_VALUE: main:sha <- 0
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 50 18 is_stmt 1               # spec.c:50:18
	movq	24(%r13), %rbx
	.loc	0 50 11 is_stmt 0               # spec.c:50:11
	movq	%rbx, %rdi
	callq	strlen@PLT
.Ltmp17:
	.loc	0 0 11                          # spec.c:0:11
	movabsq	$4611686018427387903, %rcx      # imm = 0x3FFFFFFFFFFFFFFF
	.loc	0 50 31                         # spec.c:50:31
	andq	%rax, %rcx
	cmpq	$128, %rcx
.Ltmp18:
	.loc	0 50 11                         # spec.c:50:11
	jne	.LBB0_42
.Ltmp19:
# %bb.5:                                # %if.end23
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- $r12
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_name <- $rbp
	#DEBUG_VALUE: main:sha <- 0
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 54 37 is_stmt 1               # spec.c:54:37
	movq	%rbx, %rdi
	movl	$512, %esi                      # imm = 0x200
	callq	sum_str_to_hex@PLT
.Ltmp20:
	movq	%rax, %rbx
.Ltmp21:
	#DEBUG_VALUE: main:sha <- $rbx
	.loc	0 56 14                         # spec.c:56:14
	cmpl	$4, %r14d
.Ltmp22:
	.loc	0 56 9 is_stmt 0                # spec.c:56:9
	je	.LBB0_9
.Ltmp23:
# %bb.34:                               # %if.end29
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- $r12
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_name <- $rbp
	#DEBUG_VALUE: main:sha <- $rbx
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 56 44                         # spec.c:56:44
	movq	32(%r13), %rdi
	.loc	0 56 37                         # spec.c:56:37
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
.Ltmp24:
	movq	%rax, %r15
.Ltmp25:
	#DEBUG_VALUE: main:compressed_min <- $r15
	.loc	0 57 14 is_stmt 1               # spec.c:57:14
	cmpl	$6, %r14d
	movq	%rax, (%rsp)                    # 8-byte Spill
.Ltmp26:
	.loc	0 57 9 is_stmt 0                # spec.c:57:9
	jb	.LBB0_10
.Ltmp27:
# %bb.35:                               # %if.end35
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- $r12
	#DEBUG_VALUE: main:compressed_min <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_name <- $rbp
	#DEBUG_VALUE: main:sha <- $rbx
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 57 44                         # spec.c:57:44
	movq	40(%r13), %rdi
	.loc	0 57 37                         # spec.c:57:37
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
.Ltmp28:
	#DEBUG_VALUE: main:compressed_max <- $rax
	.loc	0 58 24 is_stmt 1               # spec.c:58:24
	testq	%rax, %rax
.Ltmp29:
	.loc	0 58 9 is_stmt 0                # spec.c:58:9
	cmovnsq	%rax, %r15
	jmp	.LBB0_10
.Ltmp30:
.LBB0_7:
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- 0
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_name <- 0
	#DEBUG_VALUE: main:sha <- 0
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 9                           # spec.c:0:9
	xorl	%ebp, %ebp
.Ltmp31:
.LBB0_8:
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- 0
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:sha <- 0
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	xorl	%r12d, %r12d
.Ltmp32:
.LBB0_9:                                # %if.end35.thread
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	movq	$-1, %r15
.Ltmp33:
.LBB0_10:                               # %if.end35.thread
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:compressed_max <- $r15
	cmpl	$6, %r14d
.Ltmp34:
	.loc	0 61 28 is_stmt 1               # spec.c:61:28
	jl	.LBB0_40
.Ltmp35:
# %bb.11:                               # %if.end35.thread
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:compressed_max <- $r15
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	testq	%rbp, %rbp
	je	.LBB0_40
.Ltmp36:
# %bb.12:                               # %if.end35.thread
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:compressed_max <- $r15
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	testq	%r12, %r12
	jle	.LBB0_40
.Ltmp37:
# %bb.13:                               # %if.end35.thread
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:compressed_max <- $r15
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	testq	%rbx, %rbx
	je	.LBB0_40
.Ltmp38:
# %bb.14:                               # %if.end35.thread
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:compressed_max <- $r15
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB0_40
.Ltmp39:
# %bb.15:                               # %if.end35.thread
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:compressed_max <- $r15
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	testq	%r15, %r15
	je	.LBB0_40
.Ltmp40:
# %bb.16:                               # %if.end59
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:compressed_max <- $r15
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 28 is_stmt 0                # spec.c:0:28
	movq	%r15, 32(%rsp)                  # 8-byte Spill
.Ltmp41:
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 65 5 is_stmt 1                # spec.c:65:5
	movl	$.L.str.3, %edi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp42:
	.loc	0 67 15                         # spec.c:67:15
	movl	$3, %edi
	callq	spec_mem_alloc_fds@PLT
.Ltmp43:
	.loc	0 67 13 is_stmt 0               # spec.c:67:13
	movq	spec_fd@GOTPCREL(%rip), %r15
	movq	%rax, (%r15)
.Ltmp44:
	.loc	0 68 17 is_stmt 1               # spec.c:68:17
	testq	%rax, %rax
.Ltmp45:
	.loc	0 68 9 is_stmt 0                # spec.c:68:9
	je	.LBB0_41
.Ltmp46:
# %bb.17:                               # %if.end66
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 9                           # spec.c:0:9
	movq	%r12, %rcx
.Ltmp47:
	.loc	0 76 20 is_stmt 1               # spec.c:76:20
	shlq	$20, %r12
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	.loc	0 76 26 is_stmt 0               # spec.c:76:26
	cmpq	$254, %rcx
	movl	$266338304, %ecx                # imm = 0xFE00000
.Ltmp48:
	.loc	0 76 9                          # spec.c:76:9
	cmovaeq	%r12, %rcx
.Ltmp49:
	.loc	0 0 0                           # spec.c:0:0
	movq	%rcx, 40(%rax)
	movq	%rcx, (%rax)
.Ltmp50:
	.loc	0 81 5 is_stmt 1                # spec.c:81:5
	movq	(%r15), %rdi
	movl	$3, %esi
	movl	$1, %edx
	callq	spec_mem_init@PLT
.Ltmp51:
	.loc	0 83 5                          # spec.c:83:5
	callq	debug_time@PLT
.Ltmp52:
	.loc	0 84 5                          # spec.c:84:5
	movl	$.Lstr, %edi
	callq	puts@PLT
.Ltmp53:
	.loc	0 85 17                         # spec.c:85:17
	movq	(%r15), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	movq	%r12, %r8
	movl	$1, %r9d
	pushq	$512                            # imm = 0x200
.Ltmp54:
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	spec_mem_load@PLT
.Ltmp55:
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	%rax, 16(%rsp)                  # 8-byte Spill
.Ltmp56:
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 86 56                         # spec.c:86:56
	movq	(%r15), %rax
	.loc	0 86 67 is_stmt 0               # spec.c:86:67
	movq	8(%rax), %rsi
	.loc	0 86 5                          # spec.c:86:5
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp57:
	.loc	0 95 41 is_stmt 1               # spec.c:95:41
	movq	(%r15), %rax
	.loc	0 95 57 is_stmt 0               # spec.c:95:57
	movl	$1, 104(%rax)
	.loc	0 95 39                         # spec.c:95:39
	movl	$1, 64(%rax)
	.loc	0 95 21                         # spec.c:95:21
	movl	$1, 24(%rax)
	.loc	0 97 5 is_stmt 1                # spec.c:97:5
	xorl	%eax, %eax
	callq	spec_initbufs@PLT
.Ltmp58:
	#DEBUG_VALUE: main:i <- 6
	.loc	0 100 18                        # spec.c:100:18
	cmpl	$7, %r14d
.Ltmp59:
	.loc	0 100 5 is_stmt 0               # spec.c:100:5
	jb	.LBB0_32
.Ltmp60:
# %bb.18:                               # %for.body.lr.ph
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 6
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 100 18                        # spec.c:100:18
	movl	%r14d, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	$6, %r12d
	movq	%r13, 8(%rsp)                   # 8-byte Spill
.Ltmp61:
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
.LBB0_19:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:i <- $r12
	.loc	0 102 17 is_stmt 1              # spec.c:102:17
	movq	(%r13,%r12,8), %rsi
	movzbl	(%rsi), %ebp
.Ltmp62:
	#DEBUG_VALUE: main:level <- [DW_OP_LLVM_convert 8 5, DW_OP_LLVM_convert 32 5, DW_OP_constu 48, DW_OP_minus, DW_OP_stack_value] $bpl
	#DEBUG_VALUE: main:extreme <- undef
	.loc	0 108 23                        # spec.c:108:23
	leal	-58(%rbp), %eax
	cmpb	$-11, %al
	jbe	.LBB0_36
.Ltmp63:
# %bb.20:                               # %if.end118
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- [DW_OP_LLVM_convert 8 5, DW_OP_LLVM_convert 32 5, DW_OP_constu 48, DW_OP_minus, DW_OP_stack_value] $bpl
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 103 24                        # spec.c:103:24
	xorl	%r13d, %r13d
	cmpb	$101, 1(%rsi)
	sete	%r13b
.Ltmp64:
	.loc	0 115 63                        # spec.c:115:63
	movl	$.L.str.10, %ebx
	movl	$.L.str.9, %eax
	cmoveq	%rax, %rbx
	shll	$31, %r13d
.Ltmp65:
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:level <- [DW_OP_constu 48, DW_OP_minus, DW_OP_stack_value] $ebp
	.loc	0 102 28                        # spec.c:102:28
	leal	-48(%rbp), %r14d
.Ltmp66:
	#DEBUG_VALUE: main:level <- $r14d
	.loc	0 114 9                         # spec.c:114:9
	callq	debug_time@PLT
.Ltmp67:
	.loc	0 115 9                         # spec.c:115:9
	movl	$.L.str.8, %edi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp68:
	.loc	0 117 34                        # spec.c:117:34
	leal	-48(%r13,%rbp), %edx
	.loc	0 117 9 is_stmt 0               # spec.c:117:9
	xorl	%edi, %edi
	movl	$1, %esi
	callq	spec_compress@PLT
.Ltmp69:
	.loc	0 119 9 is_stmt 1               # spec.c:119:9
	callq	debug_time@PLT
.Ltmp70:
	.loc	0 120 17                        # spec.c:120:17
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 120 74 is_stmt 0              # spec.c:120:74
	movq	(%r15), %rax
	.loc	0 120 85                        # spec.c:120:85
	movq	48(%rax), %rdx
	.loc	0 120 9                         # spec.c:120:9
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp71:
	.loc	0 0 9                           # spec.c:0:9
	movq	(%rsp), %rdx                    # 8-byte Reload
	testq	%rdx, %rdx
	.loc	0 121 13 is_stmt 1              # spec.c:121:13
	jle	.LBB0_30
.Ltmp72:
# %bb.21:                               # %if.then127
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 122 15                        # spec.c:122:15
	movq	(%r15), %rax
	.loc	0 122 26 is_stmt 0              # spec.c:122:26
	movq	48(%rax), %rsi
	.loc	0 122 30                        # spec.c:122:30
	cmpq	%rdx, %rsi
	movq	32(%rsp), %rax                  # 8-byte Reload
	.loc	0 122 48                        # spec.c:122:48
	jl	.LBB0_25
.Ltmp73:
# %bb.22:                               # %if.then127
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	cmpq	%rax, %rsi
	jg	.LBB0_25
.Ltmp74:
# %bb.23:                               # %if.then136
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 48                          # spec.c:0:48
	cmpq	%rax, %rdx
.Ltmp75:
	.loc	0 123 17 is_stmt 1              # spec.c:123:17
	jne	.LBB0_28
.Ltmp76:
# %bb.24:                               # %if.then139
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 124 15                        # spec.c:124:15
	movl	$.L.str.12, %edi
	movq	%rdx, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp77:
	jmp	.LBB0_30
.Ltmp78:
	.p2align	4, 0x90
.LBB0_25:                               # %if.else144
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 15 is_stmt 0                # spec.c:0:15
	cmpq	%rax, %rdx
.Ltmp79:
	.loc	0 130 17 is_stmt 1              # spec.c:130:17
	jne	.LBB0_27
.Ltmp80:
# %bb.26:                               # %if.then147
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 131 15                        # spec.c:131:15
	movl	$.L.str.14, %edi
	jmp	.LBB0_29
.Ltmp81:
.LBB0_27:                               # %if.else151
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 134 15                        # spec.c:134:15
	movl	$.L.str.15, %edi
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp82:
	.loc	0 0 15 is_stmt 0                # spec.c:0:15
	jmp	.LBB0_30
.Ltmp83:
.LBB0_28:                               # %if.else141
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 127 15 is_stmt 1              # spec.c:127:15
	movl	$.L.str.13, %edi
	movq	%rdx, %rsi
	movq	%rax, %rdx
.Ltmp84:
.LBB0_29:                               # %if.end157
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 0 is_stmt 0                 # spec.c:0:0
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp85:
.LBB0_30:                               # %if.end157
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 138 9 is_stmt 1               # spec.c:138:9
	movl	$.Lstr.25, %edi
	callq	puts@PLT
.Ltmp86:
	.loc	0 150 9                         # spec.c:150:9
	movq	(%r15), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	spec_mem_reset@PLT
.Ltmp87:
	.loc	0 151 9                         # spec.c:151:9
	movq	(%r15), %rdi
	movl	$3, %esi
	movl	$1, %edx
	callq	spec_mem_rewind@PLT
.Ltmp88:
	.loc	0 153 9                         # spec.c:153:9
	callq	debug_time@PLT
.Ltmp89:
	.loc	0 154 9                         # spec.c:154:9
	movl	$.Lstr.26, %edi
	callq	puts@PLT
.Ltmp90:
	.loc	0 155 9                         # spec.c:155:9
	movl	$1, %edi
	xorl	%esi, %esi
	callq	spec_uncompress@PLT
.Ltmp91:
	.loc	0 156 9                         # spec.c:156:9
	callq	debug_time@PLT
.Ltmp92:
	.loc	0 157 67                        # spec.c:157:67
	movq	(%r15), %rax
	.loc	0 157 78 is_stmt 0              # spec.c:157:78
	movq	8(%rax), %rsi
	.loc	0 157 9                         # spec.c:157:9
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp93:
	.loc	0 169 9 is_stmt 1               # spec.c:169:9
	movq	(%r15), %rdi
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rsi
	movl	$512, %edx                      # imm = 0x200
	callq	spec_mem_sum@PLT
.Ltmp94:
	.loc	0 0 9 is_stmt 0                 # spec.c:0:9
	movq	16(%rsp), %rdi                  # 8-byte Reload
.Ltmp95:
	.loc	0 170 13 is_stmt 1              # spec.c:170:13
	movq	%rbx, %rsi
	movl	$512, %edx                      # imm = 0x200
	callq	compare_sum@PLT
.Ltmp96:
	testl	%eax, %eax
.Ltmp97:
	.loc	0 170 13 is_stmt 0              # spec.c:170:13
	jne	.LBB0_38
.Ltmp98:
# %bb.31:                               # %if.end176
                                        #   in Loop: Header=BB0_19 Depth=1
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 180 9 is_stmt 1               # spec.c:180:9
	callq	debug_time@PLT
.Ltmp99:
	.loc	0 181 9                         # spec.c:181:9
	movl	$.Lstr.27, %edi
	callq	puts@PLT
.Ltmp100:
	.loc	0 182 9                         # spec.c:182:9
	movq	(%r15), %rdi
	movl	$3, %esi
	movl	$1, %edx
	callq	spec_mem_reset@PLT
.Ltmp101:
	.loc	0 183 9                         # spec.c:183:9
	movq	(%r15), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	spec_mem_rewind@PLT
.Ltmp102:
	.loc	0 184 9                         # spec.c:184:9
	movl	$.L.str.24, %edi
	movq	48(%rsp), %rsi                  # 8-byte Reload
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp103:
	.loc	0 185 16                        # spec.c:185:16
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 185 9 is_stmt 0               # spec.c:185:9
	callq	fflush@PLT
.Ltmp104:
	.loc	0 100 27 is_stmt 1              # spec.c:100:27
	incq	%r12
.Ltmp105:
	#DEBUG_VALUE: main:i <- $r12
	.loc	0 100 18 is_stmt 0              # spec.c:100:18
	cmpq	%r12, 40(%rsp)                  # 8-byte Folded Reload
	movq	8(%rsp), %r13                   # 8-byte Reload
.Ltmp106:
	.loc	0 100 5                         # spec.c:100:5
	jne	.LBB0_19
.Ltmp107:
.LBB0_32:                               # %for.end
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 188 5 is_stmt 1               # spec.c:188:5
	xorl	%eax, %eax
	.loc	0 188 5 epilogue_begin is_stmt 0 # spec.c:188:5
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp108:
	#DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp109:
.LBB0_36:                               # %if.then112
	.cfi_def_cfa_offset 112
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- [DW_OP_LLVM_convert 8 5, DW_OP_LLVM_convert 32 5, DW_OP_constu 48, DW_OP_minus, DW_OP_stack_value] $bpl
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 109 13 is_stmt 1              # spec.c:109:13
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp110:
	.loc	0 0 13 is_stmt 0                # spec.c:0:13
	movq	8(%rsp), %rax                   # 8-byte Reload
	.loc	0 110 151 is_stmt 1             # spec.c:110:151
	movq	(%rax), %rsi
.Ltmp111:
.LBB0_37:                               # %if.then56
	#DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 0 is_stmt 0                 # spec.c:0:0
	movl	$.L.str.2, %edi
	movl	$512, %edx                      # imm = 0x200
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp112:
	movl	$1, %edi
	callq	exit@PLT
.Ltmp113:
.LBB0_38:                               # %if.then170
	#DEBUG_VALUE: main:argc <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: main:argv <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: main:level <- $r14d
	#DEBUG_VALUE: main:i <- $r12
	#DEBUG_VALUE: main:extreme <- $r13d
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 171 13 is_stmt 1              # spec.c:171:13
	movl	$.L.str.19, %edi
	movl	$512, %esi                      # imm = 0x200
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp114:
	.loc	0 172 13                        # spec.c:172:13
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp115:
	.loc	0 0 13 is_stmt 0                # spec.c:0:13
	movq	stdout@GOTPCREL(%rip), %rbx
	.loc	0 173 23 is_stmt 1              # spec.c:173:23
	movq	(%rbx), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	.loc	0 173 13 is_stmt 0              # spec.c:173:13
	movl	$512, %edx                      # imm = 0x200
	callq	print_sum@PLT
.Ltmp116:
	.loc	0 174 13 is_stmt 1              # spec.c:174:13
	movl	$10, %edi
	callq	putchar@PLT
.Ltmp117:
	.loc	0 175 13                        # spec.c:175:13
	movl	$.L.str.22, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp118:
	.loc	0 176 23                        # spec.c:176:23
	movq	(%rbx), %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	.loc	0 176 13 is_stmt 0              # spec.c:176:13
	movl	$512, %edx                      # imm = 0x200
	callq	print_sum@PLT
.Ltmp119:
	.loc	0 177 13 is_stmt 1              # spec.c:177:13
	movl	$10, %edi
	callq	putchar@PLT
.Ltmp120:
	.loc	0 178 13                        # spec.c:178:13
	xorl	%edi, %edi
	callq	exit@PLT
.Ltmp121:
.LBB0_39:                               # %if.then
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- 0
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_name <- 0
	#DEBUG_VALUE: main:sha <- 0
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 42 9                          # spec.c:42:9
	movl	$.L.str, %edi
	movl	$512, %esi                      # imm = 0x200
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp122:
	.loc	0 43 9                          # spec.c:43:9
	movl	$1, %edi
	callq	exit@PLT
.Ltmp123:
.LBB0_40:                               # %if.then56
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:compressed_max <- $r15
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 62 147                        # spec.c:62:147
	movq	(%r13), %rsi
	jmp	.LBB0_37
.Ltmp124:
.LBB0_41:                               # %if.then64
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:compressed_max <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 69 17                         # spec.c:69:17
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 69 9 is_stmt 0                # spec.c:69:9
	movl	$.L.str.4, %edi
	movl	$44, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp125:
	.loc	0 70 9 is_stmt 1                # spec.c:70:9
	movl	$1, %edi
	callq	exit@PLT
.Ltmp126:
.LBB0_42:                               # %if.then15
	#DEBUG_VALUE: main:argc <- $r14d
	#DEBUG_VALUE: main:argv <- $r13
	#DEBUG_VALUE: main:level <- 0
	#DEBUG_VALUE: main:i <- 0
	#DEBUG_VALUE: main:extreme <- 0
	#DEBUG_VALUE: main:input_size <- $r12
	#DEBUG_VALUE: main:compressed_min <- -1
	#DEBUG_VALUE: main:compressed_max <- -1
	#DEBUG_VALUE: main:input_name <- $rbp
	#DEBUG_VALUE: main:sha <- 0
	#DEBUG_VALUE: main:input_sha <- 0
	#DEBUG_VALUE: main:check_sha <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 51 17                         # spec.c:51:17
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 51 9 is_stmt 0                # spec.c:51:9
	movl	$.L.str.1, %esi
	movl	$512, %edx                      # imm = 0x200
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp127:
	.loc	0 52 9 is_stmt 1                # spec.c:52:9
	movl	$1, %edi
	callq	exit@PLT
.Ltmp128:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.file	1 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
	.file	2 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	3 "/usr/include" "string.h" md5 0xf443da8025a0b7c1498fb6c554ec788d
	.file	4 "spec_mem_io" "spec_mem_io.h" md5 0x20f82235716911ab040d2b344ceb3e0d
	.file	5 "/usr/include" "stdio.h" md5 0xf31eefcc3f15835fc5a4023a625cf609
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	7 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.file	8 "/usr/include/x86_64-linux-gnu/bits/types" "struct_FILE.h" md5 0x1bad07471b7974df4ecc1d1c2ca207e6
	.file	9 "/usr/include/x86_64-linux-gnu/bits/types" "FILE.h" md5 0x571f9fb6223c42439075fdde11a0de5d
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"main: Error mallocing memory for SHA-%d sum!\n"
	.size	.L.str, 46

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error: Supplied original hash value is not the correct length to be SHA-%d\n"
	.size	.L.str.1, 76

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Usage: %s <input filename> <input size> <input raw SHA-%d> <compressed minimum> <compressed maximum> <compression level, ...>\n"
	.size	.L.str.2, 127

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"SPEC CPU XZ driver: input=%s insize=%ld\n"
	.size	.L.str.3, 41

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Error allocating in-memory file descriptors\n"
	.size	.L.str.4, 45

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Input data %ld bytes in length\n"
	.size	.L.str.6, 32

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Error: compression level '%s' is not valid\n"
	.size	.L.str.7, 44

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Compressing Input Data, level %d%s\n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" (extreme)"
	.size	.L.str.9, 11

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.zero	1
	.size	.L.str.10, 1

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Compressed data %ld bytes in length\n"
	.size	.L.str.11, 37

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Compressed data length is %ld bytes in length\n"
	.size	.L.str.12, 47

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Compressed data is between %ld and %ld bytes in length\n"
	.size	.L.str.13, 56

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Compressed data length of %ld does not match expected length of %ld bytes\n"
	.size	.L.str.14, 75

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Compressed data length of %ld is outside the allowable range of %ld to %ld bytes\n"
	.size	.L.str.15, 82

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Uncompressed data %ld bytes in length\n"
	.size	.L.str.18, 39

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Computed SHA-%d sum for decompression step did not match expected\n"
	.size	.L.str.19, 67

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"  Generated: "
	.size	.L.str.20, 14

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"   Expected: "
	.size	.L.str.22, 14

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Tested %ld MiB buffer: OK!\n"
	.size	.L.str.24, 28

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Loading Input Data"
	.size	.Lstr, 19

	.type	.Lstr.25,@object                # @str.25
.Lstr.25:
	.asciz	"Finished compressing data"
	.size	.Lstr.25, 26

	.type	.Lstr.26,@object                # @str.26
.Lstr.26:
	.asciz	"Uncompressing previously compressed data"
	.size	.Lstr.26, 41

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"Uncompressed data compared correctly"
	.size	.Lstr.27, 37

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
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	20                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 255
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	16                              # DW_OP_constu
	.byte	48                              # 48
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	16                              # DW_OP_constu
	.byte	48                              # 48
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 255
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	16                              # DW_OP_constu
	.byte	48                              # 48
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
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
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
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
	.byte	15                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	24                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\207\001"                      # DW_AT_noreturn
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
	.byte	1                               # Abbrev [1] 0xc:0x73f DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	20                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0x4 DW_TAG_base_type
	.byte	79                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	78                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x2f:0xa DW_TAG_variable
	.long	57                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x39:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x3e:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	46                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x45:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x49:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	3                               # Abbrev [3] 0x4d:0xa DW_TAG_variable
	.long	87                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	4                               # Abbrev [4] 0x57:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x5c:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	76                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x63:0xa DW_TAG_variable
	.long	109                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	4                               # Abbrev [4] 0x6d:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x72:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	127                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x79:0xa DW_TAG_variable
	.long	131                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	4                               # Abbrev [4] 0x83:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x88:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	41                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x8f:0xa DW_TAG_variable
	.long	153                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	4                               # Abbrev [4] 0x99:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x9e:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	45                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xa5:0x7 DW_TAG_variable
	.long	172                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xac:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xb1:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xb8:0xa DW_TAG_variable
	.long	194                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	4                               # Abbrev [4] 0xc2:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc7:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xce:0xa DW_TAG_variable
	.long	216                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	4                               # Abbrev [4] 0xd8:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xdd:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	44                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xe4:0xa DW_TAG_variable
	.long	238                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	4                               # Abbrev [4] 0xee:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xf3:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	36                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xfa:0xa DW_TAG_variable
	.long	260                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	4                               # Abbrev [4] 0x104:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x109:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	11                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x110:0xa DW_TAG_variable
	.long	282                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	9
	.byte	4                               # Abbrev [4] 0x11a:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x11f:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x126:0xa DW_TAG_variable
	.long	304                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	10
	.byte	4                               # Abbrev [4] 0x130:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x135:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	37                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x13c:0xa DW_TAG_variable
	.long	326                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	11
	.byte	4                               # Abbrev [4] 0x146:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x14b:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	47                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x152:0xa DW_TAG_variable
	.long	348                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	12
	.byte	4                               # Abbrev [4] 0x15c:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x161:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	56                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x168:0xa DW_TAG_variable
	.long	370                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	13
	.byte	4                               # Abbrev [4] 0x172:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x177:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	75                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x17e:0xa DW_TAG_variable
	.long	392                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	14
	.byte	4                               # Abbrev [4] 0x188:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x18d:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	82                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x194:0x7 DW_TAG_variable
	.long	411                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x19b:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1a0:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	27                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1a7:0x7 DW_TAG_variable
	.long	430                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1ae:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1b3:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	42                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x1ba:0xa DW_TAG_variable
	.long	452                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	15
	.byte	4                               # Abbrev [4] 0x1c4:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1c9:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	39                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x1d0:0xa DW_TAG_variable
	.long	474                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	16
	.byte	4                               # Abbrev [4] 0x1da:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1df:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	67                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x1e6:0xa DW_TAG_variable
	.long	496                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	17
	.byte	4                               # Abbrev [4] 0x1f0:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1f5:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	14                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1fc:0x7 DW_TAG_variable
	.long	515                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x203:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x208:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x20f:0xa DW_TAG_variable
	.long	496                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	18
	.byte	7                               # Abbrev [7] 0x219:0x7 DW_TAG_variable
	.long	544                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x220:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x225:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	38                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x22c:0xa DW_TAG_variable
	.long	566                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	19
	.byte	4                               # Abbrev [4] 0x236:0xc DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x23b:0x6 DW_TAG_subrange_type
	.long	73                              # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x242:0x5 DW_TAG_pointer_type
	.long	583                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0x247:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x24b:0x1 DW_TAG_pointer_type
	.byte	10                              # Abbrev [10] 0x24c:0x1a0 DW_TAG_subprogram
	.byte	20                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\220\177"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1089                            # DW_AT_type
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x25f:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	1089                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x268:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	1079                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x271:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	1089                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x27a:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	1089                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x283:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	1236                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x28c:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	1220                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x295:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	1220                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x29e:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	1220                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2a7:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	1084                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2b0:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	578                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2b9:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	578                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2c2:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	578                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2cb:0x6 DW_TAG_call_site
	.long	1004                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x2d1:0x6 DW_TAG_call_site
	.long	1031                            # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x2d7:0x6 DW_TAG_call_site
	.long	1093                            # DW_AT_call_origin
	.byte	23                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x2dd:0x6 DW_TAG_call_site
	.long	1108                            # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x2e3:0x6 DW_TAG_call_site
	.long	1031                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x2e9:0x6 DW_TAG_call_site
	.long	1031                            # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x2ef:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x2f5:0x6 DW_TAG_call_site
	.long	1143                            # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x2fb:0x6 DW_TAG_call_site
	.long	1240                            # DW_AT_call_origin
	.byte	29                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x301:0x6 DW_TAG_call_site
	.long	1264                            # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x307:0x6 DW_TAG_call_site
	.long	1272                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x30d:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	32                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x313:0x6 DW_TAG_call_site
	.long	1321                            # DW_AT_call_origin
	.byte	33                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x319:0x6 DW_TAG_call_site
	.long	1264                            # DW_AT_call_origin
	.byte	34                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x31f:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x325:0x6 DW_TAG_call_site
	.long	1325                            # DW_AT_call_origin
	.byte	36                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x32b:0x6 DW_TAG_call_site
	.long	1264                            # DW_AT_call_origin
	.byte	37                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x331:0x6 DW_TAG_call_site
	.long	1345                            # DW_AT_call_origin
	.byte	38                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x337:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	39                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x33d:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x343:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x349:0x6 DW_TAG_call_site
	.long	1710                            # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x34f:0x6 DW_TAG_call_site
	.long	1734                            # DW_AT_call_origin
	.byte	43                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x355:0x6 DW_TAG_call_site
	.long	1264                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x35b:0x6 DW_TAG_call_site
	.long	1758                            # DW_AT_call_origin
	.byte	45                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x361:0x6 DW_TAG_call_site
	.long	1264                            # DW_AT_call_origin
	.byte	46                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x367:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	47                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x36d:0x6 DW_TAG_call_site
	.long	1773                            # DW_AT_call_origin
	.byte	48                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x373:0x6 DW_TAG_call_site
	.long	1797                            # DW_AT_call_origin
	.byte	49                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x379:0x6 DW_TAG_call_site
	.long	1264                            # DW_AT_call_origin
	.byte	50                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x37f:0x6 DW_TAG_call_site
	.long	1710                            # DW_AT_call_origin
	.byte	51                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x385:0x6 DW_TAG_call_site
	.long	1734                            # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x38b:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	53                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x391:0x6 DW_TAG_call_site
	.long	1821                            # DW_AT_call_origin
	.byte	54                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x397:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	55                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x39d:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	56                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3a3:0x6 DW_TAG_call_site
	.long	1835                            # DW_AT_call_origin
	.byte	57                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3a9:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	58                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3af:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	59                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3b5:0x6 DW_TAG_call_site
	.long	1846                            # DW_AT_call_origin
	.byte	60                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3bb:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	61                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3c1:0x6 DW_TAG_call_site
	.long	1846                            # DW_AT_call_origin
	.byte	62                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3c7:0x6 DW_TAG_call_site
	.long	1835                            # DW_AT_call_origin
	.byte	63                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3cd:0x6 DW_TAG_call_site
	.long	1127                            # DW_AT_call_origin
	.byte	64                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3d3:0x6 DW_TAG_call_site
	.long	1835                            # DW_AT_call_origin
	.byte	65                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3d9:0x6 DW_TAG_call_site
	.long	1835                            # DW_AT_call_origin
	.byte	66                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3df:0x6 DW_TAG_call_site
	.long	1345                            # DW_AT_call_origin
	.byte	67                              # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x3e5:0x6 DW_TAG_call_site
	.long	1835                            # DW_AT_call_origin
	.byte	68                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x3ec:0xf DW_TAG_subprogram
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	587                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x3f5:0x5 DW_TAG_formal_parameter
	.long	1019                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x3fb:0x8 DW_TAG_typedef
	.long	1027                            # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x403:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x407:0x18 DW_TAG_subprogram
	.byte	9                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1055                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x40f:0x5 DW_TAG_formal_parameter
	.long	1059                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x414:0x5 DW_TAG_formal_parameter
	.long	1074                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x419:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x41f:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x423:0x5 DW_TAG_restrict_type
	.long	1064                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x428:0x5 DW_TAG_pointer_type
	.long	1069                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x42d:0x5 DW_TAG_const_type
	.long	69                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0x432:0x5 DW_TAG_restrict_type
	.long	1079                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x437:0x5 DW_TAG_pointer_type
	.long	1084                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x43c:0x5 DW_TAG_pointer_type
	.long	69                              # DW_AT_type
	.byte	2                               # Abbrev [2] 0x441:0x4 DW_TAG_base_type
	.byte	11                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0x445:0xf DW_TAG_subprogram
	.byte	12                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	407                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1027                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x44e:0x5 DW_TAG_formal_parameter
	.long	1064                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x454:0x13 DW_TAG_subprogram
	.byte	13                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	578                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x45c:0x5 DW_TAG_formal_parameter
	.long	1084                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x461:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x467:0x10 DW_TAG_subprogram
	.byte	14                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1089                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x470:0x5 DW_TAG_formal_parameter
	.long	1059                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x475:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x477:0xe DW_TAG_subprogram
	.byte	15                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1157                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x47f:0x5 DW_TAG_formal_parameter
	.long	1236                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x485:0x5 DW_TAG_pointer_type
	.long	1162                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x48a:0x8 DW_TAG_typedef
	.long	1170                            # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x492:0x32 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x496:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	1220                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x49f:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	1220                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x4a8:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	1220                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x4b1:0x9 DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	1089                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x4ba:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	578                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x4c4:0x8 DW_TAG_typedef
	.long	1228                            # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x4cc:0x8 DW_TAG_typedef
	.long	1055                            # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x4d4:0x4 DW_TAG_base_type
	.byte	24                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x4d8:0x18 DW_TAG_subprogram
	.byte	25                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1089                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x4e0:0x5 DW_TAG_formal_parameter
	.long	1157                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x4e5:0x5 DW_TAG_formal_parameter
	.long	1236                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x4ea:0x5 DW_TAG_formal_parameter
	.long	1236                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4f0:0x8 DW_TAG_subprogram
	.byte	26                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1089                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0x4f8:0x31 DW_TAG_subprogram
	.byte	27                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	578                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x500:0x5 DW_TAG_formal_parameter
	.long	1157                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x505:0x5 DW_TAG_formal_parameter
	.long	1236                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x50a:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x50f:0x5 DW_TAG_formal_parameter
	.long	1084                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x514:0x5 DW_TAG_formal_parameter
	.long	1220                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x519:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x51e:0x5 DW_TAG_formal_parameter
	.long	578                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x523:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x529:0x4 DW_TAG_subprogram
	.byte	28                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x52d:0x14 DW_TAG_subprogram
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x531:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x536:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x53b:0x5 DW_TAG_formal_parameter
	.long	1236                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x541:0x15 DW_TAG_subprogram
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	350                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1089                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x54a:0x5 DW_TAG_formal_parameter
	.long	1366                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x54f:0x5 DW_TAG_formal_parameter
	.long	1059                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x554:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x556:0x5 DW_TAG_restrict_type
	.long	1371                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x55b:0x5 DW_TAG_pointer_type
	.long	1376                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x560:0x8 DW_TAG_typedef
	.long	1384                            # DW_AT_type
	.byte	69                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x568:0x10b DW_TAG_structure_type
	.byte	68                              # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x56d:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	1089                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x576:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	1084                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x57f:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	1084                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x588:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	1084                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x591:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	1084                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x59a:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	1084                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5a3:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	1084                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5ac:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	1084                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5b5:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	1084                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5be:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	1084                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5c7:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	1084                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5d0:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	1084                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5d9:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	1651                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5e2:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	1658                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5eb:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	1089                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5f4:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	1089                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x5fd:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	1663                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x606:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	1671                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x60f:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	1675                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	130                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x618:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	282                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	131                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x621:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	1679                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x62a:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	1688                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x633:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	1696                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x63c:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	1703                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x645:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	1658                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x64e:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x657:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	1019                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x660:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	1089                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x669:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	172                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x673:0x5 DW_TAG_pointer_type
	.long	1656                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x678:0x2 DW_TAG_structure_type
	.byte	44                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0x67a:0x5 DW_TAG_pointer_type
	.long	1384                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x67f:0x8 DW_TAG_typedef
	.long	1055                            # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x687:0x4 DW_TAG_base_type
	.byte	51                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x68b:0x4 DW_TAG_base_type
	.byte	53                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x68f:0x5 DW_TAG_pointer_type
	.long	1684                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x694:0x4 DW_TAG_typedef
	.byte	56                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x698:0x8 DW_TAG_typedef
	.long	1055                            # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x6a0:0x5 DW_TAG_pointer_type
	.long	1701                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x6a5:0x2 DW_TAG_structure_type
	.byte	60                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0x6a7:0x5 DW_TAG_pointer_type
	.long	1708                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x6ac:0x2 DW_TAG_structure_type
	.byte	62                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	17                              # Abbrev [17] 0x6ae:0x18 DW_TAG_subprogram
	.byte	70                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1089                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x6b6:0x5 DW_TAG_formal_parameter
	.long	1157                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6bb:0x5 DW_TAG_formal_parameter
	.long	1236                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6c0:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x6c6:0x18 DW_TAG_subprogram
	.byte	71                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1089                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x6ce:0x5 DW_TAG_formal_parameter
	.long	1157                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6d3:0x5 DW_TAG_formal_parameter
	.long	1236                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6d8:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x6de:0xf DW_TAG_subprogram
	.byte	72                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x6e2:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6e7:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x6ed:0x18 DW_TAG_subprogram
	.byte	73                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	578                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x6f5:0x5 DW_TAG_formal_parameter
	.long	1157                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6fa:0x5 DW_TAG_formal_parameter
	.long	578                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6ff:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x705:0x18 DW_TAG_subprogram
	.byte	74                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1089                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x70d:0x5 DW_TAG_formal_parameter
	.long	578                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x712:0x5 DW_TAG_formal_parameter
	.long	578                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x717:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x71d:0xe DW_TAG_subprogram
	.byte	75                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1089                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x725:0x5 DW_TAG_formal_parameter
	.long	1371                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x72b:0xb DW_TAG_subprogram
	.byte	76                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	624                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	15                              # Abbrev [15] 0x730:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x736:0x14 DW_TAG_subprogram
	.byte	77                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x73a:0x5 DW_TAG_formal_parameter
	.long	1371                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x73f:0x5 DW_TAG_formal_parameter
	.long	578                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x744:0x5 DW_TAG_formal_parameter
	.long	1089                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	376                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"spec.c"                        # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=112
.Linfo_string3:
	.asciz	"char"                          # string offset=144
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=149
.Linfo_string5:
	.asciz	"unsigned char"                 # string offset=169
.Linfo_string6:
	.asciz	"malloc"                        # string offset=183
.Linfo_string7:
	.asciz	"unsigned long"                 # string offset=190
.Linfo_string8:
	.asciz	"size_t"                        # string offset=204
.Linfo_string9:
	.asciz	"strtol"                        # string offset=211
.Linfo_string10:
	.asciz	"long"                          # string offset=218
.Linfo_string11:
	.asciz	"int"                           # string offset=223
.Linfo_string12:
	.asciz	"strlen"                        # string offset=227
.Linfo_string13:
	.asciz	"sum_str_to_hex"                # string offset=234
.Linfo_string14:
	.asciz	"printf"                        # string offset=249
.Linfo_string15:
	.asciz	"spec_mem_alloc_fds"            # string offset=256
.Linfo_string16:
	.asciz	"limit"                         # string offset=275
.Linfo_string17:
	.asciz	"__int64_t"                     # string offset=281
.Linfo_string18:
	.asciz	"int64_t"                       # string offset=291
.Linfo_string19:
	.asciz	"len"                           # string offset=299
.Linfo_string20:
	.asciz	"pos"                           # string offset=303
.Linfo_string21:
	.asciz	"open"                          # string offset=307
.Linfo_string22:
	.asciz	"buf"                           # string offset=312
.Linfo_string23:
	.asciz	"spec_fd_t"                     # string offset=316
.Linfo_string24:
	.asciz	"unsigned int"                  # string offset=326
.Linfo_string25:
	.asciz	"spec_mem_init"                 # string offset=339
.Linfo_string26:
	.asciz	"debug_time"                    # string offset=353
.Linfo_string27:
	.asciz	"spec_mem_load"                 # string offset=364
.Linfo_string28:
	.asciz	"spec_initbufs"                 # string offset=378
.Linfo_string29:
	.asciz	"spec_compress"                 # string offset=392
.Linfo_string30:
	.asciz	"fprintf"                       # string offset=406
.Linfo_string31:
	.asciz	"_flags"                        # string offset=414
.Linfo_string32:
	.asciz	"_IO_read_ptr"                  # string offset=421
.Linfo_string33:
	.asciz	"_IO_read_end"                  # string offset=434
.Linfo_string34:
	.asciz	"_IO_read_base"                 # string offset=447
.Linfo_string35:
	.asciz	"_IO_write_base"                # string offset=461
.Linfo_string36:
	.asciz	"_IO_write_ptr"                 # string offset=476
.Linfo_string37:
	.asciz	"_IO_write_end"                 # string offset=490
.Linfo_string38:
	.asciz	"_IO_buf_base"                  # string offset=504
.Linfo_string39:
	.asciz	"_IO_buf_end"                   # string offset=517
.Linfo_string40:
	.asciz	"_IO_save_base"                 # string offset=529
.Linfo_string41:
	.asciz	"_IO_backup_base"               # string offset=543
.Linfo_string42:
	.asciz	"_IO_save_end"                  # string offset=559
.Linfo_string43:
	.asciz	"_markers"                      # string offset=572
.Linfo_string44:
	.asciz	"_IO_marker"                    # string offset=581
.Linfo_string45:
	.asciz	"_chain"                        # string offset=592
.Linfo_string46:
	.asciz	"_fileno"                       # string offset=599
.Linfo_string47:
	.asciz	"_flags2"                       # string offset=607
.Linfo_string48:
	.asciz	"_old_offset"                   # string offset=615
.Linfo_string49:
	.asciz	"__off_t"                       # string offset=627
.Linfo_string50:
	.asciz	"_cur_column"                   # string offset=635
.Linfo_string51:
	.asciz	"unsigned short"                # string offset=647
.Linfo_string52:
	.asciz	"_vtable_offset"                # string offset=662
.Linfo_string53:
	.asciz	"signed char"                   # string offset=677
.Linfo_string54:
	.asciz	"_shortbuf"                     # string offset=689
.Linfo_string55:
	.asciz	"_lock"                         # string offset=699
.Linfo_string56:
	.asciz	"_IO_lock_t"                    # string offset=705
.Linfo_string57:
	.asciz	"_offset"                       # string offset=716
.Linfo_string58:
	.asciz	"__off64_t"                     # string offset=724
.Linfo_string59:
	.asciz	"_codecvt"                      # string offset=734
.Linfo_string60:
	.asciz	"_IO_codecvt"                   # string offset=743
.Linfo_string61:
	.asciz	"_wide_data"                    # string offset=755
.Linfo_string62:
	.asciz	"_IO_wide_data"                 # string offset=766
.Linfo_string63:
	.asciz	"_freeres_list"                 # string offset=780
.Linfo_string64:
	.asciz	"_freeres_buf"                  # string offset=794
.Linfo_string65:
	.asciz	"__pad5"                        # string offset=807
.Linfo_string66:
	.asciz	"_mode"                         # string offset=814
.Linfo_string67:
	.asciz	"_unused2"                      # string offset=820
.Linfo_string68:
	.asciz	"_IO_FILE"                      # string offset=829
.Linfo_string69:
	.asciz	"FILE"                          # string offset=838
.Linfo_string70:
	.asciz	"spec_mem_reset"                # string offset=843
.Linfo_string71:
	.asciz	"spec_mem_rewind"               # string offset=858
.Linfo_string72:
	.asciz	"spec_uncompress"               # string offset=874
.Linfo_string73:
	.asciz	"spec_mem_sum"                  # string offset=890
.Linfo_string74:
	.asciz	"compare_sum"                   # string offset=903
.Linfo_string75:
	.asciz	"fflush"                        # string offset=915
.Linfo_string76:
	.asciz	"exit"                          # string offset=922
.Linfo_string77:
	.asciz	"print_sum"                     # string offset=927
.Linfo_string78:
	.asciz	"DW_ATE_signed_32"              # string offset=937
.Linfo_string79:
	.asciz	"DW_ATE_signed_8"               # string offset=954
.Linfo_string80:
	.asciz	"main"                          # string offset=970
.Linfo_string81:
	.asciz	"argc"                          # string offset=975
.Linfo_string82:
	.asciz	"argv"                          # string offset=980
.Linfo_string83:
	.asciz	"level"                         # string offset=985
.Linfo_string84:
	.asciz	"i"                             # string offset=991
.Linfo_string85:
	.asciz	"extreme"                       # string offset=993
.Linfo_string86:
	.asciz	"input_size"                    # string offset=1001
.Linfo_string87:
	.asciz	"compressed_min"                # string offset=1012
.Linfo_string88:
	.asciz	"compressed_max"                # string offset=1027
.Linfo_string89:
	.asciz	"input_name"                    # string offset=1042
.Linfo_string90:
	.asciz	"sha"                           # string offset=1053
.Linfo_string91:
	.asciz	"input_sha"                     # string offset=1057
.Linfo_string92:
	.asciz	"check_sha"                     # string offset=1067
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.22
	.quad	.L.str.24
	.quad	.Lfunc_begin0
	.quad	.Ltmp2
	.quad	.Ltmp13
	.quad	.Ltmp17
	.quad	.Ltmp20
	.quad	.Ltmp24
	.quad	.Ltmp28
	.quad	.Ltmp42
	.quad	.Ltmp43
	.quad	.Ltmp51
	.quad	.Ltmp52
	.quad	.Ltmp55
	.quad	.Ltmp57
	.quad	.Ltmp58
	.quad	.Ltmp67
	.quad	.Ltmp68
	.quad	.Ltmp69
	.quad	.Ltmp70
	.quad	.Ltmp71
	.quad	.Ltmp77
	.quad	.Ltmp82
	.quad	.Ltmp85
	.quad	.Ltmp87
	.quad	.Ltmp88
	.quad	.Ltmp89
	.quad	.Ltmp91
	.quad	.Ltmp92
	.quad	.Ltmp93
	.quad	.Ltmp94
	.quad	.Ltmp96
	.quad	.Ltmp99
	.quad	.Ltmp101
	.quad	.Ltmp102
	.quad	.Ltmp103
	.quad	.Ltmp104
	.quad	.Ltmp110
	.quad	.Ltmp112
	.quad	.Ltmp113
	.quad	.Ltmp114
	.quad	.Ltmp115
	.quad	.Ltmp116
	.quad	.Ltmp118
	.quad	.Ltmp119
	.quad	.Ltmp121
	.quad	.Ltmp122
	.quad	.Ltmp123
	.quad	.Ltmp126
	.quad	.Ltmp127
	.quad	.Ltmp128
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
