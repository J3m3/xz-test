	.text
	.file	"filter_common.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/filter_common.c" md5 0x40ce9c1355191130339ea0043a46dd45
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	3 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	4 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	5 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	6 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.globl	lzma_filters_copy               # -- Begin function lzma_filters_copy
	.p2align	4, 0x90
	.type	lzma_filters_copy,@function
lzma_filters_copy:                      # @lzma_filters_copy
.Lfunc_begin0:
	.loc	0 127 0                         # liblzma/common/filter_common.c:127:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_filters_copy:src <- $rdi
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rsi
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $rdx
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
	.loc	0 128 10 prologue_end           # liblzma/common/filter_common.c:128:10
	testq	%rdi, %rdi
	sete	%al
	testq	%rsi, %rsi
	sete	%cl
	.loc	0 128 18 is_stmt 0              # liblzma/common/filter_common.c:128:18
	orb	%al, %cl
	movl	$11, %r15d
	jne	.LBB0_81
.Ltmp0:
# %bb.1:                                # %for.cond.preheader
	#DEBUG_VALUE: lzma_filters_copy:src <- $rdi
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rsi
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $rdx
	.loc	0 0 18                          # liblzma/common/filter_common.c:0:18
	movq	%rsi, %rbx
	movq	%rdi, %r12
.Ltmp1:
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: lzma_filters_copy:ret <- undef
	.loc	0 133 21 is_stmt 1              # liblzma/common/filter_common.c:133:21
	movq	(%rdi), %rax
	xorl	%r15d, %r15d
	.loc	0 133 24 is_stmt 0              # liblzma/common/filter_common.c:133:24
	cmpq	$-1, %rax
.Ltmp2:
	.loc	0 133 2                         # liblzma/common/filter_common.c:133:2
	je	.LBB0_2
.Ltmp3:
# %bb.3:                                # %if.end5
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $rdx
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	.loc	0 0 2                           # liblzma/common/filter_common.c:0:2
	movq	%rdx, %r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
.Ltmp4:
	.loc	0 141 14 is_stmt 1              # liblzma/common/filter_common.c:141:14
	movq	%rax, (%rbx)
.Ltmp5:
	.loc	0 143 22                        # liblzma/common/filter_common.c:143:22
	cmpq	$0, 8(%r12)
.Ltmp6:
	.loc	0 143 7 is_stmt 0               # liblzma/common/filter_common.c:143:7
	je	.LBB0_7
.Ltmp7:
# %bb.4:                                # %for.cond15.preheader
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movq	(%r12), %rcx
	movl	$8, %r13d
	movb	$1, %sil
	xorl	%ebp, %ebp
.Ltmp8:
	#DEBUG_VALUE: j <- 0
	.loc	0 155 4 is_stmt 1               # liblzma/common/filter_common.c:155:4
	leaq	1(%rcx), %rax
	cmpq	$34, %rax
	ja	.LBB0_5
.Ltmp9:
# %bb.6:                                # %for.cond15.preheader
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	jmpq	*.LJTI0_0(,%rax,8)
.Ltmp10:
.LBB0_16:                               # %for.end.fold.split126
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 4 is_stmt 0                 # liblzma/common/filter_common.c:0:4
	movl	$features+216, %eax
	jmp	.LBB0_17
.Ltmp11:
.LBB0_2:
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $rdx
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	xorl	%ebp, %ebp
	.loc	0 133 2 is_stmt 1               # liblzma/common/filter_common.c:133:2
	jmp	.LBB0_80
.Ltmp12:
.LBB0_7:                                # %if.then12
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	.loc	0 144 20                        # liblzma/common/filter_common.c:144:20
	movq	$0, 8(%rbx)
.Ltmp13:
	#DEBUG_VALUE: lzma_filters_copy:ret <- undef
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	.loc	0 133 21                        # liblzma/common/filter_common.c:133:21
	movq	16(%r12), %rax
	.loc	0 133 24 is_stmt 0              # liblzma/common/filter_common.c:133:24
	cmpq	$-1, %rax
.Ltmp14:
	.loc	0 133 2                         # liblzma/common/filter_common.c:133:2
	je	.LBB0_25
.Ltmp15:
.LBB0_26:                               # %for.body.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	.loc	0 141 14 is_stmt 1              # liblzma/common/filter_common.c:141:14
	movq	%rax, 16(%rbx)
.Ltmp16:
	.loc	0 143 22                        # liblzma/common/filter_common.c:143:22
	cmpq	$0, 24(%r12)
.Ltmp17:
	.loc	0 143 7 is_stmt 0               # liblzma/common/filter_common.c:143:7
	je	.LBB0_42
.Ltmp18:
# %bb.27:                               # %for.cond15.preheader.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movq	16(%r12), %rcx
	movl	$8, %r13d
	movl	$1, %ebp
	xorl	%esi, %esi
.Ltmp19:
	#DEBUG_VALUE: j <- 0
	.loc	0 155 4 is_stmt 1               # liblzma/common/filter_common.c:155:4
	leaq	1(%rcx), %rax
	cmpq	$34, %rax
	ja	.LBB0_28
.Ltmp20:
# %bb.29:                               # %for.cond15.preheader.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	jmpq	*.LJTI0_1(,%rax,8)
.Ltmp21:
.LBB0_30:                               # %for.end.fold.split126.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 0 4 is_stmt 0                 # liblzma/common/filter_common.c:0:4
	movl	$features+216, %eax
	.loc	0 163 45 is_stmt 1              # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_39
.Ltmp22:
.LBB0_42:                               # %if.then12.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	.loc	0 144 20                        # liblzma/common/filter_common.c:144:20
	movq	$0, 24(%rbx)
.Ltmp23:
	#DEBUG_VALUE: lzma_filters_copy:ret <- undef
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	.loc	0 133 21                        # liblzma/common/filter_common.c:133:21
	movq	32(%r12), %rax
	.loc	0 133 24 is_stmt 0              # liblzma/common/filter_common.c:133:24
	cmpq	$-1, %rax
.Ltmp24:
	.loc	0 133 2                         # liblzma/common/filter_common.c:133:2
	je	.LBB0_44
.Ltmp25:
.LBB0_45:                               # %for.body.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	.loc	0 141 14 is_stmt 1              # liblzma/common/filter_common.c:141:14
	movq	%rax, 32(%rbx)
.Ltmp26:
	.loc	0 143 22                        # liblzma/common/filter_common.c:143:22
	cmpq	$0, 40(%r12)
.Ltmp27:
	.loc	0 143 7 is_stmt 0               # liblzma/common/filter_common.c:143:7
	je	.LBB0_60
.Ltmp28:
# %bb.46:                               # %for.cond15.preheader.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movq	32(%r12), %rcx
	movl	$8, %r13d
	movl	$2, %ebp
	xorl	%esi, %esi
.Ltmp29:
	#DEBUG_VALUE: j <- 0
	.loc	0 155 4 is_stmt 1               # liblzma/common/filter_common.c:155:4
	leaq	1(%rcx), %rax
	cmpq	$34, %rax
	ja	.LBB0_47
.Ltmp30:
# %bb.48:                               # %for.cond15.preheader.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	jmpq	*.LJTI0_2(,%rax,8)
.Ltmp31:
.LBB0_49:                               # %for.end.fold.split126.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 0 4 is_stmt 0                 # liblzma/common/filter_common.c:0:4
	movl	$features+216, %eax
	.loc	0 163 45 is_stmt 1              # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_58
.Ltmp32:
.LBB0_5:                                # %for.cond15.preheader
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45 is_stmt 0                # liblzma/common/filter_common.c:0:45
	movl	$features, %eax
	movabsq	$4611686018427387905, %rdx      # imm = 0x4000000000000001
.Ltmp33:
	.loc	0 155 4 is_stmt 1               # liblzma/common/filter_common.c:155:4
	cmpq	%rdx, %rcx
	je	.LBB0_17
	jmp	.LBB0_19
.Ltmp34:
.LBB0_60:                               # %if.then12.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	.loc	0 144 20                        # liblzma/common/filter_common.c:144:20
	movq	$0, 40(%rbx)
	jmp	.LBB0_61
.Ltmp35:
.LBB0_8:                                # %for.end.fold.split
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 20 is_stmt 0                # liblzma/common/filter_common.c:0:20
	movl	$features+24, %eax
.Ltmp36:
	.loc	0 163 45 is_stmt 1              # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_17
.Ltmp37:
.LBB0_11:                               # %for.end.fold.split121
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45 is_stmt 0                # liblzma/common/filter_common.c:0:45
	movl	$features+96, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_17
.Ltmp38:
.LBB0_13:                               # %for.end.fold.split123
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+144, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_17
.Ltmp39:
.LBB0_9:                                # %for.end.fold.split119
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+48, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_17
.Ltmp40:
.LBB0_10:                               # %for.end.fold.split120
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+72, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_17
.Ltmp41:
.LBB0_15:                               # %for.end.fold.split125
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+192, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_17
.Ltmp42:
.LBB0_12:                               # %for.end.fold.split122
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+120, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_17
.Ltmp43:
.LBB0_14:                               # %for.end.fold.split124
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+168, %eax
.Ltmp44:
.LBB0_17:                               # %for.end
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	movq	8(%rax), %r13
	.loc	0 163 22                        # liblzma/common/filter_common.c:163:22
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp45:
	.loc	0 163 20                        # liblzma/common/filter_common.c:163:20
	movq	%rax, 8(%rbx)
.Ltmp46:
	.loc	0 165 24 is_stmt 1              # liblzma/common/filter_common.c:165:24
	testq	%rax, %rax
.Ltmp47:
	.loc	0 165 8 is_stmt 0               # liblzma/common/filter_common.c:165:8
	je	.LBB0_18
