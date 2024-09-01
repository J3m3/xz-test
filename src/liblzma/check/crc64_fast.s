	.text
	.file	"crc64_fast.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/check/crc64_fast.c" md5 0x48de9a2589e975d1231092af2afbf70c
	.file	1 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	2 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.globl	lzma_crc64                      # -- Begin function lzma_crc64
	.p2align	4, 0x90
	.type	lzma_crc64,@function
lzma_crc64:                             # @lzma_crc64
.Lfunc_begin0:
	.loc	0 31 0                          # liblzma/check/crc64_fast.c:31:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_crc64:buf <- $rdi
	#DEBUG_VALUE: lzma_crc64:size <- $rsi
	#DEBUG_VALUE: lzma_crc64:crc <- $rdx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rax
.Ltmp0:
	.loc	0 32 8 prologue_end             # liblzma/check/crc64_fast.c:32:8
	notq	%rax
.Ltmp1:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 38 11                         # liblzma/check/crc64_fast.c:38:11
	cmpq	$5, %rsi
.Ltmp2:
	.loc	0 38 6 is_stmt 0                # liblzma/check/crc64_fast.c:38:6
	jb	.LBB0_14
.Ltmp3:
# %bb.1:                                # %while.cond.preheader
	#DEBUG_VALUE: lzma_crc64:buf <- $rdi
	#DEBUG_VALUE: lzma_crc64:size <- $rsi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:buf <- $rdi
	.loc	0 39 3 is_stmt 1                # liblzma/check/crc64_fast.c:39:3
	testb	$3, %dil
.Ltmp4:
	#DEBUG_VALUE: lzma_crc64:size <- undef
	je	.LBB0_9
.Ltmp5:
# %bb.2:                                # %while.body
	#DEBUG_VALUE: lzma_crc64:buf <- $rdi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:buf <- $rdi
	.loc	0 40 34                         # liblzma/check/crc64_fast.c:40:34
	leaq	1(%rdi), %rcx
.Ltmp6:
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	.loc	0 40 30 is_stmt 0               # liblzma/check/crc64_fast.c:40:30
	movzbl	(%rdi), %edx
	.loc	0 40 39                         # liblzma/check/crc64_fast.c:40:39
	movzbl	%al, %r8d
	.loc	0 40 37                         # liblzma/check/crc64_fast.c:40:37
	xorl	%edx, %r8d
	.loc	0 40 10                         # liblzma/check/crc64_fast.c:40:10
	movq	lzma_crc64_table@GOTPCREL(%rip), %rdx
	.loc	0 40 50                         # liblzma/check/crc64_fast.c:40:50
	shrq	$8, %rax
.Ltmp7:
	.loc	0 40 48                         # liblzma/check/crc64_fast.c:40:48
	xorq	(%rdx,%r8,8), %rax
.Ltmp8:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- $rsi
	#DEBUG_VALUE: lzma_crc64:size <- undef
	.loc	0 39 3 is_stmt 1                # liblzma/check/crc64_fast.c:39:3
	testb	$3, %cl
	je	.LBB0_3
.Ltmp9:
# %bb.4:                                # %while.body.1
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:size <- undef
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 40 34                         # liblzma/check/crc64_fast.c:40:34
	leaq	2(%rdi), %rcx
.Ltmp10:
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	.loc	0 40 30 is_stmt 0               # liblzma/check/crc64_fast.c:40:30
	movzbl	1(%rdi), %r8d
	.loc	0 40 39                         # liblzma/check/crc64_fast.c:40:39
	movzbl	%al, %r9d
	.loc	0 40 37                         # liblzma/check/crc64_fast.c:40:37
	xorl	%r8d, %r9d
	.loc	0 40 50                         # liblzma/check/crc64_fast.c:40:50
	shrq	$8, %rax
.Ltmp11:
	.loc	0 40 48                         # liblzma/check/crc64_fast.c:40:48
	xorq	(%rdx,%r9,8), %rax
