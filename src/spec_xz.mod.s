	.text
	.file	"spec_xz.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "spec_xz.c" md5 0xf22eda92b420f180986f2d97b8a85126
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.file	3 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	4 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.globl	init_encoder                    # -- Begin function init_encoder
	.p2align	4, 0x90
	.type	init_encoder,@function
init_encoder:                           # @init_encoder
.Lfunc_begin0:
	.loc	0 68 0                          # spec_xz.c:68:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: init_encoder:strm <- $rdi
	#DEBUG_VALUE: init_encoder:options <- $rsi
	#DEBUG_VALUE: init_encoder:preset <- $edx
	#DEBUG_VALUE: init_encoder:check <- $ecx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$200, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rdi, %r14
.Ltmp0:
	.loc	0 72 17 prologue_end            # spec_xz.c:72:17
	testq	%rsi, %rsi
	leaq	88(%rsp), %r15
.Ltmp1:
	.loc	0 72 9 is_stmt 0                # spec_xz.c:72:9
	cmovneq	%rsi, %r15
.Ltmp2:
	#DEBUG_VALUE: init_encoder:options <- $r15
	.loc	0 75 29 is_stmt 1               # spec_xz.c:75:29
	cmpl	$16, %ecx
	movl	$4, %ebp
.Ltmp3:
	.loc	0 75 9 is_stmt 0                # spec_xz.c:75:9
	cmovbl	%ecx, %ebp
.Ltmp4:
	#DEBUG_VALUE: init_encoder:check <- $ebp
	.loc	0 78 5 is_stmt 1                # spec_xz.c:78:5
	movq	%r15, %rdi
.Ltmp5:
	#DEBUG_VALUE: init_encoder:strm <- $r14
	movl	%edx, %esi
	callq	lzma_lzma_preset@PLT
.Ltmp6:
	#DEBUG_VALUE: init_encoder:preset <- $ebx
	.loc	0 79 19                         # spec_xz.c:79:19
	movq	$33, (%rsp)
	.loc	0 80 24                         # spec_xz.c:80:24
	movq	%r15, 8(%rsp)
	.loc	0 81 19                         # spec_xz.c:81:19
	movq	$-1, 16(%rsp)
	movq	%rsp, %rsi
	.loc	0 83 19                         # spec_xz.c:83:19
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	lzma_stream_encoder@PLT
.Ltmp7:
	#DEBUG_VALUE: init_encoder:rc <- $eax
	.loc	0 85 5                          # spec_xz.c:85:5
	cmpl	$8, %eax
	ja	.LBB0_5
.Ltmp8:
# %bb.1:                                # %entry
	#DEBUG_VALUE: init_encoder:strm <- $r14
	#DEBUG_VALUE: init_encoder:options <- $r15
	#DEBUG_VALUE: init_encoder:preset <- $ebx
	#DEBUG_VALUE: init_encoder:check <- $ebp
	#DEBUG_VALUE: init_encoder:rc <- $eax
	.loc	0 0 5 is_stmt 0                 # spec_xz.c:0:5
	movl	$.L.str.5, %ecx
	.loc	0 85 5                          # spec_xz.c:85:5
	movl	%eax, %edx
	jmpq	*.LJTI0_0(,%rdx,8)
.Ltmp9:
.LBB0_2:
	#DEBUG_VALUE: init_encoder:strm <- $r14
	#DEBUG_VALUE: init_encoder:options <- $r15
	#DEBUG_VALUE: init_encoder:preset <- $ebx
	#DEBUG_VALUE: init_encoder:check <- $ebp
	#DEBUG_VALUE: init_encoder:rc <- $edx
	.loc	0 0 5                           # spec_xz.c:0:5
	movb	$1, %r14b
.Ltmp10:
	#DEBUG_VALUE: init_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 85 5                          # spec_xz.c:85:5
	jmp	.LBB0_7
.Ltmp11:
.LBB0_3:                                # %sw.bb9
	#DEBUG_VALUE: init_encoder:strm <- $r14
	#DEBUG_VALUE: init_encoder:options <- $r15
	#DEBUG_VALUE: init_encoder:preset <- $ebx
	#DEBUG_VALUE: init_encoder:check <- $ebp
	#DEBUG_VALUE: init_encoder:rc <- $edx
	.loc	0 89 20 is_stmt 1               # spec_xz.c:89:20
	movq	%r14, %rdi
	movl	%eax, %r14d
.Ltmp12:
	#DEBUG_VALUE: init_encoder:strm <- $rdi
	callq	lzma_get_check@PLT
.Ltmp13:
	#DEBUG_VALUE: init_encoder:rc <- $r14d
	#DEBUG_VALUE: init_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 20 is_stmt 0                # spec_xz.c:0:20
	movl	$.L.str.5, %ecx
	movl	%r14d, %eax
.Ltmp14:
	#DEBUG_VALUE: init_encoder:msg <- undef
	jmp	.LBB0_6
.Ltmp15:
.LBB0_4:                                # %sw.bb16
	#DEBUG_VALUE: init_encoder:strm <- $r14
	#DEBUG_VALUE: init_encoder:options <- $r15
	#DEBUG_VALUE: init_encoder:preset <- $ebx
	#DEBUG_VALUE: init_encoder:check <- $ebp
	#DEBUG_VALUE: init_encoder:rc <- $edx
	movl	$.L.str.6, %ecx
.Ltmp16:
	#DEBUG_VALUE: init_encoder:msg <- $ecx
	jmp	.LBB0_6
.Ltmp17:
.LBB0_5:                                # %sw.default17
	#DEBUG_VALUE: init_encoder:strm <- $r14
	#DEBUG_VALUE: init_encoder:options <- $r15
	#DEBUG_VALUE: init_encoder:preset <- $ebx
	#DEBUG_VALUE: init_encoder:check <- $ebp
	#DEBUG_VALUE: init_encoder:rc <- $eax
	movl	$.L.str.7, %ecx
.Ltmp18:
	#DEBUG_VALUE: init_encoder:msg <- $ecx
.LBB0_6:                                # %sw.epilog18
	#DEBUG_VALUE: init_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: init_encoder:options <- $r15
	#DEBUG_VALUE: init_encoder:preset <- $ebx
	#DEBUG_VALUE: init_encoder:check <- $ebp
	#DEBUG_VALUE: init_encoder:msg <- $rcx
	xorl	%r14d, %r14d
	.loc	0 118 5 is_stmt 1               # spec_xz.c:118:5
	movl	$.L.str.8, %edi
	movl	%ebx, %esi
	movl	%ebp, %edx
	movl	%eax, %r8d
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp19:
.LBB0_7:                                # %cleanup
	#DEBUG_VALUE: init_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: init_encoder:options <- $r15
	#DEBUG_VALUE: init_encoder:preset <- $ebx
	#DEBUG_VALUE: init_encoder:check <- $ebp
	.loc	0 120 1                         # spec_xz.c:120:1
	movl	%r14d, %eax
	.loc	0 120 1 epilogue_begin is_stmt 0 # spec_xz.c:120:1
	addq	$200, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp20:
	#DEBUG_VALUE: init_encoder:preset <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 8
	retq
.Ltmp23:
.Lfunc_end0:
	.size	init_encoder, .Lfunc_end0-init_encoder
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_5
	.quad	.LBB0_5
	.quad	.LBB0_3
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_5
	.quad	.LBB0_5
	.quad	.LBB0_4
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	7 "liblzma/api/lzma" "container.h" md5 0x7f878de3abe07c50108c7f7da139bedb
	.file	8 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "/usr/include" "stdio.h" md5 0xf31eefcc3f15835fc5a4023a625cf609
                                        # -- End function
	.text
	.globl	uncompressStream                # -- Begin function uncompressStream
	.p2align	4, 0x90
	.type	uncompressStream,@function
uncompressStream:                       # @uncompressStream
.Lfunc_begin1:
	.loc	0 122 0 is_stmt 1               # spec_xz.c:122:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: uncompressStream:zStream <- $edi
	#DEBUG_VALUE: uncompressStream:stream <- $esi
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
	subq	$16552, %rsp                    # imm = 0x40A8
	.cfi_def_cfa_offset 16608
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, 12(%rsp)                  # 4-byte Spill
.Ltmp24:
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	movl	%edi, %ebp
.Ltmp25:
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 123 17 prologue_end           # spec_xz.c:123:17
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 144(%rsp)
.Ltmp26:
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	.loc	0 0 17 is_stmt 0                # spec_xz.c:0:17
	leaq	16(%rsp), %rdi
.Ltmp27:
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	.loc	0 29 19 is_stmt 1               # spec_xz.c:29:19
	movq	$-1, %rsi
	movl	$10, %edx
	callq	lzma_stream_decoder@PLT
.Ltmp28:
	#DEBUG_VALUE: init_decoder:rc <- $eax
	.loc	0 30 5                          # spec_xz.c:30:5
	cmpl	$8, %eax
	ja	.LBB1_10
.Ltmp29:
# %bb.1:                                # %entry
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_decoder:rc <- $eax
	movl	%eax, %ecx
	jmpq	*.LJTI1_0(,%rcx,8)
.Ltmp30:
.LBB1_3:                                # %sw.bb1.i
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_decoder:rc <- $eax
	.loc	0 34 13                         # spec_xz.c:34:13
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
.Ltmp31:
	#DEBUG_VALUE: init_decoder:rc <- $ecx
	callq	printf@PLT