.Ltmp48:
# %bb.23:                               # %cleanup
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 170 35 is_stmt 1              # liblzma/common/filter_common.c:170:35
	movq	8(%r12), %rsi
	.loc	0 170 4 is_stmt 0               # liblzma/common/filter_common.c:170:4
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
.Ltmp49:
	#DEBUG_VALUE: lzma_filters_copy:ret <- undef
	#DEBUG_VALUE: lzma_filters_copy:ret <- undef
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	.loc	0 133 21 is_stmt 1              # liblzma/common/filter_common.c:133:21
	movq	16(%r12), %rax
	.loc	0 133 24 is_stmt 0              # liblzma/common/filter_common.c:133:24
	cmpq	$-1, %rax
.Ltmp50:
	.loc	0 133 2                         # liblzma/common/filter_common.c:133:2
	jne	.LBB0_26
.Ltmp51:
.LBB0_25:
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	.loc	0 0 2                           # liblzma/common/filter_common.c:0:2
	movl	$1, %ebp
	.loc	0 133 2                         # liblzma/common/filter_common.c:133:2
	jmp	.LBB0_80
.Ltmp52:
.LBB0_18:
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 0
	#DEBUG_VALUE: j <- 0
	.loc	0 0 2                           # liblzma/common/filter_common.c:0:2
	movl	$5, %r13d
	xorl	%ebp, %ebp
	movb	$1, %sil
	jmp	.LBB0_19
.Ltmp53:
.LBB0_28:                               # %for.cond15.preheader.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	movl	$features, %eax
	movabsq	$4611686018427387905, %rdx      # imm = 0x4000000000000001
.Ltmp54:
	.loc	0 155 4 is_stmt 1               # liblzma/common/filter_common.c:155:4
	cmpq	%rdx, %rcx
	je	.LBB0_39
	jmp	.LBB0_19
.Ltmp55:
.LBB0_38:                               # %for.end.fold.split.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 0 4 is_stmt 0                 # liblzma/common/filter_common.c:0:4
	movl	$features+24, %eax
	jmp	.LBB0_39
.Ltmp56:
.LBB0_35:                               # %for.end.fold.split121.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	movl	$features+96, %eax
	.loc	0 163 45 is_stmt 1              # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_39
.Ltmp57:
.LBB0_33:                               # %for.end.fold.split123.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45 is_stmt 0                # liblzma/common/filter_common.c:0:45
	movl	$features+144, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_39
.Ltmp58:
.LBB0_37:                               # %for.end.fold.split119.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+48, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_39
.Ltmp59:
.LBB0_36:                               # %for.end.fold.split120.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+72, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_39
.Ltmp60:
.LBB0_31:                               # %for.end.fold.split125.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+192, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_39
.Ltmp61:
.LBB0_34:                               # %for.end.fold.split122.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+120, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_39
.Ltmp62:
.LBB0_32:                               # %for.end.fold.split124.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+168, %eax
.Ltmp63:
.LBB0_39:                               # %for.end.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	movq	8(%rax), %r13
	.loc	0 163 22                        # liblzma/common/filter_common.c:163:22
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp64:
	.loc	0 163 20                        # liblzma/common/filter_common.c:163:20
	movq	%rax, 24(%rbx)
.Ltmp65:
	.loc	0 165 24 is_stmt 1              # liblzma/common/filter_common.c:165:24
	testq	%rax, %rax
.Ltmp66:
	.loc	0 165 8 is_stmt 0               # liblzma/common/filter_common.c:165:8
	je	.LBB0_40
.Ltmp67:
# %bb.41:                               # %cleanup.1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 1
	#DEBUG_VALUE: j <- 0
	.loc	0 170 35 is_stmt 1              # liblzma/common/filter_common.c:170:35
	movq	24(%r12), %rsi
	.loc	0 170 4 is_stmt 0               # liblzma/common/filter_common.c:170:4
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
.Ltmp68:
	#DEBUG_VALUE: lzma_filters_copy:ret <- undef
	#DEBUG_VALUE: lzma_filters_copy:ret <- undef
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	.loc	0 133 21 is_stmt 1              # liblzma/common/filter_common.c:133:21
	movq	32(%r12), %rax
	.loc	0 133 24 is_stmt 0              # liblzma/common/filter_common.c:133:24
	cmpq	$-1, %rax
.Ltmp69:
	.loc	0 133 2                         # liblzma/common/filter_common.c:133:2
	jne	.LBB0_45
.Ltmp70:
.LBB0_44:
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	.loc	0 0 2                           # liblzma/common/filter_common.c:0:2
	movl	$2, %ebp
	.loc	0 133 2                         # liblzma/common/filter_common.c:133:2
	jmp	.LBB0_80
.Ltmp71:
.LBB0_47:                               # %for.cond15.preheader.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 0 2                           # liblzma/common/filter_common.c:0:2
	movl	$features, %eax
	movabsq	$4611686018427387905, %rdx      # imm = 0x4000000000000001
.Ltmp72:
	.loc	0 155 4 is_stmt 1               # liblzma/common/filter_common.c:155:4
	cmpq	%rdx, %rcx
	je	.LBB0_58
	jmp	.LBB0_19
.Ltmp73:
.LBB0_57:                               # %for.end.fold.split.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 0 4 is_stmt 0                 # liblzma/common/filter_common.c:0:4
	movl	$features+24, %eax
	jmp	.LBB0_58
.Ltmp74:
.LBB0_54:                               # %for.end.fold.split121.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	movl	$features+96, %eax
	.loc	0 163 45 is_stmt 1              # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_58
.Ltmp75:
.LBB0_52:                               # %for.end.fold.split123.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45 is_stmt 0                # liblzma/common/filter_common.c:0:45
	movl	$features+144, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_58
.Ltmp76:
.LBB0_56:                               # %for.end.fold.split119.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+48, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_58
.Ltmp77:
.LBB0_55:                               # %for.end.fold.split120.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+72, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_58
.Ltmp78:
.LBB0_50:                               # %for.end.fold.split125.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+192, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_58
.Ltmp79:
.LBB0_53:                               # %for.end.fold.split122.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+120, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_58
.Ltmp80:
.LBB0_51:                               # %for.end.fold.split124.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+168, %eax
.Ltmp81:
.LBB0_58:                               # %for.end.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	movq	8(%rax), %r13
	.loc	0 163 22                        # liblzma/common/filter_common.c:163:22
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp82:
	.loc	0 163 20                        # liblzma/common/filter_common.c:163:20
	movq	%rax, 40(%rbx)
.Ltmp83:
	.loc	0 165 24 is_stmt 1              # liblzma/common/filter_common.c:165:24
	testq	%rax, %rax
.Ltmp84:
	.loc	0 165 8 is_stmt 0               # liblzma/common/filter_common.c:165:8
	je	.LBB0_40
.Ltmp85:
# %bb.59:                               # %cleanup.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: j <- 0
	.loc	0 170 35 is_stmt 1              # liblzma/common/filter_common.c:170:35
	movq	40(%r12), %rsi
	.loc	0 170 4 is_stmt 0               # liblzma/common/filter_common.c:170:4
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
.Ltmp86:
	#DEBUG_VALUE: lzma_filters_copy:ret <- undef
.LBB0_61:                               # %for.inc42.2
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 2
	#DEBUG_VALUE: lzma_filters_copy:ret <- undef
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	.loc	0 133 21 is_stmt 1              # liblzma/common/filter_common.c:133:21
	movq	48(%r12), %rax
	.loc	0 133 24 is_stmt 0              # liblzma/common/filter_common.c:133:24
	cmpq	$-1, %rax
.Ltmp87:
	.loc	0 133 2                         # liblzma/common/filter_common.c:133:2
	je	.LBB0_62
.Ltmp88:
# %bb.63:                               # %for.body.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	.loc	0 141 14 is_stmt 1              # liblzma/common/filter_common.c:141:14
	movq	%rax, 48(%rbx)
.Ltmp89:
	.loc	0 143 22                        # liblzma/common/filter_common.c:143:22
	cmpq	$0, 56(%r12)
.Ltmp90:
	.loc	0 143 7 is_stmt 0               # liblzma/common/filter_common.c:143:7
	je	.LBB0_78
.Ltmp91:
# %bb.64:                               # %for.cond15.preheader.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movq	48(%r12), %rcx
	movl	$8, %r13d
	movl	$3, %ebp
	xorl	%esi, %esi
.Ltmp92:
	#DEBUG_VALUE: j <- 0
	.loc	0 155 4 is_stmt 1               # liblzma/common/filter_common.c:155:4
	leaq	1(%rcx), %rax
	cmpq	$34, %rax
	ja	.LBB0_65
.Ltmp93:
# %bb.66:                               # %for.cond15.preheader.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	jmpq	*.LJTI0_3(,%rax,8)
.Ltmp94:
.LBB0_67:                               # %for.end.fold.split126.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 0 4 is_stmt 0                 # liblzma/common/filter_common.c:0:4
	movl	$features+216, %eax
	.loc	0 163 45 is_stmt 1              # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_76
.Ltmp95:
.LBB0_62:
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	.loc	0 0 45 is_stmt 0                # liblzma/common/filter_common.c:0:45
	movl	$3, %ebp
	.loc	0 133 2 is_stmt 1               # liblzma/common/filter_common.c:133:2
	jmp	.LBB0_80
.Ltmp96:
.LBB0_78:                               # %if.then12.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	.loc	0 144 20                        # liblzma/common/filter_common.c:144:20
	movq	$0, 56(%rbx)
	jmp	.LBB0_79
.Ltmp97:
.LBB0_65:                               # %for.cond15.preheader.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 0 20 is_stmt 0                # liblzma/common/filter_common.c:0:20
	movl	$features, %eax
	movabsq	$4611686018427387905, %rdx      # imm = 0x4000000000000001
.Ltmp98:
	.loc	0 155 4 is_stmt 1               # liblzma/common/filter_common.c:155:4
	cmpq	%rdx, %rcx
	je	.LBB0_76
	jmp	.LBB0_19
.Ltmp99:
.LBB0_75:                               # %for.end.fold.split.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 0 4 is_stmt 0                 # liblzma/common/filter_common.c:0:4
	movl	$features+24, %eax
	jmp	.LBB0_76
.Ltmp100:
.LBB0_72:                               # %for.end.fold.split121.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	movl	$features+96, %eax
	.loc	0 163 45 is_stmt 1              # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_76