.Ltmp12:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- undef
	.loc	0 39 3 is_stmt 1                # liblzma/check/crc64_fast.c:39:3
	testb	$3, %cl
	je	.LBB0_5
.Ltmp13:
# %bb.6:                                # %while.body.2
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:size <- undef
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 40 34                         # liblzma/check/crc64_fast.c:40:34
	leaq	3(%rdi), %rcx
.Ltmp14:
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	.loc	0 40 30 is_stmt 0               # liblzma/check/crc64_fast.c:40:30
	movzbl	2(%rdi), %r8d
	.loc	0 40 39                         # liblzma/check/crc64_fast.c:40:39
	movzbl	%al, %r9d
	.loc	0 40 37                         # liblzma/check/crc64_fast.c:40:37
	xorl	%r8d, %r9d
	.loc	0 40 50                         # liblzma/check/crc64_fast.c:40:50
	shrq	$8, %rax
.Ltmp15:
	.loc	0 40 48                         # liblzma/check/crc64_fast.c:40:48
	xorq	(%rdx,%r9,8), %rax
.Ltmp16:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- undef
	.loc	0 39 3 is_stmt 1                # liblzma/check/crc64_fast.c:39:3
	testb	$3, %cl
	je	.LBB0_7
.Ltmp17:
# %bb.8:                                # %while.body.3
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 40 30                         # liblzma/check/crc64_fast.c:40:30
	movzbl	3(%rdi), %ecx
.Ltmp18:
	#DEBUG_VALUE: lzma_crc64:buf <- undef
	#DEBUG_VALUE: lzma_crc64:size <- undef
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 40 34 is_stmt 0               # liblzma/check/crc64_fast.c:40:34
	addq	$4, %rdi
.Ltmp19:
	#DEBUG_VALUE: lzma_crc64:buf <- $rdi
	.loc	0 40 39                         # liblzma/check/crc64_fast.c:40:39
	movzbl	%al, %r8d
	.loc	0 40 37                         # liblzma/check/crc64_fast.c:40:37
	xorl	%ecx, %r8d
	.loc	0 40 50                         # liblzma/check/crc64_fast.c:40:50
	shrq	$8, %rax
.Ltmp20:
	.loc	0 40 48                         # liblzma/check/crc64_fast.c:40:48
	xorq	(%rdx,%r8,8), %rax
.Ltmp21:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 41 4 is_stmt 1                # liblzma/check/crc64_fast.c:41:4
	addq	$-4, %rsi
.Ltmp22:
	#DEBUG_VALUE: lzma_crc64:size <- $rsi
.LBB0_9:                                # %while.end
	#DEBUG_VALUE: lzma_crc64:buf <- $rdi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 0 4 is_stmt 0                 # liblzma/check/crc64_fast.c:0:4
	movq	%rdi, %rcx
	jmp	.LBB0_10
.Ltmp23:
.LBB0_3:
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	decq	%rsi
.Ltmp24:
	#DEBUG_VALUE: lzma_crc64:size <- $rsi
	.loc	0 39 3 is_stmt 1                # liblzma/check/crc64_fast.c:39:3
	jmp	.LBB0_10
.Ltmp25:
.LBB0_5:
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 0 0 is_stmt 0                 # liblzma/check/crc64_fast.c:0:0
	addq	$-2, %rsi
.Ltmp26:
	#DEBUG_VALUE: lzma_crc64:size <- $rsi
	.loc	0 39 3                          # liblzma/check/crc64_fast.c:39:3
	jmp	.LBB0_10
.Ltmp27:
.LBB0_7:
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 0 0                           # liblzma/check/crc64_fast.c:0:0
	addq	$-3, %rsi
.Ltmp28:
	#DEBUG_VALUE: lzma_crc64:size <- $rsi
