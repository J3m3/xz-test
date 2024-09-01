	.text
	.file	"crc32_fast.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/check/crc32_fast.c" md5 0x4fa34e8cd6884d53dcd8eb9598f861e8
	.file	1 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	2 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.globl	lzma_crc32                      # -- Begin function lzma_crc32
	.p2align	4, 0x90
	.type	lzma_crc32,@function
lzma_crc32:                             # @lzma_crc32
.Lfunc_begin0:
	.loc	0 28 0                          # liblzma/check/crc32_fast.c:28:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
	#DEBUG_VALUE: lzma_crc32:crc <- $edx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %eax
.Ltmp0:
	.loc	0 29 8 prologue_end             # liblzma/check/crc32_fast.c:29:8
	notl	%eax
.Ltmp1:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 35 11                         # liblzma/check/crc32_fast.c:35:11
	cmpq	$9, %rsi
.Ltmp2:
	.loc	0 35 6 is_stmt 0                # liblzma/check/crc32_fast.c:35:6
	jb	.LBB0_22
.Ltmp3:
# %bb.1:                                # %while.cond.preheader
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	.loc	0 38 3 is_stmt 1                # liblzma/check/crc32_fast.c:38:3
	testb	$7, %dil
.Ltmp4:
	#DEBUG_VALUE: lzma_crc32:size <- undef
	je	.LBB0_17
.Ltmp5:
# %bb.2:                                # %while.body
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	.loc	0 39 34                         # liblzma/check/crc32_fast.c:39:34
	leaq	1(%rdi), %rcx
.Ltmp6:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	.loc	0 39 30 is_stmt 0               # liblzma/check/crc32_fast.c:39:30
	movzbl	(%rdi), %edx
	.loc	0 39 39                         # liblzma/check/crc32_fast.c:39:39
	movzbl	%al, %r8d
	.loc	0 39 37                         # liblzma/check/crc32_fast.c:39:37
	xorl	%edx, %r8d
	.loc	0 39 10                         # liblzma/check/crc32_fast.c:39:10
	movq	lzma_crc32_table@GOTPCREL(%rip), %rdx
	.loc	0 39 49                         # liblzma/check/crc32_fast.c:39:49
	shrl	$8, %eax
.Ltmp7:
	.loc	0 39 47                         # liblzma/check/crc32_fast.c:39:47
	xorl	(%rdx,%r8,4), %eax
.Ltmp8:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
	#DEBUG_VALUE: lzma_crc32:size <- undef
	.loc	0 38 3 is_stmt 1                # liblzma/check/crc32_fast.c:38:3
	testb	$7, %cl
	je	.LBB0_3
.Ltmp9:
# %bb.4:                                # %while.body.1
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:size <- undef
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 39 34                         # liblzma/check/crc32_fast.c:39:34
	leaq	2(%rdi), %rcx
.Ltmp10:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	.loc	0 39 30 is_stmt 0               # liblzma/check/crc32_fast.c:39:30
	movzbl	1(%rdi), %r8d
	.loc	0 39 39                         # liblzma/check/crc32_fast.c:39:39
	movzbl	%al, %r9d
	.loc	0 39 37                         # liblzma/check/crc32_fast.c:39:37
	xorl	%r8d, %r9d
	.loc	0 39 49                         # liblzma/check/crc32_fast.c:39:49
	shrl	$8, %eax
.Ltmp11:
	.loc	0 39 47                         # liblzma/check/crc32_fast.c:39:47
	xorl	(%rdx,%r9,4), %eax
.Ltmp12:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- undef
	.loc	0 38 3 is_stmt 1                # liblzma/check/crc32_fast.c:38:3
	testb	$7, %cl
	je	.LBB0_5
.Ltmp13:
# %bb.6:                                # %while.body.2
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:size <- undef
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 39 34                         # liblzma/check/crc32_fast.c:39:34
	leaq	3(%rdi), %rcx