.Ltmp101:
.LBB0_70:                               # %for.end.fold.split123.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45 is_stmt 0                # liblzma/common/filter_common.c:0:45
	movl	$features+144, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_76
.Ltmp102:
.LBB0_74:                               # %for.end.fold.split119.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+48, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_76
.Ltmp103:
.LBB0_73:                               # %for.end.fold.split120.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+72, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_76
.Ltmp104:
.LBB0_68:                               # %for.end.fold.split125.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+192, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_76
.Ltmp105:
.LBB0_71:                               # %for.end.fold.split122.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+120, %eax
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	jmp	.LBB0_76
.Ltmp106:
.LBB0_69:                               # %for.end.fold.split124.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 0 45                          # liblzma/common/filter_common.c:0:45
	movl	$features+168, %eax
.Ltmp107:
.LBB0_76:                               # %for.end.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 163 45                        # liblzma/common/filter_common.c:163:45
	movq	8(%rax), %r13
	.loc	0 163 22                        # liblzma/common/filter_common.c:163:22
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp108:
	.loc	0 163 20                        # liblzma/common/filter_common.c:163:20
	movq	%rax, 56(%rbx)
.Ltmp109:
	.loc	0 165 24 is_stmt 1              # liblzma/common/filter_common.c:165:24
	testq	%rax, %rax
.Ltmp110:
	.loc	0 165 8 is_stmt 0               # liblzma/common/filter_common.c:165:8
	je	.LBB0_40
.Ltmp111:
# %bb.77:                               # %cleanup.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: j <- 0
	.loc	0 170 35 is_stmt 1              # liblzma/common/filter_common.c:170:35
	movq	56(%r12), %rsi
	.loc	0 170 4 is_stmt 0               # liblzma/common/filter_common.c:170:4
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
.Ltmp112:
	#DEBUG_VALUE: lzma_filters_copy:ret <- undef
.LBB0_79:                               # %for.inc42.3
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- 3
	#DEBUG_VALUE: lzma_filters_copy:ret <- undef
	#DEBUG_VALUE: lzma_filters_copy:i <- 4
	.loc	0 0 4                           # liblzma/common/filter_common.c:0:4
	movl	$8, %r13d
	movl	$4, %ebp
	.loc	0 133 24 is_stmt 1              # liblzma/common/filter_common.c:133:24
	cmpq	$-1, 64(%r12)
.Ltmp113:
	.loc	0 133 2 is_stmt 0               # liblzma/common/filter_common.c:133:2
	jne	.LBB0_20
.Ltmp114:
.LBB0_80:                               # %for.end44
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 177 2 is_stmt 1               # liblzma/common/filter_common.c:177:2
	shll	$4, %ebp
	.loc	0 177 13 is_stmt 0              # liblzma/common/filter_common.c:177:13
	movq	$-1, (%rbx,%rbp)
	.loc	0 178 18 is_stmt 1              # liblzma/common/filter_common.c:178:18
	movq	$0, 8(%rbx,%rbp)
	jmp	.LBB0_81
.Ltmp115:
.LBB0_40:
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: j <- 0
	.loc	0 0 18 is_stmt 0                # liblzma/common/filter_common.c:0:18
	movl	$5, %r13d
	xorl	%esi, %esi
.Ltmp116:
.LBB0_19:                               # %error
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_LABEL: lzma_filters_copy:error
	#DEBUG_VALUE: lzma_filters_copy:i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rbp
	movl	%r13d, %r15d
	.loc	0 184 2 is_stmt 1               # liblzma/common/filter_common.c:184:2
	testb	%sil, %sil
	jne	.LBB0_81
.Ltmp117:
.LBB0_20:                               # %while.body.preheader
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- $rbx
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	movl	%ebp, %eax
	shll	$4, %eax
	addq	%rax, %rbx
.Ltmp118:
	#DEBUG_VALUE: lzma_filters_copy:dest <- [DW_OP_LLVM_entry_value 1] $rsi
	addq	$-8, %rbx
.Ltmp119:
	.p2align	4, 0x90
.LBB0_21:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rbp
	.loc	0 185 21                        # liblzma/common/filter_common.c:185:21
	movq	(%rbx), %rdi
	.loc	0 185 3 is_stmt 0               # liblzma/common/filter_common.c:185:3
	movq	%r14, %rsi
	callq	lzma_free@PLT
.Ltmp120:
	#DEBUG_VALUE: lzma_filters_copy:i <- undef
	#DEBUG_VALUE: lzma_filters_copy:i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] undef
	.loc	0 186 19 is_stmt 1              # liblzma/common/filter_common.c:186:19
	movq	$0, (%rbx)
.Ltmp121:
	.loc	0 184 13                        # liblzma/common/filter_common.c:184:13
	addq	$-16, %rbx
	decq	%rbp
.Ltmp122:
	#DEBUG_VALUE: lzma_filters_copy:i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rbp
	#DEBUG_VALUE: lzma_filters_copy:i <- $rbp
	.loc	0 184 2 is_stmt 0               # liblzma/common/filter_common.c:184:2
	jne	.LBB0_21
.Ltmp123:
# %bb.22:
	#DEBUG_VALUE: lzma_filters_copy:src <- $r12
	#DEBUG_VALUE: lzma_filters_copy:dest <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_filters_copy:allocator <- $r14
	#DEBUG_VALUE: lzma_filters_copy:i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rbp
	.loc	0 0 2                           # liblzma/common/filter_common.c:0:2
	movl	%r13d, %r15d
.Ltmp124:
.LBB0_81:                               # %return
	#DEBUG_VALUE: lzma_filters_copy:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_filters_copy:dest <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_filters_copy:allocator <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 190 1 is_stmt 1               # liblzma/common/filter_common.c:190:1
	movl	%r15d, %eax
	.loc	0 190 1 epilogue_begin is_stmt 0 # liblzma/common/filter_common.c:190:1
	addq	$8, %rsp
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
.Ltmp125:
.Lfunc_end0:
	.size	lzma_filters_copy, .Lfunc_end0-lzma_filters_copy
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_16
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_15
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_12
	.quad	.LBB0_13
	.quad	.LBB0_14
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_8
.LJTI0_1:
	.quad	.LBB0_30
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_31
	.quad	.LBB0_37
	.quad	.LBB0_36
	.quad	.LBB0_35
	.quad	.LBB0_34
	.quad	.LBB0_33
	.quad	.LBB0_32
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_38
.LJTI0_2:
	.quad	.LBB0_49
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_50
	.quad	.LBB0_56
	.quad	.LBB0_55
	.quad	.LBB0_54
	.quad	.LBB0_53
	.quad	.LBB0_52
	.quad	.LBB0_51
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_57
.LJTI0_3:
	.quad	.LBB0_67
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_68
	.quad	.LBB0_74
	.quad	.LBB0_73
	.quad	.LBB0_72
	.quad	.LBB0_71
	.quad	.LBB0_70
	.quad	.LBB0_69
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_75
	.file	7 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
                                        # -- End function
	.text
	.globl	lzma_raw_coder_init             # -- Begin function lzma_raw_coder_init
	.p2align	4, 0x90
	.type	lzma_raw_coder_init,@function
lzma_raw_coder_init:                    # @lzma_raw_coder_init
.Lfunc_begin1:
	.loc	0 245 0 is_stmt 1               # liblzma/common/filter_common.c:245:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rcx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $rdx
	movl	$11, %eax
.Ltmp126:
	.loc	0 197 14 prologue_end           # liblzma/common/filter_common.c:197:14
	testq	%rdx, %rdx
	.loc	0 197 22 is_stmt 0              # liblzma/common/filter_common.c:197:22
	je	.LBB1_33
.Ltmp127:
# %bb.1:                                # %lor.lhs.false.i
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rcx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $rdx
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	.loc	0 197 36                        # liblzma/common/filter_common.c:197:36
	movq	(%rdx), %r12
	.loc	0 197 39                        # liblzma/common/filter_common.c:197:39
	cmpq	$-1, %r12
.Ltmp128:
	.loc	0 197 6                         # liblzma/common/filter_common.c:197:6
	je	.LBB1_32
.Ltmp129:
# %bb.2:                                # %do.body.i.preheader
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rcx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	.loc	0 0 6                           # liblzma/common/filter_common.c:0:6
	movq	%rcx, %rbx
	.loc	0 213 2 is_stmt 1               # liblzma/common/filter_common.c:213:2
	leaq	32(%rsp), %r15
	leaq	8(%rsp), %r13
	leaq	16(%r14), %rdx
	movb	$1, %r9b
	xorl	%ecx, %ecx
.Ltmp130:
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	.loc	0 0 2 is_stmt 0                 # liblzma/common/filter_common.c:0:2
	movabsq	$4611686018427387905, %r10      # imm = 0x4000000000000001
	xorl	%ebp, %ebp
	movl	$8, %eax
.Ltmp131:
	.p2align	4, 0x90
.LBB1_3:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:last_ok <- undef
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 215 3 is_stmt 1               # liblzma/common/filter_common.c:215:3
	leaq	-3(%r12), %r11
	cmpq	$30, %r11
	ja	.LBB1_4
.Ltmp132:
# %bb.5:                                # %do.body.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	jmpq	*.LJTI1_0(,%r11,8)
.Ltmp133:
.LBB1_13:                               # %for.end.fold.split71.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/common/filter_common.c:0:3
	movl	$features+192, %r11d
	.loc	0 221 7 is_stmt 1               # liblzma/common/filter_common.c:221:7
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.Ltmp134:
.LBB1_4:                                # %do.body.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_common.c:0:7
	movl	$features, %r11d
.Ltmp135:
	.loc	0 215 3 is_stmt 1               # liblzma/common/filter_common.c:215:3
	cmpq	%r10, %r12
	je	.LBB1_14
	jmp	.LBB1_32