.Ltmp32:
	.loc	0 0 13 is_stmt 0                # spec_xz.c:0:13
	leaq	16(%rsp), %rdi
	.loc	0 35 20 is_stmt 1               # spec_xz.c:35:20
	callq	lzma_get_check@PLT
.Ltmp33:
	.loc	0 35 13 is_stmt 0               # spec_xz.c:35:13
	cmpl	$10, %eax
	ja	.LBB1_8
.Ltmp34:
# %bb.4:                                # %sw.bb1.i
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	movl	%eax, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.Ltmp35:
.LBB1_12:
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	.loc	0 0 13                          # spec_xz.c:0:13
	movl	$.Lstr.29, %edi
	jmp	.LBB1_13
.Ltmp36:
.LBB1_2:
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_decoder:rc <- $eax
	movl	$.L.str.5, %esi
	jmp	.LBB1_11
.Ltmp37:
.LBB1_9:                                # %sw.bb14.i
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_decoder:rc <- $eax
	movl	$.L.str.25, %esi
.Ltmp38:
	#DEBUG_VALUE: init_decoder:msg <- $esi
	jmp	.LBB1_11
.Ltmp39:
.LBB1_10:                               # %sw.default15.i
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_decoder:rc <- $eax
	movl	$.L.str.14, %esi
.Ltmp40:
	#DEBUG_VALUE: init_decoder:msg <- $esi
.LBB1_11:                               # %init_decoder.exit
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_decoder:rc <- $eax
	#DEBUG_VALUE: init_decoder:msg <- $rsi
	.loc	0 64 5 is_stmt 1                # spec_xz.c:64:5
	movl	$.L.str.26, %edi
	movl	%eax, %edx
	jmp	.LBB1_35
.Ltmp41:
.LBB1_6:                                # %sw.bb8.i
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	.loc	0 0 5 is_stmt 0                 # spec_xz.c:0:5
	movl	$.Lstr.27, %edi
	jmp	.LBB1_13
.Ltmp42:
.LBB1_5:                                # %sw.bb6.i
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	movl	$.Lstr.28, %edi
	jmp	.LBB1_13
.Ltmp43:
.LBB1_7:                                # %sw.bb10.i
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	movl	$.Lstr, %edi
	jmp	.LBB1_13
.Ltmp44:
.LBB1_8:                                # %sw.default.i
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	movl	$.Lstr.30, %edi
.Ltmp45:
.LBB1_13:                               # %if.end.sink.split
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	callq	puts@PLT
.Ltmp46:
.LBB1_14:                               # %if.end
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- 0
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_LLVM_fragment 0 64] 0
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_LLVM_fragment 64 64] 0
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 128 960] $rsp
	.loc	0 138 19 is_stmt 1              # spec_xz.c:138:19
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	leaq	160(%rsp), %r12
.Ltmp47:
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 139 19                        # spec_xz.c:139:19
	movq	%r12, 40(%rsp)
	.loc	0 140 20                        # spec_xz.c:140:20
	movq	$8192, 48(%rsp)                 # imm = 0x2000
	xorl	%eax, %eax
	leaq	16(%rsp), %rbx
	xorl	%r13d, %r13d
.Ltmp48:
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	.loc	0 142 27                        # spec_xz.c:142:27
	testq	%rax, %rax
	.loc	0 142 32 is_stmt 0              # spec_xz.c:142:32
	jne	.LBB1_20
.Ltmp49:
	.p2align	4, 0x90
.LBB1_17:                               # %land.lhs.true
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	.loc	0 0 32                          # spec_xz.c:0:32
	movq	spec_fd@GOTPCREL(%rip), %r15
	.loc	0 142 36                        # spec_xz.c:142:36
	movq	(%r15), %rdi
	movl	$3, %esi
	movl	%ebp, %edx
	callq	spec_mem_feof@PLT
.Ltmp50:
	testl	%eax, %eax
.Ltmp51:
	.loc	0 142 13                        # spec_xz.c:142:13
	jne	.LBB1_20
.Ltmp52:
# %bb.18:                               # %if.then3
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	.loc	0 0 13                          # spec_xz.c:0:13
	leaq	8352(%rsp), %rdx
.Ltmp53:
	.loc	0 143 26 is_stmt 1              # spec_xz.c:143:26
	movq	%rdx, 16(%rsp)
.Ltmp54:
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 144 29                        # spec_xz.c:144:29
	movq	(%r15), %rdi
	movl	$1, %ecx
	movl	$3, %esi
	movl	$8192, %r8d                     # imm = 0x2000
	movl	%ebp, %r9d
	callq	spec_mem_fread@PLT
.Ltmp55:
	.loc	0 144 27 is_stmt 0              # spec_xz.c:144:27
	movq	%rax, 24(%rsp)
.Ltmp56:
	.loc	0 146 17 is_stmt 1              # spec_xz.c:146:17
	movq	(%r15), %rdi
	movl	$3, %esi
	movl	%ebp, %edx
	callq	spec_mem_feof@PLT
.Ltmp57:
	testl	%eax, %eax
.Ltmp58:
	.loc	0 146 17 is_stmt 0              # spec_xz.c:146:17
	je	.LBB1_20
.Ltmp59:
# %bb.19:                               # %if.then3
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	.loc	0 0 17                          # spec_xz.c:0:17
	movl	$3, %r13d
.Ltmp60:
	.p2align	4, 0x90
.LBB1_20:                               # %if.end13
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	.loc	0 152 23 is_stmt 1              # spec_xz.c:152:23
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	lzma_code@PLT
.Ltmp61:
	movl	%eax, %r15d
.Ltmp62:
	#DEBUG_VALUE: rc <- $r15d
	.loc	0 154 18                        # spec_xz.c:154:18
	movq	48(%rsp), %rax
	.loc	0 154 28 is_stmt 0              # spec_xz.c:154:28
	testq	%rax, %rax
	.loc	0 154 33                        # spec_xz.c:154:33
	je	.LBB1_22
.Ltmp63:
# %bb.21:                               # %if.end13
                                        #   in Loop: Header=BB1_20 Depth=1
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	cmpl	$1, %r15d
	jne	.LBB1_24
.Ltmp64:
.LBB1_22:                               # %if.then18
                                        #   in Loop: Header=BB1_20 Depth=1
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	.loc	0 0 33                          # spec_xz.c:0:33
	movq	%rbx, %r14
.Ltmp65:
	.loc	0 155 45 is_stmt 1              # spec_xz.c:155:45
	movl	$8192, %ebx                     # imm = 0x2000
	subq	%rax, %rbx
.Ltmp66:
	#DEBUG_VALUE: write_size <- $rbx
	.loc	0 156 25                        # spec_xz.c:156:25
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$1, %ecx
	movl	$3, %esi
	movq	%r12, %rdx
	movl	%ebx, %r8d
	movl	12(%rsp), %r9d                  # 4-byte Reload
	callq	spec_mem_fwrite@PLT
.Ltmp67:
	.loc	0 156 60 is_stmt 0              # spec_xz.c:156:60
	cmpq	%rbx, %rax
.Ltmp68:
	.loc	0 156 17                        # spec_xz.c:156:17
	jne	.LBB1_37
.Ltmp69:
# %bb.23:                               # %cleanup.thread
                                        #   in Loop: Header=BB1_20 Depth=1
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	#DEBUG_VALUE: write_size <- $rbx
	.loc	0 161 27 is_stmt 1              # spec_xz.c:161:27
	movq	%r12, 40(%rsp)
.Ltmp70:
	#DEBUG_VALUE: uncompressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 162 28                        # spec_xz.c:162:28
	movq	$8192, 48(%rsp)                 # imm = 0x2000
	movq	%r14, %rbx
.Ltmp71:
.LBB1_24:                               # %if.end32
                                        #   in Loop: Header=BB1_20 Depth=1
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	.loc	0 165 13                        # spec_xz.c:165:13
	testl	%r15d, %r15d
	jne	.LBB1_25
.Ltmp72:
# %bb.15:                               # %while.condthread-pre-split
                                        #   in Loop: Header=BB1_20 Depth=1
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	.loc	0 142 18                        # spec_xz.c:142:18
	movq	24(%rsp), %rax
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	.loc	0 142 27 is_stmt 0              # spec_xz.c:142:27
	testq	%rax, %rax
	jne	.LBB1_20
	jmp	.LBB1_17
.Ltmp73:
.LBB1_25:                               # %if.end32
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	.loc	0 165 13 is_stmt 1              # spec_xz.c:165:13
	leal	-1(%r15), %eax
	cmpl	$9, %eax
	ja	.LBB1_33
.Ltmp74:
# %bb.26:                               # %if.end32
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	jmpq	*.LJTI1_2(,%rax,8)
.Ltmp75:
.LBB1_27:                               # %sw.bb
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	.loc	0 0 13 is_stmt 0                # spec_xz.c:0:13
	leaq	16(%rsp), %rdi
.Ltmp76:
	.loc	0 170 21 is_stmt 1              # spec_xz.c:170:21
	callq	lzma_end@PLT
.Ltmp77:
	.loc	0 171 21                        # spec_xz.c:171:21
	jmp	.LBB1_36
.Ltmp78:
.LBB1_28:                               # %sw.epilog.loopexit
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	.loc	0 0 21 is_stmt 0                # spec_xz.c:0:21
	movl	$.L.str.5, %esi
	jmp	.LBB1_34