.Ltmp14:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	.loc	0 39 30 is_stmt 0               # liblzma/check/crc32_fast.c:39:30
	movzbl	2(%rdi), %r8d
	.loc	0 39 39                         # liblzma/check/crc32_fast.c:39:39
	movzbl	%al, %r9d
	.loc	0 39 37                         # liblzma/check/crc32_fast.c:39:37
	xorl	%r8d, %r9d
	.loc	0 39 49                         # liblzma/check/crc32_fast.c:39:49
	shrl	$8, %eax
.Ltmp15:
	.loc	0 39 47                         # liblzma/check/crc32_fast.c:39:47
	xorl	(%rdx,%r9,4), %eax
.Ltmp16:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- undef
	.loc	0 38 3 is_stmt 1                # liblzma/check/crc32_fast.c:38:3
	testb	$7, %cl
	je	.LBB0_7
.Ltmp17:
# %bb.8:                                # %while.body.3
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:size <- undef
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 39 34                         # liblzma/check/crc32_fast.c:39:34
	leaq	4(%rdi), %rcx
.Ltmp18:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	.loc	0 39 30 is_stmt 0               # liblzma/check/crc32_fast.c:39:30
	movzbl	3(%rdi), %r8d
	.loc	0 39 39                         # liblzma/check/crc32_fast.c:39:39
	movzbl	%al, %r9d
	.loc	0 39 37                         # liblzma/check/crc32_fast.c:39:37
	xorl	%r8d, %r9d
	.loc	0 39 49                         # liblzma/check/crc32_fast.c:39:49
	shrl	$8, %eax
.Ltmp19:
	.loc	0 39 47                         # liblzma/check/crc32_fast.c:39:47
	xorl	(%rdx,%r9,4), %eax
.Ltmp20:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- undef
	.loc	0 38 3 is_stmt 1                # liblzma/check/crc32_fast.c:38:3
	testb	$7, %cl
	je	.LBB0_9
.Ltmp21:
# %bb.10:                               # %while.body.4
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:size <- undef
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 39 34                         # liblzma/check/crc32_fast.c:39:34
	leaq	5(%rdi), %rcx
.Ltmp22:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	.loc	0 39 30 is_stmt 0               # liblzma/check/crc32_fast.c:39:30
	movzbl	4(%rdi), %r8d
	.loc	0 39 39                         # liblzma/check/crc32_fast.c:39:39
	movzbl	%al, %r9d
	.loc	0 39 37                         # liblzma/check/crc32_fast.c:39:37
	xorl	%r8d, %r9d
	.loc	0 39 49                         # liblzma/check/crc32_fast.c:39:49
	shrl	$8, %eax
.Ltmp23:
	.loc	0 39 47                         # liblzma/check/crc32_fast.c:39:47
	xorl	(%rdx,%r9,4), %eax
.Ltmp24:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- undef
	.loc	0 38 3 is_stmt 1                # liblzma/check/crc32_fast.c:38:3
	testb	$7, %cl
	je	.LBB0_11
.Ltmp25:
# %bb.12:                               # %while.body.5
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:size <- undef
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 39 34                         # liblzma/check/crc32_fast.c:39:34
	leaq	6(%rdi), %rcx
.Ltmp26:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	.loc	0 39 30 is_stmt 0               # liblzma/check/crc32_fast.c:39:30
	movzbl	5(%rdi), %r8d
	.loc	0 39 39                         # liblzma/check/crc32_fast.c:39:39
	movzbl	%al, %r9d
	.loc	0 39 37                         # liblzma/check/crc32_fast.c:39:37
	xorl	%r8d, %r9d
	.loc	0 39 49                         # liblzma/check/crc32_fast.c:39:49
	shrl	$8, %eax
.Ltmp27:
	.loc	0 39 47                         # liblzma/check/crc32_fast.c:39:47
	xorl	(%rdx,%r9,4), %eax
.Ltmp28:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- undef
	.loc	0 38 3 is_stmt 1                # liblzma/check/crc32_fast.c:38:3
	testb	$7, %cl
	je	.LBB0_13
.Ltmp29:
# %bb.14:                               # %while.body.6
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:size <- undef
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 39 34                         # liblzma/check/crc32_fast.c:39:34
	leaq	7(%rdi), %rcx