.Ltmp136:
.LBB1_12:                               # %for.end.fold.split70.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/common/filter_common.c:0:3
	movl	$features+168, %r11d
	.loc	0 221 7 is_stmt 1               # liblzma/common/filter_common.c:221:7
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.Ltmp137:
.LBB1_11:                               # %for.end.fold.split69.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_common.c:0:7
	movl	$features+144, %r11d
	.loc	0 221 7                         # liblzma/common/filter_common.c:221:7
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.Ltmp138:
.LBB1_7:                                # %for.end.fold.split65.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movl	$features+48, %r11d
	.loc	0 221 7                         # liblzma/common/filter_common.c:221:7
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.Ltmp139:
.LBB1_8:                                # %for.end.fold.split66.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movl	$features+72, %r11d
	.loc	0 221 7                         # liblzma/common/filter_common.c:221:7
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.Ltmp140:
.LBB1_9:                                # %for.end.fold.split67.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movl	$features+96, %r11d
	.loc	0 221 7                         # liblzma/common/filter_common.c:221:7
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.Ltmp141:
.LBB1_10:                               # %for.end.fold.split68.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movl	$features+120, %r11d
.Ltmp142:
	.p2align	4, 0x90
.LBB1_14:                               # %for.end.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 221 7                         # liblzma/common/filter_common.c:221:7
	testb	$1, %r9b
	je	.LBB1_32
.Ltmp143:
.LBB1_15:                               # %do.cond.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 224 29 is_stmt 1              # liblzma/common/filter_common.c:224:29
	movzbl	16(%r11), %r9d
.Ltmp144:
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:last_ok <- undef
	.loc	0 226 37                        # liblzma/common/filter_common.c:226:37
	movzbl	18(%r11), %r12d
	.loc	0 226 22 is_stmt 0              # liblzma/common/filter_common.c:226:22
	addq	%r12, %rcx
.Ltmp145:
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	.loc	0 228 19 is_stmt 1              # liblzma/common/filter_common.c:228:19
	incq	%rbp
.Ltmp146:
	#DEBUG_VALUE: validate_chain:i <- $rbp
	.loc	0 228 24 is_stmt 0              # liblzma/common/filter_common.c:228:24
	movq	(%rdx), %r12
.Ltmp147:
	.loc	0 228 2                         # liblzma/common/filter_common.c:228:2
	addq	$24, %r13
	addq	$16, %rdx
.Ltmp148:
	.loc	0 228 27                        # liblzma/common/filter_common.c:228:27
	cmpq	$-1, %r12
.Ltmp149:
	.loc	0 228 2                         # liblzma/common/filter_common.c:228:2
	jne	.LBB1_3
	jmp	.LBB1_16
.Ltmp150:
.LBB1_6:                                # %for.end.fold.split.i
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 2                           # liblzma/common/filter_common.c:0:2
	movl	$features+24, %r11d
	.loc	0 221 7 is_stmt 1               # liblzma/common/filter_common.c:221:7
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.Ltmp151:
.LBB1_16:                               # %do.end.i
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: validate_chain:last_ok <- undef
	.loc	0 233 8                         # liblzma/common/filter_common.c:233:8
	cmpq	$4, %rbp
	.loc	0 233 27 is_stmt 0              # liblzma/common/filter_common.c:233:27
	ja	.LBB1_32
.Ltmp152:
# %bb.17:                               # %do.end.i
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	cmpb	$0, 17(%r11)
	je	.LBB1_32
.Ltmp153:
# %bb.18:                               # %do.end.i
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: validate_chain:filters <- $r14
	#DEBUG_VALUE: validate_chain:i <- $rbp
	#DEBUG_VALUE: validate_chain:non_last_ok <- $r9b
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	cmpq	$3, %rcx
	ja	.LBB1_32
.Ltmp154:
# %bb.19:                               # %do.end
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: lzma_raw_coder_init:count <- $rbp
	#DEBUG_VALUE: ret_ <- 0
	.loc	0 0 27                          # liblzma/common/filter_common.c:0:27
	movq	%rdi, %r12
.Ltmp155:
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
.Ltmp156:
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	.loc	0 252 6 is_stmt 1               # liblzma/common/filter_common.c:252:6
	testb	%r8b, %r8b
	je	.LBB1_20
.Ltmp157:
# %bb.24:                               # %for.cond.preheader
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: lzma_raw_coder_init:count <- $rbp
	.loc	0 0 0 is_stmt 0                 # liblzma/common/filter_common.c:0:0
	testq	%rbp, %rbp
.Ltmp158:
	#DEBUG_VALUE: i <- 0
	.loc	0 253 3 is_stmt 1               # liblzma/common/filter_common.c:253:3
	je	.LBB1_29
.Ltmp159:
# %bb.25:                               # %for.body.preheader
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: lzma_raw_coder_init:count <- $rbp
	#DEBUG_VALUE: i <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/common/filter_common.c:0:3
	movq	%r13, %r15
.Ltmp160:
	.p2align	4, 0x90
.LBB1_26:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: i <- undef
	#DEBUG_VALUE: j <- undef
	.loc	0 260 30 is_stmt 1              # liblzma/common/filter_common.c:260:30
	movq	(%r14), %rdi
	.loc	0 260 8 is_stmt 0               # liblzma/common/filter_common.c:260:8
	callq	*%rbx
.Ltmp161:
	movq	%rax, %rcx
.Ltmp162:
	#DEBUG_VALUE: fc <- $rcx
	.loc	0 0 8                           # liblzma/common/filter_common.c:0:8
	movl	$8, %eax
.Ltmp163:
	.loc	0 261 11 is_stmt 1              # liblzma/common/filter_common.c:261:11
	testq	%rcx, %rcx
	.loc	0 261 19 is_stmt 0              # liblzma/common/filter_common.c:261:19
	je	.LBB1_32
.Ltmp164:
# %bb.27:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_26 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: fc <- $rcx
	.loc	0 261 26                        # liblzma/common/filter_common.c:261:26
	movq	8(%rcx), %rcx
.Ltmp165:
	.loc	0 261 31                        # liblzma/common/filter_common.c:261:31
	testq	%rcx, %rcx
.Ltmp166:
	.loc	0 261 8                         # liblzma/common/filter_common.c:261:8
	je	.LBB1_32
.Ltmp167:
# %bb.28:                               # %for.inc
                                        #   in Loop: Header=BB1_26 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	.loc	0 264 31 is_stmt 1              # liblzma/common/filter_common.c:264:31
	movq	(%r14), %rax
	.loc	0 264 18 is_stmt 0              # liblzma/common/filter_common.c:264:18
	movq	%rax, -16(%r15)
	.loc	0 265 20 is_stmt 1              # liblzma/common/filter_common.c:265:20
	movq	%rcx, -8(%r15)
	.loc	0 266 36                        # liblzma/common/filter_common.c:266:36
	movq	8(%r14), %rax
	.loc	0 266 23 is_stmt 0              # liblzma/common/filter_common.c:266:23
	movq	%rax, (%r15)
.Ltmp168:
	#DEBUG_VALUE: i <- undef
	.loc	0 253 24 is_stmt 1              # liblzma/common/filter_common.c:253:24
	addq	$16, %r14
	addq	$-24, %r15
	decq	%rbp
.Ltmp169:
	.loc	0 253 3 is_stmt 0               # liblzma/common/filter_common.c:253:3
	jne	.LBB1_26
	jmp	.LBB1_29
.Ltmp170:
.LBB1_20:                               # %for.cond27.preheader
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- $r14
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	#DEBUG_VALUE: lzma_raw_coder_init:count <- $rbp
	.loc	0 0 0                           # liblzma/common/filter_common.c:0:0
	testq	%rbp, %rbp
.Ltmp171:
	#DEBUG_VALUE: i <- 0
	.loc	0 269 3 is_stmt 1               # liblzma/common/filter_common.c:269:3
	je	.LBB1_29
.Ltmp172:
	.p2align	4, 0x90
.LBB1_21:                               # %for.body30
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: i <- undef
	.loc	0 271 30                        # liblzma/common/filter_common.c:271:30
	movq	(%r14), %rdi
	.loc	0 271 8 is_stmt 0               # liblzma/common/filter_common.c:271:8
	callq	*%rbx
.Ltmp173:
	movq	%rax, %rcx
.Ltmp174:
	#DEBUG_VALUE: fc <- $rcx
	.loc	0 0 8                           # liblzma/common/filter_common.c:0:8
	movl	$8, %eax
.Ltmp175:
	.loc	0 272 11 is_stmt 1              # liblzma/common/filter_common.c:272:11
	testq	%rcx, %rcx
	je	.LBB1_32
.Ltmp176:
# %bb.22:                               # %lor.lhs.false36
                                        #   in Loop: Header=BB1_21 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: fc <- $rcx
	.loc	0 272 26 is_stmt 0              # liblzma/common/filter_common.c:272:26
	movq	8(%rcx), %rcx
.Ltmp177:
	.loc	0 272 31                        # liblzma/common/filter_common.c:272:31
	testq	%rcx, %rcx
.Ltmp178:
	.loc	0 272 8                         # liblzma/common/filter_common.c:272:8
	je	.LBB1_32
.Ltmp179:
# %bb.23:                               # %for.inc55
                                        #   in Loop: Header=BB1_21 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	.loc	0 275 31 is_stmt 1              # liblzma/common/filter_common.c:275:31
	movq	(%r14), %rax
	.loc	0 275 18 is_stmt 0              # liblzma/common/filter_common.c:275:18
	movq	%rax, -16(%r15)
	.loc	0 276 20 is_stmt 1              # liblzma/common/filter_common.c:276:20
	movq	%rcx, -8(%r15)
	.loc	0 277 36                        # liblzma/common/filter_common.c:277:36
	movq	8(%r14), %rax
	.loc	0 277 23 is_stmt 0              # liblzma/common/filter_common.c:277:23
	movq	%rax, (%r15)
.Ltmp180:
	#DEBUG_VALUE: i <- undef
	.loc	0 269 24 is_stmt 1              # liblzma/common/filter_common.c:269:24
	addq	$24, %r15
	addq	$16, %r14
	decq	%rbp
	jne	.LBB1_21