.Ltmp79:
.LBB1_30:                               # %sw.epilog.loopexit78
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	movl	$.L.str.11, %esi
	jmp	.LBB1_34
.Ltmp80:
.LBB1_29:                               # %sw.epilog.loopexit69
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	movl	$.L.str.10, %esi
	jmp	.LBB1_34
.Ltmp81:
.LBB1_32:                               # %sw.epilog.loopexit96
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	movl	$.L.str.13, %esi
	jmp	.LBB1_34
.Ltmp82:
.LBB1_31:                               # %sw.epilog.loopexit87
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	movl	$.L.str.12, %esi
	jmp	.LBB1_34
.Ltmp83:
.LBB1_33:                               # %sw.epilog.loopexit1
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	movl	$.L.str.14, %esi
.Ltmp84:
.LBB1_34:                               # %sw.epilog
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	#DEBUG_VALUE: msg <- $rsi
	.loc	0 192 13 is_stmt 1              # spec_xz.c:192:13
	movl	$.L.str.15, %edi
	movl	%r15d, %edx
.Ltmp85:
.LBB1_35:                               # %cleanup47
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: init_decoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	.loc	0 0 0 is_stmt 0                 # spec_xz.c:0:0
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp86:
.LBB1_36:                               # %cleanup47
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	.loc	0 202 1 epilogue_begin is_stmt 1 # spec_xz.c:202:1
	addq	$16552, %rsp                    # imm = 0x40A8
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
.Ltmp87:
	#DEBUG_VALUE: uncompressStream:zStream <- [DW_OP_LLVM_entry_value 1] $edi
	.cfi_def_cfa_offset 8
	retq
.Ltmp88:
.LBB1_37:                               # %cleanup
	.cfi_def_cfa_offset 16608
	#DEBUG_VALUE: uncompressStream:zStream <- $ebp
	#DEBUG_VALUE: uncompressStream:stream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: uncompressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r15d
	#DEBUG_VALUE: write_size <- $rbx
	.loc	0 157 79                        # spec_xz.c:157:79
	callq	__errno_location@PLT
.Ltmp89:
	movl	(%rax), %edi
	.loc	0 157 70 is_stmt 0              # spec_xz.c:157:70
	callq	strerror@PLT
.Ltmp90:
	.loc	0 157 17                        # spec_xz.c:157:17
	movl	$.L.str.9, %edi
	movl	12(%rsp), %esi                  # 4-byte Reload
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp91:
	.loc	0 0 17                          # spec_xz.c:0:17
	jmp	.LBB1_36
.Ltmp92:
.Lfunc_end1:
	.size	uncompressStream, .Lfunc_end1-uncompressStream
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_14
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_3
	.quad	.LBB1_10
	.quad	.LBB1_2
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_9
.LJTI1_1:
	.quad	.LBB1_12
	.quad	.LBB1_5
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_6
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_7
.LJTI1_2:
	.quad	.LBB1_27
	.quad	.LBB1_33
	.quad	.LBB1_33
	.quad	.LBB1_33
	.quad	.LBB1_28
	.quad	.LBB1_33
	.quad	.LBB1_29
	.quad	.LBB1_30
	.quad	.LBB1_31
	.quad	.LBB1_32
	.file	11 "spec_mem_io" "spec_mem_io.h" md5 0x20f82235716911ab040d2b344ceb3e0d
	.file	12 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.file	13 "/usr/include" "errno.h" md5 0x01c14bf4ab600a3884f5da68eb763170
	.file	14 "/usr/include" "string.h" md5 0xf443da8025a0b7c1498fb6c554ec788d
                                        # -- End function
	.text
	.globl	compressStream                  # -- Begin function compressStream
	.p2align	4, 0x90
	.type	compressStream,@function
compressStream:                         # @compressStream
.Lfunc_begin2:
	.loc	0 205 0 is_stmt 1               # spec_xz.c:205:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: compressStream:stream <- $edi
	#DEBUG_VALUE: compressStream:zStream <- $esi
	#DEBUG_VALUE: compressStream:preset <- $edx
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
	subq	$16552, %rsp                    # imm = 0x40A8
	.cfi_def_cfa_offset 16608
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movl	%esi, 12(%rsp)                  # 4-byte Spill
.Ltmp93:
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	movl	%edi, %ebp
.Ltmp94:
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 206 17 prologue_end           # spec_xz.c:206:17
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 144(%rsp)
.Ltmp95:
	#DEBUG_VALUE: compressStream:action <- 0
	.loc	0 215 24                        # spec_xz.c:215:24
	testl	%edx, %edx
	movl	$4, %eax
	movl	$10, %r13d
	cmovnsl	%eax, %r13d
.Ltmp96:
	#DEBUG_VALUE: compressStream:check <- $r13d
	#DEBUG_VALUE: init_encoder:check <- $r13d
	#DEBUG_VALUE: init_encoder:lzma_local_options <- [DW_OP_plus_uconst 8352, DW_OP_deref] $rsp
	#DEBUG_VALUE: init_encoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_encoder:options <- 0
	#DEBUG_VALUE: init_encoder:preset <- $r12d
	#DEBUG_VALUE: init_encoder:options <- [DW_OP_plus_uconst 8352, DW_OP_stack_value] $rsp
	.loc	0 0 24 is_stmt 0                # spec_xz.c:0:24
	leaq	8352(%rsp), %rbx
.Ltmp97:
	.loc	0 78 5 is_stmt 1                # spec_xz.c:78:5
	movq	%rbx, %rdi
.Ltmp98:
	#DEBUG_VALUE: compressStream:stream <- $ebp
	movl	%edx, %esi
	callq	lzma_lzma_preset@PLT
.Ltmp99:
	#DEBUG_VALUE: compressStream:preset <- $r12d
	.loc	0 79 19                         # spec_xz.c:79:19
	movq	$33, 160(%rsp)
	.loc	0 80 24                         # spec_xz.c:80:24
	movq	%rbx, 168(%rsp)
	.loc	0 81 19                         # spec_xz.c:81:19
	movq	$-1, 176(%rsp)
	leaq	16(%rsp), %rdi
	leaq	160(%rsp), %r15
	.loc	0 83 19                         # spec_xz.c:83:19
	movq	%r15, %rsi
	movl	%r13d, %edx
	callq	lzma_stream_encoder@PLT
.Ltmp100:
	movl	%eax, %ebx
.Ltmp101:
	#DEBUG_VALUE: init_encoder:rc <- $ebx
	.loc	0 85 5                          # spec_xz.c:85:5
	cmpl	$8, %eax
	ja	.LBB2_4
.Ltmp102:
# %bb.1:                                # %entry
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- $r12d
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: compressStream:action <- 0
	#DEBUG_VALUE: compressStream:check <- $r13d
	#DEBUG_VALUE: init_encoder:check <- $r13d
	#DEBUG_VALUE: init_encoder:lzma_local_options <- [DW_OP_plus_uconst 8352, DW_OP_deref] $rsp
	#DEBUG_VALUE: init_encoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_encoder:options <- [DW_OP_plus_uconst 8352, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_encoder:preset <- $r12d
	#DEBUG_VALUE: init_encoder:rc <- $ebx
	.loc	0 0 5 is_stmt 0                 # spec_xz.c:0:5
	movl	$.L.str.5, %r14d
	.loc	0 85 5                          # spec_xz.c:85:5
	movl	%ebx, %eax
	jmpq	*.LJTI2_0(,%rax,8)
.Ltmp103:
.LBB2_6:                                # %if.end
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- $r12d
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: compressStream:action <- 0
	#DEBUG_VALUE: compressStream:check <- $r13d
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_LLVM_fragment 0 64] 0
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_LLVM_fragment 64 64] 0
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_plus_uconst 16, DW_OP_deref, DW_OP_LLVM_fragment 128 960] $rsp
	.loc	0 226 19 is_stmt 1              # spec_xz.c:226:19
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
.Ltmp104:
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 227 19                        # spec_xz.c:227:19
	movq	%r15, 40(%rsp)
	.loc	0 228 20                        # spec_xz.c:228:20
	movq	$8192, 48(%rsp)                 # imm = 0x2000
	xorl	%eax, %eax
	movq	spec_fd@GOTPCREL(%rip), %r14
	leaq	16(%rsp), %rbx
	xorl	%r13d, %r13d
.Ltmp105:
	#DEBUG_VALUE: compressStream:action <- $r13d
	.loc	0 230 27                        # spec_xz.c:230:27
	testq	%rax, %rax
	.loc	0 230 32 is_stmt 0              # spec_xz.c:230:32
	jne	.LBB2_12
.Ltmp106:
	.p2align	4, 0x90
.LBB2_9:                                # %land.lhs.true
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	.loc	0 230 36                        # spec_xz.c:230:36
	movq	(%r14), %rdi
	movl	$3, %esi
	movl	%ebp, %edx
	callq	spec_mem_feof@PLT
.Ltmp107:
	testl	%eax, %eax
.Ltmp108:
	.loc	0 230 13                        # spec_xz.c:230:13
	jne	.LBB2_12
.Ltmp109:
# %bb.10:                               # %if.then4
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	.loc	0 0 13                          # spec_xz.c:0:13
	leaq	8352(%rsp), %rdx