.LBB0_10:                               # %while.end
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 44 44 is_stmt 1               # liblzma/check/crc64_fast.c:44:44
	movq	%rsi, %rdx
	andq	$-4, %rdx
.Ltmp29:
	#DEBUG_VALUE: limit <- undef
	.loc	0 45 8                          # liblzma/check/crc64_fast.c:45:8
	andl	$3, %esi
.Ltmp30:
	#DEBUG_VALUE: lzma_crc64:size <- $esi
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 47 14                         # liblzma/check/crc64_fast.c:47:14
	testq	%rdx, %rdx
	.loc	0 47 3 is_stmt 0                # liblzma/check/crc64_fast.c:47:3
	jle	.LBB0_13
.Ltmp31:
# %bb.11:                               # %while.body8.preheader
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:size <- $esi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 0 3                           # liblzma/check/crc64_fast.c:0:3
	addq	%rcx, %rdx
.Ltmp32:
	#DEBUG_VALUE: limit <- $rdx
	movq	lzma_crc64_table@GOTPCREL(%rip), %rdi
.Ltmp33:
	.p2align	4, 0x90
.LBB0_12:                               # %while.body8
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:size <- $esi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: limit <- $rdx
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	movl	(%rcx), %ebx
.Ltmp34:
	.loc	0 52 25 is_stmt 1               # liblzma/check/crc64_fast.c:52:25
	xorl	%eax, %ebx
.Ltmp35:
	#DEBUG_VALUE: tmp <- undef
	.loc	0 54 8                          # liblzma/check/crc64_fast.c:54:8
	addq	$4, %rcx
.Ltmp36:
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	.loc	0 56 30                         # liblzma/check/crc64_fast.c:56:30
	movzbl	%bl, %r8d
	.loc	0 57 10                         # liblzma/check/crc64_fast.c:57:10
	movzbl	%bh, %ebp
	.loc	0 58 10                         # liblzma/check/crc64_fast.c:58:10
	shrq	$32, %rax
.Ltmp37:
	.loc	0 59 10                         # liblzma/check/crc64_fast.c:59:10
	movl	%ebx, %r9d
	shrl	$13, %r9d
	andl	$2040, %r9d                     # imm = 0x7F8
	.loc	0 57 8                          # liblzma/check/crc64_fast.c:57:8
	xorq	6144(%rdi,%r8,8), %rax
	.loc	0 58 8                          # liblzma/check/crc64_fast.c:58:8
	xorq	4096(%rdi,%rbp,8), %rax
	.loc	0 59 8                          # liblzma/check/crc64_fast.c:59:8
	xorq	2048(%rdi,%r9), %rax
	.loc	0 60 10                         # liblzma/check/crc64_fast.c:60:10
	shrl	$24, %ebx
	.loc	0 60 8 is_stmt 0                # liblzma/check/crc64_fast.c:60:8
	xorq	(%rdi,%rbx,8), %rax
.Ltmp38:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 47 14 is_stmt 1               # liblzma/check/crc64_fast.c:47:14
	cmpq	%rdx, %rcx
	.loc	0 47 3 is_stmt 0                # liblzma/check/crc64_fast.c:47:3
	jb	.LBB0_12
.Ltmp39:
.LBB0_13:
	#DEBUG_VALUE: lzma_crc64:buf <- $rcx
	#DEBUG_VALUE: lzma_crc64:size <- $esi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 0 3                           # liblzma/check/crc64_fast.c:0:3
	movq	%rcx, %rdi
.Ltmp40:
.LBB0_14:                               # %if.end
	#DEBUG_VALUE: lzma_crc64:buf <- $rdi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:buf <- $rdi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 64 16 is_stmt 1               # liblzma/check/crc64_fast.c:64:16
	testq	%rsi, %rsi
	.loc	0 64 2 is_stmt 0                # liblzma/check/crc64_fast.c:64:2
	je	.LBB0_22