.Ltmp181:
.LBB1_29:                               # %if.end60
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	.loc	0 282 20                        # liblzma/common/filter_common.c:282:20
	movq	$-1, 8(%r13)
	.loc	0 283 22                        # liblzma/common/filter_common.c:283:22
	movq	$0, 16(%r13)
	leaq	16(%rsp), %rdx
	.loc	0 286 23                        # liblzma/common/filter_common.c:286:23
	movq	%r12, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	lzma_next_filter_init@PLT
.Ltmp182:
	#DEBUG_VALUE: lzma_raw_coder_init:ret <- $eax
	.loc	0 287 10                        # liblzma/common/filter_common.c:287:10
	testl	%eax, %eax
.Ltmp183:
	.loc	0 287 6 is_stmt 0               # liblzma/common/filter_common.c:287:6
	je	.LBB1_30
.Ltmp184:
# %bb.31:                               # %if.then67
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:ret <- $eax
	.loc	0 288 3 is_stmt 1               # liblzma/common/filter_common.c:288:3
	movq	%r12, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	%eax, %ebx
.Ltmp185:
	#DEBUG_VALUE: lzma_raw_coder_init:ret <- $ebx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- [DW_OP_LLVM_entry_value 1] $rcx
	callq	lzma_next_end@PLT
.Ltmp186:
	.loc	0 0 3 is_stmt 0                 # liblzma/common/filter_common.c:0:3
	movl	%ebx, %eax
	jmp	.LBB1_32
.Ltmp187:
.LBB1_30:
	#DEBUG_VALUE: lzma_raw_coder_init:next <- $r12
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_raw_coder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- $rbx
	#DEBUG_VALUE: lzma_raw_coder_init:ret <- $eax
	xorl	%eax, %eax
.Ltmp188:
.LBB1_32:
	#DEBUG_VALUE: lzma_raw_coder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- [DW_OP_LLVM_entry_value 1] $rcx
	addq	$136, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.Ltmp189:
.LBB1_33:                               # %cleanup71
	#DEBUG_VALUE: lzma_raw_coder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_raw_coder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_raw_coder_init:options <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_raw_coder_init:coder_find <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 291 1 is_stmt 1               # liblzma/common/filter_common.c:291:1
	retq
.Ltmp190:
.Lfunc_end1:
	.size	lzma_raw_coder_init, .Lfunc_end1-lzma_raw_coder_init
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_13
	.quad	.LBB1_7
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_10
	.quad	.LBB1_11
	.quad	.LBB1_12
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_6
	.file	8 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	9 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
                                        # -- End function
	.text
	.globl	lzma_raw_coder_memusage         # -- Begin function lzma_raw_coder_memusage
	.p2align	4, 0x90
	.type	lzma_raw_coder_memusage,@function
lzma_raw_coder_memusage:                # @lzma_raw_coder_memusage
.Lfunc_begin2:
	.loc	0 297 0                         # liblzma/common/filter_common.c:297:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rsi
	#DEBUG_VALUE: validate_chain:filters <- $rsi
	movq	$-1, %rax
.Ltmp191:
	.loc	0 197 14 prologue_end           # liblzma/common/filter_common.c:197:14
	testq	%rsi, %rsi
	.loc	0 197 22 is_stmt 0              # liblzma/common/filter_common.c:197:22
	je	.LBB2_29
.Ltmp192:
# %bb.1:                                # %lor.lhs.false.i
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $rdi
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rsi
	#DEBUG_VALUE: validate_chain:filters <- $rsi
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	.loc	0 197 36                        # liblzma/common/filter_common.c:197:36
	movq	(%rsi), %rdi
.Ltmp193:
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	.loc	0 197 39                        # liblzma/common/filter_common.c:197:39
	cmpq	$-1, %rdi
.Ltmp194:
	.loc	0 197 6                         # liblzma/common/filter_common.c:197:6
	je	.LBB2_28
.Ltmp195:
# %bb.2:                                # %do.body.i.preheader
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	.loc	0 213 2 is_stmt 1               # liblzma/common/filter_common.c:213:2
	leaq	16(%rbx), %rdx
	movb	$1, %sil
	xorl	%ecx, %ecx
	movabsq	$4611686018427387905, %r8       # imm = 0x4000000000000001
	movq	%rdi, %r11
	xorl	%r9d, %r9d
.Ltmp196:
	.p2align	4, 0x90
.LBB2_3:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:last_ok <- undef
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 215 3                         # liblzma/common/filter_common.c:215:3
	leaq	-3(%r11), %r10
	cmpq	$30, %r10
	ja	.LBB2_6
.Ltmp197:
# %bb.4:                                # %do.body.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	jmpq	*.LJTI2_0(,%r10,8)
.Ltmp198:
.LBB2_5:                                # %for.end.fold.split71.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/common/filter_common.c:0:3
	movl	$features+192, %r10d
	.loc	0 221 7 is_stmt 1               # liblzma/common/filter_common.c:221:7
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.Ltmp199:
.LBB2_6:                                # %do.body.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_common.c:0:7
	movl	$features, %r10d
.Ltmp200:
	.loc	0 215 3 is_stmt 1               # liblzma/common/filter_common.c:215:3
	cmpq	%r8, %r11
	je	.LBB2_13
	jmp	.LBB2_28
.Ltmp201:
.LBB2_7:                                # %for.end.fold.split70.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 3 is_stmt 0                 # liblzma/common/filter_common.c:0:3
	movl	$features+168, %r10d
	.loc	0 221 7 is_stmt 1               # liblzma/common/filter_common.c:221:7
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.Ltmp202:
.LBB2_8:                                # %for.end.fold.split69.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_common.c:0:7
	movl	$features+144, %r10d
	.loc	0 221 7                         # liblzma/common/filter_common.c:221:7
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.Ltmp203:
.LBB2_9:                                # %for.end.fold.split65.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movl	$features+48, %r10d
	.loc	0 221 7                         # liblzma/common/filter_common.c:221:7
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.Ltmp204:
.LBB2_10:                               # %for.end.fold.split66.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movl	$features+72, %r10d
	.loc	0 221 7                         # liblzma/common/filter_common.c:221:7
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.Ltmp205:
.LBB2_11:                               # %for.end.fold.split67.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movl	$features+96, %r10d
	.loc	0 221 7                         # liblzma/common/filter_common.c:221:7
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.Ltmp206:
.LBB2_12:                               # %for.end.fold.split68.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 7                           # liblzma/common/filter_common.c:0:7
	movl	$features+120, %r10d
.Ltmp207:
	.p2align	4, 0x90
.LBB2_13:                               # %for.end.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 221 7                         # liblzma/common/filter_common.c:221:7
	testb	$1, %sil
	je	.LBB2_28
.Ltmp208:
.LBB2_14:                               # %do.cond.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 224 29 is_stmt 1              # liblzma/common/filter_common.c:224:29
	movzbl	16(%r10), %esi
.Ltmp209:
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:last_ok <- undef
	.loc	0 226 37                        # liblzma/common/filter_common.c:226:37
	movzbl	18(%r10), %r11d
	.loc	0 226 22 is_stmt 0              # liblzma/common/filter_common.c:226:22
	addq	%r11, %rcx
.Ltmp210:
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	.loc	0 228 19 is_stmt 1              # liblzma/common/filter_common.c:228:19
	incq	%r9
.Ltmp211:
	#DEBUG_VALUE: validate_chain:i <- $r9
	.loc	0 228 24 is_stmt 0              # liblzma/common/filter_common.c:228:24
	movq	(%rdx), %r11
.Ltmp212:
	.loc	0 228 2                         # liblzma/common/filter_common.c:228:2
	addq	$16, %rdx
.Ltmp213:
	.loc	0 228 27                        # liblzma/common/filter_common.c:228:27
	cmpq	$-1, %r11
.Ltmp214:
	.loc	0 228 2                         # liblzma/common/filter_common.c:228:2
	jne	.LBB2_3
	jmp	.LBB2_16
.Ltmp215:
.LBB2_15:                               # %for.end.fold.split.i
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: j <- 0
	.loc	0 0 2                           # liblzma/common/filter_common.c:0:2
	movl	$features+24, %r10d
	.loc	0 221 7 is_stmt 1               # liblzma/common/filter_common.c:221:7
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.Ltmp216:
.LBB2_16:                               # %do.end.i
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	#DEBUG_VALUE: validate_chain:last_ok <- undef
	.loc	0 233 8                         # liblzma/common/filter_common.c:233:8
	cmpq	$4, %r9
	.loc	0 233 27 is_stmt 0              # liblzma/common/filter_common.c:233:27
	ja	.LBB2_28
.Ltmp217:
# %bb.17:                               # %do.end.i
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	cmpb	$0, 17(%r10)
	je	.LBB2_28
.Ltmp218:
# %bb.18:                               # %do.end.i
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	#DEBUG_VALUE: validate_chain:filters <- $rbx
	#DEBUG_VALUE: validate_chain:i <- $r9
	#DEBUG_VALUE: validate_chain:non_last_ok <- $sil
	#DEBUG_VALUE: validate_chain:changes_size_count <- $rcx
	cmpq	$3, %rcx
	ja	.LBB2_28
.Ltmp219:
# %bb.19:                               # %do.body.preheader
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- $rbx
	.loc	0 308 2 is_stmt 1               # liblzma/common/filter_common.c:308:2
	addq	$16, %rbx
.Ltmp220:
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 0 2 is_stmt 0                 # liblzma/common/filter_common.c:0:2
	xorl	%r15d, %r15d
	jmp	.LBB2_21
.Ltmp221:
	.p2align	4, 0x90
.LBB2_20:                               # %cleanup18.thread
                                        #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_raw_coder_memusage:total <- $r15
	.loc	0 321 10 is_stmt 1              # liblzma/common/filter_common.c:321:10
	addq	$1024, %r15                     # imm = 0x400
.Ltmp222:
	#DEBUG_VALUE: lzma_raw_coder_memusage:total <- $r15
	#DEBUG_VALUE: lzma_raw_coder_memusage:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 16, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] undef, undef
	.loc	0 332 24                        # liblzma/common/filter_common.c:332:24
	movq	(%rbx), %rdi