.Ltmp110:
	.loc	0 231 26 is_stmt 1              # spec_xz.c:231:26
	movq	%rdx, 16(%rsp)
.Ltmp111:
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 232 29                        # spec_xz.c:232:29
	movq	(%r14), %rdi
	movl	$1, %ecx
	movl	$3, %esi
	movl	$8192, %r8d                     # imm = 0x2000
	movl	%ebp, %r9d
	callq	spec_mem_fread@PLT
.Ltmp112:
	.loc	0 232 27 is_stmt 0              # spec_xz.c:232:27
	movq	%rax, 24(%rsp)
.Ltmp113:
	.loc	0 234 17 is_stmt 1              # spec_xz.c:234:17
	movq	(%r14), %rdi
	movl	$3, %esi
	movl	%ebp, %edx
	callq	spec_mem_feof@PLT
.Ltmp114:
	testl	%eax, %eax
.Ltmp115:
	.loc	0 234 17 is_stmt 0              # spec_xz.c:234:17
	je	.LBB2_12
.Ltmp116:
# %bb.11:                               # %if.then4
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: compressStream:action <- $r13d
	.loc	0 0 17                          # spec_xz.c:0:17
	movl	$3, %r13d
.Ltmp117:
	.p2align	4, 0x90
.LBB2_12:                               # %if.end14
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	.loc	0 240 23 is_stmt 1              # spec_xz.c:240:23
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	lzma_code@PLT
.Ltmp118:
	movl	%eax, %r12d
.Ltmp119:
	#DEBUG_VALUE: rc <- $r12d
	.loc	0 242 18                        # spec_xz.c:242:18
	movq	48(%rsp), %rax
	.loc	0 242 28 is_stmt 0              # spec_xz.c:242:28
	testq	%rax, %rax
	.loc	0 242 33                        # spec_xz.c:242:33
	je	.LBB2_14
.Ltmp120:
# %bb.13:                               # %if.end14
                                        #   in Loop: Header=BB2_12 Depth=1
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	cmpl	$1, %r12d
	jne	.LBB2_16
.Ltmp121:
.LBB2_14:                               # %if.then19
                                        #   in Loop: Header=BB2_12 Depth=1
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	.loc	0 0 33                          # spec_xz.c:0:33
	movq	%rbx, %r14
.Ltmp122:
	.loc	0 243 45 is_stmt 1              # spec_xz.c:243:45
	movl	$8192, %ebx                     # imm = 0x2000
	subq	%rax, %rbx
.Ltmp123:
	#DEBUG_VALUE: write_size <- $rbx
	.loc	0 244 25                        # spec_xz.c:244:25
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$1, %ecx
	movl	$3, %esi
	movq	%r15, %rdx
	movl	%ebx, %r8d
	movl	12(%rsp), %r9d                  # 4-byte Reload
	callq	spec_mem_fwrite@PLT
.Ltmp124:
	.loc	0 244 61 is_stmt 0              # spec_xz.c:244:61
	cmpq	%rbx, %rax
.Ltmp125:
	.loc	0 244 17                        # spec_xz.c:244:17
	jne	.LBB2_26
.Ltmp126:
# %bb.15:                               # %cleanup.thread
                                        #   in Loop: Header=BB2_12 Depth=1
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	#DEBUG_VALUE: write_size <- $rbx
	.loc	0 249 27 is_stmt 1              # spec_xz.c:249:27
	movq	%r15, 40(%rsp)
.Ltmp127:
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 250 28                        # spec_xz.c:250:28
	movq	$8192, 48(%rsp)                 # imm = 0x2000
	movq	%r14, %rbx
.Ltmp128:
.LBB2_16:                               # %if.end33
                                        #   in Loop: Header=BB2_12 Depth=1
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	.loc	0 253 13                        # spec_xz.c:253:13
	testl	%r12d, %r12d
	jne	.LBB2_17
.Ltmp129:
# %bb.7:                                # %while.condthread-pre-split
                                        #   in Loop: Header=BB2_12 Depth=1
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	.loc	0 230 18                        # spec_xz.c:230:18
	movq	24(%rsp), %rax
	movq	spec_fd@GOTPCREL(%rip), %r14
	#DEBUG_VALUE: compressStream:action <- $r13d
	.loc	0 230 27 is_stmt 0              # spec_xz.c:230:27
	testq	%rax, %rax
	jne	.LBB2_12
	jmp	.LBB2_9
.Ltmp130:
.LBB2_2:                                # %sw.bb9.i
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- $r12d
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: compressStream:action <- 0
	#DEBUG_VALUE: compressStream:check <- $r13d
	#DEBUG_VALUE: init_encoder:check <- $r13d
	#DEBUG_VALUE: init_encoder:lzma_local_options <- [DW_OP_plus_uconst 8352, DW_OP_deref] $rsp
	#DEBUG_VALUE: init_encoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_encoder:options <- [DW_OP_plus_uconst 8352, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_encoder:preset <- $r12d
	#DEBUG_VALUE: init_encoder:rc <- $ebx
	.loc	0 0 27                          # spec_xz.c:0:27
	leaq	16(%rsp), %rdi
.Ltmp131:
	.loc	0 89 20 is_stmt 1               # spec_xz.c:89:20
	callq	lzma_get_check@PLT
.Ltmp132:
	#DEBUG_VALUE: init_encoder:msg <- undef
	.loc	0 0 0 is_stmt 0                 # spec_xz.c:0:0
	jmp	.LBB2_5
.Ltmp133:
.LBB2_3:                                # %sw.bb16.i
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- $r12d
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: compressStream:action <- 0
	#DEBUG_VALUE: compressStream:check <- $r13d
	#DEBUG_VALUE: init_encoder:check <- $r13d
	#DEBUG_VALUE: init_encoder:lzma_local_options <- [DW_OP_plus_uconst 8352, DW_OP_deref] $rsp
	#DEBUG_VALUE: init_encoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_encoder:options <- [DW_OP_plus_uconst 8352, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_encoder:preset <- $r12d
	#DEBUG_VALUE: init_encoder:rc <- $ebx
	movl	$.L.str.6, %r14d
.Ltmp134:
	#DEBUG_VALUE: init_encoder:msg <- $r14d
	jmp	.LBB2_5
.Ltmp135:
.LBB2_4:                                # %sw.default17.i
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- $r12d
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: compressStream:action <- 0
	#DEBUG_VALUE: compressStream:check <- $r13d
	#DEBUG_VALUE: init_encoder:check <- $r13d
	#DEBUG_VALUE: init_encoder:lzma_local_options <- [DW_OP_plus_uconst 8352, DW_OP_deref] $rsp
	#DEBUG_VALUE: init_encoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_encoder:options <- [DW_OP_plus_uconst 8352, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_encoder:preset <- $r12d
	#DEBUG_VALUE: init_encoder:rc <- $ebx
	movl	$.L.str.7, %r14d
.Ltmp136:
	#DEBUG_VALUE: init_encoder:msg <- $r14d
.LBB2_5:                                # %init_encoder.exit
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- $r12d
	#DEBUG_VALUE: compressStream:strm <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: compressStream:action <- 0
	#DEBUG_VALUE: compressStream:check <- $r13d
	#DEBUG_VALUE: init_encoder:check <- $r13d
	#DEBUG_VALUE: init_encoder:lzma_local_options <- [DW_OP_plus_uconst 8352, DW_OP_deref] $rsp
	#DEBUG_VALUE: init_encoder:strm <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_encoder:options <- [DW_OP_plus_uconst 8352, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: init_encoder:preset <- $r12d
	#DEBUG_VALUE: init_encoder:rc <- $ebx
	#DEBUG_VALUE: init_encoder:msg <- $r14
	.loc	0 118 5 is_stmt 1               # spec_xz.c:118:5
	movl	$.L.str.8, %edi
	movl	%r12d, %esi
	movl	%r13d, %edx
	movq	%r14, %rcx
	movl	%ebx, %r8d
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp137:
.LBB2_25:                               # %cleanup45
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 281 1 epilogue_begin          # spec_xz.c:281:1
	addq	$16552, %rsp                    # imm = 0x40A8
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
.Ltmp138:
	#DEBUG_VALUE: compressStream:stream <- [DW_OP_LLVM_entry_value 1] $edi
	.cfi_def_cfa_offset 8
	retq
.Ltmp139:
.LBB2_17:                               # %if.end33
	.cfi_def_cfa_offset 16608
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	.loc	0 253 13                        # spec_xz.c:253:13
	cmpl	$9, %r12d
	je	.LBB2_22
.Ltmp140:
# %bb.18:                               # %if.end33
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	cmpl	$5, %r12d
	je	.LBB2_21
.Ltmp141:
# %bb.19:                               # %if.end33
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	cmpl	$1, %r12d
	jne	.LBB2_23
.Ltmp142:
# %bb.20:                               # %sw.bb
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	.loc	0 0 13 is_stmt 0                # spec_xz.c:0:13
	leaq	16(%rsp), %rdi
.Ltmp143:
	.loc	0 258 21 is_stmt 1              # spec_xz.c:258:21
	callq	lzma_end@PLT
.Ltmp144:
	.loc	0 259 21                        # spec_xz.c:259:21
	jmp	.LBB2_25
.Ltmp145:
.LBB2_22:                               # %sw.epilog.loopexit84
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	.loc	0 0 21 is_stmt 0                # spec_xz.c:0:21
	movl	$.L.str.17, %esi
	jmp	.LBB2_24
