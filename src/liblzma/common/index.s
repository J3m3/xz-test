	.text
	.file	"index.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/index.c" md5 0xa67edd3e4f07ad87d5aa64b659eab087
	.file	1 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	2 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	3 "liblzma/api/lzma" "index.h" md5 0x923fbd07d3b348bf7a676d089b5c066f
	.file	4 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	7 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	8 "liblzma/api/lzma" "stream_flags.h" md5 0xd3814c86a389337e759db33a259f1072
	.globl	lzma_index_init                 # -- Begin function lzma_index_init
	.p2align	4, 0x90
	.type	lzma_index_init,@function
lzma_index_init:                        # @lzma_index_init
.Lfunc_begin0:
	.loc	0 399 0                         # liblzma/common/index.c:399:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_init:allocator <- $rdi
	#DEBUG_VALUE: index_init_plain:allocator <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
.Ltmp0:
	.loc	0 382 18 prologue_end           # liblzma/common/index.c:382:18
	movl	$80, %edi
.Ltmp1:
	#DEBUG_VALUE: index_init_plain:allocator <- $r14
	#DEBUG_VALUE: lzma_index_init:allocator <- $r14
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp2:
	#DEBUG_VALUE: index_init_plain:i <- $rax
	.loc	0 383 8                         # liblzma/common/index.c:383:8
	testq	%rax, %rax
.Ltmp3:
	.loc	0 383 6 is_stmt 0               # liblzma/common/index.c:383:6
	je	.LBB0_5
.Ltmp4:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_index_init:allocator <- $r14
	#DEBUG_VALUE: index_init_plain:allocator <- $r14
	#DEBUG_VALUE: index_init_plain:i <- $rax
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%rax, %rbx
.Ltmp5:
	#DEBUG_VALUE: index_tree_init:tree <- $rbx
	.loc	0 185 17 is_stmt 1              # liblzma/common/index.c:185:17
	xorps	%xmm0, %xmm0
	movups	%xmm0, 12(%rax)
	movups	%xmm0, (%rax)
.Ltmp6:
	.loc	0 385 24                        # liblzma/common/index.c:385:24
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	.loc	0 389 15                        # liblzma/common/index.c:389:15
	movq	$512, 64(%rax)                  # imm = 0x200
	.loc	0 390 13                        # liblzma/common/index.c:390:13
	movl	$0, 72(%rax)
.Ltmp7:
	#DEBUG_VALUE: lzma_index_init:i <- $rbx
	#DEBUG_VALUE: index_stream_init:compressed_base <- 0
	#DEBUG_VALUE: index_stream_init:uncompressed_base <- 0
	#DEBUG_VALUE: index_stream_init:stream_number <- 1
	#DEBUG_VALUE: index_stream_init:block_number_base <- 0
	#DEBUG_VALUE: index_stream_init:allocator <- $r14
	.loc	0 345 20                        # liblzma/common/index.c:345:20
	movl	$168, %edi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp8:
	#DEBUG_VALUE: index_init_plain:i <- $rbx
	#DEBUG_VALUE: index_stream_init:s <- $rax
	.loc	0 346 8                         # liblzma/common/index.c:346:8
	testq	%rax, %rax
.Ltmp9:
	.loc	0 346 6 is_stmt 0               # liblzma/common/index.c:346:6
	je	.LBB0_4
.Ltmp10:
# %bb.2:                                # %if.end4
	#DEBUG_VALUE: lzma_index_init:allocator <- $r14
	#DEBUG_VALUE: index_init_plain:allocator <- $r14
	#DEBUG_VALUE: index_init_plain:i <- $rbx
	#DEBUG_VALUE: index_tree_init:tree <- $rbx
	#DEBUG_VALUE: lzma_index_init:i <- $rbx
	#DEBUG_VALUE: index_stream_init:compressed_base <- 0
	#DEBUG_VALUE: index_stream_init:uncompressed_base <- 0
	#DEBUG_VALUE: index_stream_init:stream_number <- 1
	#DEBUG_VALUE: index_stream_init:block_number_base <- 0
	#DEBUG_VALUE: index_stream_init:allocator <- $r14
	#DEBUG_VALUE: index_stream_init:s <- $rax
	.loc	0 185 17 is_stmt 1              # liblzma/common/index.c:185:17
	xorps	%xmm0, %xmm0
.Ltmp11:
	.loc	0 350 26                        # liblzma/common/index.c:350:26
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	movq	$0, 32(%rax)
	.loc	0 355 12                        # liblzma/common/index.c:355:12
	movl	$1, 40(%rax)
.Ltmp12:
	#DEBUG_VALUE: index_tree_init:tree <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $rax
	.loc	0 360 18                        # liblzma/common/index.c:360:18
	movups	%xmm0, 88(%rax)
.Ltmp13:
	.loc	0 185 17                        # liblzma/common/index.c:185:17
	movups	%xmm0, 48(%rax)
	movups	%xmm0, 64(%rax)
	movl	$0, 80(%rax)
.Ltmp14:
	.loc	0 362 26                        # liblzma/common/index.c:362:26
	movl	$-1, 104(%rax)
	.loc	0 363 20                        # liblzma/common/index.c:363:20
	movq	$0, 160(%rax)
.Ltmp15:
	#DEBUG_VALUE: lzma_index_init:s <- $rax
	.loc	0 410 2                         # liblzma/common/index.c:410:2
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	index_tree_append
.Ltmp16:
	.loc	0 0 2 is_stmt 0                 # liblzma/common/index.c:0:2
	jmp	.LBB0_6
.Ltmp17:
.LBB0_4:                                # %if.then3
	#DEBUG_VALUE: lzma_index_init:allocator <- $r14
	#DEBUG_VALUE: lzma_index_init:i <- $rbx
	#DEBUG_VALUE: lzma_index_init:s <- $rax
	.loc	0 406 3 is_stmt 1               # liblzma/common/index.c:406:3
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
.Ltmp18:
.LBB0_5:                                # %cleanup5
	#DEBUG_VALUE: lzma_index_init:allocator <- $r14
	#DEBUG_VALUE: index_init_plain:allocator <- $r14
	.loc	0 0 3 is_stmt 0                 # liblzma/common/index.c:0:3
	xorl	%ebx, %ebx
.Ltmp19:
.LBB0_6:                                # %cleanup5
	#DEBUG_VALUE: lzma_index_init:allocator <- $r14
	.loc	0 413 1 is_stmt 1               # liblzma/common/index.c:413:1
	movq	%rbx, %rax
	.loc	0 413 1 epilogue_begin is_stmt 0 # liblzma/common/index.c:413:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp20:
	#DEBUG_VALUE: lzma_index_init:allocator <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp21:
.Lfunc_end0:
	.size	lzma_index_init, .Lfunc_end0-lzma_index_init
	.cfi_endproc
	.file	9 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_tree_append
	.type	index_tree_append,@function
index_tree_append:                      # @index_tree_append
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	.loc	0 233 23 prologue_end is_stmt 1 # liblzma/common/index.c:233:23
	movq	16(%rdi), %rax
	.loc	0 233 15 is_stmt 0              # liblzma/common/index.c:233:15
	movq	%rax, 16(%rsi)
	.loc	0 235 14 is_stmt 1              # liblzma/common/index.c:235:14
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rsi)
	.loc	0 237 2                         # liblzma/common/index.c:237:2
	incl	24(%rdi)
.Ltmp22:
	.loc	0 240 17                        # liblzma/common/index.c:240:17
	cmpq	$0, (%rdi)
.Ltmp23:
	.loc	0 240 6 is_stmt 0               # liblzma/common/index.c:240:6
	je	.LBB1_1
.Ltmp24:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	.loc	0 253 8 is_stmt 1               # liblzma/common/index.c:253:8
	movq	16(%rdi), %rax
	.loc	0 253 25 is_stmt 0              # liblzma/common/index.c:253:25
	movq	%rsi, 32(%rax)
	.loc	0 254 18 is_stmt 1              # liblzma/common/index.c:254:18
	movq	%rsi, 16(%rdi)
	.loc	0 261 22                        # liblzma/common/index.c:261:22
	movl	24(%rdi), %eax
.Ltmp25:
	#DEBUG_VALUE: bsr32:n <- $eax
	.loc	0 0 22 is_stmt 0                # liblzma/common/index.c:0:22
	movl	%eax, %ecx
	shll	$16, %ecx
.Ltmp26:
	#DEBUG_VALUE: bsr32:i <- 31
	.file	10 "common" "tuklib_integer.h" md5 0x877bd6a1d04ec1170bc985c87ef412ed
	.loc	10 393 33 is_stmt 1             # common/tuklib_integer.h:393:33
	xorl	%edx, %edx
	cmpl	$65536, %eax                    # imm = 0x10000
	setae	%dl
.Ltmp27:
	.loc	10 393 6 is_stmt 0              # common/tuklib_integer.h:393:6
	cmovael	%eax, %ecx
	shll	$4, %edx
	leal	15(%rdx), %r8d
.Ltmp28:
	#DEBUG_VALUE: bsr32:i <- $r8d
	.loc	10 398 6 is_stmt 1              # common/tuklib_integer.h:398:6
	movl	%ecx, %r9d
	shll	$8, %r9d
	orl	$7, %edx
.Ltmp29:
	#DEBUG_VALUE: bsr32:n <- $ecx
	.loc	10 398 33 is_stmt 0             # common/tuklib_integer.h:398:33
	cmpl	$16777216, %ecx                 # imm = 0x1000000
.Ltmp30:
	.loc	10 398 6                        # common/tuklib_integer.h:398:6
	cmovael	%ecx, %r9d
	cmovael	%r8d, %edx
.Ltmp31:
	#DEBUG_VALUE: bsr32:i <- $edx
	.loc	10 403 6 is_stmt 1              # common/tuklib_integer.h:403:6
	movl	%r9d, %r8d
	shll	$4, %r8d
	leal	-4(%rdx), %r10d
.Ltmp32:
	#DEBUG_VALUE: bsr32:n <- $r9d
	.loc	10 403 33 is_stmt 0             # common/tuklib_integer.h:403:33
	cmpl	$268435456, %r9d                # imm = 0x10000000
.Ltmp33:
	.loc	10 403 6                        # common/tuklib_integer.h:403:6
	cmovael	%r9d, %r8d
	cmovael	%edx, %r10d
.Ltmp34:
	#DEBUG_VALUE: bsr32:i <- $r10d
	.loc	10 408 6 is_stmt 1              # common/tuklib_integer.h:408:6
	leal	(,%r8,4), %ecx
.Ltmp35:
	#DEBUG_VALUE: bsr32:n <- $r8d
	.loc	10 408 33 is_stmt 0             # common/tuklib_integer.h:408:33
	cmpl	$1073741824, %r8d               # imm = 0x40000000
.Ltmp36:
	.loc	10 408 6                        # common/tuklib_integer.h:408:6
	cmovael	%r8d, %ecx
	leal	-2(%r10), %edx
	cmovael	%r10d, %edx
.Ltmp37:
	#DEBUG_VALUE: bsr32:i <- $edx
	#DEBUG_VALUE: bsr32:n <- $ecx
	.loc	10 413 6 is_stmt 1              # common/tuklib_integer.h:413:6
	notl	%ecx
.Ltmp38:
	sarl	$31, %ecx
	addl	%edx, %ecx
.Ltmp39:
	#DEBUG_VALUE: bsr32:i <- $ecx
	.loc	10 0 6 is_stmt 0                # common/tuklib_integer.h:0:6
	movl	$1, %edx
.Ltmp40:
                                        # kill: def $cl killed $cl killed $ecx
	.loc	0 261 43 is_stmt 1              # liblzma/common/index.c:261:43
	shll	%cl, %edx
.Ltmp41:
	#DEBUG_VALUE: index_tree_append:up <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_xor, DW_OP_stack_value] $eax, $edx
	.loc	0 262 9                         # liblzma/common/index.c:262:9
	cmpl	%edx, %eax
.Ltmp42:
	.loc	0 262 6 is_stmt 0               # liblzma/common/index.c:262:6
	je	.LBB1_12
.Ltmp43:
# %bb.3:                                # %if.then9
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	#DEBUG_VALUE: index_tree_append:up <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_xor, DW_OP_stack_value] $eax, $edx
	#DEBUG_VALUE: ctz32:n <- $eax
	#DEBUG_VALUE: ctz32:i <- 0
	.loc	0 0 6                           # liblzma/common/index.c:0:6
	movl	%eax, %ecx
	shrl	$16, %ecx
.Ltmp44:
	.loc	10 497 33 is_stmt 1             # common/tuklib_integer.h:497:33
	xorl	%edx, %edx
.Ltmp45:
	testw	%ax, %ax
.Ltmp46:
	.loc	10 497 6 is_stmt 0              # common/tuklib_integer.h:497:6
	cmovnel	%eax, %ecx
.Ltmp47:
	.loc	10 497 33                       # common/tuklib_integer.h:497:33
	sete	%dl
.Ltmp48:
	.loc	10 497 6                        # common/tuklib_integer.h:497:6
	shll	$4, %edx
.Ltmp49:
	#DEBUG_VALUE: ctz32:i <- $edx
	#DEBUG_VALUE: ctz32:n <- $ecx
	.loc	10 502 6 is_stmt 1              # common/tuklib_integer.h:502:6
	movl	%ecx, %eax
	shrl	$8, %eax
	leal	8(%rdx), %r8d
.Ltmp50:
	.loc	10 502 33 is_stmt 0             # common/tuklib_integer.h:502:33
	testb	%cl, %cl
.Ltmp51:
	.loc	10 502 6                        # common/tuklib_integer.h:502:6
	cmovnel	%ecx, %eax
	cmovnel	%edx, %r8d
.Ltmp52:
	#DEBUG_VALUE: ctz32:i <- $r8d
	#DEBUG_VALUE: ctz32:n <- $eax
	.loc	10 507 6 is_stmt 1              # common/tuklib_integer.h:507:6
	movl	%eax, %ecx
	shrl	$4, %ecx
	leal	4(%r8), %edx
.Ltmp53:
	.loc	10 507 33 is_stmt 0             # common/tuklib_integer.h:507:33
	testb	$15, %al
.Ltmp54:
	.loc	10 507 6                        # common/tuklib_integer.h:507:6
	cmovnel	%eax, %ecx
	cmovnel	%r8d, %edx
.Ltmp55:
	#DEBUG_VALUE: ctz32:i <- $edx
	#DEBUG_VALUE: ctz32:n <- $ecx
	.loc	10 512 6 is_stmt 1              # common/tuklib_integer.h:512:6
	movl	%ecx, %r8d
	shrl	$2, %r8d
	leal	2(%rdx), %r9d
.Ltmp56:
	.loc	10 512 33 is_stmt 0             # common/tuklib_integer.h:512:33
	testb	$3, %cl
.Ltmp57:
	.loc	10 512 6                        # common/tuklib_integer.h:512:6
	cmovnel	%ecx, %r8d
	notl	%r8d
	cmovnel	%edx, %r9d
.Ltmp58:
	#DEBUG_VALUE: ctz32:i <- $r9d
	#DEBUG_VALUE: ctz32:n <- undef
	.loc	10 517 6 is_stmt 1              # common/tuklib_integer.h:517:6
	andl	$1, %r8d
.Ltmp59:
	#DEBUG_VALUE: ctz32:i <- undef
	.loc	0 264 27                        # liblzma/common/index.c:264:27
	leal	(%r9,%r8), %eax
	addl	$2, %eax
.Ltmp60:
	#DEBUG_VALUE: index_tree_append:up <- $eax
	.loc	0 265 3                         # liblzma/common/index.c:265:3
	leal	(%r9,%r8), %ecx
	incl	%ecx
	movl	%eax, %edx
	andl	$7, %edx
	je	.LBB1_7
.Ltmp61:
# %bb.4:                                # %do.body.prol.preheader
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	#DEBUG_VALUE: index_tree_append:up <- $eax
	.loc	0 0 3 is_stmt 0                 # liblzma/common/index.c:0:3
	xorl	%r8d, %r8d
.Ltmp62:
	.p2align	4, 0x90
.LBB1_5:                                # %do.body.prol
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	#DEBUG_VALUE: index_tree_append:up <- undef
	.loc	0 266 17 is_stmt 1              # liblzma/common/index.c:266:17
	movq	16(%rsi), %rsi
.Ltmp63:
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	.loc	0 267 3                         # liblzma/common/index.c:267:3
	incl	%r8d
	cmpl	%r8d, %edx
	jne	.LBB1_5
.Ltmp64:
# %bb.6:                                # %do.body.prol.loopexit.loopexit
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	.loc	0 265 3                         # liblzma/common/index.c:265:3
	subl	%r8d, %eax
.Ltmp65:
.LBB1_7:                                # %do.body.prol.loopexit
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	cmpl	$7, %ecx
	jb	.LBB1_9
.Ltmp66:
	.p2align	4, 0x90
.LBB1_8:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	#DEBUG_VALUE: index_tree_append:up <- $eax
	.loc	0 266 17                        # liblzma/common/index.c:266:17
	movq	16(%rsi), %rcx
.Ltmp67:
	#DEBUG_VALUE: index_tree_append:node <- $rcx
	#DEBUG_VALUE: index_tree_append:up <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $eax
	movq	16(%rcx), %rcx
.Ltmp68:
	#DEBUG_VALUE: index_tree_append:node <- $rcx
	#DEBUG_VALUE: index_tree_append:up <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $eax
	movq	16(%rcx), %rcx
.Ltmp69:
	#DEBUG_VALUE: index_tree_append:node <- $rcx
	#DEBUG_VALUE: index_tree_append:up <- [DW_OP_constu 3, DW_OP_minus, DW_OP_stack_value] $eax
	movq	16(%rcx), %rcx
.Ltmp70:
	#DEBUG_VALUE: index_tree_append:node <- $rcx
	#DEBUG_VALUE: index_tree_append:up <- [DW_OP_constu 4, DW_OP_minus, DW_OP_stack_value] $eax
	movq	16(%rcx), %rcx
.Ltmp71:
	#DEBUG_VALUE: index_tree_append:node <- $rcx
	#DEBUG_VALUE: index_tree_append:up <- [DW_OP_constu 5, DW_OP_minus, DW_OP_stack_value] $eax
	movq	16(%rcx), %rcx
.Ltmp72:
	#DEBUG_VALUE: index_tree_append:node <- $rcx
	#DEBUG_VALUE: index_tree_append:up <- [DW_OP_constu 6, DW_OP_minus, DW_OP_stack_value] $eax
	movq	16(%rcx), %rcx
.Ltmp73:
	#DEBUG_VALUE: index_tree_append:node <- $rcx
	#DEBUG_VALUE: index_tree_append:up <- [DW_OP_constu 7, DW_OP_minus, DW_OP_stack_value] $eax
	movq	16(%rcx), %rsi
.Ltmp74:
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	.loc	0 267 17                        # liblzma/common/index.c:267:17
	addl	$-8, %eax
.Ltmp75:
	#DEBUG_VALUE: index_tree_append:up <- $eax
	.loc	0 267 3 is_stmt 0               # liblzma/common/index.c:267:3
	jne	.LBB1_8
.Ltmp76:
.LBB1_9:                                # %do.end
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	.loc	0 272 13 is_stmt 1              # liblzma/common/index.c:272:13
	movq	16(%rsi), %rcx
.Ltmp77:
	.loc	0 270 34                        # liblzma/common/index.c:270:34
	movq	32(%rsi), %rax
.Ltmp78:
	#DEBUG_VALUE: pivot <- $rax
	.loc	0 272 7                         # liblzma/common/index.c:272:7
	leaq	32(%rcx), %rdx
.Ltmp79:
	.loc	0 272 20 is_stmt 0              # liblzma/common/index.c:272:20
	testq	%rcx, %rcx
.Ltmp80:
	.loc	0 272 7                         # liblzma/common/index.c:272:7
	cmoveq	%rdi, %rdx
.Ltmp81:
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%rax, (%rdx)
.Ltmp82:
	.loc	0 279 25 is_stmt 1              # liblzma/common/index.c:279:25
	movq	16(%rsi), %rcx
	.loc	0 279 17 is_stmt 0              # liblzma/common/index.c:279:17
	movq	%rcx, 16(%rax)
	.loc	0 281 24 is_stmt 1              # liblzma/common/index.c:281:24
	movq	24(%rax), %rcx
	.loc	0 281 15 is_stmt 0              # liblzma/common/index.c:281:15
	movq	%rcx, 32(%rsi)
.Ltmp83:
	.loc	0 282 19 is_stmt 1              # liblzma/common/index.c:282:19
	testq	%rcx, %rcx
.Ltmp84:
	.loc	0 282 7 is_stmt 0               # liblzma/common/index.c:282:7
	je	.LBB1_11
.Ltmp85:
# %bb.10:                               # %if.then28
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	#DEBUG_VALUE: pivot <- $rax
	.loc	0 283 24 is_stmt 1              # liblzma/common/index.c:283:24
	movq	%rsi, 16(%rcx)
.Ltmp86:
.LBB1_11:                               # %if.end31
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	#DEBUG_VALUE: pivot <- $rax
	.loc	0 285 15                        # liblzma/common/index.c:285:15
	movq	%rsi, 24(%rax)
	.loc	0 286 16                        # liblzma/common/index.c:286:16
	movq	%rax, 16(%rsi)
.Ltmp87:
.LBB1_12:                               # %return
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	.loc	0 290 1                         # liblzma/common/index.c:290:1
	retq
.Ltmp88:
.LBB1_1:                                # %if.then
	#DEBUG_VALUE: index_tree_append:tree <- $rdi
	#DEBUG_VALUE: index_tree_append:node <- $rsi
	.loc	0 241 14                        # liblzma/common/index.c:241:14
	movq	%rsi, (%rdi)
	.loc	0 242 18                        # liblzma/common/index.c:242:18
	movq	%rsi, 8(%rdi)
	.loc	0 243 19                        # liblzma/common/index.c:243:19
	movq	%rsi, 16(%rdi)
.Ltmp89:
	.loc	0 290 1                         # liblzma/common/index.c:290:1
	retq
.Ltmp90:
.Lfunc_end1:
	.size	index_tree_append, .Lfunc_end1-index_tree_append
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_end                  # -- Begin function lzma_index_end
	.p2align	4, 0x90
	.type	lzma_index_end,@function
lzma_index_end:                         # @lzma_index_end
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_end:i <- $rdi
	#DEBUG_VALUE: lzma_index_end:allocator <- $rsi
	.loc	0 421 8 prologue_end            # liblzma/common/index.c:421:8
	testq	%rdi, %rdi
.Ltmp91:
	.loc	0 421 6 is_stmt 0               # liblzma/common/index.c:421:6
	je	.LBB2_3
.Ltmp92:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_index_end:i <- $rdi
	#DEBUG_VALUE: lzma_index_end:allocator <- $rsi
	.loc	0 422 3 is_stmt 1               # liblzma/common/index.c:422:3
	movq	(%rdi), %rax
.Ltmp93:
	#DEBUG_VALUE: index_tree_end:tree <- undef
	#DEBUG_VALUE: index_tree_end:allocator <- $rsi
	.loc	0 221 17                        # liblzma/common/index.c:221:17
	testq	%rax, %rax
.Ltmp94:
	#DEBUG_VALUE: index_tree_end:free_func <- undef
	.loc	0 221 6 is_stmt 0               # liblzma/common/index.c:221:6
	je	lzma_free@PLT                   # TAILCALL
.Ltmp95:
# %bb.2:                                # %if.then.i
	#DEBUG_VALUE: lzma_index_end:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_end:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	.loc	0 222 3 is_stmt 1               # liblzma/common/index.c:222:3
	movl	$index_stream_end, %edx
	movq	%rdi, %r14
	movq	%rax, %rdi
	movq	%rsi, %rbx
	callq	index_tree_node_end
.Ltmp96:
	.loc	0 0 3 is_stmt 0                 # liblzma/common/index.c:0:3
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.loc	0 423 3 is_stmt 1               # liblzma/common/index.c:423:3
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp98:
.LBB2_3:                                # %if.end
	#DEBUG_VALUE: lzma_index_end:i <- $rdi
	#DEBUG_VALUE: lzma_index_end:allocator <- $rsi
	.loc	0 426 2                         # liblzma/common/index.c:426:2
	retq
.Ltmp99:
.Lfunc_end2:
	.size	lzma_index_end, .Lfunc_end2-lzma_index_end
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_stream_end
	.type	index_stream_end,@function
index_stream_end:                       # @index_stream_end
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: index_stream_end:node <- $rdi
	#DEBUG_VALUE: index_stream_end:allocator <- $rsi
	#DEBUG_VALUE: index_stream_end:s <- $rdi
	.loc	0 374 2 prologue_end            # liblzma/common/index.c:374:2
	movq	56(%rdi), %rdi
.Ltmp100:
	#DEBUG_VALUE: index_stream_end:node <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: index_tree_end:allocator <- undef
	#DEBUG_VALUE: index_tree_end:free_func <- 0
	.loc	0 221 17                        # liblzma/common/index.c:221:17
	testq	%rdi, %rdi
.Ltmp101:
	.loc	0 221 6 is_stmt 0               # liblzma/common/index.c:221:6
	je	.LBB3_1
.Ltmp102:
# %bb.2:                                # %if.then.i
	#DEBUG_VALUE: index_stream_end:node <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: index_stream_end:allocator <- $rsi
	#DEBUG_VALUE: index_tree_end:free_func <- 0
	.loc	0 222 3 is_stmt 1               # liblzma/common/index.c:222:3
	xorl	%edx, %edx
.Ltmp103:
	jmp	index_tree_node_end             # TAILCALL
.Ltmp104:
.LBB3_1:                                # %index_tree_end.exit
	#DEBUG_VALUE: index_stream_end:node <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: index_stream_end:allocator <- $rsi
	.loc	0 376 1                         # liblzma/common/index.c:376:1
	retq
.Ltmp105:
.Lfunc_end3:
	.size	index_stream_end, .Lfunc_end3-index_stream_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_prealloc             # -- Begin function lzma_index_prealloc
	.p2align	4, 0x90
	.type	lzma_index_prealloc,@function
lzma_index_prealloc:                    # @lzma_index_prealloc
.Lfunc_begin4:
	.loc	0 432 0                         # liblzma/common/index.c:432:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_prealloc:i <- $rdi
	#DEBUG_VALUE: lzma_index_prealloc:records <- $rsi
	movabsq	$1152921504606846971, %rax      # imm = 0xFFFFFFFFFFFFFFB
.Ltmp106:
	.loc	0 433 6 prologue_end            # liblzma/common/index.c:433:6
	cmpq	%rax, %rsi
	cmovbq	%rsi, %rax
.Ltmp107:
	#DEBUG_VALUE: lzma_index_prealloc:records <- $rax
	.loc	0 436 14                        # liblzma/common/index.c:436:14
	movq	%rax, 64(%rdi)
	.loc	0 437 2                         # liblzma/common/index.c:437:2
	retq
.Ltmp108:
.Lfunc_end4:
	.size	lzma_index_prealloc, .Lfunc_end4-lzma_index_prealloc
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_memusage             # -- Begin function lzma_index_memusage
	.p2align	4, 0x90
	.type	lzma_index_memusage,@function
lzma_index_memusage:                    # @lzma_index_memusage
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_memusage:streams <- $rdi
	#DEBUG_VALUE: lzma_index_memusage:blocks <- $rsi
	#DEBUG_VALUE: lzma_index_memusage:alloc_overhead <- 32
	#DEBUG_VALUE: lzma_index_memusage:stream_base <- 296
	#DEBUG_VALUE: lzma_index_memusage:group_base <- 8288
	.loc	0 467 33 prologue_end           # liblzma/common/index.c:467:33
	leaq	511(%rsi), %rax
	.loc	0 467 38 is_stmt 0              # liblzma/common/index.c:467:38
	shrq	$9, %rax
.Ltmp109:
	#DEBUG_VALUE: lzma_index_memusage:groups <- $rax
	.loc	0 470 39 is_stmt 1              # liblzma/common/index.c:470:39
	imulq	$296, %rdi, %rcx                # imm = 0x128
.Ltmp110:
	#DEBUG_VALUE: lzma_index_memusage:streams_mem <- $rcx
	.loc	0 471 37                        # liblzma/common/index.c:471:37
	imulq	$8288, %rax, %rdx               # imm = 0x2060
.Ltmp111:
	#DEBUG_VALUE: lzma_index_memusage:groups_mem <- $rdx
	.loc	0 0 37 is_stmt 0                # liblzma/common/index.c:0:37
	movabsq	$-4294967296, %r8               # imm = 0xFFFFFFFF00000000
.Ltmp112:
	#DEBUG_VALUE: lzma_index_memusage:index_base <- 112
	#DEBUG_VALUE: lzma_index_memusage:limit <- -113
	.loc	0 480 19 is_stmt 1              # liblzma/common/index.c:480:19
	addq	%r8, %rdi
.Ltmp113:
	#DEBUG_VALUE: lzma_index_memusage:streams <- [DW_OP_LLVM_entry_value 1] $rdi
	incq	%r8
	movq	$-113, %r9
	subq	%rcx, %r9
	movabsq	$1139567201464682496, %rax      # imm = 0xFD08E5500FD0800
.Ltmp114:
	cmpq	%rax, %rsi
	leaq	112(%rcx,%rdx), %rax
	movq	$-1, %rcx
.Ltmp115:
	cmovaq	%rcx, %rax
	cmpq	%rdx, %r9
	cmovbq	%rcx, %rax
	cmpq	%r8, %rdi
	cmovbq	%rcx, %rax
.Ltmp116:
	.loc	0 487 1                         # liblzma/common/index.c:487:1
	retq
.Ltmp117:
.Lfunc_end5:
	.size	lzma_index_memusage, .Lfunc_end5-lzma_index_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_memused              # -- Begin function lzma_index_memused
	.p2align	4, 0x90
	.type	lzma_index_memused,@function
lzma_index_memused:                     # @lzma_index_memused
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_memused:i <- $rdi
	.loc	0 493 40 prologue_end           # liblzma/common/index.c:493:40
	movl	24(%rdi), %ecx
.Ltmp118:
	#DEBUG_VALUE: lzma_index_memusage:streams <- $ecx
	.loc	0 493 50 is_stmt 0              # liblzma/common/index.c:493:50
	movq	48(%rdi), %rax
.Ltmp119:
	#DEBUG_VALUE: lzma_index_memusage:blocks <- $rax
	#DEBUG_VALUE: lzma_index_memusage:alloc_overhead <- 32
	#DEBUG_VALUE: lzma_index_memusage:stream_base <- 296
	#DEBUG_VALUE: lzma_index_memusage:group_base <- 8288
	.loc	0 467 33 is_stmt 1              # liblzma/common/index.c:467:33
	leaq	511(%rax), %rdx
	.loc	0 467 38 is_stmt 0              # liblzma/common/index.c:467:38
	shrq	$9, %rdx
.Ltmp120:
	#DEBUG_VALUE: lzma_index_memusage:groups <- $rdx
	.loc	0 470 39 is_stmt 1              # liblzma/common/index.c:470:39
	imulq	$296, %rcx, %rsi                # imm = 0x128
.Ltmp121:
	#DEBUG_VALUE: lzma_index_memusage:streams_mem <- $rsi
	.loc	0 471 37                        # liblzma/common/index.c:471:37
	imulq	$8288, %rdx, %rdx               # imm = 0x2060
.Ltmp122:
	#DEBUG_VALUE: lzma_index_memusage:groups_mem <- $rdx
	.loc	0 0 37 is_stmt 0                # liblzma/common/index.c:0:37
	movq	$-113, %rdi
.Ltmp123:
	#DEBUG_VALUE: lzma_index_memused:i <- [DW_OP_LLVM_entry_value 1] $rdi
	subq	%rsi, %rdi
	cmpq	%rdx, %rdi
.Ltmp124:
	.loc	0 480 19 is_stmt 1              # liblzma/common/index.c:480:19
	leaq	112(%rsi,%rdx), %rdx
.Ltmp125:
	.loc	0 0 19 is_stmt 0                # liblzma/common/index.c:0:19
	movq	$-1, %rsi
.Ltmp126:
	.loc	0 480 19                        # liblzma/common/index.c:480:19
	cmovbq	%rsi, %rdx
	movabsq	$1139567201464682496, %rdi      # imm = 0xFD08E5500FD0800
.Ltmp127:
	#DEBUG_VALUE: lzma_index_memusage:index_base <- 112
	#DEBUG_VALUE: lzma_index_memusage:limit <- -113
	cmpq	%rdi, %rax
	cmovaq	%rsi, %rdx
	xorl	%eax, %eax
.Ltmp128:
	cmpq	$1, %rcx
	sbbq	%rax, %rax
	orq	%rdx, %rax
.Ltmp129:
	.loc	0 493 2 is_stmt 1               # liblzma/common/index.c:493:2
	retq
.Ltmp130:
.Lfunc_end6:
	.size	lzma_index_memused, .Lfunc_end6-lzma_index_memused
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_block_count          # -- Begin function lzma_index_block_count
	.p2align	4, 0x90
	.type	lzma_index_block_count,@function
lzma_index_block_count:                 # @lzma_index_block_count
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_block_count:i <- $rdi
	.loc	0 500 12 prologue_end           # liblzma/common/index.c:500:12
	movq	48(%rdi), %rax
	.loc	0 500 2 is_stmt 0               # liblzma/common/index.c:500:2
	retq
.Ltmp131:
.Lfunc_end7:
	.size	lzma_index_block_count, .Lfunc_end7-lzma_index_block_count
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_stream_count         # -- Begin function lzma_index_stream_count
	.p2align	4, 0x90
	.type	lzma_index_stream_count,@function
lzma_index_stream_count:                # @lzma_index_stream_count
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_stream_count:i <- $rdi
	.loc	0 507 20 prologue_end is_stmt 1 # liblzma/common/index.c:507:20
	movl	24(%rdi), %eax
	.loc	0 507 2 is_stmt 0               # liblzma/common/index.c:507:2
	retq
.Ltmp132:
.Lfunc_end8:
	.size	lzma_index_stream_count, .Lfunc_end8-lzma_index_stream_count
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_size                 # -- Begin function lzma_index_size
	.p2align	4, 0x90
	.type	lzma_index_size,@function
lzma_index_size:                        # @lzma_index_size
.Lfunc_begin9:
	.loc	0 513 0 is_stmt 1               # liblzma/common/index.c:513:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_size:i <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 514 23 prologue_end           # liblzma/common/index.c:514:23
	movq	48(%rdi), %rax
	.loc	0 514 40 is_stmt 0              # liblzma/common/index.c:514:40
	movq	56(%rdi), %rbx