.Ltmp223:
	.loc	0 332 2 is_stmt 0               # liblzma/common/filter_common.c:332:2
	addq	$16, %rbx
.Ltmp224:
	.loc	0 332 27                        # liblzma/common/filter_common.c:332:27
	cmpq	$-1, %rdi
.Ltmp225:
	.loc	0 332 2                         # liblzma/common/filter_common.c:332:2
	je	.LBB2_25
.Ltmp226:
.LBB2_21:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_raw_coder_memusage:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 16, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_stack_value] undef, undef
	#DEBUG_VALUE: lzma_raw_coder_memusage:total <- $r15
	.loc	0 310 8 is_stmt 1               # liblzma/common/filter_common.c:310:8
	callq	*%r14
.Ltmp227:
	#DEBUG_VALUE: fc <- $rax
	.loc	0 311 10                        # liblzma/common/filter_common.c:311:10
	testq	%rax, %rax
.Ltmp228:
	.loc	0 311 7 is_stmt 0               # liblzma/common/filter_common.c:311:7
	je	.LBB2_27
.Ltmp229:
# %bb.22:                               # %if.end4
                                        #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_raw_coder_memusage:total <- $r15
	#DEBUG_VALUE: fc <- $rax
	.loc	0 314 11 is_stmt 1              # liblzma/common/filter_common.c:314:11
	movq	16(%rax), %rax
.Ltmp230:
	.loc	0 314 20 is_stmt 0              # liblzma/common/filter_common.c:314:20
	testq	%rax, %rax
.Ltmp231:
	.loc	0 314 7                         # liblzma/common/filter_common.c:314:7
	je	.LBB2_20
.Ltmp232:
# %bb.23:                               # %cleanup18
                                        #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_raw_coder_memusage:total <- $r15
	.loc	0 326 32 is_stmt 1              # liblzma/common/filter_common.c:326:32
	movq	-8(%rbx), %rdi
	.loc	0 326 8 is_stmt 0               # liblzma/common/filter_common.c:326:8
	callq	*%rax
.Ltmp233:
	#DEBUG_VALUE: usage <- $rax
	.loc	0 327 8 is_stmt 1               # liblzma/common/filter_common.c:327:8
	movl	$0, %ecx
.Ltmp234:
	.loc	0 327 14 is_stmt 0              # liblzma/common/filter_common.c:327:14
	cmpq	$-1, %rax
.Ltmp235:
	.loc	0 327 8                         # liblzma/common/filter_common.c:327:8
	cmovneq	%rax, %rcx
.Ltmp236:
	#DEBUG_VALUE: lzma_raw_coder_memusage:total <- undef
	.loc	0 0 8                           # liblzma/common/filter_common.c:0:8
	je	.LBB2_27
.Ltmp237:
# %bb.24:                               #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	addq	%rcx, %r15
.Ltmp238:
	#DEBUG_VALUE: lzma_raw_coder_memusage:total <- $r15
	#DEBUG_VALUE: lzma_raw_coder_memusage:i <- [DW_OP_LLVM_arg 0, DW_OP_consts 16, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] undef, undef
	.loc	0 332 24 is_stmt 1              # liblzma/common/filter_common.c:332:24
	movq	(%rbx), %rdi
.Ltmp239:
	.loc	0 332 2 is_stmt 0               # liblzma/common/filter_common.c:332:2
	addq	$16, %rbx
.Ltmp240:
	.loc	0 332 27                        # liblzma/common/filter_common.c:332:27
	cmpq	$-1, %rdi
.Ltmp241:
	.loc	0 332 2                         # liblzma/common/filter_common.c:332:2
	jne	.LBB2_21
.Ltmp242:
.LBB2_25:                               # %do.end
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_raw_coder_memusage:total <- $r15
	.loc	0 336 15 is_stmt 1              # liblzma/common/filter_common.c:336:15
	addq	$32768, %r15                    # imm = 0x8000
.Ltmp243:
	.loc	0 0 15 is_stmt 0                # liblzma/common/filter_common.c:0:15
	movq	%r15, %rax
	jmp	.LBB2_28
.Ltmp244:
.LBB2_27:
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	movq	$-1, %rax
.Ltmp245:
.LBB2_28:
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- $r14
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp246:
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.Ltmp247:
.LBB2_29:                               # %return
	#DEBUG_VALUE: lzma_raw_coder_memusage:coder_find <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_raw_coder_memusage:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 337 1 is_stmt 1               # liblzma/common/filter_common.c:337:1
	retq
.Ltmp248:
.Lfunc_end2:
	.size	lzma_raw_coder_memusage, .Lfunc_end2-lzma_raw_coder_memusage
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI2_0:
	.quad	.LBB2_5
	.quad	.LBB2_9
	.quad	.LBB2_10
	.quad	.LBB2_11
	.quad	.LBB2_12
	.quad	.LBB2_8
	.quad	.LBB2_7
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_15
                                        # -- End function
	.type	features,@object                # @features
	.p2align	4, 0x0