.Ltmp41:
# %bb.15:                               # %while.body36
	#DEBUG_VALUE: lzma_crc64:buf <- $rdi
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	.loc	0 65 29 is_stmt 1               # liblzma/check/crc64_fast.c:65:29
	movzbl	(%rdi), %ecx
	.loc	0 65 38 is_stmt 0               # liblzma/check/crc64_fast.c:65:38
	movzbl	%al, %edx
	.loc	0 65 36                         # liblzma/check/crc64_fast.c:65:36
	xorl	%ecx, %edx
	.loc	0 65 9                          # liblzma/check/crc64_fast.c:65:9
	movq	lzma_crc64_table@GOTPCREL(%rip), %rcx
	.loc	0 65 49                         # liblzma/check/crc64_fast.c:65:49
	shrq	$8, %rax
.Ltmp42:
	.loc	0 65 47                         # liblzma/check/crc64_fast.c:65:47
	xorq	(%rcx,%rdx,8), %rax
.Ltmp43:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 64 16 is_stmt 1               # liblzma/check/crc64_fast.c:64:16
	cmpq	$1, %rsi
	.loc	0 64 2 is_stmt 0                # liblzma/check/crc64_fast.c:64:2
	je	.LBB0_22
.Ltmp44:
# %bb.16:                               # %while.body36.1
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 1, DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 65 29 is_stmt 1               # liblzma/check/crc64_fast.c:65:29
	movzbl	1(%rdi), %edx
	.loc	0 65 38 is_stmt 0               # liblzma/check/crc64_fast.c:65:38
	movzbl	%al, %r8d
	.loc	0 65 36                         # liblzma/check/crc64_fast.c:65:36
	xorl	%edx, %r8d
	.loc	0 65 49                         # liblzma/check/crc64_fast.c:65:49
	shrq	$8, %rax
.Ltmp45:
	.loc	0 65 47                         # liblzma/check/crc64_fast.c:65:47
	xorq	(%rcx,%r8,8), %rax
.Ltmp46:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 2, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 64 16 is_stmt 1               # liblzma/check/crc64_fast.c:64:16
	cmpq	$2, %rsi
	.loc	0 64 2 is_stmt 0                # liblzma/check/crc64_fast.c:64:2
	je	.LBB0_22
.Ltmp47:
# %bb.17:                               # %while.body36.2
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 1, DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 2, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 2, DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 3, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 65 29 is_stmt 1               # liblzma/check/crc64_fast.c:65:29
	movzbl	2(%rdi), %edx
	.loc	0 65 38 is_stmt 0               # liblzma/check/crc64_fast.c:65:38
	movzbl	%al, %r8d
	.loc	0 65 36                         # liblzma/check/crc64_fast.c:65:36
	xorl	%edx, %r8d
	.loc	0 65 49                         # liblzma/check/crc64_fast.c:65:49
	shrq	$8, %rax
.Ltmp48:
	.loc	0 65 47                         # liblzma/check/crc64_fast.c:65:47
	xorq	(%rcx,%r8,8), %rax
.Ltmp49:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 3, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 64 16 is_stmt 1               # liblzma/check/crc64_fast.c:64:16
	cmpq	$3, %rsi
	.loc	0 64 2 is_stmt 0                # liblzma/check/crc64_fast.c:64:2
	je	.LBB0_22
.Ltmp50:
# %bb.18:                               # %while.body36.3
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 2, DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 3, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 3, DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 4, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 65 29 is_stmt 1               # liblzma/check/crc64_fast.c:65:29
	movzbl	3(%rdi), %edx
	.loc	0 65 38 is_stmt 0               # liblzma/check/crc64_fast.c:65:38
	movzbl	%al, %r8d
	.loc	0 65 36                         # liblzma/check/crc64_fast.c:65:36
	xorl	%edx, %r8d
	.loc	0 65 49                         # liblzma/check/crc64_fast.c:65:49
	shrq	$8, %rax