.Ltmp133:
	#DEBUG_VALUE: index_size:index_list_size <- $rbx
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- $rbx
	#DEBUG_VALUE: index_size:count <- $rax
	#DEBUG_VALUE: index_size_unpadded:count <- $rax
	.file	11 "liblzma/common" "index.h" md5 0x8c1da33cfb6445c1ed40367774c91b69
	.loc	11 51 13 is_stmt 1              # liblzma/common/index.h:51:13
	movq	%rax, %rdi
.Ltmp134:
	#DEBUG_VALUE: lzma_index_size:i <- [DW_OP_LLVM_entry_value 1] $rdi
	callq	lzma_vli_size@PLT
.Ltmp135:
                                        # kill: def $eax killed $eax def $rax
	.loc	11 51 11 is_stmt 0              # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp136:
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	%rbx, %rax
	addq	$7, %rax
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rax
.Ltmp137:
	.loc	0 514 2 epilogue_begin is_stmt 1 # liblzma/common/index.c:514:2
	popq	%rbx
.Ltmp138:
	.cfi_def_cfa_offset 8
	retq
.Ltmp139:
.Lfunc_end9:
	.size	lzma_index_size, .Lfunc_end9-lzma_index_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_total_size           # -- Begin function lzma_index_total_size
	.p2align	4, 0x90
	.type	lzma_index_total_size,@function
lzma_index_total_size:                  # @lzma_index_total_size
.Lfunc_begin10:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_total_size:i <- $rdi
	.loc	0 521 12 prologue_end           # liblzma/common/index.c:521:12
	movq	40(%rdi), %rax
	.loc	0 521 2 is_stmt 0               # liblzma/common/index.c:521:2
	retq
.Ltmp140:
.Lfunc_end10:
	.size	lzma_index_total_size, .Lfunc_end10-lzma_index_total_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_stream_size          # -- Begin function lzma_index_stream_size
	.p2align	4, 0x90
	.type	lzma_index_stream_size,@function
lzma_index_stream_size:                 # @lzma_index_stream_size
.Lfunc_begin11:
	.loc	0 527 0 is_stmt 1               # liblzma/common/index.c:527:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_stream_size:i <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	.loc	0 529 38 prologue_end           # liblzma/common/index.c:529:38
	movq	40(%rdi), %rbx
	.loc	0 530 20                        # liblzma/common/index.c:530:20
	movq	48(%rdi), %rax
	.loc	0 530 37 is_stmt 0              # liblzma/common/index.c:530:37
	movq	56(%rdi), %r14
.Ltmp141:
	#DEBUG_VALUE: index_size:index_list_size <- $r14
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- $r14
	#DEBUG_VALUE: index_size:count <- $rax
	#DEBUG_VALUE: index_size_unpadded:count <- $rax
	.loc	11 51 13 is_stmt 1              # liblzma/common/index.h:51:13
	movq	%rax, %rdi
.Ltmp142:
	#DEBUG_VALUE: lzma_index_stream_size:i <- [DW_OP_LLVM_entry_value 1] $rdi
	callq	lzma_vli_size@PLT
.Ltmp143:
                                        # kill: def $eax killed $eax def $rax
	.loc	11 51 11 is_stmt 0              # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp144:
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	%r14, %rax
	addq	$7, %rax
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rax
.Ltmp145:
	.loc	0 531 4 is_stmt 1               # liblzma/common/index.c:531:4
	addq	%rbx, %rax
	addq	$24, %rax
	.loc	0 529 2 epilogue_begin          # liblzma/common/index.c:529:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp146:
	.cfi_def_cfa_offset 8
	retq
.Ltmp147:
.Lfunc_end11:
	.size	lzma_index_stream_size, .Lfunc_end11-lzma_index_stream_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_file_size            # -- Begin function lzma_index_file_size
	.p2align	4, 0x90
	.type	lzma_index_file_size,@function
lzma_index_file_size:                   # @lzma_index_file_size
.Lfunc_begin12:
	.loc	0 561 0                         # liblzma/common/index.c:561:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_file_size:i <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	.loc	0 562 60 prologue_end           # liblzma/common/index.c:562:60
	movq	16(%rdi), %rax
.Ltmp148:
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	.loc	0 564 33                        # liblzma/common/index.c:564:33
	movq	8(%rax), %rbx
	.loc	0 563 57                        # liblzma/common/index.c:563:57
	movq	72(%rax), %rcx
.Ltmp149:
	#DEBUG_VALUE: lzma_index_file_size:g <- $rcx
	.loc	0 565 6                         # liblzma/common/index.c:565:6
	testq	%rcx, %rcx
	.loc	0 565 4 is_stmt 0               # liblzma/common/index.c:565:4
	je	.LBB12_1
.Ltmp150:
# %bb.2:                                # %cond.false
	#DEBUG_VALUE: lzma_index_file_size:i <- $rdi
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	#DEBUG_VALUE: lzma_index_file_size:g <- $rcx
	.loc	0 565 34                        # liblzma/common/index.c:565:34
	movq	56(%rcx), %rdx
	.loc	0 565 40                        # liblzma/common/index.c:565:40
	shlq	$4, %rdx
	movq	72(%rcx,%rdx), %rcx
.Ltmp151:
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	$3, %rcx
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rcx
.Ltmp152:
	#DEBUG_VALUE: index_file_size:compressed_base <- $rbx
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rcx
	#DEBUG_VALUE: index_file_size:record_count <- undef
	#DEBUG_VALUE: index_file_size:index_list_size <- undef
	#DEBUG_VALUE: index_file_size:stream_padding <- undef
	.loc	0 545 39 is_stmt 1              # liblzma/common/index.c:545:39
	addq	%rcx, %rbx
.Ltmp153:
	#DEBUG_VALUE: vli_ceil4:vli <- $rcx
	.loc	0 546 4                         # liblzma/common/index.c:546:4
	addq	160(%rax), %rbx
.Ltmp154:
	.loc	0 547 16                        # liblzma/common/index.c:547:16
	addq	$24, %rbx
.Ltmp155:
	#DEBUG_VALUE: index_file_size:file_size <- $rbx
	.loc	0 547 6 is_stmt 0               # liblzma/common/index.c:547:6
	js	.LBB12_5
.Ltmp156:
.LBB12_4:                               # %if.end.i
	#DEBUG_VALUE: lzma_index_file_size:i <- $rdi
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rcx
	.loc	0 566 7 is_stmt 1               # liblzma/common/index.c:566:7
	movq	88(%rax), %rdi
.Ltmp157:
	#DEBUG_VALUE: lzma_index_file_size:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: index_file_size:record_count <- $rdi
	#DEBUG_VALUE: index_size:count <- $rdi
	#DEBUG_VALUE: index_size_unpadded:count <- $rdi
	.loc	0 566 24 is_stmt 0              # liblzma/common/index.c:566:24
	movq	96(%rax), %r14
.Ltmp158:
	#DEBUG_VALUE: index_file_size:index_list_size <- $r14
	#DEBUG_VALUE: index_size:index_list_size <- $r14
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- $r14
	.loc	11 51 13 is_stmt 1              # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp159:
                                        # kill: def $eax killed $eax def $rax
	.loc	11 51 11 is_stmt 0              # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp160:
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	leaq	(%r14,%rax), %rcx
	addq	$7, %rcx
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rcx
.Ltmp161:
	.loc	0 551 12 is_stmt 1              # liblzma/common/index.c:551:12
	addq	%rbx, %rcx
.Ltmp162:
	#DEBUG_VALUE: index_file_size:file_size <- $rcx
	.loc	0 0 12 is_stmt 0                # liblzma/common/index.c:0:12
	movq	$-1, %rax
	cmovnsq	%rcx, %rax
.Ltmp163:
	.loc	0 564 2 epilogue_begin is_stmt 1 # liblzma/common/index.c:564:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 8
	retq
.Ltmp165:
.LBB12_1:
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_index_file_size:i <- $rdi
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	#DEBUG_VALUE: lzma_index_file_size:g <- $rcx
	.loc	0 0 2 is_stmt 0                 # liblzma/common/index.c:0:2
	xorl	%ecx, %ecx
.Ltmp166:
	#DEBUG_VALUE: index_file_size:compressed_base <- $rbx
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rcx
	#DEBUG_VALUE: index_file_size:record_count <- undef
	#DEBUG_VALUE: index_file_size:index_list_size <- undef
	#DEBUG_VALUE: index_file_size:stream_padding <- undef
	.loc	0 545 39 is_stmt 1              # liblzma/common/index.c:545:39
	addq	%rcx, %rbx
.Ltmp167:
	#DEBUG_VALUE: vli_ceil4:vli <- $rcx
	.loc	0 546 4                         # liblzma/common/index.c:546:4
	addq	160(%rax), %rbx
.Ltmp168:
	.loc	0 547 16                        # liblzma/common/index.c:547:16
	addq	$24, %rbx
.Ltmp169:
	#DEBUG_VALUE: index_file_size:file_size <- undef
	.loc	0 547 6 is_stmt 0               # liblzma/common/index.c:547:6
	jns	.LBB12_4
.Ltmp170:
.LBB12_5:                               # %index_file_size.exit
	#DEBUG_VALUE: lzma_index_file_size:i <- $rdi
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	.loc	0 564 2 is_stmt 1               # liblzma/common/index.c:564:2
	movq	$-1, %rax
.Ltmp171:
	.loc	0 564 2 epilogue_begin is_stmt 0 # liblzma/common/index.c:564:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Ltmp172:
.Lfunc_end12:
	.size	lzma_index_file_size, .Lfunc_end12-lzma_index_file_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_uncompressed_size    # -- Begin function lzma_index_uncompressed_size
	.p2align	4, 0x90
	.type	lzma_index_uncompressed_size,@function
lzma_index_uncompressed_size:           # @lzma_index_uncompressed_size
.Lfunc_begin13:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_uncompressed_size:i <- $rdi
	.loc	0 574 12 prologue_end is_stmt 1 # liblzma/common/index.c:574:12
	movq	32(%rdi), %rax
	.loc	0 574 2 is_stmt 0               # liblzma/common/index.c:574:2
	retq
.Ltmp173:
.Lfunc_end13:
	.size	lzma_index_uncompressed_size, .Lfunc_end13-lzma_index_uncompressed_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_checks               # -- Begin function lzma_index_checks
	.p2align	4, 0x90
	.type	lzma_index_checks,@function
lzma_index_checks:                      # @lzma_index_checks
.Lfunc_begin14:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_checks:i <- $rdi
	.loc	0 581 23 prologue_end is_stmt 1 # liblzma/common/index.c:581:23
	movl	72(%rdi), %eax
.Ltmp174:
	#DEBUG_VALUE: lzma_index_checks:checks <- $eax
	.loc	0 584 60                        # liblzma/common/index.c:584:60
	movq	16(%rdi), %rcx
.Ltmp175:
	#DEBUG_VALUE: lzma_index_checks:s <- $rcx
	.loc	0 585 30                        # liblzma/common/index.c:585:30
	cmpl	$-1, 104(%rcx)
.Ltmp176:
	.loc	0 585 6 is_stmt 0               # liblzma/common/index.c:585:6
	je	.LBB14_2
.Ltmp177:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: lzma_index_checks:i <- $rdi
	#DEBUG_VALUE: lzma_index_checks:checks <- $eax
	#DEBUG_VALUE: lzma_index_checks:s <- $rcx
	.loc	0 586 44 is_stmt 1              # liblzma/common/index.c:586:44
	movzbl	120(%rcx), %ecx
.Ltmp178:
	.loc	0 586 10 is_stmt 0              # liblzma/common/index.c:586:10
	btsl	%ecx, %eax
.Ltmp179:
	#DEBUG_VALUE: lzma_index_checks:checks <- $eax
.LBB14_2:                               # %if.end
	#DEBUG_VALUE: lzma_index_checks:i <- $rdi
	#DEBUG_VALUE: lzma_index_checks:checks <- $eax
	#DEBUG_VALUE: lzma_index_checks:checks <- $eax
	.loc	0 588 2 is_stmt 1               # liblzma/common/index.c:588:2
	retq
.Ltmp180:
.Lfunc_end14:
	.size	lzma_index_checks, .Lfunc_end14-lzma_index_checks
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_padding_size         # -- Begin function lzma_index_padding_size
	.p2align	4, 0x90
	.type	lzma_index_padding_size,@function
lzma_index_padding_size:                # @lzma_index_padding_size
.Lfunc_begin15:
	.loc	0 594 0                         # liblzma/common/index.c:594:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_padding_size:i <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 596 7 prologue_end            # liblzma/common/index.c:596:7
	movq	48(%rdi), %rax
	.loc	0 596 24 is_stmt 0              # liblzma/common/index.c:596:24
	movl	56(%rdi), %ebx
.Ltmp181:
	#DEBUG_VALUE: index_size_unpadded:count <- $rax
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- undef
	.loc	11 51 13 is_stmt 1              # liblzma/common/index.h:51:13
	movq	%rax, %rdi
.Ltmp182:
	#DEBUG_VALUE: lzma_index_padding_size:i <- [DW_OP_LLVM_entry_value 1] $rdi
	callq	lzma_vli_size@PLT
.Ltmp183:
	.loc	0 595 9                         # liblzma/common/index.c:595:9
	addl	%ebx, %eax
	movl	$3, %ecx
	subl	%eax, %ecx
	andl	$3, %ecx
	.loc	0 595 2 is_stmt 0               # liblzma/common/index.c:595:2
	movl	%ecx, %eax
	.loc	0 595 2 epilogue_begin          # liblzma/common/index.c:595:2
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp184:
.Lfunc_end15:
	.size	lzma_index_padding_size, .Lfunc_end15-lzma_index_padding_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_stream_flags         # -- Begin function lzma_index_stream_flags
	.p2align	4, 0x90
	.type	lzma_index_stream_flags,@function
lzma_index_stream_flags:                # @lzma_index_stream_flags
.Lfunc_begin16:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_stream_flags:i <- $rdi
	#DEBUG_VALUE: lzma_index_stream_flags:stream_flags <- $rsi
	.loc	0 603 8 prologue_end is_stmt 1  # liblzma/common/index.c:603:8
	testq	%rdi, %rdi
	sete	%al
	testq	%rsi, %rsi
	sete	%cl
	.loc	0 603 16 is_stmt 0              # liblzma/common/index.c:603:16
	orb	%al, %cl
	movl	$11, %eax
	jne	.LBB16_4
.Ltmp185:
# %bb.1:                                # %do.body
	#DEBUG_VALUE: lzma_index_stream_flags:i <- $rdi
	#DEBUG_VALUE: lzma_index_stream_flags:stream_flags <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp186:
	.loc	0 607 2 is_stmt 1               # liblzma/common/index.c:607:2
	movq	%rsi, %rdi
.Ltmp187:
	#DEBUG_VALUE: lzma_index_stream_flags:i <- $r14
	callq	lzma_stream_flags_compare@PLT
.Ltmp188:
	#DEBUG_VALUE: lzma_index_stream_flags:stream_flags <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 607 2 is_stmt 0               # liblzma/common/index.c:607:2
	testl	%eax, %eax
	jne	.LBB16_3
.Ltmp189:
# %bb.2:                                # %do.end
	#DEBUG_VALUE: lzma_index_stream_flags:i <- $r14
	#DEBUG_VALUE: lzma_index_stream_flags:stream_flags <- $rbx
	.loc	0 610 48 is_stmt 1              # liblzma/common/index.c:610:48
	movq	16(%r14), %rax
.Ltmp190:
	#DEBUG_VALUE: lzma_index_stream_flags:s <- $rax
	.loc	0 611 20                        # liblzma/common/index.c:611:20
	movq	48(%rbx), %rcx
	movq	%rcx, 152(%rax)
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	%xmm2, 136(%rax)
	movups	%xmm1, 120(%rax)
	movups	%xmm0, 104(%rax)
	xorl	%eax, %eax
.Ltmp191:
.LBB16_3:
	#DEBUG_VALUE: lzma_index_stream_flags:i <- $r14
	#DEBUG_VALUE: lzma_index_stream_flags:stream_flags <- $rbx
	.loc	0 0 20 is_stmt 0                # liblzma/common/index.c:0:20
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp192:
	#DEBUG_VALUE: lzma_index_stream_flags:stream_flags <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp193:
	#DEBUG_VALUE: lzma_index_stream_flags:i <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB16_4:                               # %return
	#DEBUG_VALUE: lzma_index_stream_flags:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_stream_flags:stream_flags <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 614 1 is_stmt 1               # liblzma/common/index.c:614:1
	retq
.Ltmp194:
.Lfunc_end16:
	.size	lzma_index_stream_flags, .Lfunc_end16-lzma_index_stream_flags
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_stream_padding       # -- Begin function lzma_index_stream_padding
	.p2align	4, 0x90
	.type	lzma_index_stream_padding,@function
lzma_index_stream_padding:              # @lzma_index_stream_padding
.Lfunc_begin17:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_stream_padding:i <- $rdi
	#DEBUG_VALUE: lzma_index_stream_padding:stream_padding <- $rsi
	.loc	0 620 8 prologue_end            # liblzma/common/index.c:620:8
	testq	%rdi, %rdi
	sete	%cl
	movabsq	$-9223372036854775805, %rax     # imm = 0x8000000000000003
	.loc	0 620 16 is_stmt 0              # liblzma/common/index.c:620:16
	testq	%rax, %rsi
	setne	%dl
	movl	$11, %eax
	orb	%cl, %dl
	jne	.LBB17_8
.Ltmp195:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_index_stream_padding:i <- $rdi
	#DEBUG_VALUE: lzma_index_stream_padding:stream_padding <- $rsi
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
	.loc	0 624 48 is_stmt 1              # liblzma/common/index.c:624:48
	movq	16(%rdi), %rbx
.Ltmp196:
	#DEBUG_VALUE: lzma_index_stream_padding:s <- $rbx
	.loc	0 627 41                        # liblzma/common/index.c:627:41
	movq	160(%rbx), %r14
.Ltmp197:
	#DEBUG_VALUE: lzma_index_stream_padding:old_stream_padding <- $r14
	.loc	0 628 20                        # liblzma/common/index.c:628:20
	movq	$0, 160(%rbx)
.Ltmp198:
	#DEBUG_VALUE: lzma_index_file_size:i <- $rdi
	.loc	0 562 60                        # liblzma/common/index.c:562:60
	movq	16(%rdi), %rax
.Ltmp199:
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	.loc	0 564 33                        # liblzma/common/index.c:564:33
	movq	8(%rax), %r15
	.loc	0 563 57                        # liblzma/common/index.c:563:57
	movq	72(%rax), %rcx
.Ltmp200:
	#DEBUG_VALUE: lzma_index_file_size:g <- $rcx
	.loc	0 565 6                         # liblzma/common/index.c:565:6
	testq	%rcx, %rcx
	.loc	0 565 4 is_stmt 0               # liblzma/common/index.c:565:4
	je	.LBB17_2
.Ltmp201:
# %bb.3:                                # %cond.false.i
	#DEBUG_VALUE: lzma_index_stream_padding:i <- $rdi
	#DEBUG_VALUE: lzma_index_stream_padding:stream_padding <- $rsi
	#DEBUG_VALUE: lzma_index_stream_padding:s <- $rbx
	#DEBUG_VALUE: lzma_index_stream_padding:old_stream_padding <- $r14
	#DEBUG_VALUE: lzma_index_file_size:i <- $rdi
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	#DEBUG_VALUE: lzma_index_file_size:g <- $rcx
	.loc	0 565 34                        # liblzma/common/index.c:565:34
	movq	56(%rcx), %rdx
	.loc	0 565 40                        # liblzma/common/index.c:565:40
	shlq	$4, %rdx
	movq	72(%rcx,%rdx), %rcx
.Ltmp202:
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	$3, %rcx
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rcx
.Ltmp203:
	#DEBUG_VALUE: index_file_size:compressed_base <- $r15
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rcx
	#DEBUG_VALUE: index_file_size:record_count <- undef
	#DEBUG_VALUE: index_file_size:index_list_size <- undef
	#DEBUG_VALUE: index_file_size:stream_padding <- undef
	.loc	0 545 39 is_stmt 1              # liblzma/common/index.c:545:39
	addq	%rcx, %r15
.Ltmp204:
	#DEBUG_VALUE: vli_ceil4:vli <- $rcx
	.loc	0 546 4                         # liblzma/common/index.c:546:4
	addq	160(%rax), %r15
.Ltmp205:
	.loc	0 547 16                        # liblzma/common/index.c:547:16
	addq	$24, %r15
.Ltmp206:
	#DEBUG_VALUE: index_file_size:file_size <- $r15
	.loc	0 547 6 is_stmt 0               # liblzma/common/index.c:547:6
	js	.LBB17_5
.Ltmp207:
.LBB17_6:                               # %if.end.i.i
	#DEBUG_VALUE: lzma_index_stream_padding:i <- $rdi
	#DEBUG_VALUE: lzma_index_stream_padding:stream_padding <- $rsi
	#DEBUG_VALUE: lzma_index_stream_padding:s <- $rbx
	#DEBUG_VALUE: lzma_index_stream_padding:old_stream_padding <- $r14
	#DEBUG_VALUE: lzma_index_file_size:i <- $rdi
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rcx
	.loc	0 566 7 is_stmt 1               # liblzma/common/index.c:566:7
	movq	88(%rax), %rdi
.Ltmp208:
	#DEBUG_VALUE: lzma_index_stream_padding:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: index_file_size:record_count <- $rdi
	#DEBUG_VALUE: index_size:count <- $rdi
	#DEBUG_VALUE: index_size_unpadded:count <- $rdi
	.loc	0 566 24 is_stmt 0              # liblzma/common/index.c:566:24
	movq	96(%rax), %r13
.Ltmp209:
	#DEBUG_VALUE: index_file_size:index_list_size <- $r13
	#DEBUG_VALUE: index_size:index_list_size <- $r13
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- $r13
	.loc	0 0 24                          # liblzma/common/index.c:0:24
	movq	%rsi, %r12
.Ltmp210:
	#DEBUG_VALUE: lzma_index_stream_padding:stream_padding <- $r12
	.loc	11 51 13 is_stmt 1              # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp211:
	.loc	11 0 13 is_stmt 0               # liblzma/common/index.h:0:13
	movq	%r12, %rsi
                                        # kill: def $eax killed $eax def $rax
	.loc	11 51 11                        # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp212:
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	leaq	(%rax,%r13), %rcx
	addq	$7, %rcx
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rcx
.Ltmp213:
	.loc	0 551 12 is_stmt 1              # liblzma/common/index.c:551:12
	addq	%r15, %rcx
.Ltmp214:
	#DEBUG_VALUE: index_file_size:file_size <- $rcx
	.loc	0 0 12 is_stmt 0                # liblzma/common/index.c:0:12
	movq	$-1, %rax
	cmovnsq	%rcx, %rax
	jmp	.LBB17_7
.Ltmp215:
.LBB17_2:
	#DEBUG_VALUE: lzma_index_stream_padding:i <- $rdi
	#DEBUG_VALUE: lzma_index_stream_padding:stream_padding <- $rsi
	#DEBUG_VALUE: lzma_index_stream_padding:s <- $rbx
	#DEBUG_VALUE: lzma_index_stream_padding:old_stream_padding <- $r14
	#DEBUG_VALUE: lzma_index_file_size:i <- $rdi
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	#DEBUG_VALUE: lzma_index_file_size:g <- $rcx
	xorl	%ecx, %ecx
.Ltmp216:
	#DEBUG_VALUE: index_file_size:compressed_base <- $r15
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rcx
	#DEBUG_VALUE: index_file_size:record_count <- undef
	#DEBUG_VALUE: index_file_size:index_list_size <- undef
	#DEBUG_VALUE: index_file_size:stream_padding <- undef
	.loc	0 545 39 is_stmt 1              # liblzma/common/index.c:545:39
	addq	%rcx, %r15
.Ltmp217:
	#DEBUG_VALUE: vli_ceil4:vli <- $rcx
	.loc	0 546 4                         # liblzma/common/index.c:546:4
	addq	160(%rax), %r15
.Ltmp218:
	.loc	0 547 16                        # liblzma/common/index.c:547:16
	addq	$24, %r15
.Ltmp219:
	#DEBUG_VALUE: index_file_size:file_size <- undef
	.loc	0 547 6 is_stmt 0               # liblzma/common/index.c:547:6
	jns	.LBB17_6
.Ltmp220:
.LBB17_5:
	#DEBUG_VALUE: lzma_index_stream_padding:i <- $rdi
	#DEBUG_VALUE: lzma_index_stream_padding:stream_padding <- $rsi
	#DEBUG_VALUE: lzma_index_stream_padding:s <- $rbx
	#DEBUG_VALUE: lzma_index_stream_padding:old_stream_padding <- $r14
	#DEBUG_VALUE: lzma_index_file_size:i <- $rdi
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rcx
	#DEBUG_VALUE: vli_ceil4:vli <- $rcx
	.loc	0 0 6                           # liblzma/common/index.c:0:6
	movq	$-1, %rax
.Ltmp221:
.LBB17_7:                               # %lzma_index_file_size.exit
	#DEBUG_VALUE: lzma_index_stream_padding:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_stream_padding:stream_padding <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_index_stream_padding:s <- $rbx
	#DEBUG_VALUE: lzma_index_stream_padding:old_stream_padding <- $r14
	.loc	0 629 30 is_stmt 1              # liblzma/common/index.c:629:30
	addq	%rsi, %rax
.Ltmp222:
	.loc	0 0 0 is_stmt 0                 # liblzma/common/index.c:0:0
	cmovnsq	%rsi, %r14
.Ltmp223:
	sarq	$63, %rax
	andl	$9, %eax
	movq	%r14, 160(%rbx)
	popq	%rbx
.Ltmp224:
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
.Ltmp225:
.LBB17_8:                               # %return
	#DEBUG_VALUE: lzma_index_stream_padding:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_stream_padding:stream_padding <- [DW_OP_LLVM_entry_value 1] $rsi
                                        # kill: def $eax killed $eax killed $rax
	.loc	0 636 1 is_stmt 1               # liblzma/common/index.c:636:1
	retq
.Ltmp226:
.Lfunc_end17:
	.size	lzma_index_stream_padding, .Lfunc_end17-lzma_index_stream_padding
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_index_append
.LCPI18_0:
	.quad	1                               # 0x1
	.zero	8
.LCPI18_1:
	.zero	8
	.quad	1                               # 0x1
	.text
	.globl	lzma_index_append
	.p2align	4, 0x90
	.type	lzma_index_append,@function
lzma_index_append:                      # @lzma_index_append
.Lfunc_begin18:
	.loc	0 642 0                         # liblzma/common/index.c:642:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_append:i <- $rdi
	#DEBUG_VALUE: lzma_index_append:allocator <- $rsi
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- $rdx
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- $rcx
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
	movl	$11, %eax
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
.Ltmp227:
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	testq	%rcx, %rcx
.Ltmp228:
	.loc	0 644 16 prologue_end           # liblzma/common/index.c:644:16
	js	.LBB18_17
.Ltmp229:
# %bb.1:                                # %entry
	#DEBUG_VALUE: lzma_index_append:i <- $rdi
	#DEBUG_VALUE: lzma_index_append:allocator <- $rsi
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- $rdx
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 0 16 is_stmt 0                # liblzma/common/index.c:0:16
	movq	%rdi, %r15
	.loc	0 644 16                        # liblzma/common/index.c:644:16
	testq	%rdi, %rdi
	je	.LBB18_17
.Ltmp230:
# %bb.2:                                # %entry
	#DEBUG_VALUE: lzma_index_append:i <- $r15
	#DEBUG_VALUE: lzma_index_append:allocator <- $rsi
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- $rdx
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 0 16                          # liblzma/common/index.c:0:16
	movq	%rdx, %rbx
	movabsq	$9223372036854775804, %rdx      # imm = 0x7FFFFFFFFFFFFFFC
.Ltmp231:
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- $rbx
	.loc	0 644 16                        # liblzma/common/index.c:644:16
	leaq	(%rbx,%rdx), %rcx
	addq	$7, %rcx
	addq	$12, %rdx
	cmpq	%rdx, %rcx
	jb	.LBB18_17
.Ltmp232:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: lzma_index_append:i <- $r15
	#DEBUG_VALUE: lzma_index_append:allocator <- $rsi
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- $rbx
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 649 48 is_stmt 1              # liblzma/common/index.c:649:48
	movq	16(%r15), %r13
.Ltmp233:
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	.loc	0 650 45                        # liblzma/common/index.c:650:45
	movq	72(%r13), %r12
.Ltmp234:
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	.loc	0 652 37                        # liblzma/common/index.c:652:37
	testq	%r12, %r12
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
.Ltmp235:
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	.loc	0 652 35 is_stmt 0              # liblzma/common/index.c:652:35
	je	.LBB18_4
.Ltmp236:
# %bb.5:                                # %cond.false10
	#DEBUG_VALUE: lzma_index_append:i <- $r15
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- $rbx
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	.loc	0 653 30 is_stmt 1              # liblzma/common/index.c:653:30
	movq	56(%r12), %rax
	.loc	0 653 36 is_stmt 0              # liblzma/common/index.c:653:36
	shlq	$4, %rax
	.loc	0 655 26 is_stmt 1              # liblzma/common/index.c:655:26
	movq	64(%r12,%rax), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	.loc	0 653 36                        # liblzma/common/index.c:653:36
	movq	72(%r12,%rax), %r14
.Ltmp237:
	#DEBUG_VALUE: vli_ceil4:vli <- $r14
	.loc	11 42 14                        # liblzma/common/index.h:42:14
	addq	$3, %r14
.Ltmp238:
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %r14
.Ltmp239:
	#DEBUG_VALUE: lzma_index_append:compressed_base <- $r14
	.loc	11 0 19                         # liblzma/common/index.h:0:19
	jmp	.LBB18_6
.Ltmp240:
.LBB18_4:
	#DEBUG_VALUE: lzma_index_append:i <- $r15
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- $rbx
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	xorl	%r14d, %r14d
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
.Ltmp241:
.LBB18_6:                               # %cond.end14
	#DEBUG_VALUE: lzma_index_append:i <- $r15
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- $rbx
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	#DEBUG_VALUE: lzma_index_append:uncompressed_base <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	.loc	0 656 39 is_stmt 1              # liblzma/common/index.c:656:39
	movq	%rbx, %rdi
	callq	lzma_vli_size@PLT
.Ltmp242:
	movl	%eax, %ebp
	movq	16(%rsp), %rdi                  # 8-byte Reload
	.loc	0 657 6                         # liblzma/common/index.c:657:6
	callq	lzma_vli_size@PLT
.Ltmp243:
	movl	%eax, %ecx
.Ltmp244:
	#DEBUG_VALUE: lzma_index_append:index_list_size_add <- undef
	#DEBUG_VALUE: index_file_size:unpadded_sum <- undef
	#DEBUG_VALUE: index_file_size:record_count <- undef
	#DEBUG_VALUE: index_file_size:index_list_size <- undef
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	#DEBUG_VALUE: index_file_size:stream_padding <- undef
	#DEBUG_VALUE: index_file_size:compressed_base <- undef
	.loc	0 0 6 is_stmt 0                 # liblzma/common/index.c:0:6
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
.Ltmp245:
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	%r14, %rbx
	addq	$3, %rbx
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rbx
.Ltmp246:
	.loc	0 545 39 is_stmt 1              # liblzma/common/index.c:545:39
	addq	8(%r13), %rbx
	.loc	0 546 4                         # liblzma/common/index.c:546:4
	addq	160(%r13), %rbx
.Ltmp247:
	.loc	0 547 16                        # liblzma/common/index.c:547:16
	addq	$24, %rbx
.Ltmp248:
	#DEBUG_VALUE: index_file_size:file_size <- $rbx
	.loc	0 0 16 is_stmt 0                # liblzma/common/index.c:0:16
	movl	$9, %eax
.Ltmp249:
	.loc	0 547 6                         # liblzma/common/index.c:547:6
	js	.LBB18_17
.Ltmp250:
# %bb.7:                                # %index_file_size.exit
	#DEBUG_VALUE: lzma_index_append:i <- $r15
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	#DEBUG_VALUE: lzma_index_append:uncompressed_base <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_file_size:file_size <- $rbx
	.loc	0 0 6                           # liblzma/common/index.c:0:6
	movq	%r15, 32(%rsp)                  # 8-byte Spill
.Ltmp251:
	#DEBUG_VALUE: lzma_index_append:i <- [DW_OP_plus_uconst 32] [$rsp+0]
	addl	%ebp, %ecx
.Ltmp252:
	#DEBUG_VALUE: lzma_index_append:index_list_size_add <- $ecx
	#DEBUG_VALUE: index_file_size:index_list_size <- undef
	.loc	0 661 40 is_stmt 1              # liblzma/common/index.c:661:40
	movq	88(%r13), %rdi
	#DEBUG_VALUE: index_file_size:record_count <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	.loc	0 661 53 is_stmt 0              # liblzma/common/index.c:661:53
	incq	%rdi
.Ltmp253:
	#DEBUG_VALUE: index_file_size:record_count <- $rdi
	#DEBUG_VALUE: index_size:count <- $rdi
	#DEBUG_VALUE: index_size_unpadded:count <- $rdi
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	.loc	0 0 53                          # liblzma/common/index.c:0:53
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	.loc	0 662 23 is_stmt 1              # liblzma/common/index.c:662:23
	leaq	7(%rcx), %rbp
	movq	96(%r13), %r15
.Ltmp254:
	.loc	11 51 52                        # liblzma/common/index.h:51:52
	addq	%rbp, %r15
.Ltmp255:
	#DEBUG_VALUE: index_size:index_list_size <- undef
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- undef
	.loc	11 51 13 is_stmt 0              # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp256:
                                        # kill: def $eax killed $eax def $rax
	.loc	11 51 11                        # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp257:
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	%r15, %rax
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rax
.Ltmp258:
	.loc	0 663 23 is_stmt 1              # liblzma/common/index.c:663:23
	addq	%rbx, %rax
.Ltmp259:
	#DEBUG_VALUE: index_file_size:file_size <- $rax
	.loc	0 660 6                         # liblzma/common/index.c:660:6
	js	.LBB18_8
.Ltmp260:
# %bb.9:                                # %if.end26
	#DEBUG_VALUE: lzma_index_append:i <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	#DEBUG_VALUE: lzma_index_append:uncompressed_base <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_append:index_list_size_add <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 6 is_stmt 0                 # liblzma/common/index.c:0:6
	movq	32(%rsp), %rbx                  # 8-byte Reload
.Ltmp261:
	.loc	0 668 20 is_stmt 1              # liblzma/common/index.c:668:20
	movq	48(%rbx), %rdi
	.loc	0 668 33 is_stmt 0              # liblzma/common/index.c:668:33
	incq	%rdi
.Ltmp262:
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	.loc	11 51 52 is_stmt 1              # liblzma/common/index.h:51:52
	addq	56(%rbx), %rbp