features:
	.quad	4611686018427387905             # 0x4000000000000001
	.quad	112                             # 0x70
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	5
	.quad	33                              # 0x21
	.quad	112                             # 0x70
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	5
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	5                               # 0x5
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	6                               # 0x6
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	7                               # 0x7
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	8                               # 0x8
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	9                               # 0x9
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	3                               # 0x3
	.quad	40                              # 0x28
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.quad	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.size	features, 240

	.file	10 "liblzma/common" "filter_common.h" md5 0x2b3d0d0ae4b0d967ddcb9fa677c708ca
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	29                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
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
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp156-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp160-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp170-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp172-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp185-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	120                             # DW_OP_breg8
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
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	120                             # DW_OP_breg8
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
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp154-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp171-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp177-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp182-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp185-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp185-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp193-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp246-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp246-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp220-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp219-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp236-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp238-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp243-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp227-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp237-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
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
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
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
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
	.byte	10                              # DW_TAG_label
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
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
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x65e DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	76                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	75                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	62                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x3e:0xc DW_TAG_array_type
	.long	74                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x43:0x6 DW_TAG_subrange_type
	.long	169                             # DW_AT_type
	.byte	10                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x4a:0x5 DW_TAG_const_type
	.long	79                              # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4f:0x32 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x53:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	129                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x5c:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	157                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x65:0x9 DW_TAG_member
	.byte	11                              # DW_AT_name
	.long	165                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x6e:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	165                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x77:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	165                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	18                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x81:0x8 DW_TAG_typedef
	.long	137                             # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x89:0x8 DW_TAG_typedef
	.long	145                             # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x91:0x8 DW_TAG_typedef
	.long	153                             # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x99:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x9d:0x8 DW_TAG_typedef
	.long	153                             # DW_AT_type
	.byte	10                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xa5:0x4 DW_TAG_base_type
	.byte	12                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xa9:0x4 DW_TAG_base_type
	.byte	15                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	11                              # Abbrev [11] 0xad:0x2d DW_TAG_enumeration_type
	.long	218                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb5:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xb8:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xbb:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xbe:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xc1:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xc4:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xc7:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xca:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xcd:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xd0:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xd3:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xd6:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xda:0x4 DW_TAG_base_type
	.byte	16                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0xde:0x15 DW_TAG_enumeration_type
	.long	218                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xe6:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xe9:0x3 DW_TAG_enumerator
	.byte	30                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xec:0x3 DW_TAG_enumerator
	.byte	31                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xef:0x3 DW_TAG_enumerator
	.byte	32                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xf3:0x15 DW_TAG_enumeration_type
	.long	218                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xfb:0x3 DW_TAG_enumerator
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xfe:0x3 DW_TAG_enumerator
	.byte	34                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0x101:0x3 DW_TAG_enumerator
	.byte	35                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0x104:0x3 DW_TAG_enumerator
	.byte	36                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x108:0x1 DW_TAG_pointer_type
	.byte	14                              # Abbrev [14] 0x109:0x6b DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	566                             # DW_AT_type
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x118:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	574                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x121:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	1508                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x12a:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	391                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x133:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x13c:0x8 DW_TAG_variable
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.long	566                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x144:0x5 DW_TAG_label
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	22                              # DW_AT_low_pc
	.byte	19                              # Abbrev [19] 0x149:0xc DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	16                              # Abbrev [16] 0x14b:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x155:0x6 DW_TAG_call_site
	.long	372                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x15b:0x6 DW_TAG_call_site
	.long	372                             # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x161:0x6 DW_TAG_call_site
	.long	372                             # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x167:0x6 DW_TAG_call_site
	.long	372                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x16d:0x6 DW_TAG_call_site
	.long	484                             # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x174:0x13 DW_TAG_subprogram
	.byte	37                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	264                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x17c:0x5 DW_TAG_formal_parameter
	.long	157                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x181:0x5 DW_TAG_formal_parameter
	.long	391                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x187:0x5 DW_TAG_pointer_type
	.long	396                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x18c:0x9 DW_TAG_typedef
	.long	405                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x195:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x19a:0xa DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	441                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x1a4:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	467                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x1ae:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	264                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x1b9:0x5 DW_TAG_pointer_type
	.long	446                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1be:0x15 DW_TAG_subroutine_type
	.long	264                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x1c3:0x5 DW_TAG_formal_parameter
	.long	264                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x1c8:0x5 DW_TAG_formal_parameter
	.long	157                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x1cd:0x5 DW_TAG_formal_parameter
	.long	157                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x1d3:0x5 DW_TAG_pointer_type
	.long	472                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x1d8:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x1d9:0x5 DW_TAG_formal_parameter
	.long	264                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x1de:0x5 DW_TAG_formal_parameter
	.long	264                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x1e4:0xf DW_TAG_subprogram
	.byte	42                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x1e8:0x5 DW_TAG_formal_parameter
	.long	264                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x1ed:0x5 DW_TAG_formal_parameter
	.long	391                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x1f3:0x43 DW_TAG_subprogram
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	566                             # DW_AT_type
                                        # DW_AT_inline
	.byte	31                              # Abbrev [31] 0x1fb:0x8 DW_TAG_formal_parameter
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.long	574                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x203:0x8 DW_TAG_formal_parameter
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.long	615                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x20b:0x8 DW_TAG_variable
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x213:0x8 DW_TAG_variable
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.long	165                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x21b:0x8 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x223:0x8 DW_TAG_variable
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	165                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x22b:0xa DW_TAG_lexical_block
	.byte	17                              # Abbrev [17] 0x22c:0x8 DW_TAG_variable
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x236:0x8 DW_TAG_typedef
	.long	173                             # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x23e:0x5 DW_TAG_pointer_type
	.long	579                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x243:0x5 DW_TAG_const_type
	.long	584                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x248:0x8 DW_TAG_typedef
	.long	592                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x250:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x254:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	129                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x25d:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	264                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x267:0x5 DW_TAG_pointer_type
	.long	157                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x26c:0xf9 DW_TAG_subprogram
	.byte	7                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	566                             # DW_AT_type
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x27b:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.long	893                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x284:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.long	391                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x28d:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.long	574                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x296:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	244                             # DW_AT_decl_line
	.long	1525                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x29f:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	244                             # DW_AT_decl_line
	.long	165                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x2a8:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.long	1513                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2b3:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x2bc:0xa DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	286                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x2c6:0x3e DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp154-.Ltmp126               # DW_AT_high_pc
	.byte	17                              # Abbrev [17] 0x2cc:0x8 DW_TAG_variable
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x2d4:0x2f DW_TAG_inlined_subroutine
	.long	499                             # DW_AT_abstract_origin
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp154-.Ltmp126               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	248                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	37                              # Abbrev [37] 0x2e1:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	507                             # DW_AT_abstract_origin
	.byte	38                              # Abbrev [38] 0x2e7:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.long	523                             # DW_AT_abstract_origin
	.byte	38                              # Abbrev [38] 0x2ed:0x6 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.long	531                             # DW_AT_abstract_origin
	.byte	38                              # Abbrev [38] 0x2f3:0x6 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.long	539                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x2f9:0x9 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	39                              # Abbrev [39] 0x2fb:0x6 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.long	556                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x304:0x2a DW_TAG_lexical_block
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp170-.Ltmp158               # DW_AT_high_pc
	.byte	16                              # Abbrev [16] 0x30a:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x313:0x1a DW_TAG_lexical_block
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp168-.Ltmp160               # DW_AT_high_pc
	.byte	34                              # Abbrev [34] 0x319:0xa DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	259                             # DW_AT_decl_line
	.long	1621                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x323:0x9 DW_TAG_variable
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.long	1631                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x32e:0x22 DW_TAG_lexical_block
	.byte	11                              # DW_AT_low_pc
	.long	.Ltmp181-.Ltmp171               # DW_AT_high_pc
	.byte	34                              # Abbrev [34] 0x334:0xa DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x33e:0x11 DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp180-.Ltmp172               # DW_AT_high_pc
	.byte	34                              # Abbrev [34] 0x344:0xa DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
	.long	1621                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x350:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	13                              # DW_AT_call_return_pc
	.byte	41                              # Abbrev [41] 0x354:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	83
	.byte	14                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x358:0x6 DW_TAG_call_site
	.long	869                             # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x35e:0x6 DW_TAG_call_site
	.long	1335                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x365:0x18 DW_TAG_subprogram
	.byte	52                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	566                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x36d:0x5 DW_TAG_formal_parameter
	.long	893                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x372:0x5 DW_TAG_formal_parameter
	.long	391                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x377:0x5 DW_TAG_formal_parameter
	.long	1250                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x37d:0x5 DW_TAG_pointer_type
	.long	898                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x382:0x8 DW_TAG_typedef
	.long	906                             # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	42                              # Abbrev [42] 0x38a:0x4e DW_TAG_structure_type
	.byte	69                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x38f:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	984                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x398:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	129                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3a1:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	993                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3aa:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	1001                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3b3:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3bc:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	1149                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3c5:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	1183                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3ce:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	1219                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x3d8:0x5 DW_TAG_pointer_type
	.long	989                             # DW_AT_type
	.byte	43                              # Abbrev [43] 0x3dd:0x4 DW_TAG_typedef
	.byte	54                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x3e1:0x8 DW_TAG_typedef
	.long	153                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x3e9:0x8 DW_TAG_typedef
	.long	1009                            # DW_AT_type
	.byte	62                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x3f1:0x5 DW_TAG_pointer_type
	.long	1014                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x3f6:0x33 DW_TAG_subroutine_type
	.long	566                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x3fb:0x5 DW_TAG_formal_parameter
	.long	984                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x400:0x5 DW_TAG_formal_parameter
	.long	391                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x405:0x5 DW_TAG_formal_parameter
	.long	1065                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x40a:0x5 DW_TAG_formal_parameter
	.long	1100                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x40f:0x5 DW_TAG_formal_parameter
	.long	157                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x414:0x5 DW_TAG_formal_parameter
	.long	1105                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x419:0x5 DW_TAG_formal_parameter
	.long	1100                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x41e:0x5 DW_TAG_formal_parameter
	.long	157                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x423:0x5 DW_TAG_formal_parameter
	.long	1115                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x429:0x5 DW_TAG_restrict_type
	.long	1070                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x42e:0x5 DW_TAG_pointer_type
	.long	1075                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x433:0x5 DW_TAG_const_type
	.long	1080                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x438:0x8 DW_TAG_typedef
	.long	1088                            # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x440:0x8 DW_TAG_typedef
	.long	1096                            # DW_AT_type
	.byte	59                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x448:0x4 DW_TAG_base_type
	.byte	58                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	44                              # Abbrev [44] 0x44c:0x5 DW_TAG_restrict_type
	.long	615                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x451:0x5 DW_TAG_restrict_type
	.long	1110                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x456:0x5 DW_TAG_pointer_type
	.long	1080                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x45b:0x9 DW_TAG_typedef
	.long	222                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x464:0x8 DW_TAG_typedef
	.long	1132                            # DW_AT_type
	.byte	64                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x46c:0x5 DW_TAG_pointer_type
	.long	1137                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x471:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x472:0x5 DW_TAG_formal_parameter
	.long	984                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x477:0x5 DW_TAG_formal_parameter
	.long	391                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x47d:0x5 DW_TAG_pointer_type
	.long	1154                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x482:0xb DW_TAG_subroutine_type
	.long	1165                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x487:0x5 DW_TAG_formal_parameter
	.long	1173                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x48d:0x8 DW_TAG_typedef
	.long	243                             # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x495:0x5 DW_TAG_pointer_type
	.long	1178                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x49a:0x5 DW_TAG_const_type
	.long	989                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x49f:0x5 DW_TAG_pointer_type
	.long	1188                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x4a4:0x1a DW_TAG_subroutine_type
	.long	566                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x4a9:0x5 DW_TAG_formal_parameter
	.long	984                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x4ae:0x5 DW_TAG_formal_parameter
	.long	1214                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x4b3:0x5 DW_TAG_formal_parameter
	.long	1214                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x4b8:0x5 DW_TAG_formal_parameter
	.long	137                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4be:0x5 DW_TAG_pointer_type
	.long	137                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x4c3:0x5 DW_TAG_pointer_type
	.long	1224                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x4c8:0x1a DW_TAG_subroutine_type
	.long	566                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x4cd:0x5 DW_TAG_formal_parameter
	.long	984                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x4d2:0x5 DW_TAG_formal_parameter
	.long	391                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x4d7:0x5 DW_TAG_formal_parameter
	.long	574                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x4dc:0x5 DW_TAG_formal_parameter
	.long	574                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4e2:0x5 DW_TAG_pointer_type
	.long	1255                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x4e7:0x5 DW_TAG_const_type
	.long	1260                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x4ec:0x8 DW_TAG_typedef
	.long	1268                            # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	42                              # Abbrev [42] 0x4f4:0x21 DW_TAG_structure_type
	.byte	72                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x4f9:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	129                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x502:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	1301                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x50b:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	264                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x515:0x8 DW_TAG_typedef
	.long	1309                            # DW_AT_type
	.byte	71                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x51d:0x5 DW_TAG_pointer_type
	.long	1314                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x522:0x15 DW_TAG_subroutine_type
	.long	566                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x527:0x5 DW_TAG_formal_parameter
	.long	893                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x52c:0x5 DW_TAG_formal_parameter
	.long	391                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x531:0x5 DW_TAG_formal_parameter
	.long	1250                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x537:0xf DW_TAG_subprogram
	.byte	74                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x53b:0x5 DW_TAG_formal_parameter
	.long	893                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x540:0x5 DW_TAG_formal_parameter
	.long	391                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x546:0x9e DW_TAG_subprogram
	.byte	17                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	137                             # DW_AT_type
                                        # DW_AT_external
	.byte	46                              # Abbrev [46] 0x556:0xa DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.long	1525                            # DW_AT_type
	.byte	46                              # Abbrev [46] 0x560:0xa DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	296                             # DW_AT_decl_line
	.long	574                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x56a:0xa DW_TAG_variable
	.byte	26                              # DW_AT_location
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	305                             # DW_AT_decl_line
	.long	137                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x574:0x9 DW_TAG_variable
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x57d:0x40 DW_TAG_lexical_block
	.byte	18                              # DW_AT_low_pc
	.long	.Ltmp219-.Ltmp191               # DW_AT_high_pc
	.byte	40                              # Abbrev [40] 0x583:0x9 DW_TAG_variable
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	47                              # Abbrev [47] 0x58c:0x30 DW_TAG_inlined_subroutine
	.long	499                             # DW_AT_abstract_origin
	.byte	18                              # DW_AT_low_pc
	.long	.Ltmp219-.Ltmp191               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	301                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	37                              # Abbrev [37] 0x59a:0x6 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.long	507                             # DW_AT_abstract_origin
	.byte	38                              # Abbrev [38] 0x5a0:0x6 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.long	523                             # DW_AT_abstract_origin
	.byte	38                              # Abbrev [38] 0x5a6:0x6 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.long	531                             # DW_AT_abstract_origin
	.byte	38                              # Abbrev [38] 0x5ac:0x6 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.long	539                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x5b2:0x9 DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	39                              # Abbrev [39] 0x5b4:0x6 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.long	556                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x5bd:0x1e DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x5bf:0xa DW_TAG_variable
	.byte	27                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.long	1621                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x5c9:0x11 DW_TAG_lexical_block
	.byte	19                              # DW_AT_low_pc
	.long	.Ltmp237-.Ltmp232               # DW_AT_high_pc
	.byte	34                              # Abbrev [34] 0x5cf:0xa DW_TAG_variable
	.byte	28                              # DW_AT_location
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.long	1636                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x5db:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	94
	.byte	20                              # DW_AT_call_return_pc
	.byte	41                              # Abbrev [41] 0x5df:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	21                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x5e4:0x5 DW_TAG_pointer_type
	.long	584                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x5e9:0xc DW_TAG_array_type
	.long	1260                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x5ee:0x6 DW_TAG_subrange_type
	.long	169                             # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5f5:0x8 DW_TAG_typedef
	.long	1533                            # DW_AT_type
	.byte	89                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x5fd:0x5 DW_TAG_pointer_type
	.long	1538                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x602:0xb DW_TAG_subroutine_type
	.long	1549                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x607:0x5 DW_TAG_formal_parameter
	.long	129                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x60d:0x5 DW_TAG_pointer_type
	.long	1554                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x612:0x5 DW_TAG_const_type
	.long	1559                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x617:0x8 DW_TAG_typedef
	.long	1567                            # DW_AT_type
	.byte	88                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x61f:0x20 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x623:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	129                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x62c:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	1301                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x635:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	1599                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x63f:0x5 DW_TAG_pointer_type
	.long	1604                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x644:0xb DW_TAG_subroutine_type
	.long	137                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0x649:0x5 DW_TAG_formal_parameter
	.long	1615                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x64f:0x5 DW_TAG_pointer_type
	.long	1620                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x654:0x1 DW_TAG_const_type
	.byte	6                               # Abbrev [6] 0x655:0x5 DW_TAG_const_type
	.long	1549                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x65a:0x5 DW_TAG_const_type
	.long	566                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x65f:0x5 DW_TAG_const_type
	.long	157                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x664:0x5 DW_TAG_const_type
	.long	137                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	4                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp212-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp213-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp214-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp222-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp223-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp225-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp237-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp241-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp242-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	388                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/filter_common.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=136