.Ltmp146:
.LBB2_21:                               # %sw.epilog.loopexit
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	movl	$.L.str.5, %esi
	jmp	.LBB2_24
.Ltmp147:
.LBB2_23:                               # %sw.epilog.loopexit1
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	movl	$.L.str.14, %esi
.Ltmp148:
.LBB2_24:                               # %sw.epilog
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	#DEBUG_VALUE: msg <- $rsi
	.loc	0 271 13 is_stmt 1              # spec_xz.c:271:13
	movl	$.L.str.18, %edi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp149:
	.loc	0 0 13 is_stmt 0                # spec_xz.c:0:13
	jmp	.LBB2_25
.Ltmp150:
.LBB2_26:                               # %cleanup
	#DEBUG_VALUE: compressStream:stream <- $ebp
	#DEBUG_VALUE: compressStream:zStream <- [DW_OP_plus_uconst 12] [$rsp+0]
	#DEBUG_VALUE: compressStream:preset <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: compressStream:action <- $r13d
	#DEBUG_VALUE: rc <- $r12d
	#DEBUG_VALUE: write_size <- $rbx
	.loc	0 245 78 is_stmt 1              # spec_xz.c:245:78
	callq	__errno_location@PLT
.Ltmp151:
	movl	(%rax), %edi
	.loc	0 245 69 is_stmt 0              # spec_xz.c:245:69
	callq	strerror@PLT
.Ltmp152:
	.loc	0 245 17                        # spec_xz.c:245:17
	movl	$.L.str.16, %edi
	movl	12(%rsp), %esi                  # 4-byte Reload
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp153:
	.loc	0 0 17                          # spec_xz.c:0:17
	jmp	.LBB2_25
.Ltmp154:
.Lfunc_end2:
	.size	compressStream, .Lfunc_end2-compressStream
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI2_0:
	.quad	.LBB2_6
	.quad	.LBB2_4
	.quad	.LBB2_4
	.quad	.LBB2_2
	.quad	.LBB2_4
	.quad	.LBB2_5
	.quad	.LBB2_4
	.quad	.LBB2_4
	.quad	.LBB2_3
                                        # -- End function
	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Memory allocation failed"
	.size	.L.str.5, 25

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Specified preset is not supported"
	.size	.L.str.6, 34

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Unknown error"
	.size	.L.str.7, 14

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Error initializing encoder with preset=%u check=%u: %s (code %u)\n"
	.size	.L.str.8, 66

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Decompress write error on %d: %s\n"
	.size	.L.str.9, 34

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Input not in XZ format"
	.size	.L.str.10, 23

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Unsupported compression options"
	.size	.L.str.11, 32

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Compressed data is corrupt"
	.size	.L.str.12, 27

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Compressed data is truncated or otherwise corrupt"
	.size	.L.str.13, 50

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Unknown return code"
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Decompression decoder error: %s (code %u)\n"
	.size	.L.str.15, 43

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Compress write error on %d: %s\n"
	.size	.L.str.16, 32

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"File size limits exceeded"
	.size	.L.str.17, 26

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Compression encoder error: %s (code %u)\n"
	.size	.L.str.18, 41

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"lzma_stream_decoder reports an unsupported check method: "
	.size	.L.str.19, 58

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Unsupported decompression flags"
	.size	.L.str.25, 32

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Error initializing decoder: %s (code %u)\n"
	.size	.L.str.26, 42

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"SHA256"
	.size	.Lstr, 7

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"CRC64"
	.size	.Lstr.27, 6

	.type	.Lstr.28,@object                # @str.28
.Lstr.28:
	.asciz	"CRC32"
	.size	.Lstr.28, 6

	.type	.Lstr.29,@object                # @str.29
.Lstr.29:
	.asciz	"NONE"
	.size	.Lstr.29, 5

	.type	.Lstr.30,@object                # @str.30