.Ltmp263:
	#DEBUG_VALUE: index_size:count <- $rdi
	#DEBUG_VALUE: index_size:index_list_size <- undef
	#DEBUG_VALUE: index_size_unpadded:count <- $rdi
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- undef
	.loc	11 51 13 is_stmt 0              # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp264:
                                        # kill: def $eax killed $eax def $rax
	.loc	11 51 11                        # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp265:
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	%rbp, %rax
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rax
	movabsq	$17179869184, %rcx              # imm = 0x400000000
.Ltmp266:
	.loc	0 670 4 is_stmt 1               # liblzma/common/index.c:670:4
	cmpq	%rcx, %rax
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movl	$9, %eax
	movq	40(%rsp), %r15                  # 8-byte Reload
	movabsq	$9223372036854775804, %rdx      # imm = 0x7FFFFFFFFFFFFFFC
.Ltmp267:
	.loc	0 668 6                         # liblzma/common/index.c:668:6
	ja	.LBB18_17
.Ltmp268:
# %bb.10:                               # %if.end36
	#DEBUG_VALUE: lzma_index_append:i <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	#DEBUG_VALUE: lzma_index_append:uncompressed_base <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_append:index_list_size_add <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 652 37                        # liblzma/common/index.c:652:37
	testq	%r12, %r12
.Ltmp269:
	.loc	0 673 16                        # liblzma/common/index.c:673:16
	je	.LBB18_13
.Ltmp270:
# %bb.11:                               # %land.lhs.true
	#DEBUG_VALUE: lzma_index_append:i <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	#DEBUG_VALUE: lzma_index_append:uncompressed_base <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_append:index_list_size_add <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 673 22 is_stmt 0              # liblzma/common/index.c:673:22
	movq	56(%r12), %rax
	.loc	0 673 27                        # liblzma/common/index.c:673:27
	incq	%rax
	.loc	0 673 31                        # liblzma/common/index.c:673:31
	cmpq	48(%r12), %rax
.Ltmp271:
	.loc	0 673 6                         # liblzma/common/index.c:673:6
	jae	.LBB18_13
.Ltmp272:
# %bb.12:                               # %if.then43
	#DEBUG_VALUE: lzma_index_append:i <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	#DEBUG_VALUE: lzma_index_append:uncompressed_base <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_append:index_list_size_add <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 675 3 is_stmt 1               # liblzma/common/index.c:675:3
	movq	%rax, 56(%r12)
	movq	8(%rsp), %rbp                   # 8-byte Reload
	.loc	0 676 2                         # liblzma/common/index.c:676:2
	jmp	.LBB18_16
.Ltmp273:
.LBB18_8:
	#DEBUG_VALUE: lzma_index_append:i <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	#DEBUG_VALUE: lzma_index_append:uncompressed_base <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_append:index_list_size_add <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 2 is_stmt 0                 # liblzma/common/index.c:0:2
	movl	$9, %eax
	.loc	0 660 6 is_stmt 1               # liblzma/common/index.c:660:6
	jmp	.LBB18_17
.Ltmp274:
.LBB18_13:                              # %if.else
	#DEBUG_VALUE: lzma_index_append:i <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	#DEBUG_VALUE: lzma_index_append:uncompressed_base <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_append:index_list_size_add <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 679 10                        # liblzma/common/index.c:679:10
	movq	64(%rbx), %rdi
	.loc	0 679 19 is_stmt 0              # liblzma/common/index.c:679:19
	shlq	$4, %rdi
	.loc	0 679 5                         # liblzma/common/index.c:679:5
	addq	$64, %rdi
	.loc	0 678 7 is_stmt 1               # liblzma/common/index.c:678:7
	callq	lzma_alloc@PLT
.Ltmp275:
	#DEBUG_VALUE: lzma_index_append:g <- $rax
	.loc	0 681 9                         # liblzma/common/index.c:681:9
	testq	%rax, %rax
.Ltmp276:
	.loc	0 681 7 is_stmt 0               # liblzma/common/index.c:681:7
	je	.LBB18_14
.Ltmp277:
# %bb.15:                               # %if.end50
	#DEBUG_VALUE: lzma_index_append:i <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $rax
	#DEBUG_VALUE: lzma_index_append:uncompressed_base <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_append:index_list_size_add <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%rax, %r12
	leaq	56(%r13), %rdi
.Ltmp278:
	.loc	0 684 11 is_stmt 1              # liblzma/common/index.c:684:11
	movq	$0, 56(%rax)
	.loc	0 685 21                        # liblzma/common/index.c:685:21
	movq	64(%rbx), %rax
.Ltmp279:
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	.loc	0 685 16 is_stmt 0              # liblzma/common/index.c:685:16
	movq	%rax, 48(%r12)
	.loc	0 689 15 is_stmt 1              # liblzma/common/index.c:689:15
	movq	$512, 64(%rbx)                  # imm = 0x200
	movq	8(%rsp), %rbp                   # 8-byte Reload
	.loc	0 692 29                        # liblzma/common/index.c:692:29
	movq	%rbp, (%r12)
	.loc	0 693 27                        # liblzma/common/index.c:693:27
	movq	%r14, 8(%r12)
	.loc	0 694 23                        # liblzma/common/index.c:694:23
	movq	88(%r13), %rax
	.loc	0 694 36 is_stmt 0              # liblzma/common/index.c:694:36
	incq	%rax
	.loc	0 694 18                        # liblzma/common/index.c:694:18
	movq	%rax, 40(%r12)
	.loc	0 697 3 is_stmt 1               # liblzma/common/index.c:697:3
	movq	%r12, %rsi
	callq	index_tree_append
.Ltmp280:
	.loc	0 701 16                        # liblzma/common/index.c:701:16
	movq	56(%r12), %rax
	movabsq	$9223372036854775804, %rdx      # imm = 0x7FFFFFFFFFFFFFFC
.Ltmp281:
.LBB18_16:                              # %if.end63
	#DEBUG_VALUE: lzma_index_append:i <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	#DEBUG_VALUE: lzma_index_append:uncompressed_base <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_append:index_list_size_add <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 0 is_stmt 0                 # liblzma/common/index.c:0:0
	addq	%r15, %r14
	#DEBUG_VALUE: lzma_index_append:g <- $r12
	movq	16(%rsp), %rcx                  # 8-byte Reload
	.loc	0 702 24 is_stmt 1              # liblzma/common/index.c:702:24
	addq	%rcx, %rbp
	.loc	0 701 2                         # liblzma/common/index.c:701:2
	shlq	$4, %rax
	.loc	0 702 4                         # liblzma/common/index.c:702:4
	movq	%rbp, 64(%r12,%rax)
	.loc	0 704 4                         # liblzma/common/index.c:704:4
	movq	%r14, 72(%r12,%rax)
	.loc	0 707 2                         # liblzma/common/index.c:707:2
	movdqu	88(%r13), %xmm0
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %xmm1
	movdqa	.LCPI18_0(%rip), %xmm2          # xmm2 = [1,u]
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	paddq	%xmm0, %xmm2
	movdqu	%xmm2, 88(%r13)
.Ltmp282:
	#DEBUG_VALUE: vli_ceil4:vli <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	.loc	11 42 14                        # liblzma/common/index.h:42:14
	addq	$3, %r15
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	%rdx, %r15
	movq	%r15, %xmm0
.Ltmp283:
	.loc	0 711 23 is_stmt 1              # liblzma/common/index.c:711:23
	addq	%rcx, 32(%rbx)
	.loc	0 710 16                        # liblzma/common/index.c:710:16
	movdqu	40(%rbx), %xmm1
	shufpd	$2, .LCPI18_1(%rip), %xmm0      # xmm0 = xmm0[0],mem[1]
	paddq	%xmm1, %xmm0
	movdqu	%xmm0, 40(%rbx)
	.loc	0 713 21                        # liblzma/common/index.c:713:21
	addq	%rax, 56(%rbx)
	xorl	%eax, %eax
	jmp	.LBB18_17
.Ltmp284:
.LBB18_14:
	#DEBUG_VALUE: lzma_index_append:i <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_plus_uconst 48] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_index_append:s <- $r13
	#DEBUG_VALUE: lzma_index_append:g <- $rax
	#DEBUG_VALUE: lzma_index_append:uncompressed_base <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_append:index_list_size_add <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 21 is_stmt 0                # liblzma/common/index.c:0:21
	movl	$5, %eax
.Ltmp285:
.LBB18_17:                              # %return
	#DEBUG_VALUE: lzma_index_append:i <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_append:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_index_append:unpadded_size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_index_append:uncompressed_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 716 1 epilogue_begin is_stmt 1 # liblzma/common/index.c:716:1
	addq	$56, %rsp
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
.Ltmp286:
.Lfunc_end18:
	.size	lzma_index_append, .Lfunc_end18-lzma_index_append
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_cat                  # -- Begin function lzma_index_cat
	.p2align	4, 0x90
	.type	lzma_index_cat,@function
lzma_index_cat:                         # @lzma_index_cat
.Lfunc_begin19:
	.loc	0 769 0                         # liblzma/common/index.c:769:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_cat:dest <- $rdi
	#DEBUG_VALUE: lzma_index_cat:src <- $rsi
	#DEBUG_VALUE: lzma_index_cat:allocator <- $rdx
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %r15
.Ltmp287:
	#DEBUG_VALUE: lzma_index_file_size:i <- $r15
	.loc	0 562 60 prologue_end           # liblzma/common/index.c:562:60
	movq	16(%rdi), %rbx
.Ltmp288:
	#DEBUG_VALUE: lzma_index_file_size:s <- $rbx
	.loc	0 564 33                        # liblzma/common/index.c:564:33
	movq	8(%rbx), %r12
	.loc	0 563 57                        # liblzma/common/index.c:563:57
	movq	72(%rbx), %rax
.Ltmp289:
	#DEBUG_VALUE: lzma_index_file_size:g <- $rax
	.loc	0 565 6                         # liblzma/common/index.c:565:6
	testq	%rax, %rax
	.loc	0 565 4 is_stmt 0               # liblzma/common/index.c:565:4
	je	.LBB19_1
.Ltmp290:
# %bb.2:                                # %cond.false.i
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- $rbp
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_file_size:i <- $r15
	#DEBUG_VALUE: lzma_index_file_size:s <- $rbx
	#DEBUG_VALUE: lzma_index_file_size:g <- $rax
	.loc	0 565 34                        # liblzma/common/index.c:565:34
	movq	56(%rax), %rcx
	.loc	0 565 40                        # liblzma/common/index.c:565:40
	shlq	$4, %rcx
	movq	72(%rax,%rcx), %rax
.Ltmp291:
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	$3, %rax
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rax
.Ltmp292:
	#DEBUG_VALUE: index_file_size:compressed_base <- $r12
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rax
	#DEBUG_VALUE: index_file_size:record_count <- undef
	#DEBUG_VALUE: index_file_size:index_list_size <- undef
	#DEBUG_VALUE: index_file_size:stream_padding <- undef
	.loc	0 545 39 is_stmt 1              # liblzma/common/index.c:545:39
	addq	%rax, %r12
.Ltmp293:
	#DEBUG_VALUE: vli_ceil4:vli <- $rax
	.loc	0 546 4                         # liblzma/common/index.c:546:4
	addq	160(%rbx), %r12
.Ltmp294:
	.loc	0 547 16                        # liblzma/common/index.c:547:16
	addq	$24, %r12
.Ltmp295:
	#DEBUG_VALUE: index_file_size:file_size <- $r12
	.loc	0 547 6 is_stmt 0               # liblzma/common/index.c:547:6
	js	.LBB19_4
.Ltmp296:
.LBB19_5:                               # %if.end.i.i
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- $rbp
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_file_size:i <- $r15
	#DEBUG_VALUE: lzma_index_file_size:s <- $rbx
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rax
	.loc	0 566 7 is_stmt 1               # liblzma/common/index.c:566:7
	movq	88(%rbx), %rdi
.Ltmp297:
	#DEBUG_VALUE: index_file_size:record_count <- $rdi
	#DEBUG_VALUE: index_size:count <- $rdi
	#DEBUG_VALUE: index_size_unpadded:count <- $rdi
	.loc	0 566 24 is_stmt 0              # liblzma/common/index.c:566:24
	movq	96(%rbx), %r13
.Ltmp298:
	#DEBUG_VALUE: index_file_size:index_list_size <- $r13
	#DEBUG_VALUE: index_size:index_list_size <- $r13
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- $r13
	.loc	11 51 13 is_stmt 1              # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp299:
                                        # kill: def $eax killed $eax def $rax
	.loc	11 51 11 is_stmt 0              # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp300:
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	%r13, %rax
	addq	$7, %rax
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rax
.Ltmp301:
	.loc	0 551 12 is_stmt 1              # liblzma/common/index.c:551:12
	addq	%r12, %rax
.Ltmp302:
	#DEBUG_VALUE: index_file_size:file_size <- $rax
	.loc	0 0 12 is_stmt 0                # liblzma/common/index.c:0:12
	movq	$-1, %r12
	cmovnsq	%rax, %r12
	jmp	.LBB19_6
.Ltmp303:
.LBB19_1:
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- $rbp
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_file_size:i <- $r15
	#DEBUG_VALUE: lzma_index_file_size:s <- $rbx
	#DEBUG_VALUE: lzma_index_file_size:g <- $rax
	xorl	%eax, %eax
.Ltmp304:
	#DEBUG_VALUE: index_file_size:compressed_base <- $r12
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rax
	#DEBUG_VALUE: index_file_size:record_count <- undef
	#DEBUG_VALUE: index_file_size:index_list_size <- undef
	#DEBUG_VALUE: index_file_size:stream_padding <- undef
	.loc	0 545 39 is_stmt 1              # liblzma/common/index.c:545:39
	addq	%rax, %r12
.Ltmp305:
	#DEBUG_VALUE: vli_ceil4:vli <- $rax
	.loc	0 546 4                         # liblzma/common/index.c:546:4
	addq	160(%rbx), %r12
.Ltmp306:
	.loc	0 547 16                        # liblzma/common/index.c:547:16
	addq	$24, %r12
.Ltmp307:
	#DEBUG_VALUE: index_file_size:file_size <- undef
	.loc	0 547 6 is_stmt 0               # liblzma/common/index.c:547:6
	jns	.LBB19_5
.Ltmp308:
.LBB19_4:
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- $rbp
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_file_size:i <- $r15
	#DEBUG_VALUE: lzma_index_file_size:s <- $rbx
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rax
	#DEBUG_VALUE: vli_ceil4:vli <- $rax
	.loc	0 0 6                           # liblzma/common/index.c:0:6
	movq	$-1, %r12
.Ltmp309:
.LBB19_6:                               # %lzma_index_file_size.exit
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- $rbp
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- $r12
	#DEBUG_VALUE: lzma_index_file_size:i <- $rbp
	.loc	0 562 60 is_stmt 1              # liblzma/common/index.c:562:60
	movq	16(%rbp), %rax
.Ltmp310:
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	.loc	0 564 33                        # liblzma/common/index.c:564:33
	movq	8(%rax), %r13
	.loc	0 563 57                        # liblzma/common/index.c:563:57
	movq	72(%rax), %rcx
.Ltmp311:
	#DEBUG_VALUE: lzma_index_file_size:g <- $rcx
	.loc	0 565 6                         # liblzma/common/index.c:565:6
	testq	%rcx, %rcx
	.loc	0 565 4 is_stmt 0               # liblzma/common/index.c:565:4
	je	.LBB19_7
.Ltmp312:
# %bb.8:                                # %cond.false.i159
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- $rbp
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- $r12
	#DEBUG_VALUE: lzma_index_file_size:i <- $rbp
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	#DEBUG_VALUE: lzma_index_file_size:g <- $rcx
	.loc	0 565 34                        # liblzma/common/index.c:565:34
	movq	56(%rcx), %rdx
	.loc	0 565 40                        # liblzma/common/index.c:565:40
	shlq	$4, %rdx
	movq	72(%rcx,%rdx), %rcx
.Ltmp313:
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	$3, %rcx
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rcx
	jmp	.LBB19_9
.Ltmp314:
.LBB19_7:
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- $rbp
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- $r12
	#DEBUG_VALUE: lzma_index_file_size:i <- $rbp
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	#DEBUG_VALUE: lzma_index_file_size:g <- $rcx
	.loc	11 0 19                         # liblzma/common/index.h:0:19
	xorl	%ecx, %ecx
.Ltmp315:
.LBB19_9:                               # %cond.end.i163
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- $rbp
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- $r12
	#DEBUG_VALUE: lzma_index_file_size:i <- $rbp
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	#DEBUG_VALUE: index_file_size:compressed_base <- $r13
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rcx
	#DEBUG_VALUE: index_file_size:record_count <- undef
	#DEBUG_VALUE: index_file_size:index_list_size <- undef
	#DEBUG_VALUE: index_file_size:stream_padding <- undef
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
.Ltmp316:
	#DEBUG_VALUE: lzma_index_file_size:i <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	.loc	0 545 39 is_stmt 1              # liblzma/common/index.c:545:39
	addq	%rcx, %r13
.Ltmp317:
	#DEBUG_VALUE: vli_ceil4:vli <- $rcx
	.loc	0 546 4                         # liblzma/common/index.c:546:4
	addq	160(%rax), %r13
.Ltmp318:
	.loc	0 547 16                        # liblzma/common/index.c:547:16
	addq	$24, %r13
.Ltmp319:
	#DEBUG_VALUE: index_file_size:file_size <- $r13
	.loc	0 547 6 is_stmt 0               # liblzma/common/index.c:547:6
	js	.LBB19_10
.Ltmp320:
# %bb.11:                               # %if.end.i.i170
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- $r12
	#DEBUG_VALUE: lzma_index_file_size:i <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_file_size:s <- $rax
	#DEBUG_VALUE: index_file_size:unpadded_sum <- $rcx
	#DEBUG_VALUE: index_file_size:file_size <- $r13
	.loc	0 566 7 is_stmt 1               # liblzma/common/index.c:566:7
	movq	88(%rax), %rdi
.Ltmp321:
	#DEBUG_VALUE: index_file_size:record_count <- $rdi
	#DEBUG_VALUE: index_size:count <- $rdi
	#DEBUG_VALUE: index_size_unpadded:count <- $rdi
	.loc	0 566 24 is_stmt 0              # liblzma/common/index.c:566:24
	movq	96(%rax), %rbp
.Ltmp322:
	#DEBUG_VALUE: index_file_size:index_list_size <- $rbp
	#DEBUG_VALUE: index_size:index_list_size <- $rbp
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- $rbp
	.loc	11 51 13 is_stmt 1              # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp323:
                                        # kill: def $eax killed $eax def $rax
	.loc	11 51 11 is_stmt 0              # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp324:
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	leaq	(%rax,%rbp), %rcx
	addq	$7, %rcx
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rcx
.Ltmp325:
	.loc	0 551 12 is_stmt 1              # liblzma/common/index.c:551:12
	addq	%r13, %rcx
.Ltmp326:
	#DEBUG_VALUE: index_file_size:file_size <- $rcx
	.loc	0 0 12 is_stmt 0                # liblzma/common/index.c:0:12
	movq	$-1, %rax
	cmovnsq	%rcx, %rax
	movl	$9, %ebp
.Ltmp327:
	.loc	0 773 49 is_stmt 1              # liblzma/common/index.c:773:49
	addq	%r12, %rax
	.loc	0 774 4                         # liblzma/common/index.c:774:4
	jns	.LBB19_13
	jmp	.LBB19_29
.Ltmp328:
.LBB19_10:
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- $r12
	.loc	0 0 4 is_stmt 0                 # liblzma/common/index.c:0:4
	movq	$-1, %rax
	movl	$9, %ebp
	.loc	0 773 49 is_stmt 1              # liblzma/common/index.c:773:49
	addq	%r12, %rax
	.loc	0 774 4                         # liblzma/common/index.c:774:4
	js	.LBB19_29
.Ltmp329:
.LBB19_13:                              # %lor.lhs.false
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- $r12
	.loc	0 0 4 is_stmt 0                 # liblzma/common/index.c:0:4
	movq	%r12, 48(%rsp)                  # 8-byte Spill
.Ltmp330:
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 774 13                        # liblzma/common/index.c:774:13
	movq	32(%r15), %rdx
	movq	8(%rsp), %r12                   # 8-byte Reload
	.loc	0 774 38                        # liblzma/common/index.c:774:38
	movq	32(%r12), %rcx
	.loc	0 775 5 is_stmt 1               # liblzma/common/index.c:775:5
	movq	%rcx, %rax
	addq	%rdx, %rax
.Ltmp331:
	.loc	0 773 6                         # liblzma/common/index.c:773:6
	js	.LBB19_29
.Ltmp332:
# %bb.14:                               # %if.end
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- $r14
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 0 6 is_stmt 0                 # liblzma/common/index.c:0:6
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%r14, 40(%rsp)                  # 8-byte Spill
.Ltmp333:
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	0 786 11 is_stmt 1              # liblzma/common/index.c:786:11
	movq	48(%r15), %rdi
	.loc	0 786 31 is_stmt 0              # liblzma/common/index.c:786:31
	movq	56(%r15), %r14
.Ltmp334:
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- $r14
	#DEBUG_VALUE: index_size_unpadded:count <- $rdi
	.loc	0 0 31                          # liblzma/common/index.c:0:31
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
.Ltmp335:
	#DEBUG_VALUE: index_size_unpadded:count <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	11 51 13 is_stmt 1              # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp336:
	movl	%eax, %r13d
	.loc	11 51 11 is_stmt 0              # liblzma/common/index.h:51:11
	incl	%r13d
.Ltmp337:
	#DEBUG_VALUE: dest_size <- undef
	.loc	11 51 34                        # liblzma/common/index.h:51:34
	addq	%r14, %r13
.Ltmp338:
	.loc	0 788 10 is_stmt 1              # liblzma/common/index.c:788:10
	movdqu	48(%r12), %xmm0
	movdqa	%xmm0, 96(%rsp)                 # 16-byte Spill
	movq	48(%r12), %rdi
.Ltmp339:
	#DEBUG_VALUE: src_size <- undef
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	.loc	11 51 52                        # liblzma/common/index.h:51:52
	addq	56(%r12), %r13
.Ltmp340:
	#DEBUG_VALUE: index_size_unpadded:count <- undef
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- undef
	.loc	11 51 13 is_stmt 0              # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp341:
                                        # kill: def $eax killed $eax def $rax
	.loc	11 51 11                        # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp342:
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	%r13, %rax
	addq	$11, %rax
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rax
	movabsq	$17179869184, %rcx              # imm = 0x400000000
.Ltmp343:
	.loc	0 789 39 is_stmt 1              # liblzma/common/index.c:789:39
	cmpq	%rcx, %rax
	ja	.LBB19_29
.Ltmp344:
# %bb.15:                               # %cleanup.cont
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $rbx
	.loc	0 797 46                        # liblzma/common/index.c:797:46
	movq	72(%rbx), %r13
.Ltmp345:
	#DEBUG_VALUE: g <- $r13
	.loc	0 798 9                         # liblzma/common/index.c:798:9
	testq	%r13, %r13
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	48(%rsp), %r12                  # 8-byte Reload
	.loc	0 798 17 is_stmt 0              # liblzma/common/index.c:798:17
	je	.LBB19_26
.Ltmp346:
# %bb.16:                               # %land.lhs.true
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $rbx
	#DEBUG_VALUE: g <- $r13
	.loc	0 798 23                        # liblzma/common/index.c:798:23
	movq	56(%r13), %rdi
	.loc	0 798 28                        # liblzma/common/index.c:798:28
	incq	%rdi
	.loc	0 798 32                        # liblzma/common/index.c:798:32
	cmpq	48(%r13), %rdi
.Ltmp347:
	.loc	0 798 7                         # liblzma/common/index.c:798:7
	jae	.LBB19_26
.Ltmp348:
# %bb.17:                               # %if.then19
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $rbx
	#DEBUG_VALUE: g <- $r13
	.loc	0 804 6 is_stmt 1               # liblzma/common/index.c:804:6
	shlq	$4, %rdi
	.loc	0 803 6                         # liblzma/common/index.c:803:6
	addq	$64, %rdi
	.loc	0 802 24                        # liblzma/common/index.c:802:24
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
.Ltmp349:
	#DEBUG_VALUE: newg <- $rax
	.loc	0 806 13                        # liblzma/common/index.c:806:13
	testq	%rax, %rax
.Ltmp350:
	.loc	0 806 8 is_stmt 0               # liblzma/common/index.c:806:8
	je	.LBB19_18
.Ltmp351:
# %bb.19:                               # %if.end26
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $rbx
	#DEBUG_VALUE: g <- $r13
	#DEBUG_VALUE: newg <- $rax
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%rax, %rbp
	.loc	0 809 20 is_stmt 1              # liblzma/common/index.c:809:20
	movq	32(%r13), %rax
.Ltmp352:
	#DEBUG_VALUE: newg <- $rbp
	movq	%rax, 32(%rbp)
	movdqu	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	%xmm1, 16(%rbp)
	movdqu	%xmm0, (%rbp)
	.loc	0 810 25                        # liblzma/common/index.c:810:25
	movq	56(%r13), %rdx
	.loc	0 810 30 is_stmt 0              # liblzma/common/index.c:810:30
	incq	%rdx
	.loc	0 810 20                        # liblzma/common/index.c:810:20
	movq	%rdx, 48(%rbp)
	.loc	0 811 20 is_stmt 1              # liblzma/common/index.c:811:20
	movq	56(%r13), %rax
	.loc	0 811 15 is_stmt 0              # liblzma/common/index.c:811:15
	movq	%rax, 56(%rbp)
	.loc	0 812 27 is_stmt 1              # liblzma/common/index.c:812:27
	movq	40(%r13), %rax
	.loc	0 812 22 is_stmt 0              # liblzma/common/index.c:812:22
	movq	%rax, 40(%rbp)
	.loc	0 814 17 is_stmt 1              # liblzma/common/index.c:814:17
	movq	%rbp, %rdi
	addq	$64, %rdi
	.loc	0 814 29 is_stmt 0              # liblzma/common/index.c:814:29
	leaq	64(%r13), %rsi
	.loc	0 815 6 is_stmt 1               # liblzma/common/index.c:815:6
	shlq	$4, %rdx
	.loc	0 814 4                         # liblzma/common/index.c:814:4
	callq	memcpy@PLT
.Ltmp353:
	.loc	0 817 16                        # liblzma/common/index.c:817:16
	movq	16(%r13), %rax
	.loc	0 817 23 is_stmt 0              # liblzma/common/index.c:817:23
	testq	%rax, %rax
.Ltmp354:
	.loc	0 817 8                         # liblzma/common/index.c:817:8
	je	.LBB19_21
.Ltmp355:
# %bb.20:                               # %if.then40
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $rbx
	#DEBUG_VALUE: g <- $r13
	#DEBUG_VALUE: newg <- $rbp
	.loc	0 819 27 is_stmt 1              # liblzma/common/index.c:819:27
	movq	%rbp, 32(%rax)
.Ltmp356:
.LBB19_21:                              # %if.end44
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $rbx
	#DEBUG_VALUE: g <- $r13
	#DEBUG_VALUE: newg <- $rbp
	.loc	0 822 27                        # liblzma/common/index.c:822:27
	cmpq	%r13, 64(%rbx)
.Ltmp357:
	.loc	0 822 8 is_stmt 0               # liblzma/common/index.c:822:8
	jne	.LBB19_23
.Ltmp358:
# %bb.22:                               # %if.then48
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $rbx
	#DEBUG_VALUE: g <- $r13
	#DEBUG_VALUE: newg <- $rbp
	.loc	0 824 24 is_stmt 1              # liblzma/common/index.c:824:24
	movq	%rbp, 64(%rbx)
	.loc	0 825 20                        # liblzma/common/index.c:825:20
	movq	%rbp, 56(%rbx)
.Ltmp359:
.LBB19_23:                              # %if.end54
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $rbx
	#DEBUG_VALUE: g <- $r13
	#DEBUG_VALUE: newg <- $rbp
	.loc	0 828 28                        # liblzma/common/index.c:828:28
	cmpq	%r13, 72(%rbx)
.Ltmp360:
	.loc	0 828 8 is_stmt 0               # liblzma/common/index.c:828:8
	jne	.LBB19_25
.Ltmp361:
# %bb.24:                               # %if.then59
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $rbx
	#DEBUG_VALUE: g <- $r13
	#DEBUG_VALUE: newg <- $rbp
	.loc	0 829 25 is_stmt 1              # liblzma/common/index.c:829:25
	movq	%rbp, 72(%rbx)
.Ltmp362:
.LBB19_25:                              # %cleanup68.thread192
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $rbx
	#DEBUG_VALUE: g <- $r13
	#DEBUG_VALUE: newg <- $rbp
	.loc	0 831 4                         # liblzma/common/index.c:831:4
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
.Ltmp363:
.LBB19_26:                              # %cleanup.cont71
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 0 4 is_stmt 0                 # liblzma/common/index.c:0:4
	movq	24(%rsp), %rax                  # 8-byte Reload
	.loc	0 837 30 is_stmt 1              # liblzma/common/index.c:837:30
	movq	%rax, 56(%rsp)
	movq	%r12, 64(%rsp)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)
	.loc	0 840 38                        # liblzma/common/index.c:840:38
	movl	24(%r15), %eax
	.loc	0 837 30                        # liblzma/common/index.c:837:30
	movl	%eax, 80(%rsp)
	movq	%r15, 88(%rsp)
	movq	8(%rsp), %rbx                   # 8-byte Reload
	.loc	0 844 56                        # liblzma/common/index.c:844:56
	movq	(%rbx), %rsi
	leaq	56(%rsp), %rdi
	.loc	0 844 2 is_stmt 0               # liblzma/common/index.c:844:2
	callq	index_cat_helper
.Ltmp364:
	.loc	0 0 2                           # liblzma/common/index.c:0:2
	movq	32(%rsp), %rax                  # 8-byte Reload
	.loc	0 847 26 is_stmt 1              # liblzma/common/index.c:847:26
	addq	%rax, 32(%r15)
	.loc	0 848 27                        # liblzma/common/index.c:848:27
	movq	40(%rbx), %rax
	.loc	0 848 19 is_stmt 0              # liblzma/common/index.c:848:19
	addq	%rax, 40(%r15)
	.loc	0 849 21 is_stmt 1              # liblzma/common/index.c:849:21
	movdqu	48(%r15), %xmm0
	paddq	96(%rsp), %xmm0                 # 16-byte Folded Reload
	movdqu	%xmm0, 48(%r15)
.Ltmp365:
	#DEBUG_VALUE: lzma_index_checks:i <- $r15
	.loc	0 581 23                        # liblzma/common/index.c:581:23
	movl	72(%r15), %eax
.Ltmp366:
	#DEBUG_VALUE: lzma_index_checks:checks <- $eax
	.loc	0 584 60                        # liblzma/common/index.c:584:60
	movq	16(%r15), %rcx
.Ltmp367:
	#DEBUG_VALUE: lzma_index_checks:s <- $rcx
	.loc	0 585 30                        # liblzma/common/index.c:585:30
	cmpl	$-1, 104(%rcx)
.Ltmp368:
	.loc	0 585 6 is_stmt 0               # liblzma/common/index.c:585:6
	je	.LBB19_28
.Ltmp369:
# %bb.27:                               # %if.then.i
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_checks:i <- $r15
	#DEBUG_VALUE: lzma_index_checks:checks <- $eax
	#DEBUG_VALUE: lzma_index_checks:s <- $rcx
	.loc	0 586 44 is_stmt 1              # liblzma/common/index.c:586:44
	movzbl	120(%rcx), %ecx
.Ltmp370:
	.loc	0 586 10 is_stmt 0              # liblzma/common/index.c:586:10
	btsl	%ecx, %eax
.Ltmp371:
	#DEBUG_VALUE: lzma_index_checks:checks <- $eax
.LBB19_28:                              # %lzma_index_checks.exit
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_checks:i <- $r15
	#DEBUG_VALUE: lzma_index_checks:checks <- $eax
	#DEBUG_VALUE: lzma_index_checks:checks <- $eax
	.loc	0 851 41 is_stmt 1              # liblzma/common/index.c:851:41
	orl	72(%rbx), %eax
	.loc	0 851 15 is_stmt 0              # liblzma/common/index.c:851:15
	movl	%eax, 72(%r15)
	.loc	0 854 2 is_stmt 1               # liblzma/common/index.c:854:2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
.Ltmp372:
	.loc	0 0 2 is_stmt 0                 # liblzma/common/index.c:0:2
	xorl	%ebp, %ebp
.Ltmp373:
.LBB19_29:                              # %cleanup94
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 857 1 is_stmt 1               # liblzma/common/index.c:857:1
	movl	%ebp, %eax
	.loc	0 857 1 epilogue_begin is_stmt 0 # liblzma/common/index.c:857:1
	addq	$120, %rsp
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
.Ltmp374:
	#DEBUG_VALUE: lzma_index_cat:dest <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp375:
.LBB19_18:
	.cfi_def_cfa_offset 176
	#DEBUG_VALUE: lzma_index_cat:dest <- $r15
	#DEBUG_VALUE: lzma_index_cat:src <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:allocator <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_index_cat:dest_file_size <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: s <- $rbx
	#DEBUG_VALUE: g <- $r13
	#DEBUG_VALUE: newg <- $rax
	.loc	0 0 1                           # liblzma/common/index.c:0:1
	movl	$5, %ebp
.Ltmp376:
	.loc	0 806 8 is_stmt 1               # liblzma/common/index.c:806:8
	jmp	.LBB19_29
.Ltmp377:
.Lfunc_end19:
	.size	lzma_index_cat, .Lfunc_end19-lzma_index_cat
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_cat_helper
	.type	index_cat_helper,@function
index_cat_helper:                       # @index_cat_helper
.Lfunc_begin20:
	.loc	0 746 0                         # liblzma/common/index.c:746:0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	jmp	.LBB20_1
	.p2align	4, 0x90
.LBB20_3:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
.Ltmp378:
	#DEBUG_VALUE: index_cat_helper:this <- $r14
	#DEBUG_VALUE: index_cat_helper:right <- $r15
	.loc	0 753 40 prologue_end           # liblzma/common/index.c:753:40
	movq	(%rbx), %rax
	.loc	0 753 31 is_stmt 0              # liblzma/common/index.c:753:31
	addq	%rax, (%r14)
	.loc	0 754 38 is_stmt 1              # liblzma/common/index.c:754:38
	movq	8(%rbx), %rax
	.loc	0 754 29 is_stmt 0              # liblzma/common/index.c:754:29
	addq	%rax, 8(%r14)
	.loc	0 755 24 is_stmt 1              # liblzma/common/index.c:755:24
	movl	24(%rbx), %eax
	.loc	0 755 15 is_stmt 0              # liblzma/common/index.c:755:15
	addl	%eax, 40(%r14)
	.loc	0 756 35 is_stmt 1              # liblzma/common/index.c:756:35
	movq	16(%rbx), %rax
	.loc	0 756 26 is_stmt 0              # liblzma/common/index.c:756:26
	addq	%rax, 48(%r14)
	.loc	0 757 26 is_stmt 1              # liblzma/common/index.c:757:26
	movq	32(%rbx), %rdi
	.loc	0 757 2 is_stmt 0               # liblzma/common/index.c:757:2
	movq	%r14, %rsi
	callq	index_tree_append