.Linfo_string3:
	.asciz	"features"                      # string offset=168
.Linfo_string4:
	.asciz	"id"                            # string offset=177
.Linfo_string5:
	.asciz	"unsigned long"                 # string offset=180
.Linfo_string6:
	.asciz	"__uint64_t"                    # string offset=194
.Linfo_string7:
	.asciz	"uint64_t"                      # string offset=205
.Linfo_string8:
	.asciz	"lzma_vli"                      # string offset=214
.Linfo_string9:
	.asciz	"options_size"                  # string offset=223
.Linfo_string10:
	.asciz	"size_t"                        # string offset=236
.Linfo_string11:
	.asciz	"non_last_ok"                   # string offset=243
.Linfo_string12:
	.asciz	"_Bool"                         # string offset=255
.Linfo_string13:
	.asciz	"last_ok"                       # string offset=261
.Linfo_string14:
	.asciz	"changes_size"                  # string offset=269
.Linfo_string15:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=282
.Linfo_string16:
	.asciz	"unsigned int"                  # string offset=302
.Linfo_string17:
	.asciz	"LZMA_OK"                       # string offset=315
.Linfo_string18:
	.asciz	"LZMA_STREAM_END"               # string offset=323
.Linfo_string19:
	.asciz	"LZMA_NO_CHECK"                 # string offset=339
.Linfo_string20:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=353
.Linfo_string21:
	.asciz	"LZMA_GET_CHECK"                # string offset=376
.Linfo_string22:
	.asciz	"LZMA_MEM_ERROR"                # string offset=391
.Linfo_string23:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=406
.Linfo_string24:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=426
.Linfo_string25:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=444
.Linfo_string26:
	.asciz	"LZMA_DATA_ERROR"               # string offset=463
.Linfo_string27:
	.asciz	"LZMA_BUF_ERROR"                # string offset=479
.Linfo_string28:
	.asciz	"LZMA_PROG_ERROR"               # string offset=494
.Linfo_string29:
	.asciz	"LZMA_RUN"                      # string offset=510
.Linfo_string30:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=519
.Linfo_string31:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=535
.Linfo_string32:
	.asciz	"LZMA_FINISH"                   # string offset=551
.Linfo_string33:
	.asciz	"LZMA_CHECK_NONE"               # string offset=563
.Linfo_string34:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=579
.Linfo_string35:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=596
.Linfo_string36:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=613
.Linfo_string37:
	.asciz	"lzma_alloc"                    # string offset=631
.Linfo_string38:
	.asciz	"alloc"                         # string offset=642
.Linfo_string39:
	.asciz	"free"                          # string offset=648
.Linfo_string40:
	.asciz	"opaque"                        # string offset=653
.Linfo_string41:
	.asciz	"lzma_allocator"                # string offset=660
.Linfo_string42:
	.asciz	"lzma_free"                     # string offset=675
.Linfo_string43:
	.asciz	"validate_chain"                # string offset=685
.Linfo_string44:
	.asciz	"lzma_ret"                      # string offset=700
.Linfo_string45:
	.asciz	"filters"                       # string offset=709
.Linfo_string46:
	.asciz	"options"                       # string offset=717
.Linfo_string47:
	.asciz	"lzma_filter"                   # string offset=725
.Linfo_string48:
	.asciz	"count"                         # string offset=737
.Linfo_string49:
	.asciz	"i"                             # string offset=743
.Linfo_string50:
	.asciz	"changes_size_count"            # string offset=745
.Linfo_string51:
	.asciz	"j"                             # string offset=764
.Linfo_string52:
	.asciz	"lzma_next_filter_init"         # string offset=766
.Linfo_string53:
	.asciz	"coder"                         # string offset=788
.Linfo_string54:
	.asciz	"lzma_coder"                    # string offset=794
.Linfo_string55:
	.asciz	"init"                          # string offset=805
.Linfo_string56:
	.asciz	"uintptr_t"                     # string offset=810
.Linfo_string57:
	.asciz	"code"                          # string offset=820
.Linfo_string58:
	.asciz	"unsigned char"                 # string offset=825
.Linfo_string59:
	.asciz	"__uint8_t"                     # string offset=839
.Linfo_string60:
	.asciz	"uint8_t"                       # string offset=849
.Linfo_string61:
	.asciz	"lzma_action"                   # string offset=857
.Linfo_string62:
	.asciz	"lzma_code_function"            # string offset=869
.Linfo_string63:
	.asciz	"end"                           # string offset=888
.Linfo_string64:
	.asciz	"lzma_end_function"             # string offset=892
.Linfo_string65:
	.asciz	"get_check"                     # string offset=910
.Linfo_string66:
	.asciz	"lzma_check"                    # string offset=920
.Linfo_string67:
	.asciz	"memconfig"                     # string offset=931
.Linfo_string68:
	.asciz	"update"                        # string offset=941
.Linfo_string69:
	.asciz	"lzma_next_coder_s"             # string offset=948
.Linfo_string70:
	.asciz	"lzma_next_coder"               # string offset=966
.Linfo_string71:
	.asciz	"lzma_init_function"            # string offset=982
.Linfo_string72:
	.asciz	"lzma_filter_info_s"            # string offset=1001
.Linfo_string73:
	.asciz	"lzma_filter_info"              # string offset=1020
.Linfo_string74:
	.asciz	"lzma_next_end"                 # string offset=1037
.Linfo_string75:
	.asciz	"DW_ATE_unsigned_8"             # string offset=1051
.Linfo_string76:
	.asciz	"DW_ATE_unsigned_1"             # string offset=1069
.Linfo_string77:
	.asciz	"lzma_filters_copy"             # string offset=1087
.Linfo_string78:
	.asciz	"lzma_raw_coder_init"           # string offset=1105
.Linfo_string79:
	.asciz	"lzma_raw_coder_memusage"       # string offset=1125
.Linfo_string80:
	.asciz	"src"                           # string offset=1149
.Linfo_string81:
	.asciz	"dest"                          # string offset=1153
.Linfo_string82:
	.asciz	"allocator"                     # string offset=1158
.Linfo_string83:
	.asciz	"error"                         # string offset=1168
.Linfo_string84:
	.asciz	"ret"                           # string offset=1174
.Linfo_string85:
	.asciz	"next"                          # string offset=1178
.Linfo_string86:
	.asciz	"coder_find"                    # string offset=1183
.Linfo_string87:
	.asciz	"memusage"                      # string offset=1194
.Linfo_string88:
	.asciz	"lzma_filter_coder"             # string offset=1203
.Linfo_string89:
	.asciz	"lzma_filter_find"              # string offset=1221
.Linfo_string90:
	.asciz	"is_encoder"                    # string offset=1238
.Linfo_string91:
	.asciz	"fc"                            # string offset=1249
.Linfo_string92:
	.asciz	"ret_"                          # string offset=1252
.Linfo_string93:
	.asciz	"total"                         # string offset=1257
.Linfo_string94:
	.asciz	"usage"                         # string offset=1263
.Linfo_string95:
	.asciz	"tmp"                           # string offset=1269
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	features
	.quad	.Lfunc_begin0
	.quad	.Ltmp45
	.quad	.Ltmp64
	.quad	.Ltmp82
	.quad	.Ltmp108
	.quad	.Ltmp120
	.quad	.Lfunc_begin1
	.quad	.Ltmp126
	.quad	.Ltmp158
	.quad	.Ltmp160
	.quad	.Ltmp171
	.quad	.Ltmp172
	.quad	.Ltmp161
	.quad	.Ltmp173
	.quad	.Ltmp182
	.quad	.Ltmp186
	.quad	.Lfunc_begin2
	.quad	.Ltmp191
	.quad	.Ltmp232
	.quad	.Ltmp227
	.quad	.Ltmp233
	.quad	.Ltmp116
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