.Lstr.30:
	.asciz	"unknown!  This shouldn't happen."
	.size	.Lstr.30, 33

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	31                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	12                              # 12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	14                              # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	35                              # DW_OP_plus_uconst
	.byte	16                              # 16
	.byte	147                             # DW_OP_piece
	.byte	120                             # 120
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	12                              # 12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	14                              # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	147                             # DW_OP_piece
	.byte	8                               # 8
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	35                              # DW_OP_plus_uconst
	.byte	16                              # 16
	.byte	147                             # DW_OP_piece
	.byte	120                             # 120
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp106-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	160                             # 8352
	.byte	193                             # 
	.byte	0                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	160                             # 8352
	.byte	193                             # 
	.byte	0                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	160                             # 8352
	.byte	193                             # 
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	5                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	160                             # 8352
	.byte	193                             # 
	.byte	0                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
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
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
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
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_FORM_data1
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
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
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
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
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
	.byte	1                               # Abbrev [1] 0xc:0x9dc DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	17                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x7 DW_TAG_variable
	.long	50                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x32:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x37:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	31                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3e:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x42:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x46:0x7 DW_TAG_variable
	.long	77                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x4d:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x52:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x59:0x7 DW_TAG_variable
	.long	77                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x60:0x7 DW_TAG_variable
	.long	103                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x67:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6c:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	33                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x73:0x7 DW_TAG_variable
	.long	122                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x7a:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x7f:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	47                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x86:0xa DW_TAG_variable
	.long	144                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x90:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x95:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	25                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x9c:0xa DW_TAG_variable
	.long	166                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0xa6:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xab:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	34                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xb2:0xa DW_TAG_variable
	.long	188                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               # Abbrev [3] 0xbc:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xc1:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	14                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xc8:0xa DW_TAG_variable
	.long	210                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	3                               # Abbrev [3] 0xd2:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xd7:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	66                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xde:0xa DW_TAG_variable
	.long	166                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	7                               # Abbrev [7] 0xe8:0xa DW_TAG_variable
	.long	242                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	3                               # Abbrev [3] 0xf2:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0xf7:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	23                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xfe:0xa DW_TAG_variable
	.long	77                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	7                               # Abbrev [7] 0x108:0xa DW_TAG_variable
	.long	274                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	3                               # Abbrev [3] 0x112:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x117:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	27                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x11e:0xa DW_TAG_variable
	.long	296                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	3                               # Abbrev [3] 0x128:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x12d:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	50                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x134:0xa DW_TAG_variable
	.long	318                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	9
	.byte	3                               # Abbrev [3] 0x13e:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x143:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x14a:0xa DW_TAG_variable
	.long	340                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	10
	.byte	3                               # Abbrev [3] 0x154:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x159:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	43                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x160:0xa DW_TAG_variable
	.long	77                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	11
	.byte	8                               # Abbrev [8] 0x16a:0xb DW_TAG_variable
	.long	373                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	264                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	12
	.byte	3                               # Abbrev [3] 0x175:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x17a:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	26                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x181:0xb DW_TAG_variable
	.long	396                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	13
	.byte	3                               # Abbrev [3] 0x18c:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x191:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	41                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x198:0xa DW_TAG_variable
	.long	418                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	14
	.byte	3                               # Abbrev [3] 0x1a2:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1a7:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	58                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1ae:0x7 DW_TAG_variable
	.long	437                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x1b5:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1ba:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1c1:0x7 DW_TAG_variable
	.long	456                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x1c8:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1cd:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1d4:0x7 DW_TAG_variable
	.long	456                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x1db:0x7 DW_TAG_variable
	.long	482                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x1e2:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1e7:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1ee:0x7 DW_TAG_variable
	.long	166                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1f5:0xa DW_TAG_variable
	.long	77                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	15
	.byte	7                               # Abbrev [7] 0x1ff:0xa DW_TAG_variable
	.long	521                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	16
	.byte	3                               # Abbrev [3] 0x209:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x20e:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	42                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x215:0xc DW_TAG_enumeration_type
	.long	545                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x21d:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x221:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x225:0xf DW_TAG_enumeration_type
	.long	545                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x22d:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x230:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x234:0x18 DW_TAG_enumeration_type
	.long	545                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x23c:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x23f:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x242:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x245:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x248:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x24c:0x15 DW_TAG_enumeration_type
	.long	545                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x254:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x257:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x25a:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x25d:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x261:0x2d DW_TAG_enumeration_type
	.long	545                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x269:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x26c:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x26f:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x272:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x275:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x278:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x27b:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x27e:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x281:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x284:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x287:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x28a:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x28e:0x15 DW_TAG_enumeration_type
	.long	545                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x296:0x3 DW_TAG_enumerator
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x299:0x3 DW_TAG_enumerator
	.byte	31                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x29c:0x3 DW_TAG_enumerator
	.byte	32                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x29f:0x3 DW_TAG_enumerator
	.byte	33                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x2a3:0x1 DW_TAG_pointer_type
	.byte	12                              # Abbrev [12] 0x2a4:0x8 DW_TAG_typedef
	.long	684                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x2ac:0x4 DW_TAG_base_type
	.byte	34                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x2b0:0x5a DW_TAG_subprogram
	.byte	17                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	2161                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x2bc:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	2169                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x2c2:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	2177                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x2c8:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.long	2185                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x2ce:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.long	2193                            # DW_AT_abstract_origin
	.byte	15                              # Abbrev [15] 0x2d4:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	2201                            # DW_AT_abstract_origin
	.byte	15                              # Abbrev [15] 0x2dc:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\330"
	.long	2209                            # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x2e5:0x6 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.long	2217                            # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x2eb:0x6 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.long	2225                            # DW_AT_abstract_origin
	.byte	17                              # Abbrev [17] 0x2f1:0x6 DW_TAG_call_site
	.long	778                             # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x2f7:0x6 DW_TAG_call_site
	.long	1132                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x2fd:0x6 DW_TAG_call_site
	.long	1551                            # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x303:0x6 DW_TAG_call_site
	.long	1575                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x30a:0x14 DW_TAG_subprogram
	.byte	36                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	419                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	798                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x313:0x5 DW_TAG_formal_parameter
	.long	810                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x318:0x5 DW_TAG_formal_parameter
	.long	1066                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x31e:0x8 DW_TAG_typedef
	.long	806                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x326:0x4 DW_TAG_base_type
	.byte	37                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0x32a:0x5 DW_TAG_pointer_type
	.long	815                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x32f:0x9 DW_TAG_typedef
	.long	824                             # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x338:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x33c:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x345:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x34e:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x357:0xa DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x361:0xa DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x36b:0xa DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x375:0xa DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	1108                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x37f:0xa DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x389:0xa DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	1116                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x393:0xa DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x39d:0xa DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x3a7:0xa DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x3b1:0xa DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x3bb:0xa DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x3c5:0xa DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x3cf:0xa DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x3d9:0xa DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x3e3:0xa DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	1066                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x3ed:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x3f7:0xa DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x401:0xa DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x40b:0xa DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x415:0xa DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x41f:0xa DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x42a:0x8 DW_TAG_typedef
	.long	1074                            # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x432:0x8 DW_TAG_typedef
	.long	545                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x43a:0x5 DW_TAG_pointer_type
	.long	1087                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x43f:0x5 DW_TAG_const_type
	.long	1092                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x444:0x8 DW_TAG_typedef
	.long	1100                            # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x44c:0x8 DW_TAG_typedef
	.long	806                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x454:0x8 DW_TAG_typedef
	.long	549                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x45c:0x8 DW_TAG_typedef
	.long	564                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x464:0x8 DW_TAG_typedef
	.long	533                             # DW_AT_type
	.byte	64                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x46c:0x18 DW_TAG_subprogram
	.byte	71                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1156                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x474:0x5 DW_TAG_formal_parameter
	.long	1164                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x479:0x5 DW_TAG_formal_parameter
	.long	1494                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x47e:0x5 DW_TAG_formal_parameter
	.long	1543                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x484:0x8 DW_TAG_typedef
	.long	609                             # DW_AT_type
	.byte	72                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x48c:0x5 DW_TAG_pointer_type
	.long	1169                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x491:0x9 DW_TAG_typedef
	.long	1178                            # DW_AT_type
	.byte	91                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x49a:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	24                              # Abbrev [24] 0x49f:0xa DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x4a9:0xa DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	676                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x4b3:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	1364                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x4bd:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	1380                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x4c7:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	676                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x4d1:0xa DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	1364                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x4db:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	1385                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x4e5:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1478                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x4ef:0xa DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x4f9:0xa DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x503:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x50d:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x517:0xa DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	1364                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x521:0xa DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	1364                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x52b:0xa DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	676                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x535:0xa DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	676                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x53f:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x549:0xa DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	1124                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x554:0x8 DW_TAG_typedef
	.long	1372                            # DW_AT_type
	.byte	77                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x55c:0x8 DW_TAG_typedef
	.long	684                             # DW_AT_type
	.byte	76                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x564:0x5 DW_TAG_pointer_type
	.long	1092                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x569:0x5 DW_TAG_pointer_type
	.long	1390                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x56e:0x9 DW_TAG_typedef
	.long	1399                            # DW_AT_type
	.byte	85                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x577:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	24                              # Abbrev [24] 0x57c:0xa DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	1435                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x586:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	1461                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	24                              # Abbrev [24] 0x590:0xa DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x59b:0x5 DW_TAG_pointer_type
	.long	1440                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x5a0:0x15 DW_TAG_subroutine_type
	.long	675                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	19                              # Abbrev [19] 0x5a5:0x5 DW_TAG_formal_parameter
	.long	675                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x5aa:0x5 DW_TAG_formal_parameter
	.long	676                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x5af:0x5 DW_TAG_formal_parameter
	.long	676                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x5b5:0x5 DW_TAG_pointer_type
	.long	1466                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x5ba:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	19                              # Abbrev [19] 0x5bb:0x5 DW_TAG_formal_parameter
	.long	675                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x5c0:0x5 DW_TAG_formal_parameter
	.long	675                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x5c6:0x5 DW_TAG_pointer_type
	.long	1483                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x5cb:0x9 DW_TAG_typedef
	.long	1492                            # DW_AT_type
	.byte	88                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x5d4:0x2 DW_TAG_structure_type
	.byte	87                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	20                              # Abbrev [20] 0x5d6:0x5 DW_TAG_pointer_type
	.long	1499                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x5db:0x5 DW_TAG_const_type
	.long	1504                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5e0:0x8 DW_TAG_typedef
	.long	1512                            # DW_AT_type
	.byte	95                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x5e8:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x5ec:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	1535                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x5f5:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x5ff:0x8 DW_TAG_typedef
	.long	1364                            # DW_AT_type
	.byte	93                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x607:0x8 DW_TAG_typedef
	.long	588                             # DW_AT_type
	.byte	96                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x60f:0xe DW_TAG_subprogram
	.byte	97                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1543                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x617:0x5 DW_TAG_formal_parameter
	.long	1565                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x61d:0x5 DW_TAG_pointer_type
	.long	1570                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x622:0x5 DW_TAG_const_type
	.long	1169                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x627:0x10 DW_TAG_subprogram
	.byte	98                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1591                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x630:0x5 DW_TAG_formal_parameter
	.long	1595                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x635:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x637:0x4 DW_TAG_base_type
	.byte	99                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	32                              # Abbrev [32] 0x63b:0x5 DW_TAG_restrict_type
	.long	1600                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x640:0x5 DW_TAG_pointer_type
	.long	1605                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x645:0x5 DW_TAG_const_type
	.long	62                              # DW_AT_type
	.byte	33                              # Abbrev [33] 0x64a:0x21 DW_TAG_subprogram
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1643                            # DW_AT_type
                                        # DW_AT_inline
	.byte	34                              # Abbrev [34] 0x652:0x8 DW_TAG_formal_parameter
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	1164                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x65a:0x8 DW_TAG_variable
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	1156                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x662:0x8 DW_TAG_variable
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	1600                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x66b:0x4 DW_TAG_base_type
	.byte	101                             # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	36                              # Abbrev [36] 0x66f:0xe2 DW_TAG_subprogram
	.byte	22                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	37                              # Abbrev [37] 0x67a:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.long	1591                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x683:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.long	1591                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x68c:0xd DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.asciz	"\240\301"
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	2522                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x699:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240\001"
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	2522                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x6a5:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.long	1169                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x6ae:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	2069                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x6b7:0x23 DW_TAG_inlined_subroutine
	.long	1610                            # DW_AT_abstract_origin
	.byte	23                              # DW_AT_low_pc
	.long	.Ltmp46-.Ltmp27                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	129                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	41                              # Abbrev [41] 0x6c4:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	159
	.long	1618                            # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x6cd:0x6 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.long	1626                            # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x6d3:0x6 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.long	1634                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x6da:0x28 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	39                              # Abbrev [39] 0x6dc:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	1156                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x6e5:0xc DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	39                              # Abbrev [39] 0x6e7:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.long	676                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x6f1:0x10 DW_TAG_lexical_block
	.byte	24                              # DW_AT_low_pc
	.long	.Ltmp85-.Ltmp76                 # DW_AT_high_pc
	.byte	39                              # Abbrev [39] 0x6f7:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.long	1600                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x702:0x6 DW_TAG_call_site
	.long	1873                            # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x708:0x6 DW_TAG_call_site
	.long	1575                            # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x70e:0x6 DW_TAG_call_site
	.long	1551                            # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x714:0x6 DW_TAG_call_site
	.long	1898                            # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x71a:0x6 DW_TAG_call_site
	.long	2010                            # DW_AT_call_origin
	.byte	29                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x720:0x6 DW_TAG_call_site
	.long	1898                            # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x726:0x6 DW_TAG_call_site
	.long	2049                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x72c:0x6 DW_TAG_call_site
	.long	2078                            # DW_AT_call_origin
	.byte	32                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x732:0x6 DW_TAG_call_site
	.long	2117                            # DW_AT_call_origin
	.byte	33                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x738:0x6 DW_TAG_call_site
	.long	1575                            # DW_AT_call_origin
	.byte	34                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x73e:0x6 DW_TAG_call_site
	.long	2128                            # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x744:0x6 DW_TAG_call_site
	.long	2141                            # DW_AT_call_origin
	.byte	36                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x74a:0x6 DW_TAG_call_site
	.long	1575                            # DW_AT_call_origin
	.byte	37                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x751:0x19 DW_TAG_subprogram
	.byte	105                             # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1156                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x75a:0x5 DW_TAG_formal_parameter
	.long	1164                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x75f:0x5 DW_TAG_formal_parameter
	.long	1364                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x764:0x5 DW_TAG_formal_parameter
	.long	1066                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x76a:0x18 DW_TAG_subprogram
	.byte	106                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1591                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x772:0x5 DW_TAG_formal_parameter
	.long	1922                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x777:0x5 DW_TAG_formal_parameter
	.long	545                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x77c:0x5 DW_TAG_formal_parameter
	.long	1591                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x782:0x5 DW_TAG_pointer_type
	.long	1927                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x787:0x8 DW_TAG_typedef
	.long	1935                            # DW_AT_type
	.byte	115                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x78f:0x32 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x793:0x9 DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	1985                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x79c:0x9 DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	1985                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x7a5:0x9 DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	1985                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x7ae:0x9 DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	1591                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x7b7:0x9 DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	2005                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x7c1:0x8 DW_TAG_typedef
	.long	1993                            # DW_AT_type
	.byte	110                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7c9:0x8 DW_TAG_typedef
	.long	2001                            # DW_AT_type
	.byte	109                             # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x7d1:0x4 DW_TAG_base_type
	.byte	108                             # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0x7d5:0x5 DW_TAG_pointer_type
	.long	806                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x7da:0x27 DW_TAG_subprogram
	.byte	116                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1985                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x7e2:0x5 DW_TAG_formal_parameter
	.long	1922                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x7e7:0x5 DW_TAG_formal_parameter
	.long	545                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x7ec:0x5 DW_TAG_formal_parameter
	.long	2005                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x7f1:0x5 DW_TAG_formal_parameter
	.long	1985                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x7f6:0x5 DW_TAG_formal_parameter
	.long	1591                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x7fb:0x5 DW_TAG_formal_parameter
	.long	1591                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x801:0x14 DW_TAG_subprogram
	.byte	117                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	529                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1156                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x80a:0x5 DW_TAG_formal_parameter
	.long	1164                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x80f:0x5 DW_TAG_formal_parameter
	.long	2069                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x815:0x9 DW_TAG_typedef
	.long	654                             # DW_AT_type
	.byte	118                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x81e:0x27 DW_TAG_subprogram
	.byte	119                             # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1985                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x826:0x5 DW_TAG_formal_parameter
	.long	1922                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x82b:0x5 DW_TAG_formal_parameter
	.long	545                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x830:0x5 DW_TAG_formal_parameter
	.long	2005                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x835:0x5 DW_TAG_formal_parameter
	.long	1985                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x83a:0x5 DW_TAG_formal_parameter
	.long	1591                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x83f:0x5 DW_TAG_formal_parameter
	.long	1591                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x845:0xb DW_TAG_subprogram
	.byte	120                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x84a:0x5 DW_TAG_formal_parameter
	.long	1164                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x850:0x8 DW_TAG_subprogram
	.byte	121                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2136                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	20                              # Abbrev [20] 0x858:0x5 DW_TAG_pointer_type
	.long	1591                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x85d:0xf DW_TAG_subprogram
	.byte	122                             # DW_AT_name
	.byte	14                              # DW_AT_decl_file
	.short	419                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2156                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x866:0x5 DW_TAG_formal_parameter
	.long	1591                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x86c:0x5 DW_TAG_pointer_type
	.long	62                              # DW_AT_type
	.byte	46                              # Abbrev [46] 0x871:0x49 DW_TAG_subprogram
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1643                            # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	34                              # Abbrev [34] 0x879:0x8 DW_TAG_formal_parameter
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	1164                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x881:0x8 DW_TAG_formal_parameter
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	810                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x889:0x8 DW_TAG_formal_parameter
	.byte	124                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	1066                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x891:0x8 DW_TAG_formal_parameter
	.byte	125                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	1543                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x899:0x8 DW_TAG_variable
	.byte	126                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	2234                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x8a1:0x8 DW_TAG_variable
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	815                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x8a9:0x8 DW_TAG_variable
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	1156                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x8b1:0x8 DW_TAG_variable
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	1600                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x8ba:0xc DW_TAG_array_type
	.long	1504                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x8bf:0x6 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x8c6:0x114 DW_TAG_subprogram
	.byte	38                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	37                              # Abbrev [37] 0x8d1:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.long	1591                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x8da:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.long	1591                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x8e3:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	124                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.long	1066                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x8ec:0xd DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.asciz	"\240\301"
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.long	2522                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x8f9:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240\001"
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	2522                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x905:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.long	1169                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x90e:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.long	2069                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x917:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	125                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	1543                            # DW_AT_type
	.byte	47                              # Abbrev [47] 0x920:0x3d DW_TAG_inlined_subroutine
	.long	2161                            # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	217                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x929:0x6 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.long	2169                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x92f:0x6 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.long	2177                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x935:0x6 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.long	2185                            # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x93b:0x6 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.long	2193                            # DW_AT_abstract_origin
	.byte	15                              # Abbrev [15] 0x941:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240\001"
	.long	2201                            # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x94a:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.long	2209                            # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x950:0x6 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.long	2217                            # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x956:0x6 DW_TAG_variable
	.byte	29                              # DW_AT_location
	.long	2225                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x95d:0x28 DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	39                              # Abbrev [39] 0x95f:0x9 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.long	1156                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x968:0xc DW_TAG_lexical_block
	.byte	4                               # DW_AT_ranges
	.byte	39                              # Abbrev [39] 0x96a:0x9 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.long	676                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x974:0x10 DW_TAG_lexical_block
	.byte	39                              # DW_AT_low_pc
	.long	.Ltmp150-.Ltmp143               # DW_AT_high_pc
	.byte	39                              # Abbrev [39] 0x97a:0x9 DW_TAG_variable
	.byte	30                              # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.long	1600                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x985:0x6 DW_TAG_call_site
	.long	778                             # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x98b:0x6 DW_TAG_call_site
	.long	1132                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x991:0x6 DW_TAG_call_site
	.long	1898                            # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x997:0x6 DW_TAG_call_site
	.long	2010                            # DW_AT_call_origin
	.byte	43                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x99d:0x6 DW_TAG_call_site
	.long	1898                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x9a3:0x6 DW_TAG_call_site
	.long	2049                            # DW_AT_call_origin
	.byte	45                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x9a9:0x6 DW_TAG_call_site
	.long	2078                            # DW_AT_call_origin
	.byte	46                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x9af:0x6 DW_TAG_call_site
	.long	1551                            # DW_AT_call_origin
	.byte	47                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x9b5:0x6 DW_TAG_call_site
	.long	1575                            # DW_AT_call_origin
	.byte	48                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x9bb:0x6 DW_TAG_call_site
	.long	2117                            # DW_AT_call_origin
	.byte	49                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x9c1:0x6 DW_TAG_call_site
	.long	1575                            # DW_AT_call_origin
	.byte	50                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x9c7:0x6 DW_TAG_call_site
	.long	2128                            # DW_AT_call_origin
	.byte	51                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x9cd:0x6 DW_TAG_call_site
	.long	2141                            # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0x9d3:0x6 DW_TAG_call_site
	.long	1575                            # DW_AT_call_origin
	.byte	53                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x9da:0xd DW_TAG_array_type
	.long	1092                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x9df:0x7 DW_TAG_subrange_type
	.long	66                              # DW_AT_type
	.short	8192                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	5                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
	.long	.Ldebug_ranges4-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp154-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	548                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"spec_xz.c"                     # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=115