.Ltmp51:
	.loc	0 65 47                         # liblzma/check/crc64_fast.c:65:47
	xorq	(%rcx,%r8,8), %rax
.Ltmp52:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 4, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 64 16 is_stmt 1               # liblzma/check/crc64_fast.c:64:16
	cmpq	$4, %rsi
	.loc	0 64 2 is_stmt 0                # liblzma/check/crc64_fast.c:64:2
	je	.LBB0_22
.Ltmp53:
# %bb.19:                               # %while.body36.4
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 3, DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 4, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 4, DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 5, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 65 29 is_stmt 1               # liblzma/check/crc64_fast.c:65:29
	movzbl	4(%rdi), %edx
	.loc	0 65 38 is_stmt 0               # liblzma/check/crc64_fast.c:65:38
	movzbl	%al, %r8d
	.loc	0 65 36                         # liblzma/check/crc64_fast.c:65:36
	xorl	%edx, %r8d
	.loc	0 65 49                         # liblzma/check/crc64_fast.c:65:49
	shrq	$8, %rax
.Ltmp54:
	.loc	0 65 47                         # liblzma/check/crc64_fast.c:65:47
	xorq	(%rcx,%r8,8), %rax
.Ltmp55:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 5, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 64 16 is_stmt 1               # liblzma/check/crc64_fast.c:64:16
	cmpq	$5, %rsi
	.loc	0 64 2 is_stmt 0                # liblzma/check/crc64_fast.c:64:2
	je	.LBB0_22
.Ltmp56:
# %bb.20:                               # %while.body36.5
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 4, DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 5, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 5, DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 6, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 65 29 is_stmt 1               # liblzma/check/crc64_fast.c:65:29
	movzbl	5(%rdi), %edx
	.loc	0 65 38 is_stmt 0               # liblzma/check/crc64_fast.c:65:38
	movzbl	%al, %r8d
	.loc	0 65 36                         # liblzma/check/crc64_fast.c:65:36
	xorl	%edx, %r8d
	.loc	0 65 49                         # liblzma/check/crc64_fast.c:65:49
	shrq	$8, %rax
.Ltmp57:
	.loc	0 65 47                         # liblzma/check/crc64_fast.c:65:47
	xorq	(%rcx,%r8,8), %rax
.Ltmp58:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 6, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 64 16 is_stmt 1               # liblzma/check/crc64_fast.c:64:16
	cmpq	$6, %rsi
	.loc	0 64 2 is_stmt 0                # liblzma/check/crc64_fast.c:64:2
	je	.LBB0_22