.Ltmp379:
	.loc	0 0 2                           # liblzma/common/index.c:0:2
	movq	%r15, %r14
.Ltmp380:
	.loc	0 759 12 is_stmt 1              # liblzma/common/index.c:759:12
	testq	%r15, %r15
.Ltmp381:
	.loc	0 759 6 is_stmt 0               # liblzma/common/index.c:759:6
	je	.LBB20_4
.Ltmp382:
.LBB20_1:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: index_cat_helper:this <- $r14
	.loc	0 747 51 is_stmt 1              # liblzma/common/index.c:747:51
	movq	24(%r14), %rsi
.Ltmp383:
	#DEBUG_VALUE: index_cat_helper:left <- $rsi
	.loc	0 748 52                        # liblzma/common/index.c:748:52
	movq	32(%r14), %r15
.Ltmp384:
	#DEBUG_VALUE: index_cat_helper:right <- $r15
	.loc	0 750 11                        # liblzma/common/index.c:750:11
	testq	%rsi, %rsi
.Ltmp385:
	#DEBUG_VALUE: index_cat_helper:info <- undef
	.loc	0 750 6 is_stmt 0               # liblzma/common/index.c:750:6
	je	.LBB20_3
.Ltmp386:
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	#DEBUG_VALUE: index_cat_helper:this <- $r14
	#DEBUG_VALUE: index_cat_helper:left <- $rsi
	#DEBUG_VALUE: index_cat_helper:right <- $r15
	.loc	0 751 3 is_stmt 1               # liblzma/common/index.c:751:3
	movq	%rbx, %rdi
	callq	index_cat_helper
.Ltmp387:
	.loc	0 0 3 is_stmt 0                 # liblzma/common/index.c:0:3
	jmp	.LBB20_3
.Ltmp388:
.LBB20_4:                               # %if.end12
	#DEBUG_VALUE: index_cat_helper:right <- $r14
	.loc	0 763 1 epilogue_begin is_stmt 1 # liblzma/common/index.c:763:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp389:
	#DEBUG_VALUE: index_cat_helper:right <- $r15
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp390:
	.cfi_def_cfa_offset 8
	retq
.Ltmp391:
.Lfunc_end20:
	.size	index_cat_helper, .Lfunc_end20-index_cat_helper
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_index_dup
.LCPI21_0:
	.zero	16
	.text
	.globl	lzma_index_dup
	.p2align	4, 0x90
	.type	lzma_index_dup,@function
lzma_index_dup:                         # @lzma_index_dup
.Lfunc_begin21:
	.loc	0 923 0                         # liblzma/common/index.c:923:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_dup:src <- $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- $rsi
	#DEBUG_VALUE: index_init_plain:allocator <- $rsi
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
	movq	%rsi, %rbx
	movq	%rdi, %r15
.Ltmp392:
	.loc	0 382 18 prologue_end           # liblzma/common/index.c:382:18
	movl	$80, %edi
.Ltmp393:
	#DEBUG_VALUE: lzma_index_dup:src <- $r15
	callq	lzma_alloc@PLT
.Ltmp394:
	#DEBUG_VALUE: index_init_plain:allocator <- $rbx
	#DEBUG_VALUE: lzma_index_dup:allocator <- $rbx
	#DEBUG_VALUE: index_init_plain:i <- $rax
	.loc	0 383 8                         # liblzma/common/index.c:383:8
	testq	%rax, %rax
.Ltmp395:
	.loc	0 383 6 is_stmt 0               # liblzma/common/index.c:383:6
	je	.LBB21_11
.Ltmp396:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_index_dup:src <- $r15
	#DEBUG_VALUE: lzma_index_dup:allocator <- $rbx
	#DEBUG_VALUE: index_init_plain:allocator <- $rbx
	#DEBUG_VALUE: index_init_plain:i <- $rax
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%rax, %r13
.Ltmp397:
	#DEBUG_VALUE: index_tree_init:tree <- $r13
	movq	%rbx, (%rsp)                    # 8-byte Spill
.Ltmp398:
	#DEBUG_VALUE: index_init_plain:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	movabsq	$1152921504606846971, %rcx      # imm = 0xFFFFFFFFFFFFFFB
.Ltmp399:
	.loc	0 185 17 is_stmt 1              # liblzma/common/index.c:185:17
	xorps	%xmm0, %xmm0
	movups	%xmm0, 12(%rax)
	movups	%xmm0, (%rax)
.Ltmp400:
	.loc	0 385 24                        # liblzma/common/index.c:385:24
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	.loc	0 389 15                        # liblzma/common/index.c:389:15
	movq	$512, 64(%rax)                  # imm = 0x200
	.loc	0 390 13                        # liblzma/common/index.c:390:13
	movl	$0, 72(%rax)
.Ltmp401:
	#DEBUG_VALUE: lzma_index_dup:dest <- $r13
	.loc	0 930 33                        # liblzma/common/index.c:930:33
	movq	32(%r15), %rax
.Ltmp402:
	#DEBUG_VALUE: index_init_plain:i <- $r13
	.loc	0 930 26 is_stmt 0              # liblzma/common/index.c:930:26
	movq	%rax, 32(%r13)
	.loc	0 931 26 is_stmt 1              # liblzma/common/index.c:931:26
	movq	40(%r15), %rax
	.loc	0 931 19 is_stmt 0              # liblzma/common/index.c:931:19
	movq	%rax, 40(%r13)
	.loc	0 932 28 is_stmt 1              # liblzma/common/index.c:932:28
	movq	48(%r15), %rax
	.loc	0 932 21 is_stmt 0              # liblzma/common/index.c:932:21
	movq	%rax, 48(%r13)
	.loc	0 933 31 is_stmt 1              # liblzma/common/index.c:933:31
	movq	56(%r15), %rax
	.loc	0 933 24 is_stmt 0              # liblzma/common/index.c:933:24
	movq	%rax, 56(%r13)
	.loc	0 937 42 is_stmt 1              # liblzma/common/index.c:937:42
	movq	8(%r15), %rbp
.Ltmp403:
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	.loc	0 865 24                        # liblzma/common/index.c:865:24
	cmpq	%rcx, 88(%rbp)
.Ltmp404:
	.loc	0 865 6 is_stmt 0               # liblzma/common/index.c:865:6
	jbe	.LBB21_2
.Ltmp405:
.LBB21_8:                               # %if.then.i32
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: lzma_index_end:i <- undef
	#DEBUG_VALUE: lzma_index_end:allocator <- [DW_OP_deref] $rsp
	.loc	0 422 3 is_stmt 1               # liblzma/common/index.c:422:3
	movq	(%r13), %rdi
.Ltmp406:
	#DEBUG_VALUE: index_tree_end:tree <- undef
	#DEBUG_VALUE: index_tree_end:allocator <- [DW_OP_deref] $rsp
	.loc	0 221 17                        # liblzma/common/index.c:221:17
	testq	%rdi, %rdi
.Ltmp407:
	#DEBUG_VALUE: index_tree_end:free_func <- undef
	.loc	0 0 17 is_stmt 0                # liblzma/common/index.c:0:17
	movq	(%rsp), %rbx                    # 8-byte Reload
.Ltmp408:
	.loc	0 221 6                         # liblzma/common/index.c:221:6
	je	.LBB21_10
.Ltmp409:
# %bb.9:                                # %if.then.i.i
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: lzma_index_end:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_tree_end:allocator <- [DW_OP_deref] $rsp
	.loc	0 222 3 is_stmt 1               # liblzma/common/index.c:222:3
	movl	$index_stream_end, %edx
	movq	%rbx, %rsi
	callq	index_tree_node_end
.Ltmp410:
.LBB21_10:                              # %cleanup.thread
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: lzma_index_end:allocator <- [DW_OP_deref] $rsp
	.loc	0 423 3                         # liblzma/common/index.c:423:3
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	lzma_free@PLT
.Ltmp411:
.LBB21_11:                              # %cleanup14
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- $rbx
	#DEBUG_VALUE: index_init_plain:allocator <- $rbx
	.loc	0 0 3 is_stmt 0                 # liblzma/common/index.c:0:3
	xorl	%r13d, %r13d
.Ltmp412:
	#DEBUG_VALUE: lzma_index_dup:srcstream <- undef
.LBB21_12:                              # %cleanup14
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 952 1 is_stmt 1               # liblzma/common/index.c:952:1
	movq	%r13, %rax
	.loc	0 952 1 epilogue_begin is_stmt 0 # liblzma/common/index.c:952:1
	addq	$40, %rsp
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
.Ltmp413:
.LBB21_2:                               # %if.end.i.preheader
	.cfi_def_cfa_offset 96
	#DEBUG_VALUE: lzma_index_dup:src <- $r15
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: index_init_plain:allocator <- [$rsp+0]
	#DEBUG_VALUE: index_init_plain:i <- $r13
	#DEBUG_VALUE: index_tree_init:tree <- $r13
	#DEBUG_VALUE: lzma_index_dup:dest <- $r13
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	.loc	0 0 1                           # liblzma/common/index.c:0:1
	leaq	88(%rbp), %r14
	movq	%r13, 8(%rsp)                   # 8-byte Spill
.Ltmp414:
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_tree_init:tree <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_init_plain:i <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
.LBB21_3:                               # %if.end.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_14 Depth 2
                                        #       Child Loop BB21_15 Depth 3
                                        #       Child Loop BB21_16 Depth 3
                                        #     Child Loop BB21_20 Depth 2
                                        #     Child Loop BB21_21 Depth 2
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	.loc	0 870 14 is_stmt 1              # liblzma/common/index.c:870:14
	movups	(%rbp), %xmm0
	movaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	.loc	0 870 38 is_stmt 0              # liblzma/common/index.c:870:38
	movl	40(%rbp), %ebx
	.loc	0 871 9 is_stmt 1               # liblzma/common/index.c:871:9
	movq	48(%rbp), %r12
.Ltmp415:
	#DEBUG_VALUE: index_stream_init:block_number_base <- $r12
	#DEBUG_VALUE: index_stream_init:compressed_base <- undef
	#DEBUG_VALUE: index_stream_init:uncompressed_base <- undef
	#DEBUG_VALUE: index_stream_init:stream_number <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_stack_value] $ebx
	#DEBUG_VALUE: index_stream_init:allocator <- [DW_OP_deref] $rsp
	.loc	0 345 20                        # liblzma/common/index.c:345:20
	movl	$168, %edi
	movq	(%rsp), %rsi                    # 8-byte Reload
	callq	lzma_alloc@PLT
.Ltmp416:
	#DEBUG_VALUE: index_stream_init:s <- $rax
	.loc	0 346 8                         # liblzma/common/index.c:346:8
	testq	%rax, %rax
.Ltmp417:
	.loc	0 346 6 is_stmt 0               # liblzma/common/index.c:346:6
	je	.LBB21_8
.Ltmp418:
# %bb.4:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB21_3 Depth=1
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: index_init_plain:allocator <- [$rsp+0]
	#DEBUG_VALUE: index_init_plain:i <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_tree_init:tree <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_stream_init:block_number_base <- $r12
	#DEBUG_VALUE: index_stream_init:stream_number <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 64 7, DW_OP_stack_value] $ebx
	#DEBUG_VALUE: index_stream_init:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_stream_init:s <- $rax
	.loc	0 0 6                           # liblzma/common/index.c:0:6
	movq	%rax, %r15
	movaps	16(%rsp), %xmm0                 # 16-byte Reload
	.loc	0 349 28 is_stmt 1              # liblzma/common/index.c:349:28
	movups	%xmm0, (%rax)
.Ltmp419:
	.loc	0 185 17                        # liblzma/common/index.c:185:17
	xorps	%xmm0, %xmm0
.Ltmp420:
	.loc	0 352 15                        # liblzma/common/index.c:352:15
	movups	%xmm0, 16(%rax)
	movq	$0, 32(%rax)
	.loc	0 355 12                        # liblzma/common/index.c:355:12
	movl	%ebx, 40(%rax)
	.loc	0 356 23                        # liblzma/common/index.c:356:23
	movq	%r12, 48(%rax)
.Ltmp421:
	#DEBUG_VALUE: index_tree_init:tree <- undef
	.loc	0 185 17                        # liblzma/common/index.c:185:17
	movups	%xmm0, 56(%rax)
	movups	%xmm0, 68(%rax)
.Ltmp422:
	.loc	0 360 18                        # liblzma/common/index.c:360:18
	movups	%xmm0, 88(%rax)
	.loc	0 362 26                        # liblzma/common/index.c:362:26
	movl	$-1, 104(%rax)
	.loc	0 363 20                        # liblzma/common/index.c:363:20
	movq	$0, 160(%rax)
.Ltmp423:
	#DEBUG_VALUE: index_dup_stream:dest <- $r15
	.loc	0 875 43                        # liblzma/common/index.c:875:43
	cmpq	$0, 64(%rbp)
.Ltmp424:
	.loc	0 875 6 is_stmt 0               # liblzma/common/index.c:875:6
	je	.LBB21_19