.Ltmp30:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	.loc	0 39 30 is_stmt 0               # liblzma/check/crc32_fast.c:39:30
	movzbl	6(%rdi), %r8d
	.loc	0 39 39                         # liblzma/check/crc32_fast.c:39:39
	movzbl	%al, %r9d
	.loc	0 39 37                         # liblzma/check/crc32_fast.c:39:37
	xorl	%r8d, %r9d
	.loc	0 39 49                         # liblzma/check/crc32_fast.c:39:49
	shrl	$8, %eax
.Ltmp31:
	.loc	0 39 47                         # liblzma/check/crc32_fast.c:39:47
	xorl	(%rdx,%r9,4), %eax
.Ltmp32:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- undef
	.loc	0 38 3 is_stmt 1                # liblzma/check/crc32_fast.c:38:3
	testb	$7, %cl
	je	.LBB0_15
.Ltmp33:
# %bb.16:                               # %while.body.7
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 39 30                         # liblzma/check/crc32_fast.c:39:30
	movzbl	7(%rdi), %ecx
.Ltmp34:
	#DEBUG_VALUE: lzma_crc32:buf <- undef
	#DEBUG_VALUE: lzma_crc32:size <- undef
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 39 34 is_stmt 0               # liblzma/check/crc32_fast.c:39:34
	addq	$8, %rdi
.Ltmp35:
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	.loc	0 39 39                         # liblzma/check/crc32_fast.c:39:39
	movzbl	%al, %r8d
	.loc	0 39 37                         # liblzma/check/crc32_fast.c:39:37
	xorl	%ecx, %r8d
	.loc	0 39 49                         # liblzma/check/crc32_fast.c:39:49
	shrl	$8, %eax
.Ltmp36:
	.loc	0 39 47                         # liblzma/check/crc32_fast.c:39:47
	xorl	(%rdx,%r8,4), %eax
.Ltmp37:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 40 4 is_stmt 1                # liblzma/check/crc32_fast.c:40:4
	addq	$-8, %rsi
.Ltmp38:
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
.LBB0_17:                               # %while.end
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 0 4 is_stmt 0                 # liblzma/check/crc32_fast.c:0:4
	movq	%rdi, %rcx
	jmp	.LBB0_18
.Ltmp39:
.LBB0_3:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	decq	%rsi
.Ltmp40:
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
	.loc	0 38 3 is_stmt 1                # liblzma/check/crc32_fast.c:38:3
	jmp	.LBB0_18
.Ltmp41:
.LBB0_5:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 0 0 is_stmt 0                 # liblzma/check/crc32_fast.c:0:0
	addq	$-2, %rsi
.Ltmp42:
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
	.loc	0 38 3                          # liblzma/check/crc32_fast.c:38:3
	jmp	.LBB0_18
.Ltmp43:
.LBB0_7:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 0 0                           # liblzma/check/crc32_fast.c:0:0
	addq	$-3, %rsi
.Ltmp44:
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
	.loc	0 38 3                          # liblzma/check/crc32_fast.c:38:3
	jmp	.LBB0_18
.Ltmp45:
.LBB0_9:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 0 0                           # liblzma/check/crc32_fast.c:0:0
	addq	$-4, %rsi
.Ltmp46:
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
	.loc	0 38 3                          # liblzma/check/crc32_fast.c:38:3
	jmp	.LBB0_18
.Ltmp47:
.LBB0_11:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 0 0                           # liblzma/check/crc32_fast.c:0:0
	addq	$-5, %rsi
.Ltmp48:
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
	.loc	0 38 3                          # liblzma/check/crc32_fast.c:38:3
	jmp	.LBB0_18
.Ltmp49:
.LBB0_13:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 0 0                           # liblzma/check/crc32_fast.c:0:0
	addq	$-6, %rsi
.Ltmp50:
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
	.loc	0 38 3                          # liblzma/check/crc32_fast.c:38:3
	jmp	.LBB0_18
.Ltmp51:
.LBB0_15:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 0 0                           # liblzma/check/crc32_fast.c:0:0
	addq	$-7, %rsi