.Ltmp59:
# %bb.21:                               # %while.body36.6
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 5, DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 6, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:buf <- [DW_OP_plus_uconst 6, DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 7, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 65 29 is_stmt 1               # liblzma/check/crc64_fast.c:65:29
	movzbl	6(%rdi), %edx
	.loc	0 65 38 is_stmt 0               # liblzma/check/crc64_fast.c:65:38
	movzbl	%al, %esi
.Ltmp60:
	.loc	0 65 36                         # liblzma/check/crc64_fast.c:65:36
	xorl	%edx, %esi
	.loc	0 65 49                         # liblzma/check/crc64_fast.c:65:49
	shrq	$8, %rax
.Ltmp61:
	.loc	0 65 47                         # liblzma/check/crc64_fast.c:65:47
	xorq	(%rcx,%rsi,8), %rax
.Ltmp62:
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	#DEBUG_VALUE: lzma_crc64:size <- [DW_OP_constu 7, DW_OP_minus, DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] undef
.LBB0_22:                               # %while.end44
	#DEBUG_VALUE: lzma_crc64:crc <- $rax
	.loc	0 71 9 is_stmt 1                # liblzma/check/crc64_fast.c:71:9
	notq	%rax
.Ltmp63:
	.loc	0 71 2 epilogue_begin is_stmt 0 # liblzma/check/crc64_fast.c:71:2
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp64:
.Lfunc_end0:
	.size	lzma_crc64, .Lfunc_end0-lzma_crc64
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	4                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	1                               # 1
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	2                               # 2
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	3                               # 3
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	4                               # 4
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	5                               # 5
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	6                               # 6
	.byte	35                              # DW_OP_plus_uconst
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	127                             # -1
	.byte	49                              # DW_OP_lit1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	126                             # -2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	126                             # -2
	.byte	49                              # DW_OP_lit1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	125                             # -3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	125                             # -3
	.byte	49                              # DW_OP_lit1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	124                             # -4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	124                             # -4
	.byte	49                              # DW_OP_lit1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	123                             # -5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	123                             # -5
	.byte	49                              # DW_OP_lit1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	122                             # -6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	122                             # -6
	.byte	49                              # DW_OP_lit1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	121                             # -7
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
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0xcb DW_TAG_compile_unit
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
	.byte	2                               # Abbrev [2] 0x27:0x8 DW_TAG_typedef
	.long	47                              # DW_AT_type
	.byte	4                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x2f:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x33:0x8 DW_TAG_typedef
	.long	47                              # DW_AT_type
	.byte	5                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x3b:0x5 DW_TAG_pointer_type
	.long	64                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x40:0x5 DW_TAG_const_type
	.long	69                              # DW_AT_type
	.byte	2                               # Abbrev [2] 0x45:0x8 DW_TAG_typedef
	.long	77                              # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x4d:0x8 DW_TAG_typedef
	.long	85                              # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x55:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x59:0x4a DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	163                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x68:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	179                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x71:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	51                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x7a:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	163                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x83:0x1f DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp39-.Ltmp3                  # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0x89:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	209                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x92:0xf DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp38-.Ltmp34                 # DW_AT_high_pc
	.byte	10                              # Abbrev [10] 0x98:0x8 DW_TAG_variable
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	64                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xa3:0x8 DW_TAG_typedef
	.long	171                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xab:0x8 DW_TAG_typedef
	.long	47                              # DW_AT_type
	.byte	10                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xb3:0x5 DW_TAG_pointer_type
	.long	184                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xb8:0x5 DW_TAG_const_type
	.long	189                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0xbd:0x8 DW_TAG_typedef
	.long	197                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xc5:0x8 DW_TAG_typedef
	.long	205                             # DW_AT_type
	.byte	14                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xcd:0x4 DW_TAG_base_type
	.byte	13                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xd1:0x5 DW_TAG_const_type
	.long	179                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	84                              # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/check/crc64_fast.c"    # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=132
.Linfo_string3:
	.asciz	"unsigned long"                 # string offset=164
.Linfo_string4:
	.asciz	"uintptr_t"                     # string offset=178
.Linfo_string5:
	.asciz	"size_t"                        # string offset=188
.Linfo_string6:
	.asciz	"unsigned int"                  # string offset=195
.Linfo_string7:
	.asciz	"__uint32_t"                    # string offset=208
.Linfo_string8:
	.asciz	"uint32_t"                      # string offset=219
.Linfo_string9:
	.asciz	"lzma_crc64"                    # string offset=228
.Linfo_string10:
	.asciz	"__uint64_t"                    # string offset=239
.Linfo_string11:
	.asciz	"uint64_t"                      # string offset=250
.Linfo_string12:
	.asciz	"buf"                           # string offset=259
.Linfo_string13:
	.asciz	"unsigned char"                 # string offset=263
.Linfo_string14:
	.asciz	"__uint8_t"                     # string offset=277
.Linfo_string15:
	.asciz	"uint8_t"                       # string offset=287
.Linfo_string16:
	.asciz	"size"                          # string offset=295
.Linfo_string17:
	.asciz	"crc"                           # string offset=300
.Linfo_string18:
	.asciz	"limit"                         # string offset=304
.Linfo_string19:
	.asciz	"tmp"                           # string offset=310
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp3
	.quad	.Ltmp34
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