.Ltmp425:
# %bb.5:                                # %if.end7.i
                                        #   in Loop: Header=BB21_3 Depth=1
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_dup_stream:dest <- $r15
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	leaq	56(%r15), %rbx
	movq	%r15, %rax
	addq	$104, %rax
	.loc	0 879 28 is_stmt 1              # liblzma/common/index.c:879:28
	movq	(%r14), %rcx
	.loc	0 879 21 is_stmt 0              # liblzma/common/index.c:879:21
	movq	%rcx, 88(%r15)
	.loc	0 880 31 is_stmt 1              # liblzma/common/index.c:880:31
	movq	96(%rbp), %rcx
	.loc	0 880 24 is_stmt 0              # liblzma/common/index.c:880:24
	movq	%rcx, 96(%r15)
	.loc	0 881 28 is_stmt 1              # liblzma/common/index.c:881:28
	movq	152(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movups	104(%rbp), %xmm0
	movups	120(%rbp), %xmm1
	movups	136(%rbp), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	.loc	0 882 30                        # liblzma/common/index.c:882:30
	movq	160(%rbp), %rax
	.loc	0 882 23 is_stmt 0              # liblzma/common/index.c:882:23
	movq	%rax, 160(%r15)
	.loc	0 888 11 is_stmt 1              # liblzma/common/index.c:888:11
	movq	(%r14), %rdi
	.loc	0 888 24 is_stmt 0              # liblzma/common/index.c:888:24
	shlq	$4, %rdi
	.loc	0 888 4                         # liblzma/common/index.c:888:4
	addq	$64, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	.loc	0 887 23 is_stmt 1              # liblzma/common/index.c:887:23
	callq	lzma_alloc@PLT
.Ltmp426:
	#DEBUG_VALUE: index_dup_stream:destg <- $rax
	.loc	0 890 12                        # liblzma/common/index.c:890:12
	testq	%rax, %rax
.Ltmp427:
	.loc	0 890 6 is_stmt 0               # liblzma/common/index.c:890:6
	je	.LBB21_6
.Ltmp428:
# %bb.13:                               # %if.end18.i
                                        #   in Loop: Header=BB21_3 Depth=1
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_dup_stream:dest <- $r15
	#DEBUG_VALUE: index_dup_stream:destg <- $rax
	.loc	0 0 6                           # liblzma/common/index.c:0:6
	movq	%rax, %r13
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	.loc	0 897 30 is_stmt 1              # liblzma/common/index.c:897:30
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	.loc	0 898 21                        # liblzma/common/index.c:898:21
	movq	$1, 40(%rax)
	.loc	0 899 26                        # liblzma/common/index.c:899:26
	movq	(%r14), %rax
.Ltmp429:
	#DEBUG_VALUE: index_dup_stream:destg <- $r13
	.loc	0 899 19 is_stmt 0              # liblzma/common/index.c:899:19
	movq	%rax, 48(%r13)
	.loc	0 900 34 is_stmt 1              # liblzma/common/index.c:900:34
	decq	%rax
	.loc	0 900 14 is_stmt 0              # liblzma/common/index.c:900:14
	movq	%rax, 56(%r13)
	.loc	0 903 62 is_stmt 1              # liblzma/common/index.c:903:62
	movq	64(%rbp), %rbx
.Ltmp430:
	#DEBUG_VALUE: index_dup_stream:srcg <- $rbx
	#DEBUG_VALUE: index_dup_stream:i <- 0
	.loc	0 0 62 is_stmt 0                # liblzma/common/index.c:0:62
	movq	%r13, %r14
	addq	$64, %r14
	xorl	%r12d, %r12d
.Ltmp431:
	.p2align	4, 0x90
.LBB21_14:                              # %do.body.i
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_15 Depth 3
                                        #       Child Loop BB21_16 Depth 3
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_dup_stream:dest <- $r15
	#DEBUG_VALUE: index_dup_stream:destg <- $r13
	#DEBUG_VALUE: index_dup_stream:i <- $r12
	#DEBUG_VALUE: index_dup_stream:srcg <- $rbx
	.loc	0 906 25 is_stmt 1              # liblzma/common/index.c:906:25
	movq	%r12, %rdi
	shlq	$4, %rdi
	addq	%r14, %rdi
	.loc	0 906 36 is_stmt 0              # liblzma/common/index.c:906:36
	leaq	64(%rbx), %rsi
	.loc	0 907 12 is_stmt 1              # liblzma/common/index.c:907:12
	movq	56(%rbx), %rdx
	.loc	0 907 22 is_stmt 0              # liblzma/common/index.c:907:22
	shlq	$4, %rdx
	addq	$16, %rdx
	.loc	0 906 3 is_stmt 1               # liblzma/common/index.c:906:3
	callq	memcpy@PLT
.Ltmp432:
	#DEBUG_VALUE: index_tree_next:node <- $rbx
	.loc	0 297 12                        # liblzma/common/index.c:297:12
	movq	32(%rbx), %rax
.Ltmp433:
	.loc	0 908 14                        # liblzma/common/index.c:908:14
	movq	56(%rbx), %rcx
	.loc	0 908 5 is_stmt 0               # liblzma/common/index.c:908:5
	addq	%rcx, %r12
.Ltmp434:
	incq	%r12
.Ltmp435:
	#DEBUG_VALUE: index_dup_stream:i <- $r12
	.loc	0 0 5                           # liblzma/common/index.c:0:5
	movq	%rbx, %rcx
.Ltmp436:
	.loc	0 297 18 is_stmt 1              # liblzma/common/index.c:297:18
	testq	%rax, %rax
.Ltmp437:
	.loc	0 297 6 is_stmt 0               # liblzma/common/index.c:297:6
	je	.LBB21_16
.Ltmp438:
	.p2align	4, 0x90
.LBB21_15:                              # %while.cond.i.i
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_dup_stream:dest <- $r15
	#DEBUG_VALUE: index_dup_stream:destg <- $r13
	#DEBUG_VALUE: index_dup_stream:i <- $r12
	#DEBUG_VALUE: index_tree_next:node <- $rbx
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%rax, %rbx
.Ltmp439:
	#DEBUG_VALUE: index_tree_next:node <- $rbx
	.loc	0 299 16 is_stmt 1              # liblzma/common/index.c:299:16
	movq	24(%rax), %rax
	.loc	0 299 21 is_stmt 0              # liblzma/common/index.c:299:21
	testq	%rax, %rax
	.loc	0 299 3                         # liblzma/common/index.c:299:3
	jne	.LBB21_15
	jmp	.LBB21_14
.Ltmp440:
	.p2align	4, 0x90
.LBB21_16:                              # %while.cond4.i.i
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_dup_stream:dest <- $r15
	#DEBUG_VALUE: index_dup_stream:destg <- $r13
	#DEBUG_VALUE: index_dup_stream:i <- $r12
	#DEBUG_VALUE: index_tree_next:node <- $rcx
	.loc	0 305 15 is_stmt 1              # liblzma/common/index.c:305:15
	movq	16(%rcx), %rbx
	.loc	0 305 22 is_stmt 0              # liblzma/common/index.c:305:22
	testq	%rbx, %rbx
	.loc	0 305 30                        # liblzma/common/index.c:305:30
	je	.LBB21_18
.Ltmp441:
# %bb.17:                               # %land.rhs.i.i
                                        #   in Loop: Header=BB21_16 Depth=3
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_dup_stream:dest <- $r15
	#DEBUG_VALUE: index_dup_stream:destg <- $r13
	#DEBUG_VALUE: index_dup_stream:i <- $r12
	#DEBUG_VALUE: index_tree_next:node <- $rcx
	.loc	0 305 53                        # liblzma/common/index.c:305:53
	cmpq	%rcx, 32(%rbx)
	movq	%rbx, %rcx
.Ltmp442:
	.loc	0 0 53                          # liblzma/common/index.c:0:53
	je	.LBB21_16
	jmp	.LBB21_14
.Ltmp443:
	.p2align	4, 0x90
.LBB21_18:                              # %index_dup_stream.exit
                                        #   in Loop: Header=BB21_3 Depth=1
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_dup_stream:dest <- $r15
	#DEBUG_VALUE: index_dup_stream:destg <- $r13
	#DEBUG_VALUE: index_dup_stream:i <- $r12
	#DEBUG_VALUE: index_dup_stream:srcg <- 0
	movq	16(%rsp), %rdi                  # 8-byte Reload
	.loc	0 915 2 is_stmt 1               # liblzma/common/index.c:915:2
	movq	%r13, %rsi
	callq	index_tree_append
.Ltmp444:
	#DEBUG_VALUE: deststream <- $r15
	.loc	0 0 2 is_stmt 0                 # liblzma/common/index.c:0:2
	movq	8(%rsp), %r13                   # 8-byte Reload
.Ltmp445:
.LBB21_19:                              # %if.end8
                                        #   in Loop: Header=BB21_3 Depth=1
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	.loc	0 946 3 is_stmt 1               # liblzma/common/index.c:946:3
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	index_tree_append
.Ltmp446:
	#DEBUG_VALUE: index_tree_next:node <- $rbp
	.loc	0 297 12                        # liblzma/common/index.c:297:12
	movq	32(%rbp), %rcx
	.loc	0 297 18 is_stmt 0              # liblzma/common/index.c:297:18
	testq	%rcx, %rcx
.Ltmp447:
	.loc	0 297 6                         # liblzma/common/index.c:297:6
	je	.LBB21_21
.Ltmp448:
	.p2align	4, 0x90
.LBB21_20:                              # %while.cond.i
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%rcx, %rax
.Ltmp449:
	#DEBUG_VALUE: index_tree_next:node <- $rax
	.loc	0 299 16 is_stmt 1              # liblzma/common/index.c:299:16
	movq	24(%rcx), %rcx
	.loc	0 299 21 is_stmt 0              # liblzma/common/index.c:299:21
	testq	%rcx, %rcx
	.loc	0 299 3                         # liblzma/common/index.c:299:3
	jne	.LBB21_20
	jmp	.LBB21_23
.Ltmp450:
	.p2align	4, 0x90
.LBB21_21:                              # %while.cond4.i
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_tree_next:node <- $rbp
	.loc	0 305 15 is_stmt 1              # liblzma/common/index.c:305:15
	movq	16(%rbp), %rax
	.loc	0 305 22 is_stmt 0              # liblzma/common/index.c:305:22
	testq	%rax, %rax
	.loc	0 305 30                        # liblzma/common/index.c:305:30
	je	.LBB21_12
.Ltmp451:
# %bb.22:                               # %land.rhs.i
                                        #   in Loop: Header=BB21_21 Depth=2
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_tree_next:node <- $rbp
	.loc	0 305 53                        # liblzma/common/index.c:305:53
	cmpq	%rbp, 32(%rax)
	movq	%rax, %rbp
.Ltmp452:
	.loc	0 305 2                         # liblzma/common/index.c:305:2
	je	.LBB21_21
.Ltmp453:
.LBB21_23:                              # %do.cond
                                        #   in Loop: Header=BB21_3 Depth=1
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: index_dup_stream:dest <- $r15
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rax
	#DEBUG_VALUE: index_dup_stream:src <- $rax
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	.loc	0 865 11 is_stmt 1              # liblzma/common/index.c:865:11
	leaq	88(%rax), %r14
	movq	%rax, %rbp
	.loc	0 865 24 is_stmt 0              # liblzma/common/index.c:865:24
	movabsq	$1152921504606846971, %rcx      # imm = 0xFFFFFFFFFFFFFFB
	cmpq	%rcx, 88(%rax)
.Ltmp454:
	.loc	0 865 6                         # liblzma/common/index.c:865:6
	jbe	.LBB21_3
	jmp	.LBB21_8
.Ltmp455:
.LBB21_6:                               # %if.then17.i
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_dup_stream:dest <- $r15
	#DEBUG_VALUE: index_dup_stream:destg <- $rax
	#DEBUG_VALUE: index_stream_end:node <- $r15
	#DEBUG_VALUE: index_stream_end:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_stream_end:s <- $r15
	.loc	0 374 2 is_stmt 1               # liblzma/common/index.c:374:2
	movq	(%rbx), %rdi
.Ltmp456:
	#DEBUG_VALUE: index_tree_end:tree <- undef
	#DEBUG_VALUE: index_tree_end:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_tree_end:free_func <- 0
	.loc	0 221 17                        # liblzma/common/index.c:221:17
	testq	%rdi, %rdi
	movq	8(%rsp), %r13                   # 8-byte Reload
.Ltmp457:
	.loc	0 221 6 is_stmt 0               # liblzma/common/index.c:221:6
	je	.LBB21_8
.Ltmp458:
# %bb.7:                                # %if.then.i.i.i
	#DEBUG_VALUE: lzma_index_dup:src <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_dup:allocator <- [$rsp+0]
	#DEBUG_VALUE: lzma_index_dup:dest <- [DW_OP_plus_uconst 8, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_index_dup:srcstream <- $rbp
	#DEBUG_VALUE: index_dup_stream:src <- $rbp
	#DEBUG_VALUE: index_dup_stream:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_dup_stream:dest <- $r15
	#DEBUG_VALUE: index_dup_stream:destg <- $rax
	#DEBUG_VALUE: index_stream_end:node <- $r15
	#DEBUG_VALUE: index_stream_end:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_stream_end:s <- $r15
	#DEBUG_VALUE: index_tree_end:allocator <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: index_tree_end:free_func <- 0
	.loc	0 0 6                           # liblzma/common/index.c:0:6
	movq	(%rsp), %rsi                    # 8-byte Reload
.Ltmp459:
	.loc	0 222 3 is_stmt 1               # liblzma/common/index.c:222:3
	xorl	%edx, %edx
	callq	index_tree_node_end
.Ltmp460:
	.loc	0 0 3 is_stmt 0                 # liblzma/common/index.c:0:3
	jmp	.LBB21_8
.Ltmp461:
.Lfunc_end21:
	.size	lzma_index_dup, .Lfunc_end21-lzma_index_dup
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_iter_init            # -- Begin function lzma_index_iter_init
	.p2align	4, 0x90
	.type	lzma_index_iter_init,@function
lzma_index_iter_init:                   # @lzma_index_iter_init
.Lfunc_begin22:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_iter_init:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_init:i <- $rsi
	.loc	0 1079 31 prologue_end is_stmt 1 # liblzma/common/index.c:1079:31
	movq	%rsi, 256(%rdi)
.Ltmp462:
	#DEBUG_VALUE: lzma_index_iter_rewind:iter <- $rdi
	.loc	0 1089 31                       # liblzma/common/index.c:1089:31
	xorps	%xmm0, %xmm0
	movups	%xmm0, 264(%rdi)
	movups	%xmm0, 280(%rdi)
.Ltmp463:
	.loc	0 1081 2                        # liblzma/common/index.c:1081:2
	retq
.Ltmp464:
.Lfunc_end22:
	.size	lzma_index_iter_init, .Lfunc_end22-lzma_index_iter_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_iter_rewind          # -- Begin function lzma_index_iter_rewind
	.p2align	4, 0x90
	.type	lzma_index_iter_rewind,@function
lzma_index_iter_rewind:                 # @lzma_index_iter_rewind
.Lfunc_begin23:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_iter_rewind:iter <- $rdi
	.loc	0 1089 31 prologue_end          # liblzma/common/index.c:1089:31
	xorps	%xmm0, %xmm0
	movups	%xmm0, 280(%rdi)
	movups	%xmm0, 264(%rdi)
	.loc	0 1092 2                        # liblzma/common/index.c:1092:2
	retq
.Ltmp465:
.Lfunc_end23:
	.size	lzma_index_iter_rewind, .Lfunc_end23-lzma_index_iter_rewind
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_iter_next            # -- Begin function lzma_index_iter_next
	.p2align	4, 0x90
	.type	lzma_index_iter_next,@function
lzma_index_iter_next:                   # @lzma_index_iter_next
.Lfunc_begin24:
	.loc	0 1098 0                        # liblzma/common/index.c:1098:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	movb	$1, %al
.Ltmp466:
	.loc	0 1100 27 prologue_end          # liblzma/common/index.c:1100:27
	cmpl	$3, %esi
.Ltmp467:
	.loc	0 1100 6 is_stmt 0              # liblzma/common/index.c:1100:6
	ja	.LBB24_53
.Ltmp468:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp469:
	#DEBUG_VALUE: lzma_index_iter_next:i <- undef
	.loc	0 1104 59 is_stmt 1             # liblzma/common/index.c:1104:59
	movq	264(%rdi), %rcx
.Ltmp470:
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	#DEBUG_VALUE: lzma_index_iter_next:record <- undef
	.loc	0 1111 11                       # liblzma/common/index.c:1111:11
	cmpl	$1, %esi
.Ltmp471:
	.loc	0 1111 6 is_stmt 0              # liblzma/common/index.c:1111:6
	jne	.LBB24_3
.Ltmp472:
.LBB24_14:
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	.loc	0 0 6                           # liblzma/common/index.c:0:6
	xorl	%r8d, %r8d
	jmp	.LBB24_15
.Ltmp473:
.LBB24_3:                               # %if.then6
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	.loc	0 1114 39 is_stmt 1             # liblzma/common/index.c:1114:39
	movq	288(%rdi), %rdx
	.loc	0 1114 3 is_stmt 0              # liblzma/common/index.c:1114:3
	cmpq	$2, %rdx
	je	.LBB24_12
.Ltmp474:
# %bb.4:                                # %if.then6
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	cmpq	$1, %rdx
	je	.LBB24_7
.Ltmp475:
# %bb.5:                                # %if.then6
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	testq	%rdx, %rdx
	jne	.LBB24_14
.Ltmp476:
# %bb.6:                                # %sw.bb
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	.loc	0 1116 12 is_stmt 1             # liblzma/common/index.c:1116:12
	leaq	272(%rdi), %rdx
	.loc	0 1117 4                        # liblzma/common/index.c:1117:4
	jmp	.LBB24_13
.Ltmp477:
.LBB24_7:                               # %sw.bb11
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	.loc	0 1120 55                       # liblzma/common/index.c:1120:55
	movq	272(%rdi), %rdx
.Ltmp478:
	#DEBUG_VALUE: index_tree_next:node <- $rdx
	.loc	0 297 12                        # liblzma/common/index.c:297:12
	movq	32(%rdx), %r9
	.loc	0 297 18 is_stmt 0              # liblzma/common/index.c:297:18
	testq	%r9, %r9
.Ltmp479:
	.loc	0 297 6                         # liblzma/common/index.c:297:6
	je	.LBB24_10
.Ltmp480:
	.p2align	4, 0x90
.LBB24_8:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%r9, %r8
.Ltmp481:
	#DEBUG_VALUE: index_tree_next:node <- $r8
	.loc	0 299 16 is_stmt 1              # liblzma/common/index.c:299:16
	movq	24(%r9), %r9
	.loc	0 299 21 is_stmt 0              # liblzma/common/index.c:299:21
	testq	%r9, %r9
	.loc	0 299 3                         # liblzma/common/index.c:299:3
	jne	.LBB24_8
	jmp	.LBB24_15
.Ltmp482:
	.p2align	4, 0x90
.LBB24_9:                               # %land.rhs.i
                                        #   in Loop: Header=BB24_10 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	#DEBUG_VALUE: index_tree_next:node <- $rdx
	.loc	0 305 53 is_stmt 1              # liblzma/common/index.c:305:53
	cmpq	%rdx, 32(%r8)
	movq	%r8, %rdx
.Ltmp483:
	.loc	0 305 2 is_stmt 0               # liblzma/common/index.c:305:2
	jne	.LBB24_15
.Ltmp484:
.LBB24_10:                              # %while.cond4.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	#DEBUG_VALUE: index_tree_next:node <- $rdx
	.loc	0 305 15                        # liblzma/common/index.c:305:15
	movq	16(%rdx), %r8
	.loc	0 305 22                        # liblzma/common/index.c:305:22
	testq	%r8, %r8
	.loc	0 305 30                        # liblzma/common/index.c:305:30
	jne	.LBB24_9
	jmp	.LBB24_14
.Ltmp485:
.LBB24_12:                              # %sw.bb14
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	.loc	0 1125 21 is_stmt 1             # liblzma/common/index.c:1125:21
	leaq	64(%rcx), %rdx
.Ltmp486:
.LBB24_13:                              # %if.end15.sink.split
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	.loc	0 0 0 is_stmt 0                 # liblzma/common/index.c:0:0
	movq	(%rdx), %r8
.Ltmp487:
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
.LBB24_15:                              # %if.end15
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	movq	256(%rdi), %rdx
.Ltmp488:
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	movq	280(%rdi), %r9
.Ltmp489:
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
.LBB24_16:                              # %again
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_29 Depth 2
                                        #     Child Loop BB24_30 Depth 2
                                        #     Child Loop BB24_40 Depth 2
                                        #     Child Loop BB24_41 Depth 2
                                        #     Child Loop BB24_34 Depth 2
                                        #       Child Loop BB24_35 Depth 3
                                        #       Child Loop BB24_36 Depth 3
                                        #     Child Loop BB24_23 Depth 2
                                        #       Child Loop BB24_24 Depth 3
                                        #       Child Loop BB24_25 Depth 3
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	#DEBUG_LABEL: lzma_index_iter_next:again
	.loc	0 1131 13 is_stmt 1             # liblzma/common/index.c:1131:13
	testq	%rcx, %rcx
.Ltmp490:
	.loc	0 1131 6 is_stmt 0              # liblzma/common/index.c:1131:6
	je	.LBB24_20
.Ltmp491:
# %bb.17:                               # %if.else
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	.loc	0 1150 19 is_stmt 1             # liblzma/common/index.c:1150:19
	testq	%r8, %r8
	.loc	0 1150 27 is_stmt 0             # liblzma/common/index.c:1150:27
	je	.LBB24_33
.Ltmp492:
# %bb.18:                               # %land.lhs.true
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	.loc	0 1150 37                       # liblzma/common/index.c:1150:37
	cmpq	56(%r8), %r9
.Ltmp493:
	.loc	0 1150 13                       # liblzma/common/index.c:1150:13
	jae	.LBB24_28
.Ltmp494:
# %bb.19:                               # %if.then33
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	.loc	0 1152 3 is_stmt 1              # liblzma/common/index.c:1152:3
	incq	%r9
.Ltmp495:
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	.loc	0 1154 2                        # liblzma/common/index.c:1154:2
	jmp	.LBB24_45
.Ltmp496:
	.p2align	4, 0x90
.LBB24_20:                              # %if.then17
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	.loc	0 1134 46                       # liblzma/common/index.c:1134:46
	movq	8(%rdx), %rcx
.Ltmp497:
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	.loc	0 0 0 is_stmt 0                 # liblzma/common/index.c:0:0
	movq	64(%rcx), %r8
.Ltmp498:
	cmpl	$2, %esi
	.loc	0 1135 7 is_stmt 1              # liblzma/common/index.c:1135:7
	jb	.LBB24_50
.Ltmp499:
# %bb.21:                               # %while.cond.preheader
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	.loc	0 1139 35                       # liblzma/common/index.c:1139:35
	testq	%r8, %r8
	.loc	0 1139 4 is_stmt 0              # liblzma/common/index.c:1139:4
	jne	.LBB24_44
.Ltmp500:
# %bb.22:                               # %while.body.preheader
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	.loc	0 0 4                           # liblzma/common/index.c:0:4
	movq	%rcx, %r10
.Ltmp501:
.LBB24_23:                              # %while.body
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_24 Depth 3
                                        #       Child Loop BB24_25 Depth 3
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $r10
	#DEBUG_VALUE: index_tree_next:node <- $r10
	.loc	0 297 12 is_stmt 1              # liblzma/common/index.c:297:12
	movq	32(%r10), %r8
	.loc	0 297 18 is_stmt 0              # liblzma/common/index.c:297:18
	testq	%r8, %r8
.Ltmp502:
	.loc	0 297 6                         # liblzma/common/index.c:297:6
	je	.LBB24_25
.Ltmp503:
	.p2align	4, 0x90
.LBB24_24:                              # %while.cond.i125
                                        #   Parent Loop BB24_16 Depth=1
                                        #     Parent Loop BB24_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $r10
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%r8, %rcx
.Ltmp504:
	#DEBUG_VALUE: index_tree_next:node <- $rcx
	.loc	0 299 16 is_stmt 1              # liblzma/common/index.c:299:16
	movq	24(%r8), %r8
	.loc	0 299 21 is_stmt 0              # liblzma/common/index.c:299:21
	testq	%r8, %r8
	.loc	0 299 3                         # liblzma/common/index.c:299:3
	jne	.LBB24_24
	jmp	.LBB24_27
.Ltmp505:
	.p2align	4, 0x90
.LBB24_25:                              # %while.cond4.i130
                                        #   Parent Loop BB24_16 Depth=1
                                        #     Parent Loop BB24_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: index_tree_next:node <- $r10
	.loc	0 305 15 is_stmt 1              # liblzma/common/index.c:305:15
	movq	16(%r10), %rcx
	.loc	0 305 22 is_stmt 0              # liblzma/common/index.c:305:22
	testq	%rcx, %rcx
	.loc	0 305 30                        # liblzma/common/index.c:305:30
	je	.LBB24_52
.Ltmp506:
# %bb.26:                               # %land.rhs.i134
                                        #   in Loop: Header=BB24_25 Depth=3
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: index_tree_next:node <- $r10
	.loc	0 305 53                        # liblzma/common/index.c:305:53
	cmpq	%r10, 32(%rcx)
	movq	%rcx, %r10
.Ltmp507:
	.loc	0 305 2                         # liblzma/common/index.c:305:2
	je	.LBB24_25
.Ltmp508:
.LBB24_27:                              # %index_tree_next.exit137
                                        #   in Loop: Header=BB24_23 Depth=2
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	.loc	0 1139 26 is_stmt 1             # liblzma/common/index.c:1139:26
	movq	64(%rcx), %r8
	movq	%rcx, %r10
	movl	$0, %r9d
	.loc	0 1139 35 is_stmt 0             # liblzma/common/index.c:1139:35
	testq	%r8, %r8
	.loc	0 1139 4                        # liblzma/common/index.c:1139:4
	je	.LBB24_23
	jmp	.LBB24_45
.Ltmp509:
.LBB24_28:                              # %if.then36
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	#DEBUG_VALUE: lzma_index_iter_next:record <- 0
	#DEBUG_VALUE: index_tree_next:node <- $r8
	.loc	0 297 12 is_stmt 1              # liblzma/common/index.c:297:12
	movq	32(%r8), %r9
	.loc	0 297 18 is_stmt 0              # liblzma/common/index.c:297:18
	testq	%r9, %r9
.Ltmp510:
	.loc	0 297 6                         # liblzma/common/index.c:297:6
	je	.LBB24_30
.Ltmp511:
	.p2align	4, 0x90
.LBB24_29:                              # %while.cond.i140
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:record <- 0
	#DEBUG_VALUE: index_tree_next:node <- $r8
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%r9, %r8
.Ltmp512:
	#DEBUG_VALUE: index_tree_next:node <- $r8
	.loc	0 299 16 is_stmt 1              # liblzma/common/index.c:299:16
	movq	24(%r9), %r9
	.loc	0 299 21 is_stmt 0              # liblzma/common/index.c:299:21
	testq	%r9, %r9
	.loc	0 299 3                         # liblzma/common/index.c:299:3
	jne	.LBB24_29
	jmp	.LBB24_44
.Ltmp513:
	.p2align	4, 0x90
.LBB24_30:                              # %while.cond4.i145
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:record <- 0
	#DEBUG_VALUE: index_tree_next:node <- $r8
	.loc	0 305 15 is_stmt 1              # liblzma/common/index.c:305:15
	movq	16(%r8), %r9
	.loc	0 305 22 is_stmt 0              # liblzma/common/index.c:305:22
	testq	%r9, %r9
	.loc	0 305 30                        # liblzma/common/index.c:305:30
	je	.LBB24_33
.Ltmp514:
# %bb.31:                               # %land.rhs.i149
                                        #   in Loop: Header=BB24_30 Depth=2
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:record <- 0
	#DEBUG_VALUE: index_tree_next:node <- $r8
	.loc	0 305 53                        # liblzma/common/index.c:305:53
	cmpq	%r8, 32(%r9)
	movq	%r9, %r8
.Ltmp515:
	.loc	0 305 2                         # liblzma/common/index.c:305:2
	je	.LBB24_30
.Ltmp516:
# %bb.32:                               #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:record <- 0
	.loc	0 0 2                           # liblzma/common/index.c:0:2
	movq	%r9, %r8
	jmp	.LBB24_44
.Ltmp517:
	.p2align	4, 0x90
.LBB24_33:                              # %if.end39
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	cmpl	$2, %esi
.Ltmp518:
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	jb	.LBB24_39
.Ltmp519:
.LBB24_34:                              # %do.body.us
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_35 Depth 3
                                        #       Child Loop BB24_36 Depth 3
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: index_tree_next:node <- $rcx
	.loc	0 297 12 is_stmt 1              # liblzma/common/index.c:297:12
	movq	32(%rcx), %r8
	.loc	0 297 18 is_stmt 0              # liblzma/common/index.c:297:18
	testq	%r8, %r8
.Ltmp520:
	.loc	0 297 6                         # liblzma/common/index.c:297:6
	je	.LBB24_36
.Ltmp521:
	.p2align	4, 0x90
.LBB24_35:                              # %while.cond.i155.us
                                        #   Parent Loop BB24_16 Depth=1
                                        #     Parent Loop BB24_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%r8, %r9
.Ltmp522:
	#DEBUG_VALUE: index_tree_next:node <- $r8
	.loc	0 299 16 is_stmt 1              # liblzma/common/index.c:299:16
	movq	24(%r8), %r8
.Ltmp523:
	#DEBUG_VALUE: index_tree_next:node <- $r9
	.loc	0 299 21 is_stmt 0              # liblzma/common/index.c:299:21
	testq	%r8, %r8
	.loc	0 299 3                         # liblzma/common/index.c:299:3
	jne	.LBB24_35
	jmp	.LBB24_38
.Ltmp524:
	.p2align	4, 0x90
.LBB24_36:                              # %while.cond4.i160.us
                                        #   Parent Loop BB24_16 Depth=1
                                        #     Parent Loop BB24_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	#DEBUG_VALUE: index_tree_next:node <- $rcx
	.loc	0 305 15 is_stmt 1              # liblzma/common/index.c:305:15
	movq	16(%rcx), %r9
	.loc	0 305 22 is_stmt 0              # liblzma/common/index.c:305:22
	testq	%r9, %r9
	.loc	0 305 30                        # liblzma/common/index.c:305:30
	je	.LBB24_52
.Ltmp525:
# %bb.37:                               # %land.rhs.i164.us
                                        #   in Loop: Header=BB24_36 Depth=3
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	#DEBUG_VALUE: index_tree_next:node <- $rcx
	.loc	0 305 53                        # liblzma/common/index.c:305:53
	cmpq	%rcx, 32(%r9)
	movq	%r9, %rcx
.Ltmp526:
	.loc	0 305 2                         # liblzma/common/index.c:305:2
	je	.LBB24_36
.Ltmp527:
.LBB24_38:                              # %do.cond.us
                                        #   in Loop: Header=BB24_34 Depth=2
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $r9
	.loc	0 1173 33 is_stmt 1             # liblzma/common/index.c:1173:33
	cmpq	$0, 64(%r9)
	movq	%r9, %rcx
.Ltmp528:
	.loc	0 1172 4                        # liblzma/common/index.c:1172:4
	je	.LBB24_34
	jmp	.LBB24_43
.Ltmp529:
.LBB24_39:                              # %if.end39.split
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: index_tree_next:node <- $rcx
	.loc	0 297 12                        # liblzma/common/index.c:297:12
	movq	32(%rcx), %r8
	.loc	0 297 18 is_stmt 0              # liblzma/common/index.c:297:18
	testq	%r8, %r8
.Ltmp530:
	.loc	0 297 6                         # liblzma/common/index.c:297:6
	je	.LBB24_41
.Ltmp531:
	.p2align	4, 0x90
.LBB24_40:                              # %while.cond.i155
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%r8, %r9
.Ltmp532:
	#DEBUG_VALUE: index_tree_next:node <- $r8
	.loc	0 299 16 is_stmt 1              # liblzma/common/index.c:299:16
	movq	24(%r8), %r8
.Ltmp533:
	#DEBUG_VALUE: index_tree_next:node <- $r9
	.loc	0 299 21 is_stmt 0              # liblzma/common/index.c:299:21
	testq	%r8, %r8
	.loc	0 299 3                         # liblzma/common/index.c:299:3
	jne	.LBB24_40
	jmp	.LBB24_43
.Ltmp534:
	.p2align	4, 0x90
.LBB24_41:                              # %while.cond4.i160
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	#DEBUG_VALUE: index_tree_next:node <- $rcx
	.loc	0 305 15 is_stmt 1              # liblzma/common/index.c:305:15
	movq	16(%rcx), %r9
	.loc	0 305 22 is_stmt 0              # liblzma/common/index.c:305:22
	testq	%r9, %r9
	.loc	0 305 30                        # liblzma/common/index.c:305:30
	je	.LBB24_52
.Ltmp535:
# %bb.42:                               # %land.rhs.i164
                                        #   in Loop: Header=BB24_41 Depth=2
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	#DEBUG_VALUE: index_tree_next:node <- $rcx
	.loc	0 305 53                        # liblzma/common/index.c:305:53
	cmpq	%rcx, 32(%r9)
	movq	%r9, %rcx
.Ltmp536:
	.loc	0 305 2                         # liblzma/common/index.c:305:2
	je	.LBB24_41
.Ltmp537:
.LBB24_43:                              # %do.end
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:group <- 0
	.loc	0 1176 21 is_stmt 1             # liblzma/common/index.c:1176:21
	movq	64(%r9), %r8
.Ltmp538:
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
	.loc	0 0 21 is_stmt 0                # liblzma/common/index.c:0:21
	movq	%r9, %rcx
.Ltmp539:
.LBB24_44:                              # %if.end55
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	xorl	%r9d, %r9d
.Ltmp540:
.LBB24_45:                              # %if.end55
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	cmpl	$3, %esi
.Ltmp541:
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	.loc	0 1180 6 is_stmt 1              # liblzma/common/index.c:1180:6
	jne	.LBB24_51
.Ltmp542:
# %bb.46:                               # %if.then57
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	.loc	0 1183 14                       # liblzma/common/index.c:1183:14
	testq	%r9, %r9
.Ltmp543:
	.loc	0 1183 7 is_stmt 0              # liblzma/common/index.c:1183:7
	je	.LBB24_48
.Ltmp544:
# %bb.47:                               # %if.else65
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	.loc	0 1187 36 is_stmt 1             # liblzma/common/index.c:1187:36
	movq	%r9, %r10
	shlq	$4, %r10
	.loc	0 1187 41 is_stmt 0             # liblzma/common/index.c:1187:41
	movq	48(%r8,%r10), %r11
	.loc	0 1188 5 is_stmt 1              # liblzma/common/index.c:1188:5
	cmpq	64(%r8,%r10), %r11
.Ltmp545:
	.loc	0 1187 14                       # liblzma/common/index.c:1187:14
	je	.LBB24_16
	jmp	.LBB24_51
.Ltmp546:
	.p2align	4, 0x90
.LBB24_48:                              # %if.then59
                                        #   in Loop: Header=BB24_16 Depth=1
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:group <- $r8
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	.loc	0 1184 20                       # liblzma/common/index.c:1184:20
	movq	(%r8), %r10
	.loc	0 1185 6                        # liblzma/common/index.c:1185:6
	cmpq	64(%r8), %r10
.Ltmp547:
	.loc	0 1184 8                        # liblzma/common/index.c:1184:8
	je	.LBB24_16
.Ltmp548:
.LBB24_50:
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	#DEBUG_VALUE: lzma_index_iter_next:record <- $r9
	.loc	0 0 8 is_stmt 0                 # liblzma/common/index.c:0:8
	xorl	%r9d, %r9d
.Ltmp549:
.LBB24_51:                              # %if.end76
	#DEBUG_VALUE: lzma_index_iter_next:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- $esi
	#DEBUG_VALUE: lzma_index_iter_next:i <- $rdx
	#DEBUG_VALUE: lzma_index_iter_next:stream <- $rcx
	.loc	0 1193 32 is_stmt 1             # liblzma/common/index.c:1193:32
	movq	%rcx, 264(%rdi)
	.loc	0 1194 31                       # liblzma/common/index.c:1194:31
	movq	%r8, 272(%rdi)
	.loc	0 1195 32                       # liblzma/common/index.c:1195:32
	movq	%r9, 280(%rdi)
	.loc	0 1197 2                        # liblzma/common/index.c:1197:2
	callq	iter_set_info
.Ltmp550:
	#DEBUG_VALUE: lzma_index_iter_next:mode <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_index_iter_next:iter <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 2 is_stmt 0                 # liblzma/common/index.c:0:2
	xorl	%eax, %eax
.Ltmp551:
.LBB24_52:
	#DEBUG_VALUE: lzma_index_iter_next:iter <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- [DW_OP_LLVM_entry_value 1] $esi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.Ltmp552:
.LBB24_53:                              # %return
	#DEBUG_VALUE: lzma_index_iter_next:iter <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_index_iter_next:mode <- [DW_OP_LLVM_entry_value 1] $esi
                                        # kill: def $al killed $al killed $eax
	.loc	0 1200 1 is_stmt 1              # liblzma/common/index.c:1200:1
	retq
.Ltmp553:
.Lfunc_end24:
	.size	lzma_index_iter_next, .Lfunc_end24-lzma_index_iter_next
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function iter_set_info
	.type	iter_set_info,@function
iter_set_info:                          # @iter_set_info
.Lfunc_begin25:
	.loc	0 975 0                         # liblzma/common/index.c:975:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: iter_set_info:iter <- $rdi
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
	movq	%rdi, %rbx
.Ltmp554:
	.loc	0 977 59 prologue_end           # liblzma/common/index.c:977:59
	movq	264(%rdi), %r12
.Ltmp555:
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	.loc	0 978 56                        # liblzma/common/index.c:978:56
	movq	272(%rdi), %r14
.Ltmp556:
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:record <- undef
	.loc	0 984 12                        # liblzma/common/index.c:984:12
	testq	%r14, %r14
.Ltmp557:
	.loc	0 984 6 is_stmt 0               # liblzma/common/index.c:984:6
	je	.LBB25_1
.Ltmp558:
# %bb.2:                                # %if.else
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	.loc	0 976 51 is_stmt 1              # liblzma/common/index.c:976:51
	movq	256(%rbx), %rax
.Ltmp559:
	#DEBUG_VALUE: iter_set_info:i <- $rax
	.loc	0 989 34                        # liblzma/common/index.c:989:34
	cmpq	%r12, 16(%rax)
	.loc	0 990 4                         # liblzma/common/index.c:990:4
	jne	.LBB25_4
.Ltmp560:
# %bb.3:                                # %lor.lhs.false
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:i <- $rax
	.loc	0 990 32 is_stmt 0              # liblzma/common/index.c:990:32
	cmpq	%r14, 72(%r12)
.Ltmp561:
	.loc	0 989 13 is_stmt 1              # liblzma/common/index.c:989:13
	je	.LBB25_5
.Ltmp562:
.LBB25_4:                               # %if.then13
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:i <- $rax
	.loc	0 992 33                        # liblzma/common/index.c:992:33
	movq	$0, 288(%rbx)
	.loc	0 994 2                         # liblzma/common/index.c:994:2
	jmp	.LBB25_8
.Ltmp563:
.LBB25_1:                               # %if.then
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	.loc	0 987 33                        # liblzma/common/index.c:987:33
	movq	$2, 288(%rbx)
.Ltmp564:
.LBB25_8:                               # %if.end32
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	.loc	0 0 0 is_stmt 0                 # liblzma/common/index.c:0:0
	movq	280(%rbx), %r15
.Ltmp565:
	#DEBUG_VALUE: iter_set_info:record <- $r15
	.loc	0 1011 32 is_stmt 1             # liblzma/common/index.c:1011:32
	movl	40(%r12), %eax
	.loc	0 1011 22 is_stmt 0             # liblzma/common/index.c:1011:22
	movq	%rax, 32(%rbx)
	.loc	0 1012 37 is_stmt 1             # liblzma/common/index.c:1012:37
	movq	88(%r12), %rax
	.loc	0 1012 27 is_stmt 0             # liblzma/common/index.c:1012:27
	movq	%rax, 40(%rbx)
	.loc	0 1013 48 is_stmt 1             # liblzma/common/index.c:1013:48
	movq	8(%r12), %rax
	.loc	0 1013 33 is_stmt 0             # liblzma/common/index.c:1013:33
	movq	%rax, 48(%rbx)
	.loc	0 1014 50 is_stmt 1             # liblzma/common/index.c:1014:50
	movq	(%r12), %rax
	.loc	0 1014 35 is_stmt 0             # liblzma/common/index.c:1014:35
	movq	%rax, 56(%rbx)
	xorl	%eax, %eax
	.loc	0 1018 52 is_stmt 1             # liblzma/common/index.c:1018:52
	cmpl	$-1, 104(%r12)
	.loc	0 1018 31 is_stmt 0             # liblzma/common/index.c:1018:31
	leaq	104(%r12), %rcx
	.loc	0 1018 23                       # liblzma/common/index.c:1018:23
	cmovneq	%rcx, %rax
	.loc	0 1018 21                       # liblzma/common/index.c:1018:21
	movq	%rax, (%rbx)
	.loc	0 1020 33 is_stmt 1             # liblzma/common/index.c:1020:33
	movq	160(%r12), %rax
	.loc	0 1020 23 is_stmt 0             # liblzma/common/index.c:1020:23
	movq	%rax, 80(%rbx)
.Ltmp566:
	.loc	0 1022 21 is_stmt 1             # liblzma/common/index.c:1022:21
	movq	72(%r12), %r13
	.loc	0 1022 31 is_stmt 0             # liblzma/common/index.c:1022:31
	testq	%r13, %r13
.Ltmp567:
	.loc	0 1022 6                        # liblzma/common/index.c:1022:6
	je	.LBB25_9
.Ltmp568:
# %bb.10:                               # %if.else52
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:record <- $r15
	#DEBUG_VALUE: g <- $r13
	.loc	0 1033 26 is_stmt 1             # liblzma/common/index.c:1033:26
	movq	88(%r12), %rdi
	.loc	0 1034 14                       # liblzma/common/index.c:1034:14
	movq	96(%r12), %rbp
.Ltmp569:
	#DEBUG_VALUE: index_size:index_list_size <- $rbp
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- $rbp
	#DEBUG_VALUE: index_size:count <- $rdi
	#DEBUG_VALUE: index_size_unpadded:count <- $rdi
	.loc	11 51 13                        # liblzma/common/index.h:51:13
	callq	lzma_vli_size@PLT
.Ltmp570:
                                        # kill: def $eax killed $eax def $rax
	.loc	11 51 11 is_stmt 0              # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp571:
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	%rbp, %rax
	addq	$7, %rax
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rax
.Ltmp572:
	.loc	0 1035 31 is_stmt 1             # liblzma/common/index.c:1035:31
	movq	56(%r13), %rcx
	.loc	0 1035 37 is_stmt 0             # liblzma/common/index.c:1035:37
	shlq	$4, %rcx
	movq	72(%r13,%rcx), %rcx
.Ltmp573:
	#DEBUG_VALUE: vli_ceil4:vli <- $rcx
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	$3, %rcx
.Ltmp574:
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rcx
.Ltmp575:
	.loc	0 1035 5 is_stmt 1              # liblzma/common/index.c:1035:5
	addq	%rcx, %rax
	addq	$24, %rax
	.loc	0 1032 32                       # liblzma/common/index.c:1032:32
	movq	%rax, 64(%rbx)
	.loc	0 1037 21                       # liblzma/common/index.c:1037:21
	movq	56(%r13), %rax
	.loc	0 1037 7 is_stmt 0              # liblzma/common/index.c:1037:7
	shlq	$4, %rax
	.loc	0 1037 27                       # liblzma/common/index.c:1037:27
	movq	64(%r13,%rax), %r13
.Ltmp576:
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	%r13, 72(%rbx)
.Ltmp577:
	.loc	0 984 12 is_stmt 1              # liblzma/common/index.c:984:12
	testq	%r14, %r14
.Ltmp578:
	.loc	0 1040 6                        # liblzma/common/index.c:1040:6
	jne	.LBB25_12
	jmp	.LBB25_16
.Ltmp579:
.LBB25_9:                               # %if.then49
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:record <- $r15
	#DEBUG_VALUE: index_size:count <- 0
	#DEBUG_VALUE: index_size:index_list_size <- 0
	#DEBUG_VALUE: index_size_unpadded:count <- 0
	#DEBUG_VALUE: index_size_unpadded:index_list_size <- 0
	.loc	0 0 6 is_stmt 0                 # liblzma/common/index.c:0:6
	xorl	%r13d, %r13d
.Ltmp580:
	.loc	11 51 13 is_stmt 1              # liblzma/common/index.h:51:13
	xorl	%edi, %edi
	callq	lzma_vli_size@PLT
.Ltmp581:
                                        # kill: def $eax killed $eax def $rax
	.loc	11 51 11 is_stmt 0              # liblzma/common/index.h:51:11
	incl	%eax
.Ltmp582:
	#DEBUG_VALUE: vli_ceil4:vli <- undef
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	$7, %rax
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rax
.Ltmp583:
	.loc	0 1025 5 is_stmt 1              # liblzma/common/index.c:1025:5
	addq	$24, %rax
	.loc	0 1024 32                       # liblzma/common/index.c:1024:32
	movq	%rax, 64(%rbx)
.Ltmp584:
	.loc	0 0 0 is_stmt 0                 # liblzma/common/index.c:0:0
	movq	%r13, 72(%rbx)
.Ltmp585:
	.loc	0 984 12 is_stmt 1              # liblzma/common/index.c:984:12
	testq	%r14, %r14
.Ltmp586:
	.loc	0 1040 6                        # liblzma/common/index.c:1040:6
	je	.LBB25_16
.Ltmp587:
.LBB25_12:                              # %if.then71
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:record <- $r15
	.loc	0 0 6 is_stmt 0                 # liblzma/common/index.c:0:6
	movq	40(%r14), %rax
.Ltmp588:
	.loc	0 1041 53 is_stmt 1             # liblzma/common/index.c:1041:53
	addq	%r15, %rax
	.loc	0 1041 32 is_stmt 0             # liblzma/common/index.c:1041:32
	movq	%rax, 144(%rbx)
	.loc	0 1043 5 is_stmt 1              # liblzma/common/index.c:1043:5
	addq	48(%r12), %rax
	.loc	0 1042 30                       # liblzma/common/index.c:1042:30
	movq	%rax, 120(%rbx)
	.loc	0 1046 14                       # liblzma/common/index.c:1046:14
	testq	%r15, %r15
	.loc	0 1046 7 is_stmt 0              # liblzma/common/index.c:1046:7
	je	.LBB25_13
.Ltmp589:
# %bb.14:                               # %cond.false82
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:record <- $r15
	.loc	0 1048 13 is_stmt 1             # liblzma/common/index.c:1048:13
	leaq	-1(%r15), %rcx
	.loc	0 1048 18 is_stmt 0             # liblzma/common/index.c:1048:18
	movq	%rcx, %rax
	shlq	$4, %rax
	movq	72(%r14,%rax), %rax
.Ltmp590:
	#DEBUG_VALUE: vli_ceil4:vli <- $rax
	.loc	11 42 14 is_stmt 1              # liblzma/common/index.h:42:14
	addq	$3, %rax
.Ltmp591:
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rax
	jmp	.LBB25_15
.Ltmp592:
.LBB25_13:                              # %cond.true79
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:record <- $r15
	.loc	0 1046 33 is_stmt 1             # liblzma/common/index.c:1046:33
	movq	8(%r14), %rax
	movq	$-1, %rcx
.Ltmp593:
.LBB25_15:                              # %cond.end87
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:record <- $r15
	.loc	0 1050 7                        # liblzma/common/index.c:1050:7
	shlq	$4, %rcx
	.loc	0 1046 14                       # liblzma/common/index.c:1046:14
	testq	%r15, %r15
	.loc	0 1046 5 is_stmt 0              # liblzma/common/index.c:1046:5
	movq	%rax, 152(%rbx)
	.loc	0 1050 7 is_stmt 1              # liblzma/common/index.c:1050:7
	leaq	64(%r14,%rcx), %rcx
	cmoveq	%r14, %rcx
	movq	(%rcx), %rcx
	.loc	0 1050 5 is_stmt 0              # liblzma/common/index.c:1050:5
	movq	%rcx, 160(%rbx)
	.loc	0 1054 7 is_stmt 1              # liblzma/common/index.c:1054:7
	shlq	$4, %r15
.Ltmp594:
	.loc	0 1054 30 is_stmt 0             # liblzma/common/index.c:1054:30
	movq	64(%r14,%r15), %rdx
	.loc	0 1055 5 is_stmt 1              # liblzma/common/index.c:1055:5
	subq	%rcx, %rdx
	.loc	0 1054 5                        # liblzma/common/index.c:1054:5
	movq	%rdx, 168(%rbx)
	.loc	0 1057 30                       # liblzma/common/index.c:1057:30
	movq	72(%r14,%r15), %rdx
	.loc	0 1058 5                        # liblzma/common/index.c:1058:5
	subq	%rax, %rdx
	.loc	0 1057 5                        # liblzma/common/index.c:1057:5
	movq	%rdx, 176(%rbx)
.Ltmp595:
	#DEBUG_VALUE: vli_ceil4:vli <- $rdx
	.loc	11 42 14                        # liblzma/common/index.h:42:14
	addq	$3, %rdx
.Ltmp596:
	.loc	11 42 19 is_stmt 0              # liblzma/common/index.h:42:19
	andq	$-4, %rdx
.Ltmp597:
	.loc	0 1059 26 is_stmt 1             # liblzma/common/index.c:1059:26
	movq	%rdx, 184(%rbx)
	.loc	0 1062 5                        # liblzma/common/index.c:1062:5
	addq	$12, %rax
	movq	%rax, 152(%rbx)
	.loc	0 1066 5                        # liblzma/common/index.c:1066:5
	addq	48(%rbx), %rax
	.loc	0 1065 5                        # liblzma/common/index.c:1065:5
	movq	%rax, 128(%rbx)
	.loc	0 1069 5                        # liblzma/common/index.c:1069:5
	addq	56(%rbx), %rcx
	.loc	0 1068 5                        # liblzma/common/index.c:1068:5
	movq	%rcx, 136(%rbx)
.Ltmp598:
.LBB25_16:                              # %if.end137
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	.loc	0 1073 1 epilogue_begin         # liblzma/common/index.c:1073:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp599:
	#DEBUG_VALUE: iter_set_info:iter <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 48
	popq	%r12
.Ltmp600:
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp601:
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp602:
.LBB25_5:                               # %if.else16
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:i <- $rax
	.loc	0 994 37                        # liblzma/common/index.c:994:37
	cmpq	%r14, 64(%r12)
.Ltmp603:
	.loc	0 994 13 is_stmt 0              # liblzma/common/index.c:994:13
	je	.LBB25_7
.Ltmp604:
# %bb.6:                                # %if.then20
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:i <- $rax
	.loc	0 1000 33 is_stmt 1             # liblzma/common/index.c:1000:33
	movq	$1, 288(%rbx)
	.loc	0 1001 46                       # liblzma/common/index.c:1001:46
	movq	16(%r14), %rax
.Ltmp605:
	.loc	0 1001 32 is_stmt 0             # liblzma/common/index.c:1001:32
	movq	%rax, 272(%rbx)
	.loc	0 1003 2 is_stmt 1              # liblzma/common/index.c:1003:2
	jmp	.LBB25_8
.Ltmp606:
.LBB25_7:                               # %if.else26
	#DEBUG_VALUE: iter_set_info:iter <- $rbx
	#DEBUG_VALUE: iter_set_info:stream <- $r12
	#DEBUG_VALUE: iter_set_info:group <- $r14
	#DEBUG_VALUE: iter_set_info:i <- $rax
	.loc	0 1007 33                       # liblzma/common/index.c:1007:33
	movq	$2, 288(%rbx)
	.loc	0 1008 32                       # liblzma/common/index.c:1008:32
	movq	$0, 272(%rbx)
	jmp	.LBB25_8
.Ltmp607:
.Lfunc_end25:
	.size	iter_set_info, .Lfunc_end25-iter_set_info
	.cfi_endproc
                                        # -- End function
	.globl	lzma_index_iter_locate          # -- Begin function lzma_index_iter_locate
	.p2align	4, 0x90
	.type	lzma_index_iter_locate,@function
lzma_index_iter_locate:                 # @lzma_index_iter_locate
.Lfunc_begin26:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	.loc	0 1206 51 prologue_end          # liblzma/common/index.c:1206:51
	movq	256(%rdi), %rcx
.Ltmp608:
	#DEBUG_VALUE: lzma_index_iter_locate:i <- $rcx
	.loc	0 0 51 is_stmt 0                # liblzma/common/index.c:0:51
	movb	$1, %al
.Ltmp609:
	.loc	0 1209 27 is_stmt 1             # liblzma/common/index.c:1209:27
	cmpq	%rsi, 32(%rcx)
.Ltmp610:
	.loc	0 1209 6 is_stmt 0              # liblzma/common/index.c:1209:6
	jbe	.LBB26_15
.Ltmp611:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: lzma_index_iter_locate:i <- $rcx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
.Ltmp612:
	#DEBUG_VALUE: index_tree_locate:tree <- $rcx
	#DEBUG_VALUE: index_tree_locate:target <- $rsi
	#DEBUG_VALUE: index_tree_locate:result <- 0
	#DEBUG_VALUE: index_tree_locate:node <- undef
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	(%rcx), %rcx
.Ltmp613:
	xorl	%eax, %eax
	.loc	0 326 14 is_stmt 1              # liblzma/common/index.c:326:14
	testq	%rcx, %rcx
	.loc	0 326 2 is_stmt 0               # liblzma/common/index.c:326:2
	je	.LBB26_4
.Ltmp614:
	.p2align	4, 0x90
.LBB26_2:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: index_tree_locate:target <- $rsi
	#DEBUG_VALUE: index_tree_locate:result <- $rax
	.loc	0 327 31 is_stmt 1              # liblzma/common/index.c:327:31
	xorl	%edx, %edx
	cmpq	%rsi, (%rcx)
.Ltmp615:
	.loc	0 327 7 is_stmt 0               # liblzma/common/index.c:327:7
	cmovbeq	%rcx, %rax
.Ltmp616:
	#DEBUG_VALUE: index_tree_locate:node <- undef
	#DEBUG_VALUE: index_tree_locate:result <- $rax
	.loc	0 327 31                        # liblzma/common/index.c:327:31
	setbe	%dl
.Ltmp617:
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	24(%rcx,%rdx,8), %rcx
.Ltmp618:
	#DEBUG_VALUE: index_tree_locate:node <- $rcx
	.loc	0 326 14 is_stmt 1              # liblzma/common/index.c:326:14
	testq	%rcx, %rcx
	.loc	0 326 2 is_stmt 0               # liblzma/common/index.c:326:2
	jne	.LBB26_2
.Ltmp619:
.LBB26_4:                               # %index_tree_locate.exit
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: lzma_index_iter_locate:stream <- $rax
	.loc	0 1215 9 is_stmt 1              # liblzma/common/index.c:1215:9
	subq	(%rax), %rsi
.Ltmp620:
	#DEBUG_VALUE: lzma_index_iter_locate:target <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: index_tree_locate:target <- $rsi
	#DEBUG_VALUE: index_tree_locate:result <- 0
	#DEBUG_VALUE: index_tree_locate:node <- undef
	#DEBUG_VALUE: index_tree_locate:tree <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $rax
	.loc	0 0 0 is_stmt 0                 # liblzma/common/index.c:0:0
	movq	56(%rax), %rdx
	xorl	%ecx, %ecx
	.loc	0 326 14 is_stmt 1              # liblzma/common/index.c:326:14
	testq	%rdx, %rdx
	.loc	0 326 2 is_stmt 0               # liblzma/common/index.c:326:2
	je	.LBB26_7
.Ltmp621:
	.p2align	4, 0x90
.LBB26_5:                               # %while.body.i37
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: lzma_index_iter_locate:stream <- $rax
	#DEBUG_VALUE: index_tree_locate:target <- $rsi
	#DEBUG_VALUE: index_tree_locate:tree <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $rax
	#DEBUG_VALUE: index_tree_locate:result <- $rcx
	.loc	0 327 31 is_stmt 1              # liblzma/common/index.c:327:31
	xorl	%r8d, %r8d
	cmpq	%rsi, (%rdx)
.Ltmp622:
	.loc	0 327 7 is_stmt 0               # liblzma/common/index.c:327:7
	cmovbeq	%rdx, %rcx
.Ltmp623:
	#DEBUG_VALUE: index_tree_locate:node <- undef
	#DEBUG_VALUE: index_tree_locate:result <- $rcx
	.loc	0 327 31                        # liblzma/common/index.c:327:31
	setbe	%r8b
.Ltmp624:
	.loc	0 0 0                           # liblzma/common/index.c:0:0
	movq	24(%rdx,%r8,8), %rdx
.Ltmp625:
	#DEBUG_VALUE: index_tree_locate:node <- $rdx
	.loc	0 326 14 is_stmt 1              # liblzma/common/index.c:326:14
	testq	%rdx, %rdx
	.loc	0 326 2 is_stmt 0               # liblzma/common/index.c:326:2
	jne	.LBB26_5
.Ltmp626:
.LBB26_7:                               # %index_tree_locate.exit47
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: lzma_index_iter_locate:stream <- $rax
	#DEBUG_VALUE: lzma_index_iter_locate:group <- $rcx
	#DEBUG_VALUE: lzma_index_iter_locate:left <- 0
	.loc	0 1227 24 is_stmt 1             # liblzma/common/index.c:1227:24
	movq	56(%rcx), %r8
.Ltmp627:
	#DEBUG_VALUE: lzma_index_iter_locate:right <- $r8
	.loc	0 1229 14                       # liblzma/common/index.c:1229:14
	testq	%r8, %r8
	.loc	0 1229 2 is_stmt 0              # liblzma/common/index.c:1229:2
	je	.LBB26_8
.Ltmp628:
# %bb.9:                                # %while.body.lr.ph
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: lzma_index_iter_locate:stream <- $rax
	#DEBUG_VALUE: lzma_index_iter_locate:group <- $rcx
	#DEBUG_VALUE: lzma_index_iter_locate:left <- 0
	#DEBUG_VALUE: lzma_index_iter_locate:right <- $r8
	.loc	0 0 2                           # liblzma/common/index.c:0:2
	leaq	64(%rcx), %r9
	xorl	%edx, %edx
	jmp	.LBB26_10
.Ltmp629:
	.p2align	4, 0x90
.LBB26_12:                              # %while.body
                                        #   in Loop: Header=BB26_10 Depth=1
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: lzma_index_iter_locate:stream <- $rax
	#DEBUG_VALUE: lzma_index_iter_locate:group <- $rcx
	#DEBUG_VALUE: lzma_index_iter_locate:left <- $rdx
	#DEBUG_VALUE: lzma_index_iter_locate:right <- $r8
	addq	%r10, %rdx
.Ltmp630:
	incq	%rdx
	#DEBUG_VALUE: lzma_index_iter_locate:right <- $r8
.Ltmp631:
	#DEBUG_VALUE: lzma_index_iter_locate:left <- $rdx
	.loc	0 1229 14                       # liblzma/common/index.c:1229:14
	cmpq	%r8, %rdx
	.loc	0 1229 2                        # liblzma/common/index.c:1229:2
	jae	.LBB26_14
.Ltmp632:
.LBB26_10:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: lzma_index_iter_locate:stream <- $rax
	#DEBUG_VALUE: lzma_index_iter_locate:group <- $rcx
	#DEBUG_VALUE: lzma_index_iter_locate:right <- $r8
	#DEBUG_VALUE: lzma_index_iter_locate:right <- $r8
	#DEBUG_VALUE: lzma_index_iter_locate:left <- $rdx
	.loc	0 1230 36 is_stmt 1             # liblzma/common/index.c:1230:36
	movq	%r8, %r10
	subq	%rdx, %r10
	.loc	0 1230 44 is_stmt 0             # liblzma/common/index.c:1230:44
	shrq	%r10
	.loc	0 1230 27                       # liblzma/common/index.c:1230:27
	leaq	(%r10,%rdx), %r11
.Ltmp633:
	#DEBUG_VALUE: pos <- $r11
	.loc	0 1231 7 is_stmt 1              # liblzma/common/index.c:1231:7
	movq	%r11, %rbx
	shlq	$4, %rbx
	.loc	0 1231 44 is_stmt 0             # liblzma/common/index.c:1231:44
	cmpq	%rsi, (%r9,%rbx)
.Ltmp634:
	.loc	0 1231 7                        # liblzma/common/index.c:1231:7
	jbe	.LBB26_12
.Ltmp635:
# %bb.11:                               #   in Loop: Header=BB26_10 Depth=1
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: lzma_index_iter_locate:stream <- $rax
	#DEBUG_VALUE: lzma_index_iter_locate:group <- $rcx
	#DEBUG_VALUE: lzma_index_iter_locate:left <- $rdx
	#DEBUG_VALUE: lzma_index_iter_locate:right <- $r8
	.loc	0 0 7                           # liblzma/common/index.c:0:7
	movq	%r11, %r8
.Ltmp636:
	#DEBUG_VALUE: lzma_index_iter_locate:right <- $r8
	#DEBUG_VALUE: lzma_index_iter_locate:left <- $rdx
	.loc	0 1229 14 is_stmt 1             # liblzma/common/index.c:1229:14
	cmpq	%r8, %rdx
	.loc	0 1229 2 is_stmt 0              # liblzma/common/index.c:1229:2
	jb	.LBB26_10
	jmp	.LBB26_14
.Ltmp637:
.LBB26_8:
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: lzma_index_iter_locate:stream <- $rax
	#DEBUG_VALUE: lzma_index_iter_locate:group <- $rcx
	#DEBUG_VALUE: lzma_index_iter_locate:left <- 0
	#DEBUG_VALUE: lzma_index_iter_locate:right <- $r8
	.loc	0 0 2                           # liblzma/common/index.c:0:2
	xorl	%edx, %edx
.Ltmp638:
.LBB26_14:                              # %while.end
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- $rdi
	#DEBUG_VALUE: lzma_index_iter_locate:target <- $rsi
	#DEBUG_VALUE: lzma_index_iter_locate:stream <- $rax
	#DEBUG_VALUE: lzma_index_iter_locate:group <- $rcx
	#DEBUG_VALUE: lzma_index_iter_locate:right <- $r8
	.loc	0 1237 32 is_stmt 1             # liblzma/common/index.c:1237:32
	movq	%rax, 264(%rdi)
	.loc	0 1238 31                       # liblzma/common/index.c:1238:31
	movq	%rcx, 272(%rdi)
	.loc	0 1239 32                       # liblzma/common/index.c:1239:32
	movq	%rdx, 280(%rdi)
	.loc	0 1241 2                        # liblzma/common/index.c:1241:2
	callq	iter_set_info
.Ltmp639:
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 2 is_stmt 0                 # liblzma/common/index.c:0:2
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.Ltmp640:
.LBB26_15:                              # %cleanup
	#DEBUG_VALUE: lzma_index_iter_locate:iter <- [DW_OP_LLVM_entry_value 1] $rdi
                                        # kill: def $al killed $al killed $eax
	.loc	0 1244 1 is_stmt 1              # liblzma/common/index.c:1244:1
	retq
.Ltmp641:
.Lfunc_end26:
	.size	lzma_index_iter_locate, .Lfunc_end26-lzma_index_iter_locate
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function index_tree_node_end
	.type	index_tree_node_end,@function
index_tree_node_end:                    # @index_tree_node_end
.Lfunc_begin27:
	.loc	0 196 0                         # liblzma/common/index.c:196:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: index_tree_node_end:node <- $rdi
	#DEBUG_VALUE: index_tree_node_end:allocator <- $rsi
	#DEBUG_VALUE: index_tree_node_end:free_func <- $rdx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp642:
	.loc	0 199 12 prologue_end           # liblzma/common/index.c:199:12
	movq	24(%rdi), %rdi
.Ltmp643:
	#DEBUG_VALUE: index_tree_node_end:node <- $r14
	.loc	0 199 17 is_stmt 0              # liblzma/common/index.c:199:17
	testq	%rdi, %rdi
.Ltmp644:
	.loc	0 199 6                         # liblzma/common/index.c:199:6
	je	.LBB27_2
.Ltmp645:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: index_tree_node_end:node <- $r14
	#DEBUG_VALUE: index_tree_node_end:allocator <- $rbx
	#DEBUG_VALUE: index_tree_node_end:free_func <- $r15
	.loc	0 200 3 is_stmt 1               # liblzma/common/index.c:200:3
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	index_tree_node_end
.Ltmp646:
.LBB27_2:                               # %if.end
	#DEBUG_VALUE: index_tree_node_end:node <- $r14
	#DEBUG_VALUE: index_tree_node_end:allocator <- $rbx
	#DEBUG_VALUE: index_tree_node_end:free_func <- $r15
	.loc	0 202 12                        # liblzma/common/index.c:202:12
	movq	32(%r14), %rdi
	.loc	0 202 18 is_stmt 0              # liblzma/common/index.c:202:18
	testq	%rdi, %rdi
.Ltmp647:
	.loc	0 202 6                         # liblzma/common/index.c:202:6
	je	.LBB27_4
.Ltmp648:
# %bb.3:                                # %if.then3
	#DEBUG_VALUE: index_tree_node_end:node <- $r14
	#DEBUG_VALUE: index_tree_node_end:allocator <- $rbx
	#DEBUG_VALUE: index_tree_node_end:free_func <- $r15
	.loc	0 203 3 is_stmt 1               # liblzma/common/index.c:203:3
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	index_tree_node_end
.Ltmp649:
.LBB27_4:                               # %if.end5
	#DEBUG_VALUE: index_tree_node_end:node <- $r14
	#DEBUG_VALUE: index_tree_node_end:allocator <- $rbx
	#DEBUG_VALUE: index_tree_node_end:free_func <- $r15
	.loc	0 205 16                        # liblzma/common/index.c:205:16
	testq	%r15, %r15
.Ltmp650:
	.loc	0 205 6 is_stmt 0               # liblzma/common/index.c:205:6
	je	.LBB27_6
.Ltmp651:
# %bb.5:                                # %if.then7
	#DEBUG_VALUE: index_tree_node_end:node <- $r14
	#DEBUG_VALUE: index_tree_node_end:allocator <- $rbx
	#DEBUG_VALUE: index_tree_node_end:free_func <- $r15
	.loc	0 206 3 is_stmt 1               # liblzma/common/index.c:206:3
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%r15
.Ltmp652:
.LBB27_6:                               # %if.end8
	#DEBUG_VALUE: index_tree_node_end:node <- $r14
	#DEBUG_VALUE: index_tree_node_end:allocator <- $rbx
	#DEBUG_VALUE: index_tree_node_end:free_func <- $r15
	.loc	0 208 2                         # liblzma/common/index.c:208:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 208 2 epilogue_begin is_stmt 0 # liblzma/common/index.c:208:2
	popq	%rbx
.Ltmp653:
	#DEBUG_VALUE: index_tree_node_end:allocator <- $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp654:
	#DEBUG_VALUE: index_tree_node_end:node <- $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp655:
	#DEBUG_VALUE: index_tree_node_end:free_func <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp656:
.Lfunc_end27:
	.size	index_tree_node_end, .Lfunc_end27-index_tree_node_end
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	169                             # Offset entry count
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
	.long	.Ldebug_loc153-.Lloclists_table_base0
	.long	.Ldebug_loc154-.Lloclists_table_base0
	.long	.Ldebug_loc155-.Lloclists_table_base0
	.long	.Ldebug_loc156-.Lloclists_table_base0
	.long	.Ldebug_loc157-.Lloclists_table_base0
	.long	.Ldebug_loc158-.Lloclists_table_base0
	.long	.Ldebug_loc159-.Lloclists_table_base0
	.long	.Ldebug_loc160-.Lloclists_table_base0
	.long	.Ldebug_loc161-.Lloclists_table_base0
	.long	.Ldebug_loc162-.Lloclists_table_base0
	.long	.Ldebug_loc163-.Lloclists_table_base0
	.long	.Ldebug_loc164-.Lloclists_table_base0
	.long	.Ldebug_loc165-.Lloclists_table_base0
	.long	.Ldebug_loc166-.Lloclists_table_base0
	.long	.Ldebug_loc167-.Lloclists_table_base0
	.long	.Ldebug_loc168-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	79                              # DW_OP_lit31
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	20                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	39                              # DW_OP_xor
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
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
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
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
	.byte	50                              # DW_OP_lit2
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
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
	.byte	51                              # DW_OP_lit3
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
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
	.byte	52                              # DW_OP_lit4
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
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
	.byte	53                              # DW_OP_lit5
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
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
	.byte	54                              # DW_OP_lit6
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
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
	.byte	55                              # DW_OP_lit7
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	112                             # 112
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	12                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	143                             # 18446744073709551503
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	112                             # 112
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	12                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	143                             # 18446744073709551503
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp142-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end12-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp171-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp165-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp153-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp167-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp170-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp165-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp174-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp175-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp178-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin15-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp182-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp182-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin16-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp187-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp193-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp193-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end16-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin16-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp188-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end16-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp188-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp190-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp191-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin17-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp208-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp208-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp215-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp221-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin17-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp210-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp215-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp221-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp197-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp223-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp198-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp208-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp199-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp211-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc61:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp215-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp216-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc62:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp204-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp216-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc63:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp211-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp216-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc64:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp208-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp211-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc65:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp209-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp215-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc66:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp206-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp207-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp214-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp215-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc67:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp208-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp211-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc68:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp208-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp211-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc69:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp230-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp251-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp251-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp285-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc70:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp235-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp285-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc71:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp231-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp245-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp245-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp285-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc72:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp227-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp227-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc73:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc74:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp234-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp275-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp279-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp279-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp284-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp284-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc75:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp237-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp238-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc76:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp240-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc77:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp241-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc78:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp252-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp256-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp260-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp285-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc79:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp256-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc80:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp248-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp259-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp259-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp260-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc81:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp256-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc82:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp253-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp256-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc83:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp263-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp264-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc84:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp263-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp264-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc85:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin19-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp374-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp374-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp375-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc86:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin19-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp316-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp316-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc87:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin19-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp373-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp373-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp375-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc88:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp288-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp308-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc89:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp289-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp291-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp303-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc90:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp292-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp293-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc91:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp292-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp299-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp304-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp308-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc92:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp299-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc93:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp298-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc94:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp296-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp302-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp303-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc95:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp299-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc96:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp297-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp299-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc97:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp309-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp330-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp330-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp373-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc98:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp309-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp316-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp316-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp328-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc99:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp310-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp323-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc100:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp311-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp313-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp314-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp315-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc101:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp315-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp317-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc102:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp315-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp323-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc103:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp321-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp323-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc104:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp322-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc105:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp319-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp326-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp326-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp328-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc106:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp321-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp323-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc107:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp321-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp323-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc108:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp363-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc109:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp345-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp363-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc110:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp349-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp352-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp363-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp375-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc111:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp366-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp371-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc112:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp367-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp370-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc113:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp380-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp382-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp388-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc114:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp382-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp384-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp388-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp388-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp389-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp389-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp390-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc115:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp383-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp387-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc116:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin21-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp393-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp393-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp405-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp413-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp413-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end21-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc117:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin21-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp394-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp394-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp398-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp398-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp411-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp411-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp412-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp412-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp413-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp413-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end21-.Lfunc_begin0     #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc118:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin21-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp394-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp394-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp398-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp398-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp418-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp425-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc119:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp394-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp402-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp418-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp425-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc120:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp397-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp418-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp425-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc121:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp401-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp413-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp414-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end21-.Lfunc_begin0     #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc122:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp403-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp411-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp413-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp453-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp455-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp455-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end21-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc123:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp403-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp453-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp455-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp455-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end21-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc124:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp403-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp453-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end21-.Lfunc_begin0     #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc125:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp416-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp425-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc126:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp423-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp453-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end21-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc127:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp426-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp429-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp429-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp455-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp460-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc128:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp438-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp443-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc129:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp431-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp431-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp434-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp435-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc130:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp440-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp440-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp442-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc131:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp444-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc132:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp446-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp448-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp449-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp450-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp450-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp452-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc133:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin24-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp550-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end24-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc134:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin24-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp550-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end24-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc135:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp488-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc136:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp470-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp501-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp501-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp508-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp524-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp529-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp529-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp534-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp550-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc137:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp470-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp487-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp498-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp509-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp511-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp518-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp538-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp538-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp539-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp548-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc138:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp489-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp501-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp509-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp517-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp549-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc139:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp478-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp480-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp481-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp482-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp482-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp483-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp484-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp485-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc140:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp501-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp503-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp504-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp507-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc141:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp509-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp515-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc142:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp519-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp521-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp522-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp523-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp524-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp524-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp526-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp529-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp531-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp532-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp533-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp533-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp534-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp534-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp536-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc143:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin25-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp558-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp558-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp599-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp599-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp602-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp602-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end25-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc144:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp555-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp600-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp602-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end25-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc145:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp556-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp601-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp602-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end25-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc146:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp565-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp594-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc147:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp559-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp563-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp602-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp605-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp606-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end25-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc148:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp569-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp570-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc149:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp569-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp570-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc150:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp573-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp574-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc151:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp590-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp591-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc152:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp595-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp596-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc153:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin26-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp639-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end26-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc154:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin26-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc155:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp608-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp613-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc156:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp612-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp613-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc157:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp612-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp614-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp614-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp619-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc158:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp618-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp619-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc159:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp619-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc160:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp620-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp621-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp621-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp626-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc161:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp625-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp626-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc162:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp626-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc163:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp626-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp629-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp629-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp630-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp631-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp637-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp637-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp638-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc164:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp627-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp639-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc165:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp633-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp635-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc166:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin27-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp643-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp643-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp654-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp654-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp656-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc167:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin27-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp645-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp645-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp653-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp653-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp656-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc168:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin27-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp645-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp645-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp655-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp655-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end27-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
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
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
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
	.byte	45                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	49                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	50                              # Abbreviation Code
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
	.byte	51                              # Abbreviation Code
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
	.byte	52                              # Abbreviation Code
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
	.byte	53                              # Abbreviation Code
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
	.byte	54                              # Abbreviation Code
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
	.byte	55                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	56                              # Abbreviation Code
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
	.byte	57                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	58                              # Abbreviation Code
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
	.byte	59                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	60                              # Abbreviation Code
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
	.byte	61                              # Abbreviation Code
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
	.byte	62                              # Abbreviation Code
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
	.byte	63                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	64                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	65                              # Abbreviation Code
	.byte	10                              # DW_TAG_label
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	66                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xc:0x1775 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin0      # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	180                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	179                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0x15 DW_TAG_enumeration_type
	.long	72                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x3b:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x3e:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x41:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x44:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x48:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x4c:0xc DW_TAG_enumeration_type
	.long	72                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x54:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x58:0x2d DW_TAG_enumeration_type
	.long	72                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x60:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x63:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x66:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x69:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x6c:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x6f:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x72:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x75:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x78:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x7b:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x7e:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x81:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x85:0x19 DW_TAG_enumeration_type
	.long	72                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.short	956                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x8e:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x91:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x94:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x97:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x9a:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x9e:0x13 DW_TAG_enumeration_type
	.long	72                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.short	966                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xa7:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0xaa:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0xad:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xb1:0x15 DW_TAG_enumeration_type
	.long	72                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xb9:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0xbc:0x3 DW_TAG_enumerator
	.byte	30                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0xbf:0x3 DW_TAG_enumerator
	.byte	31                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0xc2:0x3 DW_TAG_enumerator
	.byte	32                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xc6:0x1 DW_TAG_pointer_type
	.byte	7                               # Abbrev [7] 0xc7:0x8 DW_TAG_typedef
	.long	207                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xcf:0x4 DW_TAG_base_type
	.byte	33                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xd3:0x5 DW_TAG_pointer_type
	.long	216                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xd8:0x5 DW_TAG_const_type
	.long	221                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xdd:0x8 DW_TAG_typedef
	.long	229                             # DW_AT_type
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xe5:0x4d DW_TAG_structure_type
	.byte	168                             # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xe9:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	306                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xf2:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	394                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xfb:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x104:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	410                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x10d:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x116:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x11f:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	459                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x128:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x132:0x8 DW_TAG_typedef
	.long	314                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x13a:0x33 DW_TAG_structure_type
	.byte	44                              # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x13f:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x148:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x151:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x15a:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x163:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x16d:0x8 DW_TAG_typedef
	.long	373                             # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x175:0x8 DW_TAG_typedef
	.long	381                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x17d:0x8 DW_TAG_typedef
	.long	207                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x185:0x5 DW_TAG_pointer_type
	.long	306                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x18a:0x8 DW_TAG_typedef
	.long	402                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x192:0x8 DW_TAG_typedef
	.long	72                              # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x19a:0x8 DW_TAG_typedef
	.long	418                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1a2:0x29 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1a6:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1af:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1b8:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	389                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1c1:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	394                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1cb:0x8 DW_TAG_typedef
	.long	467                             # DW_AT_type
	.byte	80                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1d3:0x9e DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1d7:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	394                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1e0:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1e9:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	625                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1f2:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	633                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1fb:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	633                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x204:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	633                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x20d:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	633                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x216:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	641                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x21f:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	641                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	37                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x228:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	641                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	38                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x231:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	641                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	39                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x23a:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	641                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x243:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	641                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	41                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x24c:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	641                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	42                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x255:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	641                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	43                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x25e:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	394                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x267:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	394                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x271:0x8 DW_TAG_typedef
	.long	51                              # DW_AT_type
	.byte	62                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x279:0x8 DW_TAG_typedef
	.long	76                              # DW_AT_type
	.byte	64                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x281:0x8 DW_TAG_typedef
	.long	649                             # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x289:0x4 DW_TAG_base_type
	.byte	69                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x28d:0x5 DW_TAG_pointer_type
	.long	658                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x292:0x5 DW_TAG_const_type
	.long	663                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x297:0x8 DW_TAG_typedef
	.long	671                             # DW_AT_type
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x29f:0x32 DW_TAG_structure_type
	.byte	64                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2a3:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	306                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2ac:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2b5:0x9 DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	199                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2be:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	199                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2c7:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	721                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x2d1:0xb DW_TAG_array_type
	.long	732                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2d6:0x5 DW_TAG_subrange_type
	.long	763                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2dc:0x8 DW_TAG_typedef
	.long	740                             # DW_AT_type
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2e4:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2e8:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2f1:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x2fb:0x4 DW_TAG_base_type
	.byte	90                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x2ff:0x5 DW_TAG_pointer_type
	.long	221                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x304:0x5 DW_TAG_pointer_type
	.long	663                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x309:0x1c DW_TAG_subprogram
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	380                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	805                             # DW_AT_type
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x312:0x9 DW_TAG_formal_parameter
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	380                             # DW_AT_decl_line
	.long	887                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x31b:0x9 DW_TAG_variable
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	382                             # DW_AT_decl_line
	.long	805                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x325:0x5 DW_TAG_pointer_type
	.long	810                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x32a:0x8 DW_TAG_typedef
	.long	818                             # DW_AT_type
	.byte	99                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x332:0x45 DW_TAG_structure_type
	.byte	98                              # DW_AT_name
	.byte	80                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x337:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	410                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x340:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x349:0x9 DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x352:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x35b:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x364:0x9 DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	199                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x36d:0x9 DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	394                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x377:0x5 DW_TAG_pointer_type
	.long	892                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x37c:0x9 DW_TAG_typedef
	.long	901                             # DW_AT_type
	.byte	104                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x385:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x38a:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	937                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x394:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	963                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x39e:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	198                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3a9:0x5 DW_TAG_pointer_type
	.long	942                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3ae:0x15 DW_TAG_subroutine_type
	.long	198                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x3b3:0x5 DW_TAG_formal_parameter
	.long	198                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x3b8:0x5 DW_TAG_formal_parameter
	.long	199                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x3bd:0x5 DW_TAG_formal_parameter
	.long	199                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3c3:0x5 DW_TAG_pointer_type
	.long	968                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3c8:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x3c9:0x5 DW_TAG_formal_parameter
	.long	198                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x3ce:0x5 DW_TAG_formal_parameter
	.long	198                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x3d4:0xd DW_TAG_subprogram
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x3d8:0x8 DW_TAG_formal_parameter
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.long	993                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3e1:0x5 DW_TAG_pointer_type
	.long	410                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x3e6:0x40 DW_TAG_subprogram
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	767                             # DW_AT_type
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x3ef:0x9 DW_TAG_formal_parameter
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x3f8:0x9 DW_TAG_formal_parameter
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x401:0x9 DW_TAG_formal_parameter
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x40a:0x9 DW_TAG_formal_parameter
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x413:0x9 DW_TAG_formal_parameter
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	343                             # DW_AT_decl_line
	.long	887                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x41c:0x9 DW_TAG_variable
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x426:0xb8 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	181                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	398                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	805                             # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x436:0xa DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	398                             # DW_AT_decl_line
	.long	887                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x440:0xa DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	400                             # DW_AT_decl_line
	.long	805                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x44a:0xa DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	404                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x454:0x29 DW_TAG_inlined_subroutine
	.long	777                             # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	400                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x45e:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	786                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x464:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.long	795                             # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x46a:0x12 DW_TAG_inlined_subroutine
	.long	980                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	384                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x474:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	984                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x47d:0x48 DW_TAG_inlined_subroutine
	.long	998                             # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	404                             # DW_AT_call_line
	.byte	20                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x487:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1007                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x48d:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1016                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x493:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_const_value
	.long	1025                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x499:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1034                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x49f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1043                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x4a6:0x6 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.long	1052                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x4ac:0x18 DW_TAG_inlined_subroutine
	.long	980                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp14-.Ltmp13                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	358                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x4ba:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	112
	.byte	56
	.byte	159
	.long	984                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x4c5:0x6 DW_TAG_call_site
	.long	1246                            # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x4cb:0x6 DW_TAG_call_site
	.long	1246                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x4d1:0x6 DW_TAG_call_site
	.long	1265                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x4d7:0x6 DW_TAG_call_site
	.long	1377                            # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x4de:0x13 DW_TAG_subprogram
	.byte	111                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	198                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x4e6:0x5 DW_TAG_formal_parameter
	.long	199                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x4eb:0x5 DW_TAG_formal_parameter
	.long	887                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x4f1:0x70 DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	182                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	39                              # Abbrev [39] 0x4fc:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.long	993                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x506:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.long	389                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x50f:0xa DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	203                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	261                             # DW_AT_decl_line
	.long	394                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x519:0x1b DW_TAG_inlined_subroutine
	.long	1392                            # DW_AT_abstract_origin
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp40-.Ltmp26                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	261                             # DW_AT_call_line
	.byte	46                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x527:0x6 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.long	1401                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x52d:0x6 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.long	1410                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x534:0x2c DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp87-.Ltmp44                 # DW_AT_high_pc
	.byte	29                              # Abbrev [29] 0x53a:0xa DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	204                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
	.long	389                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x544:0x1b DW_TAG_inlined_subroutine
	.long	1420                            # DW_AT_abstract_origin
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp59-.Ltmp44                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	264                             # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x552:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	1429                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x558:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.long	1438                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x561:0xf DW_TAG_subprogram
	.byte	112                             # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x565:0x5 DW_TAG_formal_parameter
	.long	198                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x56a:0x5 DW_TAG_formal_parameter
	.long	887                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x570:0x1c DW_TAG_subprogram
	.byte	113                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	364                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	394                             # DW_AT_type
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x579:0x9 DW_TAG_formal_parameter
	.byte	114                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	364                             # DW_AT_decl_line
	.long	394                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x582:0x9 DW_TAG_variable
	.byte	105                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.long	394                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x58c:0x1c DW_TAG_subprogram
	.byte	115                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	475                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	394                             # DW_AT_type
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x595:0x9 DW_TAG_formal_parameter
	.byte	114                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	475                             # DW_AT_decl_line
	.long	394                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x59e:0x9 DW_TAG_variable
	.byte	105                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	495                             # DW_AT_decl_line
	.long	394                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x5a8:0x1d DW_TAG_subprogram
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x5ac:0x8 DW_TAG_formal_parameter
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.long	993                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x5b4:0x8 DW_TAG_formal_parameter
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.long	887                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x5bc:0x8 DW_TAG_formal_parameter
	.byte	117                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.long	1477                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5c5:0x5 DW_TAG_pointer_type
	.long	1482                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x5ca:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x5cb:0x5 DW_TAG_formal_parameter
	.long	198                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x5d0:0x5 DW_TAG_formal_parameter
	.long	887                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x5d6:0x40 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	4170                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x5e2:0x6 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.long	4175                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x5e8:0x6 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.long	4184                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x5ee:0x15 DW_TAG_inlined_subroutine
	.long	1448                            # DW_AT_abstract_origin
	.byte	10                              # DW_AT_low_pc
	.long	.Ltmp97-.Ltmp93                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	422                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x5fc:0x6 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.long	1460                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x603:0x6 DW_TAG_call_site
	.long	1377                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	11                              # DW_AT_call_pc
	.byte	36                              # Abbrev [36] 0x609:0x6 DW_TAG_call_site
	.long	1558                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	44                              # Abbrev [44] 0x60f:0x6 DW_TAG_call_site
	.long	1377                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	13                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x616:0x44 DW_TAG_subprogram
	.byte	127                             # DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin27     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	202                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	40                              # Abbrev [40] 0x621:0xa DW_TAG_formal_parameter
	.ascii	"\246\001"                      # DW_AT_location
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.long	389                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x62b:0xa DW_TAG_formal_parameter
	.ascii	"\247\001"                      # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.long	887                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x635:0xa DW_TAG_formal_parameter
	.ascii	"\250\001"                      # DW_AT_location
	.byte	117                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.long	1477                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x63f:0x7 DW_TAG_call_site
	.long	1558                            # DW_AT_call_origin
	.ascii	"\200\001"                      # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x646:0x7 DW_TAG_call_site
	.long	1558                            # DW_AT_call_origin
	.ascii	"\201\001"                      # DW_AT_call_return_pc
	.byte	45                              # Abbrev [45] 0x64d:0x5 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	95
	.ascii	"\202\001"                      # DW_AT_call_return_pc
	.byte	44                              # Abbrev [44] 0x652:0x7 DW_TAG_call_site
	.long	1377                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.ascii	"\203\001"                      # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x65a:0x3b DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	4223                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x666:0x6 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.long	4228                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x66c:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	4237                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x673:0x6 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.long	4246                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x679:0x15 DW_TAG_inlined_subroutine
	.long	1448                            # DW_AT_abstract_origin
	.byte	15                              # DW_AT_low_pc
	.long	.Ltmp104-.Ltmp100               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	374                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x687:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1468                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x68e:0x6 DW_TAG_call_site
	.long	1558                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	16                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x695:0x22 DW_TAG_subprogram
	.byte	17                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	183                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	431                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	47                              # Abbrev [47] 0x6a1:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	431                             # DW_AT_decl_line
	.long	805                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x6ac:0xa DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	431                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x6b7:0x4c DW_TAG_subprogram
	.byte	18                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1795                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x6c3:0x6 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.long	1804                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x6c9:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	1813                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0x6d0:0x6 DW_TAG_variable
	.byte	32                              # DW_AT_const_value
	.long	1822                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0x6d6:0x7 DW_TAG_variable
	.ascii	"\250\002"                      # DW_AT_const_value
	.long	1831                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0x6dd:0x7 DW_TAG_variable
	.ascii	"\340@"                         # DW_AT_const_value
	.long	1840                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x6e4:0x6 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.long	1849                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x6ea:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	1858                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x6f0:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.long	1867                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x6f6:0x6 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.long	1876                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x6fc:0x6 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.long	1885                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x703:0x64 DW_TAG_subprogram
	.byte	118                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	442                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	373                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x70c:0x9 DW_TAG_formal_parameter
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	442                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x715:0x9 DW_TAG_formal_parameter
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	442                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x71e:0x9 DW_TAG_variable
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
	.long	1895                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x727:0x9 DW_TAG_variable
	.byte	121                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.long	1895                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x730:0x9 DW_TAG_variable
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.long	1895                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x739:0x9 DW_TAG_variable
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	466                             # DW_AT_decl_line
	.long	1900                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x742:0x9 DW_TAG_variable
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	470                             # DW_AT_decl_line
	.long	1905                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x74b:0x9 DW_TAG_variable
	.byte	124                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.long	1905                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x754:0x9 DW_TAG_variable
	.byte	125                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	474                             # DW_AT_decl_line
	.long	1905                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x75d:0x9 DW_TAG_variable
	.byte	126                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.long	1905                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x767:0x5 DW_TAG_const_type
	.long	199                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x76c:0x5 DW_TAG_const_type
	.long	365                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x771:0x5 DW_TAG_const_type
	.long	373                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x776:0x69 DW_TAG_subprogram
	.byte	19                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	184                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	491                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	373                             # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x786:0xa DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	491                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x790:0x4e DW_TAG_inlined_subroutine
	.long	1795                            # DW_AT_abstract_origin
	.byte	20                              # DW_AT_low_pc
	.long	.Ltmp129-.Ltmp119               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	493                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x79e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	1804                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x7a5:0x6 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.long	1813                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0x7ab:0x6 DW_TAG_variable
	.byte	32                              # DW_AT_const_value
	.long	1822                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0x7b1:0x7 DW_TAG_variable
	.ascii	"\250\002"                      # DW_AT_const_value
	.long	1831                            # DW_AT_abstract_origin
	.byte	48                              # Abbrev [48] 0x7b8:0x7 DW_TAG_variable
	.ascii	"\340@"                         # DW_AT_const_value
	.long	1840                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x7bf:0x6 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.long	1849                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x7c5:0x6 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.long	1858                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x7cb:0x6 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.long	1867                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x7d1:0x6 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.long	1876                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x7d7:0x6 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.long	1885                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x7df:0x1c DW_TAG_subprogram
	.byte	21                              # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	185                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	498                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_external
	.byte	47                              # Abbrev [47] 0x7ef:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	498                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x7fb:0x1c DW_TAG_subprogram
	.byte	22                              # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	186                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	505                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_external
	.byte	47                              # Abbrev [47] 0x80b:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	505                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0x817:0x19 DW_TAG_subprogram
	.byte	127                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x81f:0x8 DW_TAG_formal_parameter
	.byte	54                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x827:0x8 DW_TAG_formal_parameter
	.byte	57                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0x830:0x19 DW_TAG_subprogram
	.byte	128                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x838:0x8 DW_TAG_formal_parameter
	.byte	54                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x840:0x8 DW_TAG_formal_parameter
	.byte	57                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0x849:0x11 DW_TAG_subprogram
	.byte	129                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x851:0x8 DW_TAG_formal_parameter
	.byte	130                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x85a:0x65 DW_TAG_subprogram
	.byte	23                              # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	187                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	512                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x86a:0xa DW_TAG_formal_parameter
	.byte	32                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	512                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x874:0x44 DW_TAG_inlined_subroutine
	.long	2096                            # DW_AT_abstract_origin
	.byte	24                              # DW_AT_low_pc
	.long	.Ltmp137-.Ltmp133               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	514                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x882:0x6 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_location
	.long	2104                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x888:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2112                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0x88f:0x1b DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	24                              # DW_AT_low_pc
	.long	.Ltmp136-.Ltmp133               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x89c:0x6 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_location
	.long	2079                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x8a2:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2087                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0x8aa:0xd DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	25                              # DW_AT_low_pc
	.long	.Ltmp137-.Ltmp136               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x8b8:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x8bf:0xe DW_TAG_subprogram
	.byte	131                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	394                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x8c7:0x5 DW_TAG_formal_parameter
	.long	365                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x8cd:0x1c DW_TAG_subprogram
	.byte	27                              # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	188                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	519                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_external
	.byte	47                              # Abbrev [47] 0x8dd:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	519                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x8e9:0x65 DW_TAG_subprogram
	.byte	28                              # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	189                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	526                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x8f9:0xa DW_TAG_formal_parameter
	.byte	35                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	526                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x903:0x44 DW_TAG_inlined_subroutine
	.long	2096                            # DW_AT_abstract_origin
	.byte	29                              # DW_AT_low_pc
	.long	.Ltmp145-.Ltmp141               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	530                             # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x911:0x6 DW_TAG_formal_parameter
	.byte	36                              # DW_AT_location
	.long	2104                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x917:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2112                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0x91e:0x1b DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	29                              # DW_AT_low_pc
	.long	.Ltmp144-.Ltmp141               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x92b:0x6 DW_TAG_formal_parameter
	.byte	37                              # DW_AT_location
	.long	2079                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x931:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2087                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0x939:0xd DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	30                              # DW_AT_low_pc
	.long	.Ltmp145-.Ltmp144               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x947:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x94e:0x40 DW_TAG_subprogram
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x957:0x9 DW_TAG_formal_parameter
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x960:0x9 DW_TAG_formal_parameter
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x969:0x9 DW_TAG_formal_parameter
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	537                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x972:0x9 DW_TAG_formal_parameter
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	537                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x97b:0x9 DW_TAG_formal_parameter
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	538                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x984:0x9 DW_TAG_variable
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	545                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x98e:0xa0 DW_TAG_subprogram
	.byte	32                              # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	2828                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x99a:0x6 DW_TAG_formal_parameter
	.byte	38                              # DW_AT_location
	.long	2837                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x9a0:0x6 DW_TAG_variable
	.byte	39                              # DW_AT_location
	.long	2846                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x9a6:0x6 DW_TAG_variable
	.byte	40                              # DW_AT_location
	.long	2855                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x9ac:0x7b DW_TAG_inlined_subroutine
	.long	2382                            # DW_AT_abstract_origin
	.byte	3                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	564                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x9b6:0x6 DW_TAG_formal_parameter
	.byte	41                              # DW_AT_location
	.long	2391                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x9bc:0x6 DW_TAG_formal_parameter
	.byte	42                              # DW_AT_location
	.long	2400                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x9c2:0x6 DW_TAG_formal_parameter
	.byte	43                              # DW_AT_location
	.long	2409                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x9c8:0x6 DW_TAG_formal_parameter
	.byte	44                              # DW_AT_location
	.long	2418                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x9ce:0x6 DW_TAG_variable
	.byte	45                              # DW_AT_location
	.long	2436                            # DW_AT_abstract_origin
	.byte	53                              # Abbrev [53] 0x9d4:0xe DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	33                              # DW_AT_low_pc
	.long	.Ltmp152-.Ltmp151               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	546                             # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x9e2:0x44 DW_TAG_inlined_subroutine
	.long	2096                            # DW_AT_abstract_origin
	.byte	34                              # DW_AT_low_pc
	.long	.Ltmp161-.Ltmp158               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	551                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x9f0:0x6 DW_TAG_formal_parameter
	.byte	46                              # DW_AT_location
	.long	2104                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x9f6:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2112                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0x9fd:0x1b DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	34                              # DW_AT_low_pc
	.long	.Ltmp160-.Ltmp158               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xa0a:0x6 DW_TAG_formal_parameter
	.byte	47                              # DW_AT_location
	.long	2079                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0xa10:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2087                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0xa18:0xd DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	35                              # DW_AT_low_pc
	.long	.Ltmp161-.Ltmp160               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0xa27:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	36                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xa2e:0x1c DW_TAG_subprogram
	.byte	37                              # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	190                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_external
	.byte	47                              # Abbrev [47] 0xa3e:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0xa4a:0x20 DW_TAG_subprogram
	.byte	38                              # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	3426                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0xa56:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	3435                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xa5d:0x6 DW_TAG_variable
	.byte	48                              # DW_AT_location
	.long	3444                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xa63:0x6 DW_TAG_variable
	.byte	49                              # DW_AT_location
	.long	3453                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xa6a:0x37 DW_TAG_subprogram
	.byte	39                              # DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	191                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	593                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	394                             # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0xa7a:0xa DW_TAG_formal_parameter
	.byte	50                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	593                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0xa84:0x16 DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	40                              # DW_AT_low_pc
	.long	.Ltmp183-.Ltmp181               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	595                             # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0xa92:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	80
	.long	2079                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0xa9a:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xaa1:0x46 DW_TAG_subprogram
	.byte	42                              # DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	192                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	601                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2810                            # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0xab1:0xa DW_TAG_formal_parameter
	.byte	51                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	601                             # DW_AT_decl_line
	.long	805                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xabb:0xa DW_TAG_formal_parameter
	.byte	52                              # DW_AT_location
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	601                             # DW_AT_decl_line
	.long	2818                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xac5:0xa DW_TAG_variable
	.byte	54                              # DW_AT_location
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	610                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0xacf:0x11 DW_TAG_lexical_block
	.byte	43                              # DW_AT_low_pc
	.long	.Ltmp189-.Ltmp186               # DW_AT_high_pc
	.byte	29                              # Abbrev [29] 0xad5:0xa DW_TAG_variable
	.byte	53                              # DW_AT_location
	.byte	205                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	607                             # DW_AT_decl_line
	.long	5917                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0xae0:0x6 DW_TAG_call_site
	.long	2791                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0xae7:0x13 DW_TAG_subprogram
	.byte	134                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2810                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0xaef:0x5 DW_TAG_formal_parameter
	.long	2818                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0xaf4:0x5 DW_TAG_formal_parameter
	.long	2818                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xafa:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	135                             # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb02:0x5 DW_TAG_pointer_type
	.long	2823                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb07:0x5 DW_TAG_const_type
	.long	459                             # DW_AT_type
	.byte	49                              # Abbrev [49] 0xb0c:0x25 DW_TAG_subprogram
	.byte	136                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	560                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0xb15:0x9 DW_TAG_formal_parameter
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	560                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xb1e:0x9 DW_TAG_variable
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	562                             # DW_AT_decl_line
	.long	211                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xb27:0x9 DW_TAG_variable
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	563                             # DW_AT_decl_line
	.long	653                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb31:0x5 DW_TAG_pointer_type
	.long	2870                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb36:0x5 DW_TAG_const_type
	.long	810                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb3b:0xdb DW_TAG_subprogram
	.byte	45                              # DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	618                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2810                            # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0xb4b:0xa DW_TAG_formal_parameter
	.byte	55                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	618                             # DW_AT_decl_line
	.long	805                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xb55:0xa DW_TAG_formal_parameter
	.byte	56                              # DW_AT_location
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	618                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb5f:0xa DW_TAG_variable
	.byte	57                              # DW_AT_location
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	624                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb69:0xa DW_TAG_variable
	.byte	58                              # DW_AT_location
	.byte	206                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	627                             # DW_AT_decl_line
	.long	1900                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0xb73:0x9c DW_TAG_inlined_subroutine
	.long	2828                            # DW_AT_abstract_origin
	.byte	46                              # DW_AT_low_pc
	.long	.Ltmp220-.Ltmp198               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	629                             # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xb81:0x6 DW_TAG_formal_parameter
	.byte	59                              # DW_AT_location
	.long	2837                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xb87:0x6 DW_TAG_variable
	.byte	60                              # DW_AT_location
	.long	2846                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xb8d:0x6 DW_TAG_variable
	.byte	61                              # DW_AT_location
	.long	2855                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0xb93:0x7b DW_TAG_inlined_subroutine
	.long	2382                            # DW_AT_abstract_origin
	.byte	4                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	564                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xb9d:0x6 DW_TAG_formal_parameter
	.byte	62                              # DW_AT_location
	.long	2391                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0xba3:0x6 DW_TAG_formal_parameter
	.byte	63                              # DW_AT_location
	.long	2400                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0xba9:0x6 DW_TAG_formal_parameter
	.byte	64                              # DW_AT_location
	.long	2409                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0xbaf:0x6 DW_TAG_formal_parameter
	.byte	65                              # DW_AT_location
	.long	2418                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xbb5:0x6 DW_TAG_variable
	.byte	66                              # DW_AT_location
	.long	2436                            # DW_AT_abstract_origin
	.byte	53                              # Abbrev [53] 0xbbb:0xe DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	47                              # DW_AT_low_pc
	.long	.Ltmp203-.Ltmp202               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	546                             # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0xbc9:0x44 DW_TAG_inlined_subroutine
	.long	2096                            # DW_AT_abstract_origin
	.byte	48                              # DW_AT_low_pc
	.long	.Ltmp213-.Ltmp210               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	551                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xbd7:0x6 DW_TAG_formal_parameter
	.byte	67                              # DW_AT_location
	.long	2104                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0xbdd:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	93
	.long	2112                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0xbe4:0x1b DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	48                              # DW_AT_low_pc
	.long	.Ltmp212-.Ltmp210               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xbf1:0x6 DW_TAG_formal_parameter
	.byte	68                              # DW_AT_location
	.long	2079                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0xbf7:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	93
	.long	2087                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0xbff:0xd DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	49                              # DW_AT_low_pc
	.long	.Ltmp213-.Ltmp212               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0xc0f:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	50                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xc16:0x14c DW_TAG_subprogram
	.byte	51                              # DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	194                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	640                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2810                            # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0xc26:0xa DW_TAG_formal_parameter
	.byte	69                              # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	640                             # DW_AT_decl_line
	.long	805                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xc30:0xa DW_TAG_formal_parameter
	.byte	70                              # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	640                             # DW_AT_decl_line
	.long	887                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xc3a:0xa DW_TAG_formal_parameter
	.byte	71                              # DW_AT_location
	.byte	170                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	641                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xc44:0xa DW_TAG_formal_parameter
	.byte	72                              # DW_AT_location
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	641                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xc4e:0xa DW_TAG_variable
	.byte	73                              # DW_AT_location
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	649                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xc58:0xa DW_TAG_variable
	.byte	74                              # DW_AT_location
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	650                             # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xc62:0xa DW_TAG_variable
	.byte	76                              # DW_AT_location
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	652                             # DW_AT_decl_line
	.long	1900                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xc6c:0xa DW_TAG_variable
	.byte	77                              # DW_AT_location
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	654                             # DW_AT_decl_line
	.long	1900                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xc76:0xa DW_TAG_variable
	.byte	78                              # DW_AT_location
	.byte	207                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	656                             # DW_AT_decl_line
	.long	5922                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0xc80:0x15 DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	52                              # DW_AT_low_pc
	.long	.Ltmp240-.Ltmp237               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	653                             # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xc8e:0x6 DW_TAG_formal_parameter
	.byte	75                              # DW_AT_location
	.long	2129                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0xc95:0x5b DW_TAG_inlined_subroutine
	.long	2382                            # DW_AT_abstract_origin
	.byte	5                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	660                             # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xc9f:0x6 DW_TAG_formal_parameter
	.byte	79                              # DW_AT_location
	.long	2409                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xca5:0x6 DW_TAG_variable
	.byte	80                              # DW_AT_location
	.long	2436                            # DW_AT_abstract_origin
	.byte	53                              # Abbrev [53] 0xcab:0xe DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	53                              # DW_AT_low_pc
	.long	.Ltmp246-.Ltmp245               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	546                             # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0xcb9:0x36 DW_TAG_inlined_subroutine
	.long	2096                            # DW_AT_abstract_origin
	.byte	54                              # DW_AT_low_pc
	.long	.Ltmp258-.Ltmp254               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	551                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xcc7:0x6 DW_TAG_formal_parameter
	.byte	81                              # DW_AT_location
	.long	2104                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0xccd:0x14 DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	54                              # DW_AT_low_pc
	.long	.Ltmp257-.Ltmp254               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xcda:0x6 DW_TAG_formal_parameter
	.byte	82                              # DW_AT_location
	.long	2079                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0xce1:0xd DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	55                              # DW_AT_low_pc
	.long	.Ltmp258-.Ltmp257               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0xcf0:0x36 DW_TAG_inlined_subroutine
	.long	2096                            # DW_AT_abstract_origin
	.byte	56                              # DW_AT_low_pc
	.long	.Ltmp266-.Ltmp262               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	668                             # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xcfe:0x6 DW_TAG_formal_parameter
	.byte	83                              # DW_AT_location
	.long	2104                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0xd04:0x14 DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	56                              # DW_AT_low_pc
	.long	.Ltmp265-.Ltmp262               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xd11:0x6 DW_TAG_formal_parameter
	.byte	84                              # DW_AT_location
	.long	2079                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0xd18:0xd DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	57                              # DW_AT_low_pc
	.long	.Ltmp266-.Ltmp265               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0xd26:0x17 DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	58                              # DW_AT_low_pc
	.long	.Ltmp283-.Ltmp282               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	710                             # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0xd34:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	40
	.long	2129                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0xd3d:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	59                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xd43:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	60                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xd49:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	61                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xd4f:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	62                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xd55:0x6 DW_TAG_call_site
	.long	1246                            # DW_AT_call_origin
	.byte	63                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xd5b:0x6 DW_TAG_call_site
	.long	1265                            # DW_AT_call_origin
	.byte	64                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0xd62:0x25 DW_TAG_subprogram
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	579                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	394                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0xd6b:0x9 DW_TAG_formal_parameter
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	579                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xd74:0x9 DW_TAG_variable
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	581                             # DW_AT_decl_line
	.long	394                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0xd7d:0x9 DW_TAG_variable
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	584                             # DW_AT_decl_line
	.long	211                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xd87:0x243 DW_TAG_subprogram
	.byte	65                              # DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	195                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	767                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2810                            # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0xd97:0xa DW_TAG_formal_parameter
	.byte	85                              # DW_AT_location
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	767                             # DW_AT_decl_line
	.long	5997                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0xda1:0xa DW_TAG_formal_parameter
	.byte	86                              # DW_AT_location
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	767                             # DW_AT_decl_line
	.long	5997                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0xdab:0xa DW_TAG_formal_parameter
	.byte	87                              # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	768                             # DW_AT_decl_line
	.long	887                             # DW_AT_type
	.byte	54                              # Abbrev [54] 0xdb5:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	56
	.byte	208                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	837                             # DW_AT_decl_line
	.long	5927                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xdc1:0xa DW_TAG_variable
	.byte	97                              # DW_AT_location
	.byte	212                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	770                             # DW_AT_decl_line
	.long	1900                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0xdcb:0x9d DW_TAG_inlined_subroutine
	.long	2828                            # DW_AT_abstract_origin
	.byte	66                              # DW_AT_low_pc
	.long	.Ltmp308-.Ltmp287               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	770                             # DW_AT_call_line
	.byte	34                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0xdd9:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	2837                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xde0:0x6 DW_TAG_variable
	.byte	88                              # DW_AT_location
	.long	2846                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xde6:0x6 DW_TAG_variable
	.byte	89                              # DW_AT_location
	.long	2855                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0xdec:0x7b DW_TAG_inlined_subroutine
	.long	2382                            # DW_AT_abstract_origin
	.byte	6                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	564                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xdf6:0x6 DW_TAG_formal_parameter
	.byte	90                              # DW_AT_location
	.long	2391                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0xdfc:0x6 DW_TAG_formal_parameter
	.byte	91                              # DW_AT_location
	.long	2400                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0xe02:0x6 DW_TAG_formal_parameter
	.byte	92                              # DW_AT_location
	.long	2409                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0xe08:0x6 DW_TAG_formal_parameter
	.byte	93                              # DW_AT_location
	.long	2418                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xe0e:0x6 DW_TAG_variable
	.byte	94                              # DW_AT_location
	.long	2436                            # DW_AT_abstract_origin
	.byte	53                              # Abbrev [53] 0xe14:0xe DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	67                              # DW_AT_low_pc
	.long	.Ltmp292-.Ltmp291               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	546                             # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0xe22:0x44 DW_TAG_inlined_subroutine
	.long	2096                            # DW_AT_abstract_origin
	.byte	68                              # DW_AT_low_pc
	.long	.Ltmp301-.Ltmp298               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	551                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xe30:0x6 DW_TAG_formal_parameter
	.byte	95                              # DW_AT_location
	.long	2104                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0xe36:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	93
	.long	2112                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0xe3d:0x1b DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	68                              # DW_AT_low_pc
	.long	.Ltmp300-.Ltmp298               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xe4a:0x6 DW_TAG_formal_parameter
	.byte	96                              # DW_AT_location
	.long	2079                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0xe50:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	93
	.long	2087                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0xe58:0xd DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	69                              # DW_AT_low_pc
	.long	.Ltmp301-.Ltmp300               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0xe68:0x9c DW_TAG_inlined_subroutine
	.long	2828                            # DW_AT_abstract_origin
	.byte	70                              # DW_AT_low_pc
	.long	.Ltmp327-.Ltmp309               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	773                             # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xe76:0x6 DW_TAG_formal_parameter
	.byte	98                              # DW_AT_location
	.long	2837                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xe7c:0x6 DW_TAG_variable
	.byte	99                              # DW_AT_location
	.long	2846                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xe82:0x6 DW_TAG_variable
	.byte	100                             # DW_AT_location
	.long	2855                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0xe88:0x7b DW_TAG_inlined_subroutine
	.long	2382                            # DW_AT_abstract_origin
	.byte	7                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	564                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xe92:0x6 DW_TAG_formal_parameter
	.byte	101                             # DW_AT_location
	.long	2391                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0xe98:0x6 DW_TAG_formal_parameter
	.byte	102                             # DW_AT_location
	.long	2400                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0xe9e:0x6 DW_TAG_formal_parameter
	.byte	103                             # DW_AT_location
	.long	2409                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0xea4:0x6 DW_TAG_formal_parameter
	.byte	104                             # DW_AT_location
	.long	2418                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xeaa:0x6 DW_TAG_variable
	.byte	105                             # DW_AT_location
	.long	2436                            # DW_AT_abstract_origin
	.byte	53                              # Abbrev [53] 0xeb0:0xe DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	71                              # DW_AT_low_pc
	.long	.Ltmp314-.Ltmp313               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	546                             # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0xebe:0x44 DW_TAG_inlined_subroutine
	.long	2096                            # DW_AT_abstract_origin
	.byte	72                              # DW_AT_low_pc
	.long	.Ltmp325-.Ltmp322               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	551                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xecc:0x6 DW_TAG_formal_parameter
	.byte	106                             # DW_AT_location
	.long	2104                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0xed2:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2112                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0xed9:0x1b DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	72                              # DW_AT_low_pc
	.long	.Ltmp324-.Ltmp322               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xee6:0x6 DW_TAG_formal_parameter
	.byte	107                             # DW_AT_location
	.long	2079                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0xeec:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2087                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0xef4:0xd DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	73                              # DW_AT_low_pc
	.long	.Ltmp325-.Ltmp324               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0xf04:0x4f DW_TAG_lexical_block
	.byte	74                              # DW_AT_low_pc
	.long	.Ltmp344-.Ltmp333               # DW_AT_high_pc
	.byte	18                              # Abbrev [18] 0xf0a:0x9 DW_TAG_variable
	.byte	214                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	785                             # DW_AT_decl_line
	.long	1900                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xf13:0x9 DW_TAG_variable
	.byte	215                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	787                             # DW_AT_decl_line
	.long	1900                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0xf1c:0x1a DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	8                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	785                             # DW_AT_call_line
	.byte	30                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0xf26:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.long	2079                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0xf2e:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2087                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	53                              # Abbrev [53] 0xf36:0xe DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	75                              # DW_AT_low_pc
	.long	.Ltmp342-.Ltmp340               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	787                             # DW_AT_call_line
	.byte	29                              # DW_AT_call_column
	.byte	53                              # Abbrev [53] 0xf44:0xe DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	76                              # DW_AT_low_pc
	.long	.Ltmp343-.Ltmp342               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	789                             # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0xf53:0x24 DW_TAG_lexical_block
	.byte	9                               # DW_AT_ranges
	.byte	29                              # Abbrev [29] 0xf55:0xa DW_TAG_variable
	.byte	108                             # DW_AT_location
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	796                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xf5f:0xa DW_TAG_variable
	.byte	109                             # DW_AT_location
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	797                             # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	55                              # Abbrev [55] 0xf69:0xd DW_TAG_lexical_block
	.byte	10                              # DW_AT_ranges
	.byte	29                              # Abbrev [29] 0xf6b:0xa DW_TAG_variable
	.byte	110                             # DW_AT_location
	.byte	213                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	802                             # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0xf77:0x22 DW_TAG_inlined_subroutine
	.long	3426                            # DW_AT_abstract_origin
	.byte	77                              # DW_AT_low_pc
	.long	.Ltmp371-.Ltmp365               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	851                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0xf85:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	3435                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xf8c:0x6 DW_TAG_variable
	.byte	111                             # DW_AT_location
	.long	3444                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xf92:0x6 DW_TAG_variable
	.byte	112                             # DW_AT_location
	.long	3453                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0xf99:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	78                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xf9f:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	79                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xfa5:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	80                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xfab:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	81                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xfb1:0x6 DW_TAG_call_site
	.long	1246                            # DW_AT_call_origin
	.byte	82                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xfb7:0x6 DW_TAG_call_site
	.long	1377                            # DW_AT_call_origin
	.byte	83                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xfbd:0x6 DW_TAG_call_site
	.long	4042                            # DW_AT_call_origin
	.byte	84                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0xfc3:0x6 DW_TAG_call_site
	.long	1377                            # DW_AT_call_origin
	.byte	85                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0xfca:0x40 DW_TAG_subprogram
	.byte	86                              # DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	196                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	745                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0xfd6:0x9 DW_TAG_formal_parameter
	.byte	208                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	745                             # DW_AT_decl_line
	.long	6002                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0xfdf:0xa DW_TAG_formal_parameter
	.byte	113                             # DW_AT_location
	.byte	216                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	745                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xfe9:0xa DW_TAG_variable
	.byte	114                             # DW_AT_location
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	748                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xff3:0xa DW_TAG_variable
	.byte	115                             # DW_AT_location
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	747                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0xffd:0x6 DW_TAG_call_site
	.long	1265                            # DW_AT_call_origin
	.byte	87                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x1003:0x6 DW_TAG_call_site
	.long	4042                            # DW_AT_call_origin
	.byte	88                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x100a:0x40 DW_TAG_subprogram
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	862                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	767                             # DW_AT_type
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x1013:0x9 DW_TAG_formal_parameter
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	862                             # DW_AT_decl_line
	.long	211                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x101c:0x9 DW_TAG_formal_parameter
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	862                             # DW_AT_decl_line
	.long	887                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1025:0x9 DW_TAG_variable
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	869                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x102e:0x9 DW_TAG_variable
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	887                             # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1037:0x9 DW_TAG_variable
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	903                             # DW_AT_decl_line
	.long	653                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1040:0x9 DW_TAG_variable
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	904                             # DW_AT_decl_line
	.long	199                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	57                              # Abbrev [57] 0x104a:0x18 DW_TAG_subprogram
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	417                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x104f:0x9 DW_TAG_formal_parameter
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	417                             # DW_AT_decl_line
	.long	805                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1058:0x9 DW_TAG_formal_parameter
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	417                             # DW_AT_decl_line
	.long	887                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x1062:0x13 DW_TAG_subprogram
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	198                             # DW_AT_type
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x106b:0x9 DW_TAG_formal_parameter
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	295                             # DW_AT_decl_line
	.long	4213                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1075:0x5 DW_TAG_pointer_type
	.long	4218                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x107a:0x5 DW_TAG_const_type
	.long	306                             # DW_AT_type
	.byte	58                              # Abbrev [58] 0x107f:0x21 DW_TAG_subprogram
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	371                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x1084:0x9 DW_TAG_formal_parameter
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	371                             # DW_AT_decl_line
	.long	198                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x108d:0x9 DW_TAG_formal_parameter
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	371                             # DW_AT_decl_line
	.long	887                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1096:0x9 DW_TAG_variable
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	373                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x10a0:0x1b0 DW_TAG_subprogram
	.byte	89                              # DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin21     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	197                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	922                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	805                             # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x10b0:0xa DW_TAG_formal_parameter
	.byte	116                             # DW_AT_location
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	922                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x10ba:0xa DW_TAG_formal_parameter
	.byte	117                             # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	922                             # DW_AT_decl_line
	.long	887                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x10c4:0xa DW_TAG_variable
	.byte	121                             # DW_AT_location
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	925                             # DW_AT_decl_line
	.long	805                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x10ce:0xa DW_TAG_variable
	.byte	122                             # DW_AT_location
	.byte	217                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	936                             # DW_AT_decl_line
	.long	211                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x10d8:0x28 DW_TAG_inlined_subroutine
	.long	777                             # DW_AT_abstract_origin
	.byte	11                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	925                             # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x10e2:0x6 DW_TAG_formal_parameter
	.byte	118                             # DW_AT_location
	.long	786                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x10e8:0x6 DW_TAG_variable
	.byte	119                             # DW_AT_location
	.long	795                             # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x10ee:0x11 DW_TAG_inlined_subroutine
	.long	980                             # DW_AT_abstract_origin
	.byte	12                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	384                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x10f8:0x6 DW_TAG_formal_parameter
	.byte	120                             # DW_AT_location
	.long	984                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1100:0x11f DW_TAG_lexical_block
	.byte	13                              # DW_AT_ranges
	.byte	29                              # Abbrev [29] 0x1102:0xb DW_TAG_variable
	.ascii	"\203\001"                      # DW_AT_location
	.byte	218                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	939                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x110d:0xcd DW_TAG_inlined_subroutine
	.long	4106                            # DW_AT_abstract_origin
	.byte	14                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	939                             # DW_AT_call_line
	.byte	30                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x1117:0x6 DW_TAG_formal_parameter
	.byte	123                             # DW_AT_location
	.long	4115                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x111d:0x6 DW_TAG_formal_parameter
	.byte	124                             # DW_AT_location
	.long	4124                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x1123:0x6 DW_TAG_variable
	.byte	126                             # DW_AT_location
	.long	4133                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x1129:0x6 DW_TAG_variable
	.byte	127                             # DW_AT_location
	.long	4142                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x112f:0x7 DW_TAG_variable
	.ascii	"\200\001"                      # DW_AT_location
	.long	4151                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x1136:0x7 DW_TAG_variable
	.ascii	"\201\001"                      # DW_AT_location
	.long	4160                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x113d:0x48 DW_TAG_inlined_subroutine
	.long	998                             # DW_AT_abstract_origin
	.byte	15                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	869                             # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x1147:0x1a DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	115
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\257\200\200"
	.byte	159
	.long	1025                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x1161:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	92
	.long	1034                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x1168:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	1043                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x1170:0x6 DW_TAG_variable
	.byte	125                             # DW_AT_location
	.long	1052                            # DW_AT_abstract_origin
	.byte	53                              # Abbrev [53] 0x1176:0xe DW_TAG_inlined_subroutine
	.long	980                             # DW_AT_abstract_origin
	.byte	90                              # DW_AT_low_pc
	.long	.Ltmp422-.Ltmp421               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	358                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x1185:0x42 DW_TAG_inlined_subroutine
	.long	4223                            # DW_AT_abstract_origin
	.byte	91                              # DW_AT_low_pc
	.long	.Ltmp461-.Ltmp455               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	891                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x1193:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	4228                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x119a:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	4237                            # DW_AT_abstract_origin
	.byte	59                              # Abbrev [59] 0x11a2:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	95
	.long	4246                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x11a9:0x1d DW_TAG_inlined_subroutine
	.long	1448                            # DW_AT_abstract_origin
	.byte	92                              # DW_AT_low_pc
	.long	.Ltmp461-.Ltmp456               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	374                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x11b7:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	1460                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x11bf:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1468                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x11c7:0x12 DW_TAG_inlined_subroutine
	.long	4194                            # DW_AT_abstract_origin
	.byte	16                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	909                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x11d1:0x7 DW_TAG_formal_parameter
	.ascii	"\202\001"                      # DW_AT_location
	.long	4203                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x11da:0x2e DW_TAG_inlined_subroutine
	.long	4170                            # DW_AT_abstract_origin
	.byte	93                              # DW_AT_low_pc
	.long	.Ltmp411-.Ltmp405               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	942                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x11e8:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	4184                            # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x11f0:0x17 DW_TAG_inlined_subroutine
	.long	1448                            # DW_AT_abstract_origin
	.byte	94                              # DW_AT_low_pc
	.long	.Ltmp410-.Ltmp406               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	422                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x11fe:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	1460                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x1208:0x16 DW_TAG_inlined_subroutine
	.long	4194                            # DW_AT_abstract_origin
	.byte	95                              # DW_AT_low_pc
	.long	.Ltmp453-.Ltmp446               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	948                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x1216:0x7 DW_TAG_formal_parameter
	.ascii	"\204\001"                      # DW_AT_location
	.long	4203                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x121f:0x6 DW_TAG_call_site
	.long	1246                            # DW_AT_call_origin
	.byte	96                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x1225:0x6 DW_TAG_call_site
	.long	1558                            # DW_AT_call_origin
	.byte	97                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x122b:0x6 DW_TAG_call_site
	.long	1377                            # DW_AT_call_origin
	.byte	98                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x1231:0x6 DW_TAG_call_site
	.long	1246                            # DW_AT_call_origin
	.byte	99                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x1237:0x6 DW_TAG_call_site
	.long	1246                            # DW_AT_call_origin
	.byte	100                             # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x123d:0x6 DW_TAG_call_site
	.long	1265                            # DW_AT_call_origin
	.byte	101                             # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x1243:0x6 DW_TAG_call_site
	.long	1265                            # DW_AT_call_origin
	.byte	95                              # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x1249:0x6 DW_TAG_call_site
	.long	1558                            # DW_AT_call_origin
	.byte	102                             # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	57                              # Abbrev [57] 0x1250:0xf DW_TAG_subprogram
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1086                            # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x1255:0x9 DW_TAG_formal_parameter
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1086                            # DW_AT_decl_line
	.long	4703                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x125f:0x5 DW_TAG_pointer_type
	.long	4708                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1264:0x8 DW_TAG_typedef
	.long	4716                            # DW_AT_type
	.byte	175                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	60                              # Abbrev [60] 0x126c:0x16c DW_TAG_structure_type
	.short	304                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1271:0x9 DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	4730                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x127a:0x8c DW_TAG_structure_type
	.byte	120                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x127e:0x9 DW_TAG_member
	.byte	150                             # DW_AT_name
	.long	2818                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1287:0x9 DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	5080                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1290:0x9 DW_TAG_member
	.byte	152                             # DW_AT_name
	.long	5080                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1299:0x9 DW_TAG_member
	.byte	153                             # DW_AT_name
	.long	5080                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12a2:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12ab:0x9 DW_TAG_member
	.byte	154                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12b4:0x9 DW_TAG_member
	.byte	155                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12bd:0x9 DW_TAG_member
	.byte	156                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12c6:0x9 DW_TAG_member
	.byte	157                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12cf:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12d8:0x9 DW_TAG_member
	.byte	158                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12e1:0x9 DW_TAG_member
	.byte	159                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12ea:0x9 DW_TAG_member
	.byte	160                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12f3:0x9 DW_TAG_member
	.byte	161                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12fc:0x9 DW_TAG_member
	.byte	162                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1306:0x9 DW_TAG_member
	.byte	163                             # DW_AT_name
	.long	4879                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x130f:0x9e DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1313:0x9 DW_TAG_member
	.byte	164                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x131c:0x9 DW_TAG_member
	.byte	165                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1325:0x9 DW_TAG_member
	.byte	166                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x132e:0x9 DW_TAG_member
	.byte	167                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1337:0x9 DW_TAG_member
	.byte	168                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1340:0x9 DW_TAG_member
	.byte	169                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1349:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1352:0x9 DW_TAG_member
	.byte	170                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x135b:0x9 DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1364:0x9 DW_TAG_member
	.byte	159                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x136d:0x9 DW_TAG_member
	.byte	160                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1376:0x9 DW_TAG_member
	.byte	161                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x137f:0x9 DW_TAG_member
	.byte	162                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1388:0x9 DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	5080                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1391:0x9 DW_TAG_member
	.byte	152                             # DW_AT_name
	.long	5080                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x139a:0x9 DW_TAG_member
	.byte	153                             # DW_AT_name
	.long	5080                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x13a3:0x9 DW_TAG_member
	.byte	171                             # DW_AT_name
	.long	5080                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	61                              # Abbrev [61] 0x13ad:0xa DW_TAG_member
	.byte	172                             # DW_AT_name
	.long	5086                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.short	256                             # DW_AT_data_member_location
	.byte	62                              # Abbrev [62] 0x13b7:0x20 DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x13bb:0x9 DW_TAG_member
	.byte	173                             # DW_AT_name
	.long	5080                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x13c4:0x9 DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	199                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x13cd:0x9 DW_TAG_member
	.byte	174                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x13d8:0x5 DW_TAG_pointer_type
	.long	5085                            # DW_AT_type
	.byte	63                              # Abbrev [63] 0x13dd:0x1 DW_TAG_const_type
	.byte	13                              # Abbrev [13] 0x13de:0xc DW_TAG_array_type
	.long	5047                            # DW_AT_type
	.byte	64                              # Abbrev [64] 0x13e3:0x6 DW_TAG_subrange_type
	.long	763                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x13ea:0x39 DW_TAG_subprogram
	.byte	103                             # DW_AT_low_pc
	.long	.Lfunc_end22-.Lfunc_begin22     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	198                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1077                            # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	47                              # Abbrev [47] 0x13f6:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1077                            # DW_AT_decl_line
	.long	4703                            # DW_AT_type
	.byte	47                              # Abbrev [47] 0x1401:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1077                            # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x140c:0x16 DW_TAG_inlined_subroutine
	.long	4688                            # DW_AT_abstract_origin
	.byte	104                             # DW_AT_low_pc
	.long	.Ltmp463-.Ltmp462               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1080                            # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x141a:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	4693                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x1423:0x14 DW_TAG_subprogram
	.byte	105                             # DW_AT_low_pc
	.long	.Lfunc_end23-.Lfunc_begin23     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	4688                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x142f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	4693                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x1437:0xb4 DW_TAG_subprogram
	.byte	106                             # DW_AT_low_pc
	.long	.Lfunc_end24-.Lfunc_begin24     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	199                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1097                            # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	641                             # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x1447:0xb DW_TAG_formal_parameter
	.ascii	"\205\001"                      # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1097                            # DW_AT_decl_line
	.long	4703                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x1452:0xb DW_TAG_formal_parameter
	.ascii	"\206\001"                      # DW_AT_location
	.byte	219                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1097                            # DW_AT_decl_line
	.long	6007                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x145d:0xb DW_TAG_variable
	.ascii	"\207\001"                      # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1103                            # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1468:0xb DW_TAG_variable
	.ascii	"\210\001"                      # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1104                            # DW_AT_decl_line
	.long	211                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1473:0xb DW_TAG_variable
	.ascii	"\211\001"                      # DW_AT_location
	.byte	221                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1105                            # DW_AT_decl_line
	.long	653                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x147e:0xb DW_TAG_variable
	.ascii	"\212\001"                      # DW_AT_location
	.byte	222                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1106                            # DW_AT_decl_line
	.long	199                             # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1489:0x7 DW_TAG_label
	.byte	223                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1130                            # DW_AT_decl_line
	.ascii	"\204\001"                      # DW_AT_low_pc
	.byte	35                              # Abbrev [35] 0x1490:0x16 DW_TAG_inlined_subroutine
	.long	4194                            # DW_AT_abstract_origin
	.byte	107                             # DW_AT_low_pc
	.long	.Ltmp485-.Ltmp478               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1120                            # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x149e:0x7 DW_TAG_formal_parameter
	.ascii	"\213\001"                      # DW_AT_location
	.long	4203                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x14a6:0x16 DW_TAG_inlined_subroutine
	.long	4194                            # DW_AT_abstract_origin
	.byte	108                             # DW_AT_low_pc
	.long	.Ltmp516-.Ltmp509               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1162                            # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x14b4:0x7 DW_TAG_formal_parameter
	.ascii	"\215\001"                      # DW_AT_location
	.long	4203                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x14bc:0x12 DW_TAG_inlined_subroutine
	.long	4194                            # DW_AT_abstract_origin
	.byte	17                              # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	1169                            # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x14c6:0x7 DW_TAG_formal_parameter
	.ascii	"\216\001"                      # DW_AT_location
	.long	4203                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x14ce:0x16 DW_TAG_inlined_subroutine
	.long	4194                            # DW_AT_abstract_origin
	.byte	109                             # DW_AT_low_pc
	.long	.Ltmp508-.Ltmp501               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1140                            # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x14dc:0x7 DW_TAG_formal_parameter
	.ascii	"\214\001"                      # DW_AT_location
	.long	4203                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x14e4:0x6 DW_TAG_call_site
	.long	5355                            # DW_AT_call_origin
	.byte	110                             # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x14eb:0x12c DW_TAG_subprogram
	.byte	111                             # DW_AT_low_pc
	.long	.Lfunc_end25-.Lfunc_begin25     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	200                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	974                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	28                              # Abbrev [28] 0x14f7:0xb DW_TAG_formal_parameter
	.ascii	"\217\001"                      # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	974                             # DW_AT_decl_line
	.long	4703                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1502:0xb DW_TAG_variable
	.ascii	"\220\001"                      # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	977                             # DW_AT_decl_line
	.long	211                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x150d:0xb DW_TAG_variable
	.ascii	"\221\001"                      # DW_AT_location
	.byte	221                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	978                             # DW_AT_decl_line
	.long	653                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1518:0xb DW_TAG_variable
	.ascii	"\222\001"                      # DW_AT_location
	.byte	222                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	979                             # DW_AT_decl_line
	.long	1895                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1523:0xb DW_TAG_variable
	.ascii	"\223\001"                      # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	976                             # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	41                              # Abbrev [41] 0x152e:0x6e DW_TAG_lexical_block
	.byte	112                             # DW_AT_low_pc
	.long	.Ltmp576-.Ltmp568               # DW_AT_high_pc
	.byte	54                              # Abbrev [54] 0x1534:0xb DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	93
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1028                            # DW_AT_decl_line
	.long	653                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x153f:0x46 DW_TAG_inlined_subroutine
	.long	2096                            # DW_AT_abstract_origin
	.byte	113                             # DW_AT_low_pc
	.long	.Ltmp572-.Ltmp569               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1033                            # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x154d:0x7 DW_TAG_formal_parameter
	.ascii	"\224\001"                      # DW_AT_location
	.long	2104                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x1554:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2112                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0x155b:0x1c DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	113                             # DW_AT_low_pc
	.long	.Ltmp571-.Ltmp569               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x1568:0x7 DW_TAG_formal_parameter
	.ascii	"\225\001"                      # DW_AT_location
	.long	2079                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x156f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	2087                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0x1577:0xd DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	114                             # DW_AT_low_pc
	.long	.Ltmp572-.Ltmp571               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x1585:0x16 DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	115                             # DW_AT_low_pc
	.long	.Ltmp575-.Ltmp573               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1035                            # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x1593:0x7 DW_TAG_formal_parameter
	.ascii	"\226\001"                      # DW_AT_location
	.long	2129                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x159c:0x42 DW_TAG_inlined_subroutine
	.long	2096                            # DW_AT_abstract_origin
	.byte	116                             # DW_AT_low_pc
	.long	.Ltmp583-.Ltmp580               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1024                            # DW_AT_call_line
	.byte	34                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x15aa:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	2104                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x15b0:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	2112                            # DW_AT_abstract_origin
	.byte	51                              # Abbrev [51] 0x15b6:0x1a DW_TAG_inlined_subroutine
	.long	2071                            # DW_AT_abstract_origin
	.byte	116                             # DW_AT_low_pc
	.long	.Ltmp582-.Ltmp580               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x15c3:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	2079                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x15c9:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	2087                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	52                              # Abbrev [52] 0x15d0:0xd DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	117                             # DW_AT_low_pc
	.long	.Ltmp583-.Ltmp582               # DW_AT_high_pc
	.byte	11                              # DW_AT_call_file
	.byte	59                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x15de:0x16 DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	118                             # DW_AT_low_pc
	.long	.Ltmp592-.Ltmp590               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1047                            # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x15ec:0x7 DW_TAG_formal_parameter
	.ascii	"\227\001"                      # DW_AT_location
	.long	2129                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x15f4:0x16 DW_TAG_inlined_subroutine
	.long	2121                            # DW_AT_abstract_origin
	.byte	119                             # DW_AT_low_pc
	.long	.Ltmp597-.Ltmp595               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1059                            # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x1602:0x7 DW_TAG_formal_parameter
	.ascii	"\230\001"                      # DW_AT_location
	.long	2129                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x160a:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	120                             # DW_AT_call_return_pc
	.byte	36                              # Abbrev [36] 0x1610:0x6 DW_TAG_call_site
	.long	2239                            # DW_AT_call_origin
	.byte	121                             # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x1617:0x2e DW_TAG_subprogram
	.byte	176                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	198                             # DW_AT_type
                                        # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x1620:0x9 DW_TAG_formal_parameter
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.long	5701                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1629:0x9 DW_TAG_formal_parameter
	.byte	177                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1632:0x9 DW_TAG_variable
	.byte	178                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.long	4213                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x163b:0x9 DW_TAG_variable
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	319                             # DW_AT_decl_line
	.long	4213                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1645:0x5 DW_TAG_pointer_type
	.long	5706                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x164a:0x5 DW_TAG_const_type
	.long	410                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x164f:0xce DW_TAG_subprogram
	.byte	122                             # DW_AT_low_pc
	.long	.Lfunc_end26-.Lfunc_begin26     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	201                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1204                            # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	641                             # DW_AT_type
                                        # DW_AT_external
	.byte	28                              # Abbrev [28] 0x165f:0xb DW_TAG_formal_parameter
	.ascii	"\231\001"                      # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1204                            # DW_AT_decl_line
	.long	4703                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x166a:0xb DW_TAG_formal_parameter
	.ascii	"\232\001"                      # DW_AT_location
	.byte	177                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1204                            # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1675:0xb DW_TAG_variable
	.ascii	"\233\001"                      # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1206                            # DW_AT_decl_line
	.long	2865                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1680:0xb DW_TAG_variable
	.ascii	"\237\001"                      # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1213                            # DW_AT_decl_line
	.long	211                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x168b:0xb DW_TAG_variable
	.ascii	"\242\001"                      # DW_AT_location
	.byte	221                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1218                            # DW_AT_decl_line
	.long	653                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1696:0xb DW_TAG_variable
	.ascii	"\243\001"                      # DW_AT_location
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1226                            # DW_AT_decl_line
	.long	199                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x16a1:0xb DW_TAG_variable
	.ascii	"\244\001"                      # DW_AT_location
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1227                            # DW_AT_decl_line
	.long	199                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x16ac:0x2b DW_TAG_inlined_subroutine
	.long	5655                            # DW_AT_abstract_origin
	.byte	123                             # DW_AT_low_pc
	.long	.Ltmp619-.Ltmp611               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1213                            # DW_AT_call_line
	.byte	31                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x16ba:0x7 DW_TAG_formal_parameter
	.ascii	"\234\001"                      # DW_AT_location
	.long	5664                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x16c1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	5673                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x16c8:0x7 DW_TAG_variable
	.ascii	"\235\001"                      # DW_AT_location
	.long	5682                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x16cf:0x7 DW_TAG_variable
	.ascii	"\236\001"                      # DW_AT_location
	.long	5691                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x16d7:0x2d DW_TAG_inlined_subroutine
	.long	5655                            # DW_AT_abstract_origin
	.byte	124                             # DW_AT_low_pc
	.long	.Ltmp626-.Ltmp620               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1218                            # DW_AT_call_line
	.byte	29                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x16e5:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	112
	.byte	56
	.byte	159
	.long	5664                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x16ee:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	5673                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x16f5:0x7 DW_TAG_variable
	.ascii	"\240\001"                      # DW_AT_location
	.long	5682                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x16fc:0x7 DW_TAG_variable
	.ascii	"\241\001"                      # DW_AT_location
	.long	5691                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x1704:0x12 DW_TAG_lexical_block
	.byte	125                             # DW_AT_low_pc
	.long	.Ltmp635-.Ltmp632               # DW_AT_high_pc
	.byte	29                              # Abbrev [29] 0x170a:0xb DW_TAG_variable
	.ascii	"\245\001"                      # DW_AT_location
	.byte	224                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	1230                            # DW_AT_decl_line
	.long	1895                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x1716:0x6 DW_TAG_call_site
	.long	5355                            # DW_AT_call_origin
	.byte	126                             # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x171d:0x5 DW_TAG_const_type
	.long	2810                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1722:0x5 DW_TAG_const_type
	.long	394                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1727:0x5 DW_TAG_const_type
	.long	5932                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x172c:0x9 DW_TAG_typedef
	.long	5941                            # DW_AT_type
	.byte	211                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	738                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x1735:0x38 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.short	720                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x173a:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	722                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x1744:0xa DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	725                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x174e:0xa DW_TAG_member
	.byte	209                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	728                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x1758:0xa DW_TAG_member
	.byte	210                             # DW_AT_name
	.long	394                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	733                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x1762:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	993                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	736                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	66                              # Abbrev [66] 0x176d:0x5 DW_TAG_restrict_type
	.long	805                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1772:0x5 DW_TAG_pointer_type
	.long	5927                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x1777:0x9 DW_TAG_typedef
	.long	177                             # DW_AT_type
	.byte	220                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	18                              # Offset entry count
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
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp158-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp166-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp170-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp207-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp210-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp245-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp250-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp254-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp258-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges6:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp291-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp296-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp298-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp308-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges7:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp313-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp320-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp322-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp327-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges8:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp335-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp338-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp339-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp340-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges9:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp363-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp376-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp377-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges10:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp348-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp363-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp376-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp377-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges11:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp392-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp401-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp419-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp420-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges12:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp399-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp400-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp419-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp420-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges13:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp403-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp411-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp419-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp420-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp461-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges14:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp403-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp405-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp414-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp419-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp420-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp445-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp453-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp461-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges15:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp415-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp419-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp420-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp423-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges16:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp432-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp433-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp436-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp443-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges17:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp519-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp527-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp529-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp537-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	904                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/index.c"        # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=128
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=160
.Linfo_string4:
	.asciz	"LZMA_CHECK_NONE"               # string offset=173
.Linfo_string5:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=189
.Linfo_string6:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=206
.Linfo_string7:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=223
.Linfo_string8:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=241
.Linfo_string9:
	.asciz	"LZMA_OK"                       # string offset=260
.Linfo_string10:
	.asciz	"LZMA_STREAM_END"               # string offset=268
.Linfo_string11:
	.asciz	"LZMA_NO_CHECK"                 # string offset=284
.Linfo_string12:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=298
.Linfo_string13:
	.asciz	"LZMA_GET_CHECK"                # string offset=321
.Linfo_string14:
	.asciz	"LZMA_MEM_ERROR"                # string offset=336
.Linfo_string15:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=351
.Linfo_string16:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=371
.Linfo_string17:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=389
.Linfo_string18:
	.asciz	"LZMA_DATA_ERROR"               # string offset=408
.Linfo_string19:
	.asciz	"LZMA_BUF_ERROR"                # string offset=424
.Linfo_string20:
	.asciz	"LZMA_PROG_ERROR"               # string offset=439
.Linfo_string21:
	.asciz	"ITER_INDEX"                    # string offset=455
.Linfo_string22:
	.asciz	"ITER_STREAM"                   # string offset=466
.Linfo_string23:
	.asciz	"ITER_GROUP"                    # string offset=478
.Linfo_string24:
	.asciz	"ITER_RECORD"                   # string offset=489
.Linfo_string25:
	.asciz	"ITER_METHOD"                   # string offset=501
.Linfo_string26:
	.asciz	"ITER_METHOD_NORMAL"            # string offset=513
.Linfo_string27:
	.asciz	"ITER_METHOD_NEXT"              # string offset=532
.Linfo_string28:
	.asciz	"ITER_METHOD_LEFTMOST"          # string offset=549
.Linfo_string29:
	.asciz	"LZMA_INDEX_ITER_ANY"           # string offset=570
.Linfo_string30:
	.asciz	"LZMA_INDEX_ITER_STREAM"        # string offset=590
.Linfo_string31:
	.asciz	"LZMA_INDEX_ITER_BLOCK"         # string offset=613
.Linfo_string32:
	.asciz	"LZMA_INDEX_ITER_NONEMPTY_BLOCK" # string offset=635
.Linfo_string33:
	.asciz	"unsigned long"                 # string offset=666
.Linfo_string34:
	.asciz	"size_t"                        # string offset=680
.Linfo_string35:
	.asciz	"node"                          # string offset=687
.Linfo_string36:
	.asciz	"uncompressed_base"             # string offset=692
.Linfo_string37:
	.asciz	"__uint64_t"                    # string offset=710
.Linfo_string38:
	.asciz	"uint64_t"                      # string offset=721
.Linfo_string39:
	.asciz	"lzma_vli"                      # string offset=730
.Linfo_string40:
	.asciz	"compressed_base"               # string offset=739
.Linfo_string41:
	.asciz	"parent"                        # string offset=755
.Linfo_string42:
	.asciz	"left"                          # string offset=762
.Linfo_string43:
	.asciz	"right"                         # string offset=767
.Linfo_string44:
	.asciz	"index_tree_node_s"             # string offset=773
.Linfo_string45:
	.asciz	"index_tree_node"               # string offset=791
.Linfo_string46:
	.asciz	"number"                        # string offset=807
.Linfo_string47:
	.asciz	"__uint32_t"                    # string offset=814
.Linfo_string48:
	.asciz	"uint32_t"                      # string offset=825
.Linfo_string49:
	.asciz	"block_number_base"             # string offset=834
.Linfo_string50:
	.asciz	"groups"                        # string offset=852
.Linfo_string51:
	.asciz	"root"                          # string offset=859
.Linfo_string52:
	.asciz	"leftmost"                      # string offset=864
.Linfo_string53:
	.asciz	"rightmost"                     # string offset=873
.Linfo_string54:
	.asciz	"count"                         # string offset=883
.Linfo_string55:
	.asciz	"index_tree"                    # string offset=889
.Linfo_string56:
	.asciz	"record_count"                  # string offset=900
.Linfo_string57:
	.asciz	"index_list_size"               # string offset=913
.Linfo_string58:
	.asciz	"stream_flags"                  # string offset=929
.Linfo_string59:
	.asciz	"version"                       # string offset=942
.Linfo_string60:
	.asciz	"backward_size"                 # string offset=950
.Linfo_string61:
	.asciz	"check"                         # string offset=964
.Linfo_string62:
	.asciz	"lzma_check"                    # string offset=970
.Linfo_string63:
	.asciz	"reserved_enum1"                # string offset=981
.Linfo_string64:
	.asciz	"lzma_reserved_enum"            # string offset=996
.Linfo_string65:
	.asciz	"reserved_enum2"                # string offset=1015
.Linfo_string66:
	.asciz	"reserved_enum3"                # string offset=1030
.Linfo_string67:
	.asciz	"reserved_enum4"                # string offset=1045
.Linfo_string68:
	.asciz	"reserved_bool1"                # string offset=1060
.Linfo_string69:
	.asciz	"unsigned char"                 # string offset=1075
.Linfo_string70:
	.asciz	"lzma_bool"                     # string offset=1089
.Linfo_string71:
	.asciz	"reserved_bool2"                # string offset=1099
.Linfo_string72:
	.asciz	"reserved_bool3"                # string offset=1114
.Linfo_string73:
	.asciz	"reserved_bool4"                # string offset=1129
.Linfo_string74:
	.asciz	"reserved_bool5"                # string offset=1144
.Linfo_string75:
	.asciz	"reserved_bool6"                # string offset=1159
.Linfo_string76:
	.asciz	"reserved_bool7"                # string offset=1174
.Linfo_string77:
	.asciz	"reserved_bool8"                # string offset=1189
.Linfo_string78:
	.asciz	"reserved_int1"                 # string offset=1204
.Linfo_string79:
	.asciz	"reserved_int2"                 # string offset=1218
.Linfo_string80:
	.asciz	"lzma_stream_flags"             # string offset=1232
.Linfo_string81:
	.asciz	"stream_padding"                # string offset=1250
.Linfo_string82:
	.asciz	"index_stream"                  # string offset=1265
.Linfo_string83:
	.asciz	"number_base"                   # string offset=1278
.Linfo_string84:
	.asciz	"allocated"                     # string offset=1290
.Linfo_string85:
	.asciz	"last"                          # string offset=1300
.Linfo_string86:
	.asciz	"records"                       # string offset=1305
.Linfo_string87:
	.asciz	"uncompressed_sum"              # string offset=1313
.Linfo_string88:
	.asciz	"unpadded_sum"                  # string offset=1330
.Linfo_string89:
	.asciz	"index_record"                  # string offset=1343
.Linfo_string90:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1356
.Linfo_string91:
	.asciz	"index_group"                   # string offset=1376
.Linfo_string92:
	.asciz	"index_init_plain"              # string offset=1388
.Linfo_string93:
	.asciz	"streams"                       # string offset=1405
.Linfo_string94:
	.asciz	"uncompressed_size"             # string offset=1413
.Linfo_string95:
	.asciz	"total_size"                    # string offset=1431
.Linfo_string96:
	.asciz	"prealloc"                      # string offset=1442
.Linfo_string97:
	.asciz	"checks"                        # string offset=1451
.Linfo_string98:
	.asciz	"lzma_index_s"                  # string offset=1458
.Linfo_string99:
	.asciz	"lzma_index"                    # string offset=1471
.Linfo_string100:
	.asciz	"allocator"                     # string offset=1482
.Linfo_string101:
	.asciz	"alloc"                         # string offset=1492
.Linfo_string102:
	.asciz	"free"                          # string offset=1498
.Linfo_string103:
	.asciz	"opaque"                        # string offset=1503
.Linfo_string104:
	.asciz	"lzma_allocator"                # string offset=1510
.Linfo_string105:
	.asciz	"i"                             # string offset=1525
.Linfo_string106:
	.asciz	"index_tree_init"               # string offset=1527
.Linfo_string107:
	.asciz	"tree"                          # string offset=1543
.Linfo_string108:
	.asciz	"index_stream_init"             # string offset=1548
.Linfo_string109:
	.asciz	"stream_number"                 # string offset=1566
.Linfo_string110:
	.asciz	"s"                             # string offset=1580
.Linfo_string111:
	.asciz	"lzma_alloc"                    # string offset=1582
.Linfo_string112:
	.asciz	"lzma_free"                     # string offset=1593
.Linfo_string113:
	.asciz	"bsr32"                         # string offset=1603
.Linfo_string114:
	.asciz	"n"                             # string offset=1609
.Linfo_string115:
	.asciz	"ctz32"                         # string offset=1611
.Linfo_string116:
	.asciz	"index_tree_end"                # string offset=1617
.Linfo_string117:
	.asciz	"free_func"                     # string offset=1632
.Linfo_string118:
	.asciz	"lzma_index_memusage"           # string offset=1642
.Linfo_string119:
	.asciz	"blocks"                        # string offset=1662
.Linfo_string120:
	.asciz	"alloc_overhead"                # string offset=1669
.Linfo_string121:
	.asciz	"stream_base"                   # string offset=1684
.Linfo_string122:
	.asciz	"group_base"                    # string offset=1696
.Linfo_string123:
	.asciz	"streams_mem"                   # string offset=1707
.Linfo_string124:
	.asciz	"groups_mem"                    # string offset=1719
.Linfo_string125:
	.asciz	"index_base"                    # string offset=1730
.Linfo_string126:
	.asciz	"limit"                         # string offset=1741
.Linfo_string127:
	.asciz	"index_size_unpadded"           # string offset=1747
.Linfo_string128:
	.asciz	"index_size"                    # string offset=1767
.Linfo_string129:
	.asciz	"vli_ceil4"                     # string offset=1778
.Linfo_string130:
	.asciz	"vli"                           # string offset=1788
.Linfo_string131:
	.asciz	"lzma_vli_size"                 # string offset=1792
.Linfo_string132:
	.asciz	"index_file_size"               # string offset=1806
.Linfo_string133:
	.asciz	"file_size"                     # string offset=1822
.Linfo_string134:
	.asciz	"lzma_stream_flags_compare"     # string offset=1832
.Linfo_string135:
	.asciz	"lzma_ret"                      # string offset=1858
.Linfo_string136:
	.asciz	"lzma_index_file_size"          # string offset=1867
.Linfo_string137:
	.asciz	"g"                             # string offset=1888
.Linfo_string138:
	.asciz	"lzma_index_checks"             # string offset=1890
.Linfo_string139:
	.asciz	"index_dup_stream"              # string offset=1908
.Linfo_string140:
	.asciz	"src"                           # string offset=1925
.Linfo_string141:
	.asciz	"dest"                          # string offset=1929
.Linfo_string142:
	.asciz	"destg"                         # string offset=1934
.Linfo_string143:
	.asciz	"srcg"                          # string offset=1940
.Linfo_string144:
	.asciz	"lzma_index_end"                # string offset=1945
.Linfo_string145:
	.asciz	"index_tree_next"               # string offset=1960
.Linfo_string146:
	.asciz	"index_stream_end"              # string offset=1976
.Linfo_string147:
	.asciz	"lzma_index_iter_rewind"        # string offset=1993
.Linfo_string148:
	.asciz	"iter"                          # string offset=2016
.Linfo_string149:
	.asciz	"stream"                        # string offset=2021
.Linfo_string150:
	.asciz	"flags"                         # string offset=2028
.Linfo_string151:
	.asciz	"reserved_ptr1"                 # string offset=2034
.Linfo_string152:
	.asciz	"reserved_ptr2"                 # string offset=2048
.Linfo_string153:
	.asciz	"reserved_ptr3"                 # string offset=2062
.Linfo_string154:
	.asciz	"block_count"                   # string offset=2076
.Linfo_string155:
	.asciz	"compressed_offset"             # string offset=2088
.Linfo_string156:
	.asciz	"uncompressed_offset"           # string offset=2106
.Linfo_string157:
	.asciz	"compressed_size"               # string offset=2126
.Linfo_string158:
	.asciz	"padding"                       # string offset=2142
.Linfo_string159:
	.asciz	"reserved_vli1"                 # string offset=2150
.Linfo_string160:
	.asciz	"reserved_vli2"                 # string offset=2164
.Linfo_string161:
	.asciz	"reserved_vli3"                 # string offset=2178
.Linfo_string162:
	.asciz	"reserved_vli4"                 # string offset=2192
.Linfo_string163:
	.asciz	"block"                         # string offset=2206
.Linfo_string164:
	.asciz	"number_in_file"                # string offset=2212
.Linfo_string165:
	.asciz	"compressed_file_offset"        # string offset=2227
.Linfo_string166:
	.asciz	"uncompressed_file_offset"      # string offset=2250
.Linfo_string167:
	.asciz	"number_in_stream"              # string offset=2275
.Linfo_string168:
	.asciz	"compressed_stream_offset"      # string offset=2292
.Linfo_string169:
	.asciz	"uncompressed_stream_offset"    # string offset=2317
.Linfo_string170:
	.asciz	"unpadded_size"                 # string offset=2344
.Linfo_string171:
	.asciz	"reserved_ptr4"                 # string offset=2358
.Linfo_string172:
	.asciz	"internal"                      # string offset=2372
.Linfo_string173:
	.asciz	"p"                             # string offset=2381
.Linfo_string174:
	.asciz	"v"                             # string offset=2383
.Linfo_string175:
	.asciz	"lzma_index_iter"               # string offset=2385
.Linfo_string176:
	.asciz	"index_tree_locate"             # string offset=2401
.Linfo_string177:
	.asciz	"target"                        # string offset=2419
.Linfo_string178:
	.asciz	"result"                        # string offset=2426
.Linfo_string179:
	.asciz	"DW_ATE_unsigned_64"            # string offset=2433
.Linfo_string180:
	.asciz	"DW_ATE_unsigned_32"            # string offset=2452
.Linfo_string181:
	.asciz	"lzma_index_init"               # string offset=2471
.Linfo_string182:
	.asciz	"index_tree_append"             # string offset=2487
.Linfo_string183:
	.asciz	"lzma_index_prealloc"           # string offset=2505
.Linfo_string184:
	.asciz	"lzma_index_memused"            # string offset=2525
.Linfo_string185:
	.asciz	"lzma_index_block_count"        # string offset=2544
.Linfo_string186:
	.asciz	"lzma_index_stream_count"       # string offset=2567
.Linfo_string187:
	.asciz	"lzma_index_size"               # string offset=2591
.Linfo_string188:
	.asciz	"lzma_index_total_size"         # string offset=2607
.Linfo_string189:
	.asciz	"lzma_index_stream_size"        # string offset=2629
.Linfo_string190:
	.asciz	"lzma_index_uncompressed_size"  # string offset=2652
.Linfo_string191:
	.asciz	"lzma_index_padding_size"       # string offset=2681
.Linfo_string192:
	.asciz	"lzma_index_stream_flags"       # string offset=2705
.Linfo_string193:
	.asciz	"lzma_index_stream_padding"     # string offset=2729
.Linfo_string194:
	.asciz	"lzma_index_append"             # string offset=2755
.Linfo_string195:
	.asciz	"lzma_index_cat"                # string offset=2773
.Linfo_string196:
	.asciz	"index_cat_helper"              # string offset=2788
.Linfo_string197:
	.asciz	"lzma_index_dup"                # string offset=2805
.Linfo_string198:
	.asciz	"lzma_index_iter_init"          # string offset=2820
.Linfo_string199:
	.asciz	"lzma_index_iter_next"          # string offset=2841
.Linfo_string200:
	.asciz	"iter_set_info"                 # string offset=2862
.Linfo_string201:
	.asciz	"lzma_index_iter_locate"        # string offset=2876
.Linfo_string202:
	.asciz	"index_tree_node_end"           # string offset=2899
.Linfo_string203:
	.asciz	"up"                            # string offset=2919
.Linfo_string204:
	.asciz	"pivot"                         # string offset=2922
.Linfo_string205:
	.asciz	"ret_"                          # string offset=2928
.Linfo_string206:
	.asciz	"old_stream_padding"            # string offset=2933
.Linfo_string207:
	.asciz	"index_list_size_add"           # string offset=2952
.Linfo_string208:
	.asciz	"info"                          # string offset=2972
.Linfo_string209:
	.asciz	"block_number_add"              # string offset=2977
.Linfo_string210:
	.asciz	"stream_number_add"             # string offset=2994
.Linfo_string211:
	.asciz	"index_cat_info"                # string offset=3012
.Linfo_string212:
	.asciz	"dest_file_size"                # string offset=3027
.Linfo_string213:
	.asciz	"newg"                          # string offset=3042
.Linfo_string214:
	.asciz	"dest_size"                     # string offset=3047
.Linfo_string215:
	.asciz	"src_size"                      # string offset=3057
.Linfo_string216:
	.asciz	"this"                          # string offset=3066
.Linfo_string217:
	.asciz	"srcstream"                     # string offset=3071
.Linfo_string218:
	.asciz	"deststream"                    # string offset=3081
.Linfo_string219:
	.asciz	"mode"                          # string offset=3092
.Linfo_string220:
	.asciz	"lzma_index_iter_mode"          # string offset=3097
.Linfo_string221:
	.asciz	"group"                         # string offset=3118
.Linfo_string222:
	.asciz	"record"                        # string offset=3124
.Linfo_string223:
	.asciz	"again"                         # string offset=3131
.Linfo_string224:
	.asciz	"pos"                           # string offset=3137
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp13
	.quad	.Ltmp2
	.quad	.Ltmp8
	.quad	.Ltmp16
	.quad	.Ltmp18
	.quad	.Lfunc_begin1
	.quad	.Ltmp26
	.quad	.Ltmp44
	.quad	.Lfunc_begin2
	.quad	.Ltmp93
	.quad	.Ltmp94
	.quad	.Ltmp96
	.quad	.Ltmp97
	.quad	.Lfunc_begin3
	.quad	.Ltmp100
	.quad	.Ltmp103
	.quad	.Lfunc_begin4
	.quad	.Lfunc_begin5
	.quad	.Lfunc_begin6
	.quad	.Ltmp119
	.quad	.Lfunc_begin7
	.quad	.Lfunc_begin8
	.quad	.Lfunc_begin9
	.quad	.Ltmp133
	.quad	.Ltmp136
	.quad	.Ltmp135
	.quad	.Lfunc_begin10
	.quad	.Lfunc_begin11
	.quad	.Ltmp141
	.quad	.Ltmp144
	.quad	.Ltmp143
	.quad	.Lfunc_begin12
	.quad	.Ltmp151
	.quad	.Ltmp158
	.quad	.Ltmp160
	.quad	.Ltmp159
	.quad	.Lfunc_begin13
	.quad	.Lfunc_begin14
	.quad	.Lfunc_begin15
	.quad	.Ltmp181
	.quad	.Ltmp183
	.quad	.Lfunc_begin16
	.quad	.Ltmp186
	.quad	.Ltmp188
	.quad	.Lfunc_begin17
	.quad	.Ltmp198
	.quad	.Ltmp202
	.quad	.Ltmp210
	.quad	.Ltmp212
	.quad	.Ltmp211
	.quad	.Lfunc_begin18
	.quad	.Ltmp237
	.quad	.Ltmp245
	.quad	.Ltmp254
	.quad	.Ltmp257
	.quad	.Ltmp262
	.quad	.Ltmp265
	.quad	.Ltmp282
	.quad	.Ltmp242
	.quad	.Ltmp243
	.quad	.Ltmp256
	.quad	.Ltmp264
	.quad	.Ltmp275
	.quad	.Ltmp280
	.quad	.Lfunc_begin19
	.quad	.Ltmp287
	.quad	.Ltmp291
	.quad	.Ltmp298
	.quad	.Ltmp300
	.quad	.Ltmp309
	.quad	.Ltmp313
	.quad	.Ltmp322
	.quad	.Ltmp324
	.quad	.Ltmp333
	.quad	.Ltmp340
	.quad	.Ltmp342
	.quad	.Ltmp365
	.quad	.Ltmp299
	.quad	.Ltmp323
	.quad	.Ltmp336
	.quad	.Ltmp341
	.quad	.Ltmp349
	.quad	.Ltmp363
	.quad	.Ltmp364
	.quad	.Ltmp372
	.quad	.Lfunc_begin20
	.quad	.Ltmp379
	.quad	.Ltmp387
	.quad	.Lfunc_begin21
	.quad	.Ltmp421
	.quad	.Ltmp455
	.quad	.Ltmp456
	.quad	.Ltmp405
	.quad	.Ltmp406
	.quad	.Ltmp446
	.quad	.Ltmp394
	.quad	.Ltmp410
	.quad	.Ltmp411
	.quad	.Ltmp416
	.quad	.Ltmp426
	.quad	.Ltmp444
	.quad	.Ltmp460
	.quad	.Lfunc_begin22
	.quad	.Ltmp462
	.quad	.Lfunc_begin23
	.quad	.Lfunc_begin24
	.quad	.Ltmp478
	.quad	.Ltmp509
	.quad	.Ltmp501
	.quad	.Ltmp550
	.quad	.Lfunc_begin25
	.quad	.Ltmp568
	.quad	.Ltmp569
	.quad	.Ltmp571
	.quad	.Ltmp573
	.quad	.Ltmp580
	.quad	.Ltmp582
	.quad	.Ltmp590
	.quad	.Ltmp595
	.quad	.Ltmp570
	.quad	.Ltmp581
	.quad	.Lfunc_begin26
	.quad	.Ltmp611
	.quad	.Ltmp620
	.quad	.Ltmp632
	.quad	.Ltmp639
	.quad	.Lfunc_begin27
	.quad	.Ltmp646
	.quad	.Ltmp649
	.quad	.Ltmp652
	.quad	.Ltmp655
	.quad	.Ltmp489
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