.Linfo_string3:
	.asciz	"char"                          # string offset=147
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=152
.Linfo_string5:
	.asciz	"unsigned int"                  # string offset=172
.Linfo_string6:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=185
.Linfo_string7:
	.asciz	"LZMA_MODE_FAST"                # string offset=204
.Linfo_string8:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=219
.Linfo_string9:
	.asciz	"LZMA_MF_HC3"                   # string offset=236
.Linfo_string10:
	.asciz	"LZMA_MF_HC4"                   # string offset=248
.Linfo_string11:
	.asciz	"LZMA_MF_BT2"                   # string offset=260
.Linfo_string12:
	.asciz	"LZMA_MF_BT3"                   # string offset=272
.Linfo_string13:
	.asciz	"LZMA_MF_BT4"                   # string offset=284
.Linfo_string14:
	.asciz	"LZMA_CHECK_NONE"               # string offset=296
.Linfo_string15:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=312
.Linfo_string16:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=329
.Linfo_string17:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=346
.Linfo_string18:
	.asciz	"LZMA_OK"                       # string offset=364
.Linfo_string19:
	.asciz	"LZMA_STREAM_END"               # string offset=372
.Linfo_string20:
	.asciz	"LZMA_NO_CHECK"                 # string offset=388
.Linfo_string21:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=402
.Linfo_string22:
	.asciz	"LZMA_GET_CHECK"                # string offset=425
.Linfo_string23:
	.asciz	"LZMA_MEM_ERROR"                # string offset=440
.Linfo_string24:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=455
.Linfo_string25:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=475
.Linfo_string26:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=493
.Linfo_string27:
	.asciz	"LZMA_DATA_ERROR"               # string offset=512
.Linfo_string28:
	.asciz	"LZMA_BUF_ERROR"                # string offset=528
.Linfo_string29:
	.asciz	"LZMA_PROG_ERROR"               # string offset=543
.Linfo_string30:
	.asciz	"LZMA_RUN"                      # string offset=559
.Linfo_string31:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=568
.Linfo_string32:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=584
.Linfo_string33:
	.asciz	"LZMA_FINISH"                   # string offset=600