.Ltmp52:
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
.LBB0_18:                               # %while.end
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 44 44 is_stmt 1               # liblzma/check/crc32_fast.c:44:44
	movq	%rsi, %rdx
	andq	$-8, %rdx
.Ltmp53:
	#DEBUG_VALUE: limit <- undef
	.loc	0 48 8                          # liblzma/check/crc32_fast.c:48:8
	andl	$7, %esi
.Ltmp54:
	#DEBUG_VALUE: lzma_crc32:size <- $esi
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 51 14                         # liblzma/check/crc32_fast.c:51:14
	testq	%rdx, %rdx
	.loc	0 51 3 is_stmt 0                # liblzma/check/crc32_fast.c:51:3
	jle	.LBB0_21
.Ltmp55:
# %bb.19:                               # %while.body8.preheader
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:size <- $esi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 0 3                           # liblzma/check/crc32_fast.c:0:3
	addq	%rcx, %rdx
.Ltmp56:
	#DEBUG_VALUE: limit <- $rdx
	movq	lzma_crc32_table@GOTPCREL(%rip), %rdi
.Ltmp57:
	.p2align	4, 0x90
.LBB0_20:                               # %while.body8
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:size <- $esi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: limit <- $rdx
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 52 8 is_stmt 1                # liblzma/check/crc32_fast.c:52:8
	xorl	(%rcx), %eax
.Ltmp58:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rcx
	.loc	0 55 30                         # liblzma/check/crc32_fast.c:55:30
	movzbl	%al, %r9d
	.loc	0 56 10                         # liblzma/check/crc32_fast.c:56:10
	movzbl	%ah, %ebx
	movl	6144(%rdi,%rbx,4), %r8d
	.loc	0 57 10                         # liblzma/check/crc32_fast.c:57:10
	movl	%eax, %r10d
	shrl	$14, %r10d
	andl	$1020, %r10d                    # imm = 0x3FC
	.loc	0 58 10                         # liblzma/check/crc32_fast.c:58:10
	shrl	$24, %eax
.Ltmp59:
	#DEBUG_VALUE: lzma_crc32:crc <- undef
	.loc	0 0 10 is_stmt 0                # liblzma/check/crc32_fast.c:0:10
	movl	4(%rcx), %ebx
.Ltmp60:
	#DEBUG_VALUE: tmp <- $ebx
	.loc	0 61 8 is_stmt 1                # liblzma/check/crc32_fast.c:61:8
	addq	$8, %rcx
.Ltmp61:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	.loc	0 66 30                         # liblzma/check/crc32_fast.c:66:30
	movzbl	%bl, %r11d
	.loc	0 67 10                         # liblzma/check/crc32_fast.c:67:10
	movzbl	%bh, %ebp
	.loc	0 69 10                         # liblzma/check/crc32_fast.c:69:10
	movl	%ebx, %r14d
	shrl	$14, %r14d
	andl	$1020, %r14d                    # imm = 0x3FC
	.loc	0 70 10                         # liblzma/check/crc32_fast.c:70:10
	shrl	$24, %ebx
.Ltmp62:
	.loc	0 67 8                          # liblzma/check/crc32_fast.c:67:8
	xorl	7168(%rdi,%r9,4), %r8d
	.loc	0 56 8                          # liblzma/check/crc32_fast.c:56:8
	xorl	5120(%rdi,%r10), %r8d
	.loc	0 57 8                          # liblzma/check/crc32_fast.c:57:8
	xorl	4096(%rdi,%rax,4), %r8d
	.loc	0 58 8                          # liblzma/check/crc32_fast.c:58:8
	xorl	3072(%rdi,%r11,4), %r8d
	.loc	0 68 8                          # liblzma/check/crc32_fast.c:68:8
	xorl	2048(%rdi,%rbp,4), %r8d
	.loc	0 69 8                          # liblzma/check/crc32_fast.c:69:8
	xorl	1024(%rdi,%r14), %r8d
	.loc	0 70 8                          # liblzma/check/crc32_fast.c:70:8
	movl	%r8d, %eax
	xorl	(%rdi,%rbx,4), %eax