.Linfo_string34:
	.asciz	"unsigned long"                 # string offset=612
.Linfo_string35:
	.asciz	"size_t"                        # string offset=626
.Linfo_string36:
	.asciz	"lzma_lzma_preset"              # string offset=633
.Linfo_string37:
	.asciz	"unsigned char"                 # string offset=650
.Linfo_string38:
	.asciz	"lzma_bool"                     # string offset=664
.Linfo_string39:
	.asciz	"dict_size"                     # string offset=674
.Linfo_string40:
	.asciz	"__uint32_t"                    # string offset=684
.Linfo_string41:
	.asciz	"uint32_t"                      # string offset=695
.Linfo_string42:
	.asciz	"preset_dict"                   # string offset=704
.Linfo_string43:
	.asciz	"__uint8_t"                     # string offset=716
.Linfo_string44:
	.asciz	"uint8_t"                       # string offset=726
.Linfo_string45:
	.asciz	"preset_dict_size"              # string offset=734
.Linfo_string46:
	.asciz	"lc"                            # string offset=751
.Linfo_string47:
	.asciz	"lp"                            # string offset=754
.Linfo_string48:
	.asciz	"pb"                            # string offset=757
.Linfo_string49:
	.asciz	"mode"                          # string offset=760
.Linfo_string50:
	.asciz	"lzma_mode"                     # string offset=765
.Linfo_string51:
	.asciz	"nice_len"                      # string offset=775
.Linfo_string52:
	.asciz	"mf"                            # string offset=784
.Linfo_string53:
	.asciz	"lzma_match_finder"             # string offset=787
.Linfo_string54:
	.asciz	"depth"                         # string offset=805
.Linfo_string55:
	.asciz	"reserved_int1"                 # string offset=811
.Linfo_string56:
	.asciz	"reserved_int2"                 # string offset=825
.Linfo_string57:
	.asciz	"reserved_int3"                 # string offset=839
.Linfo_string58:
	.asciz	"reserved_int4"                 # string offset=853
.Linfo_string59:
	.asciz	"reserved_int5"                 # string offset=867
.Linfo_string60:
	.asciz	"reserved_int6"                 # string offset=881
.Linfo_string61:
	.asciz	"reserved_int7"                 # string offset=895
.Linfo_string62:
	.asciz	"reserved_int8"                 # string offset=909
.Linfo_string63:
	.asciz	"reserved_enum1"                # string offset=923
.Linfo_string64:
	.asciz	"lzma_reserved_enum"            # string offset=938
.Linfo_string65:
	.asciz	"reserved_enum2"                # string offset=957
.Linfo_string66:
	.asciz	"reserved_enum3"                # string offset=972
.Linfo_string67:
	.asciz	"reserved_enum4"                # string offset=987
.Linfo_string68:
	.asciz	"reserved_ptr1"                 # string offset=1002
.Linfo_string69:
	.asciz	"reserved_ptr2"                 # string offset=1016
.Linfo_string70:
	.asciz	"lzma_options_lzma"             # string offset=1030
.Linfo_string71:
	.asciz	"lzma_stream_encoder"           # string offset=1048
.Linfo_string72:
	.asciz	"lzma_ret"                      # string offset=1068
.Linfo_string73:
	.asciz	"next_in"                       # string offset=1077
.Linfo_string74:
	.asciz	"avail_in"                      # string offset=1085
.Linfo_string75:
	.asciz	"total_in"                      # string offset=1094
.Linfo_string76:
	.asciz	"__uint64_t"                    # string offset=1103
.Linfo_string77:
	.asciz	"uint64_t"                      # string offset=1114
.Linfo_string78:
	.asciz	"next_out"                      # string offset=1123
.Linfo_string79:
	.asciz	"avail_out"                     # string offset=1132
.Linfo_string80:
	.asciz	"total_out"                     # string offset=1142
.Linfo_string81:
	.asciz	"allocator"                     # string offset=1152
.Linfo_string82:
	.asciz	"alloc"                         # string offset=1162
.Linfo_string83:
	.asciz	"free"                          # string offset=1168
.Linfo_string84:
	.asciz	"opaque"                        # string offset=1173
.Linfo_string85:
	.asciz	"lzma_allocator"                # string offset=1180
.Linfo_string86:
	.asciz	"internal"                      # string offset=1195
.Linfo_string87:
	.asciz	"lzma_internal_s"               # string offset=1204
.Linfo_string88:
	.asciz	"lzma_internal"                 # string offset=1220
.Linfo_string89:
	.asciz	"reserved_ptr3"                 # string offset=1234
.Linfo_string90:
	.asciz	"reserved_ptr4"                 # string offset=1248
.Linfo_string91:
	.asciz	"lzma_stream"                   # string offset=1262
.Linfo_string92:
	.asciz	"id"                            # string offset=1274
.Linfo_string93:
	.asciz	"lzma_vli"                      # string offset=1277
.Linfo_string94:
	.asciz	"options"                       # string offset=1286
.Linfo_string95:
	.asciz	"lzma_filter"                   # string offset=1294
.Linfo_string96:
	.asciz	"lzma_check"                    # string offset=1306
.Linfo_string97:
	.asciz	"lzma_get_check"                # string offset=1317
.Linfo_string98:
	.asciz	"printf"                        # string offset=1332
.Linfo_string99:
	.asciz	"int"                           # string offset=1339
.Linfo_string100:
	.asciz	"init_decoder"                  # string offset=1343
.Linfo_string101:
	.asciz	"_Bool"                         # string offset=1356
.Linfo_string102:
	.asciz	"strm"                          # string offset=1362
.Linfo_string103:
	.asciz	"rc"                            # string offset=1367
.Linfo_string104:
	.asciz	"msg"                           # string offset=1370
.Linfo_string105:
	.asciz	"lzma_stream_decoder"           # string offset=1374
.Linfo_string106:
	.asciz	"spec_mem_feof"                 # string offset=1394
.Linfo_string107:
	.asciz	"limit"                         # string offset=1408
.Linfo_string108:
	.asciz	"long"                          # string offset=1414
.Linfo_string109:
	.asciz	"__int64_t"                     # string offset=1419
.Linfo_string110:
	.asciz	"int64_t"                       # string offset=1429
.Linfo_string111:
	.asciz	"len"                           # string offset=1437
.Linfo_string112:
	.asciz	"pos"                           # string offset=1441
.Linfo_string113:
	.asciz	"open"                          # string offset=1445
.Linfo_string114:
	.asciz	"buf"                           # string offset=1450
.Linfo_string115:
	.asciz	"spec_fd_t"                     # string offset=1454
.Linfo_string116:
	.asciz	"spec_mem_fread"                # string offset=1464
.Linfo_string117:
	.asciz	"lzma_code"                     # string offset=1479
.Linfo_string118:
	.asciz	"lzma_action"                   # string offset=1489
.Linfo_string119:
	.asciz	"spec_mem_fwrite"               # string offset=1501
.Linfo_string120:
	.asciz	"lzma_end"                      # string offset=1517
.Linfo_string121:
	.asciz	"__errno_location"              # string offset=1526
.Linfo_string122:
	.asciz	"strerror"                      # string offset=1543
.Linfo_string123:
	.asciz	"init_encoder"                  # string offset=1552
.Linfo_string124:
	.asciz	"preset"                        # string offset=1565
.Linfo_string125:
	.asciz	"check"                         # string offset=1572
.Linfo_string126:
	.asciz	"filters"                       # string offset=1578
.Linfo_string127:
	.asciz	"lzma_local_options"            # string offset=1586
.Linfo_string128:
	.asciz	"uncompressStream"              # string offset=1605
.Linfo_string129:
	.asciz	"compressStream"                # string offset=1622
.Linfo_string130:
	.asciz	"in"                            # string offset=1637
.Linfo_string131:
	.asciz	"out"                           # string offset=1640
.Linfo_string132:
	.asciz	"zStream"                       # string offset=1644
.Linfo_string133:
	.asciz	"stream"                        # string offset=1652
.Linfo_string134:
	.asciz	"action"                        # string offset=1659
.Linfo_string135:
	.asciz	"write_size"                    # string offset=1666
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str.5
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
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.Lfunc_begin0
	.quad	.Ltmp6
	.quad	.Ltmp7
	.quad	.Ltmp13
	.quad	.Ltmp19
	.quad	.Lfunc_begin1
	.quad	.Ltmp27
	.quad	.Ltmp76
	.quad	.Ltmp28
	.quad	.Ltmp32
	.quad	.Ltmp33
	.quad	.Ltmp50
	.quad	.Ltmp55
	.quad	.Ltmp57
	.quad	.Ltmp61
	.quad	.Ltmp67
	.quad	.Ltmp77
	.quad	.Ltmp86
	.quad	.Ltmp89
	.quad	.Ltmp90
	.quad	.Ltmp91
	.quad	.Lfunc_begin2
	.quad	.Ltmp143
	.quad	.Ltmp99
	.quad	.Ltmp100
	.quad	.Ltmp107
	.quad	.Ltmp112
	.quad	.Ltmp114
	.quad	.Ltmp118
	.quad	.Ltmp124
	.quad	.Ltmp132
	.quad	.Ltmp137
	.quad	.Ltmp144
	.quad	.Ltmp149
	.quad	.Ltmp151
	.quad	.Ltmp152
	.quad	.Ltmp153
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