.Ltmp63:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 51 14                         # liblzma/check/crc32_fast.c:51:14
	cmpq	%rdx, %rcx
	.loc	0 51 3 is_stmt 0                # liblzma/check/crc32_fast.c:51:3
	jb	.LBB0_20
.Ltmp64:
.LBB0_21:
	#DEBUG_VALUE: lzma_crc32:buf <- $rcx
	#DEBUG_VALUE: lzma_crc32:size <- $esi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 0 3                           # liblzma/check/crc32_fast.c:0:3
	movq	%rcx, %rdi
.Ltmp65:
.LBB0_22:                               # %if.end
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	.loc	0 74 16 is_stmt 1               # liblzma/check/crc32_fast.c:74:16
	testq	%rsi, %rsi
	.loc	0 74 2 is_stmt 0                # liblzma/check/crc32_fast.c:74:2
	je	.LBB0_29
.Ltmp66:
# %bb.23:                               # %while.body52.preheader
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	#DEBUG_VALUE: lzma_crc32:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	testb	$1, %sil
	jne	.LBB0_25
.Ltmp67:
# %bb.24:
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	#DEBUG_VALUE: lzma_crc32:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 0 2                           # liblzma/check/crc32_fast.c:0:2
	movq	%rsi, %rcx
	.loc	0 74 2                          # liblzma/check/crc32_fast.c:74:2
	cmpq	$1, %rsi
	jne	.LBB0_27
	jmp	.LBB0_29
.Ltmp68:
.LBB0_25:                               # %while.body52.prol
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	#DEBUG_VALUE: lzma_crc32:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rsi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	#DEBUG_VALUE: lzma_crc32:size <- $rsi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 74 13                         # liblzma/check/crc32_fast.c:74:13
	leaq	-1(%rsi), %rcx
	.loc	0 75 29 is_stmt 1               # liblzma/check/crc32_fast.c:75:29
	movzbl	(%rdi), %edx
.Ltmp69:
	#DEBUG_VALUE: lzma_crc32:size <- $rcx
	.loc	0 75 33 is_stmt 0               # liblzma/check/crc32_fast.c:75:33
	incq	%rdi
.Ltmp70:
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	.loc	0 75 38                         # liblzma/check/crc32_fast.c:75:38
	movzbl	%al, %r8d
	.loc	0 75 36                         # liblzma/check/crc32_fast.c:75:36
	xorl	%edx, %r8d
	.loc	0 75 9                          # liblzma/check/crc32_fast.c:75:9
	movq	lzma_crc32_table@GOTPCREL(%rip), %rdx
	.loc	0 75 48                         # liblzma/check/crc32_fast.c:75:48
	shrl	$8, %eax
.Ltmp71:
	.loc	0 75 46                         # liblzma/check/crc32_fast.c:75:46
	xorl	(%rdx,%r8,4), %eax
.Ltmp72:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rcx
	.loc	0 74 2 is_stmt 1                # liblzma/check/crc32_fast.c:74:2
	cmpq	$1, %rsi
	je	.LBB0_29
.Ltmp73:
.LBB0_27:                               # %while.body52.preheader1
	#DEBUG_VALUE: lzma_crc32:buf <- $rdi
	#DEBUG_VALUE: lzma_crc32:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rcx
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 0 2 is_stmt 0                 # liblzma/check/crc32_fast.c:0:2
	xorl	%edx, %edx
	movq	lzma_crc32_table@GOTPCREL(%rip), %rsi
.Ltmp74:
	.p2align	4, 0x90
.LBB0_28:                               # %while.body52
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:buf <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $rdx, $rdi
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rdx
	#DEBUG_VALUE: lzma_crc32:buf <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_consts 1, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdx, $rdi
	.loc	0 75 29 is_stmt 1               # liblzma/check/crc32_fast.c:75:29
	movzbl	(%rdi,%rdx), %r8d
	.loc	0 75 38 is_stmt 0               # liblzma/check/crc32_fast.c:75:38
	movzbl	%al, %r9d
	.loc	0 75 36                         # liblzma/check/crc32_fast.c:75:36
	xorl	%r8d, %r9d
	.loc	0 75 48                         # liblzma/check/crc32_fast.c:75:48
	shrl	$8, %eax
.Ltmp75:
	.loc	0 75 46                         # liblzma/check/crc32_fast.c:75:46
	xorl	(%rsi,%r9,4), %eax
.Ltmp76:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 18446744073709551614, DW_OP_mul, DW_OP_consts 18446744073709551614, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdx, $rcx
	#DEBUG_VALUE: lzma_crc32:buf <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_consts 2, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] $rdx, $rdi
	.loc	0 75 29                         # liblzma/check/crc32_fast.c:75:29
	movzbl	1(%rdi,%rdx), %r8d
	.loc	0 75 38                         # liblzma/check/crc32_fast.c:75:38
	movzbl	%al, %r9d
	.loc	0 75 36                         # liblzma/check/crc32_fast.c:75:36
	xorl	%r8d, %r9d
	.loc	0 75 48                         # liblzma/check/crc32_fast.c:75:48
	shrl	$8, %eax
.Ltmp77:
	.loc	0 75 46                         # liblzma/check/crc32_fast.c:75:46
	xorl	(%rsi,%r9,4), %eax
.Ltmp78:
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	#DEBUG_VALUE: lzma_crc32:size <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rdx
	.loc	0 74 16 is_stmt 1               # liblzma/check/crc32_fast.c:74:16
	addq	$2, %rdx
.Ltmp79:
	cmpq	%rdx, %rcx
	.loc	0 74 2 is_stmt 0                # liblzma/check/crc32_fast.c:74:2
	jne	.LBB0_28
.Ltmp80:
.LBB0_29:                               # %while.end61
	#DEBUG_VALUE: lzma_crc32:crc <- $eax
	.loc	0 81 9 is_stmt 1                # liblzma/check/crc32_fast.c:81:9
	notl	%eax
.Ltmp81:
                                        # kill: def $eax killed $eax killed $rax
	.loc	0 81 2 epilogue_begin is_stmt 0 # liblzma/check/crc32_fast.c:81:2
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp82:
.Lfunc_end0:
	.size	lzma_crc32, .Lfunc_end0-lzma_crc32
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	5                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	117                             # DW_OP_breg5
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	126                             # -2
	.byte	30                              # DW_OP_mul
	.byte	17                              # DW_OP_consts
	.byte	126                             # -2
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0xbc DW_TAG_compile_unit
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
	.byte	6                               # Abbrev [6] 0x59:0x4b DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	69                              # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x68:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	10                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	164                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x71:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	14                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	51                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x7a:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	8                               # Abbrev [8] 0x83:0x20 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp64-.Ltmp3                  # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0x89:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	194                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x92:0x10 DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp63-.Ltmp57                 # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0x98:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	64                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa4:0x5 DW_TAG_pointer_type
	.long	169                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xa9:0x5 DW_TAG_const_type
	.long	174                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0xae:0x8 DW_TAG_typedef
	.long	182                             # DW_AT_type
	.byte	13                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xb6:0x8 DW_TAG_typedef
	.long	190                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xbe:0x4 DW_TAG_base_type
	.byte	11                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xc2:0x5 DW_TAG_const_type
	.long	164                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	76                              # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/check/crc32_fast.c"    # string offset=105
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
	.asciz	"lzma_crc32"                    # string offset=228
.Linfo_string10:
	.asciz	"buf"                           # string offset=239
.Linfo_string11:
	.asciz	"unsigned char"                 # string offset=243
.Linfo_string12:
	.asciz	"__uint8_t"                     # string offset=257
.Linfo_string13:
	.asciz	"uint8_t"                       # string offset=267
.Linfo_string14:
	.asciz	"size"                          # string offset=275
.Linfo_string15:
	.asciz	"crc"                           # string offset=280
.Linfo_string16:
	.asciz	"limit"                         # string offset=284
.Linfo_string17:
	.asciz	"tmp"                           # string offset=290
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp3
	.quad	.Ltmp57
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
