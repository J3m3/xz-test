	.text
	.file	"stream_buffer_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/stream_buffer_encoder.c" md5 0xc86907379f940eabe0025fd9fc4e4d6b
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.globl	lzma_stream_buffer_bound        # -- Begin function lzma_stream_buffer_bound
	.p2align	4, 0x90
	.type	lzma_stream_buffer_bound,@function
lzma_stream_buffer_bound:               # @lzma_stream_buffer_bound
.Lfunc_begin0:
	.loc	0 27 0                          # liblzma/common/stream_buffer_encoder.c:27:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_stream_buffer_bound:uncompressed_size <- $rdi
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp0:
	.loc	0 29 29 prologue_end            # liblzma/common/stream_buffer_encoder.c:29:29
	callq	lzma_block_buffer_bound@PLT
.Ltmp1:
	#DEBUG_VALUE: lzma_stream_buffer_bound:uncompressed_size <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_stream_buffer_bound:block_bound <- $rax
	.loc	0 30 6                          # liblzma/common/stream_buffer_encoder.c:30:6
	leaq	48(%rax), %rcx
	xorl	%edx, %edx
	movabsq	$9223372036854775759, %rsi      # imm = 0x7FFFFFFFFFFFFFCF
	cmpq	%rsi, %rax
	cmovleq	%rcx, %rdx
.Ltmp2:
	.loc	0 30 18 is_stmt 0               # liblzma/common/stream_buffer_encoder.c:30:18
	testq	%rax, %rax
.Ltmp3:
	.loc	0 30 6                          # liblzma/common/stream_buffer_encoder.c:30:6
	cmovneq	%rdx, %rax
.Ltmp4:
	.loc	0 40 1 epilogue_begin is_stmt 1 # liblzma/common/stream_buffer_encoder.c:40:1
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	lzma_stream_buffer_bound, .Lfunc_end0-lzma_stream_buffer_bound
	.cfi_endproc
	.file	3 "liblzma/api/lzma" "block.h" md5 0xbf8cbafce550217b909c63081e414910
	.file	4 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
                                        # -- End function
	.globl	lzma_stream_buffer_encode       # -- Begin function lzma_stream_buffer_encode
	.p2align	4, 0x90
	.type	lzma_stream_buffer_encode,@function
lzma_stream_buffer_encode:              # @lzma_stream_buffer_encode
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $rdi
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $esi
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- $rdx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- $rcx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $r8
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- $r9
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos_ptr <- [DW_OP_plus_uconst 384] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- [DW_OP_plus_uconst 392] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 49 14 prologue_end            # liblzma/common/stream_buffer_encoder.c:49:14
	testq	%rdi, %rdi
	sete	%al
	cmpl	$16, %esi
	setae	%r10b
	.loc	0 49 22 is_stmt 0               # liblzma/common/stream_buffer_encoder.c:49:22
	orb	%al, %r10b
	movl	$11, %eax
	jne	.LBB1_13
.Ltmp6:
# %bb.1:                                # %lor.lhs.false2
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $rdi
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $esi
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- $rdx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- $rcx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $r8
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- $r9
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos_ptr <- [DW_OP_plus_uconst 384] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- [DW_OP_plus_uconst 392] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
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
	subq	$328, %rsp                      # imm = 0x148
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	384(%rsp), %r13
	.loc	0 50 11 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:50:11
	testq	%rcx, %rcx
	sete	%r10b
	testq	%r8, %r8
	setne	%r11b
	.loc	0 50 19 is_stmt 0               # liblzma/common/stream_buffer_encoder.c:50:19
	andb	%r10b, %r11b
	testq	%r9, %r9
	sete	%r10b
	orb	%r11b, %r10b
	testq	%r13, %r13
	sete	%r11b
	orb	%r10b, %r11b
	jne	.LBB1_12
.Ltmp7:
# %bb.2:                                # %lor.lhs.false9
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $rdi
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $esi
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- $rdx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- $rcx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $r8
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- $r9
	.loc	0 0 19                          # liblzma/common/stream_buffer_encoder.c:0:19
	movq	392(%rsp), %r15
	.loc	0 51 43 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:51:43
	cmpq	%r15, (%r13)
.Ltmp8:
	.loc	0 49 6                          # liblzma/common/stream_buffer_encoder.c:49:6
	ja	.LBB1_12
.Ltmp9:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $rdi
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $esi
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- $rdx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- $rcx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $r8
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- $r9
	.loc	0 0 6 is_stmt 0                 # liblzma/common/stream_buffer_encoder.c:0:6
	movq	%rdi, %r14
.Ltmp10:
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
.Ltmp11:
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	movq	%r8, %rbp
.Ltmp12:
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
.Ltmp13:
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	movq	%r9, 24(%rsp)                   # 8-byte Spill
.Ltmp14:
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	movl	%esi, %ebx
.Ltmp15:
	.loc	0 54 7 is_stmt 1                # liblzma/common/stream_buffer_encoder.c:54:7
	movl	%esi, %edi
	callq	lzma_check_is_supported@PLT
.Ltmp16:
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	testb	%al, %al
.Ltmp17:
	.loc	0 54 6 is_stmt 0                # liblzma/common/stream_buffer_encoder.c:54:6
	je	.LBB1_11
.Ltmp18:
# %bb.4:                                # %if.end12
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	.loc	0 64 19 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:64:19
	movq	(%r13), %r12
.Ltmp19:
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- $r12
	.loc	0 68 15                         # liblzma/common/stream_buffer_encoder.c:68:15
	movq	%r15, %rcx
	subq	%r12, %rcx
	movl	$10, %eax
	.loc	0 68 25 is_stmt 0               # liblzma/common/stream_buffer_encoder.c:68:25
	cmpq	$25, %rcx
.Ltmp20:
	.loc	0 68 6                          # liblzma/common/stream_buffer_encoder.c:68:6
	jb	.LBB1_12
.Ltmp21:
# %bb.5:                                # %if.end15
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- $r12
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- undef
	.loc	0 76 20 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:76:20
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	$0, 96(%rsp)
	.loc	0 76 35 is_stmt 0               # liblzma/common/stream_buffer_encoder.c:76:35
	movl	%ebx, 64(%rsp)
	movq	24(%rsp), %rax                  # 8-byte Reload
.Ltmp22:
	.loc	0 81 51 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:81:51
	leaq	(%rax,%r12), %rsi
	leaq	48(%rsp), %rdi
	.loc	0 81 6 is_stmt 0                # liblzma/common/stream_buffer_encoder.c:81:6
	callq	lzma_stream_header_encode@PLT
.Ltmp23:
	movl	%eax, %ecx
	movl	$11, %eax
	.loc	0 82 4 is_stmt 1                # liblzma/common/stream_buffer_encoder.c:82:4
	testl	%ecx, %ecx
.Ltmp24:
	.loc	0 81 6                          # liblzma/common/stream_buffer_encoder.c:81:6
	jne	.LBB1_12
.Ltmp25:
# %bb.6:                                # %if.end21
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- $r12
	.loc	0 0 0 is_stmt 0                 # liblzma/common/stream_buffer_encoder.c:0:0
	addq	$-12, %r15
.Ltmp26:
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- $r15
	.loc	0 85 10 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:85:10
	addq	$12, %r12
.Ltmp27:
	movq	%r12, 32(%rsp)
.Ltmp28:
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 76 20                         # liblzma/common/stream_buffer_encoder.c:76:20
	xorps	%xmm0, %xmm0
	.loc	0 88 13                         # liblzma/common/stream_buffer_encoder.c:88:13
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 304(%rsp)
	movaps	%xmm0, 288(%rsp)
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	movaps	%xmm0, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 128(%rsp)
	.loc	0 88 21 is_stmt 0               # liblzma/common/stream_buffer_encoder.c:88:21
	movl	%ebx, 120(%rsp)
	movq	%r14, 144(%rsp)
.Ltmp29:
	.loc	0 94 14 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:94:14
	testq	%rbp, %rbp
.Ltmp30:
	.loc	0 94 6 is_stmt 0                # liblzma/common/stream_buffer_encoder.c:94:6
	je	.LBB1_14
.Ltmp31:
# %bb.7:                                # %do.body
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- $r15
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 0 6                           # liblzma/common/stream_buffer_encoder.c:0:6
	movq	%rbp, %rcx
.Ltmp32:
	.loc	0 95 3 is_stmt 1                # liblzma/common/stream_buffer_encoder.c:95:3
	movq	%r15, (%rsp)
	leaq	112(%rsp), %rdi
	leaq	32(%rsp), %r9
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %r8                   # 8-byte Reload
	callq	lzma_block_buffer_encode@PLT
.Ltmp33:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 95 3 is_stmt 0                # liblzma/common/stream_buffer_encoder.c:95:3
	testl	%eax, %eax
	jne	.LBB1_12
.Ltmp34:
# %bb.8:                                # %if.end45.thread
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- $r15
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 0 3                           # liblzma/common/stream_buffer_encoder.c:0:3
	movq	16(%rsp), %rdi                  # 8-byte Reload
.Ltmp35:
	.loc	0 103 19 is_stmt 1              # liblzma/common/stream_buffer_encoder.c:103:19
	callq	lzma_index_init@PLT
.Ltmp36:
	#DEBUG_VALUE: i <- $rax
	.loc	0 104 9                         # liblzma/common/stream_buffer_encoder.c:104:9
	testq	%rax, %rax
.Ltmp37:
	.loc	0 104 7 is_stmt 0               # liblzma/common/stream_buffer_encoder.c:104:7
	je	.LBB1_20
.Ltmp38:
# %bb.9:                                # %if.end55
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- $r15
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- $rax
	.loc	0 0 0                           # liblzma/common/stream_buffer_encoder.c:0:0
	movq	%rax, %r12
.Ltmp39:
	#DEBUG_VALUE: ret <- 0
	leaq	112(%rsp), %rdi
.Ltmp40:
	.loc	0 111 6 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:111:6
	callq	lzma_block_unpadded_size@PLT
.Ltmp41:
	#DEBUG_VALUE: i <- $r12
	.loc	0 112 12                        # liblzma/common/stream_buffer_encoder.c:112:12
	movq	136(%rsp), %rcx
	.loc	0 110 10                        # liblzma/common/stream_buffer_encoder.c:110:10
	movq	%r12, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%rax, %rdx
	callq	lzma_index_append@PLT
.Ltmp42:
	#DEBUG_VALUE: ret <- $eax
	.loc	0 116 11                        # liblzma/common/stream_buffer_encoder.c:116:11
	testl	%eax, %eax
.Ltmp43:
	.loc	0 116 7 is_stmt 0               # liblzma/common/stream_buffer_encoder.c:116:7
	je	.LBB1_15
.Ltmp44:
# %bb.10:                               # %cleanup66.thread133
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- $r15
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- $r12
	#DEBUG_VALUE: ret <- $eax
	#DEBUG_VALUE: ret <- $eax
	.loc	0 123 3 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:123:3
	movq	%r12, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	%eax, %ebx
.Ltmp45:
	#DEBUG_VALUE: ret <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- [DW_OP_LLVM_entry_value 1] $esi
	callq	lzma_index_end@PLT
.Ltmp46:
	.loc	0 0 3 is_stmt 0                 # liblzma/common/stream_buffer_encoder.c:0:3
	movl	%ebx, %eax
	jmp	.LBB1_12
.Ltmp47:
.LBB1_11:
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	movl	$3, %eax
.Ltmp48:
.LBB1_12:
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_LLVM_entry_value 1] $r9
	addq	$328, %rsp                      # imm = 0x148
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
.Ltmp49:
.LBB1_13:                               # %return
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 140 1 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:140:1
	retq
.Ltmp50:
.LBB1_14:                               # %if.end45
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- $r15
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 0 1 is_stmt 0                 # liblzma/common/stream_buffer_encoder.c:0:1
	movq	16(%rsp), %rdi                  # 8-byte Reload
.Ltmp51:
	.loc	0 103 19 is_stmt 1              # liblzma/common/stream_buffer_encoder.c:103:19
	callq	lzma_index_init@PLT
.Ltmp52:
	movq	%rax, %r12
.Ltmp53:
	#DEBUG_VALUE: i <- $r12
	.loc	0 104 9                         # liblzma/common/stream_buffer_encoder.c:104:9
	testq	%rax, %rax
.Ltmp54:
	.loc	0 104 7 is_stmt 0               # liblzma/common/stream_buffer_encoder.c:104:7
	je	.LBB1_20
.Ltmp55:
.LBB1_15:                               # %cleanup66
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- $r15
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- $r12
	.loc	0 0 7                           # liblzma/common/stream_buffer_encoder.c:0:7
	leaq	32(%rsp), %rdx
.Ltmp56:
	.loc	0 117 10 is_stmt 1              # liblzma/common/stream_buffer_encoder.c:117:10
	movq	%r12, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%r15, %rcx
	callq	lzma_index_buffer_encode@PLT
.Ltmp57:
	movl	%eax, %ebp
.Ltmp58:
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: ret <- $ebp
	.loc	0 120 33                        # liblzma/common/stream_buffer_encoder.c:120:33
	movq	%r12, %rdi
	callq	lzma_index_size@PLT
.Ltmp59:
	.loc	0 120 31 is_stmt 0              # liblzma/common/stream_buffer_encoder.c:120:31
	movq	%rax, 56(%rsp)
.Ltmp60:
	.loc	0 123 3 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:123:3
	movq	%r12, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	lzma_index_end@PLT
.Ltmp61:
	.loc	0 125 11                        # liblzma/common/stream_buffer_encoder.c:125:11
	testl	%ebp, %ebp
	je	.LBB1_18
.Ltmp62:
# %bb.16:
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- $r15
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- $r12
	#DEBUG_VALUE: ret <- $ebp
	.loc	0 0 11 is_stmt 0                # liblzma/common/stream_buffer_encoder.c:0:11
	movl	%ebp, %eax
	jmp	.LBB1_12
.Ltmp63:
.LBB1_20:
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- $rbp
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- $r15
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- $rax
	movl	$5, %eax
.Ltmp64:
	.loc	0 104 7 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:104:7
	jmp	.LBB1_12
.Ltmp65:
.LBB1_18:                               # %cleanup.cont68
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- $r15
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 0 7 is_stmt 0                 # liblzma/common/stream_buffer_encoder.c:0:7
	movq	24(%rsp), %rsi                  # 8-byte Reload
.Ltmp66:
	.loc	0 130 51 is_stmt 1              # liblzma/common/stream_buffer_encoder.c:130:51
	addq	32(%rsp), %rsi
	leaq	48(%rsp), %rdi
	.loc	0 130 6 is_stmt 0               # liblzma/common/stream_buffer_encoder.c:130:6
	callq	lzma_stream_footer_encode@PLT
.Ltmp67:
	movl	%eax, %ecx
	movl	$11, %eax
	.loc	0 131 4 is_stmt 1               # liblzma/common/stream_buffer_encoder.c:131:4
	testl	%ecx, %ecx
.Ltmp68:
	.loc	0 130 6                         # liblzma/common/stream_buffer_encoder.c:130:6
	jne	.LBB1_12
.Ltmp69:
# %bb.19:                               # %if.end73
	#DEBUG_VALUE: lzma_stream_buffer_encode:filters <- $r14
	#DEBUG_VALUE: lzma_stream_buffer_encode:check <- $ebx
	#DEBUG_VALUE: lzma_stream_buffer_encode:allocator <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_stream_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_size <- $r15
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- [DW_OP_plus_uconst 32, DW_OP_deref] $rsp
	.loc	0 134 10                        # liblzma/common/stream_buffer_encoder.c:134:10
	movq	32(%rsp), %rax
	addq	$12, %rax
.Ltmp70:
	#DEBUG_VALUE: lzma_stream_buffer_encode:out_pos <- $rax
	.loc	0 138 15                        # liblzma/common/stream_buffer_encoder.c:138:15
	movq	%rax, (%r13)
	xorl	%eax, %eax
.Ltmp71:
	.loc	0 0 15 is_stmt 0                # liblzma/common/stream_buffer_encoder.c:0:15
	jmp	.LBB1_12
.Ltmp72:
.Lfunc_end1:
	.size	lzma_stream_buffer_encode, .Lfunc_end1-lzma_stream_buffer_encode
	.cfi_endproc
	.file	5 "liblzma/api/lzma" "stream_flags.h" md5 0xd3814c86a389337e759db33a259f1072
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	7 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	8 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/api/lzma" "index.h" md5 0x923fbd07d3b348bf7a676d089b5c066f
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	14                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	128                             # 384
	.byte	3                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	136                             # 392
	.byte	3                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
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
	.byte	9                               # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	14                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	17                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
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
	.byte	1                               # Abbrev [1] 0xc:0x573 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x64:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x67:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6a:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6d:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x71:0xc DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x79:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x7d:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x7e:0x28 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	181                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x8d:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x96:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	1396                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x9f:0x6 DW_TAG_call_site
	.long	166                             # DW_AT_call_origin
	.byte	1                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xa6:0xf DW_TAG_subprogram
	.byte	21                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	181                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0xaf:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xb5:0x8 DW_TAG_typedef
	.long	189                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xbd:0x4 DW_TAG_base_type
	.byte	22                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xc1:0xe5 DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	475                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xd0:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	1061                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0xd9:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xe2:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	1113                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0xeb:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	1206                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0xf4:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xfd:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	707                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x106:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	1216                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x10f:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x118:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	48
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	493                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x123:0xc DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.asciz	"\360"
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.long	778                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x12f:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.long	181                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x138:0x10 DW_TAG_lexical_block
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp34-.Ltmp32                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0x13e:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.long	1401                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x148:0x15 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	8                               # Abbrev [8] 0x14a:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.long	1236                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x153:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	475                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x15d:0x6 DW_TAG_call_site
	.long	422                             # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x163:0x6 DW_TAG_call_site
	.long	456                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x169:0x6 DW_TAG_call_site
	.long	728                             # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x16f:0x6 DW_TAG_call_site
	.long	1221                            # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x175:0x6 DW_TAG_call_site
	.long	1251                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x17b:0x6 DW_TAG_call_site
	.long	1276                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x181:0x6 DW_TAG_call_site
	.long	1306                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x187:0x6 DW_TAG_call_site
	.long	1221                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x18d:0x6 DW_TAG_call_site
	.long	1322                            # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x193:0x6 DW_TAG_call_site
	.long	1362                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x199:0x6 DW_TAG_call_site
	.long	1306                            # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x19f:0x6 DW_TAG_call_site
	.long	1377                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x1a6:0xe DW_TAG_subprogram
	.byte	24                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	436                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x1ae:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1b4:0x8 DW_TAG_typedef
	.long	444                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1bc:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x1c0:0x8 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x1c8:0x13 DW_TAG_subprogram
	.byte	28                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	475                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x1d0:0x5 DW_TAG_formal_parameter
	.long	483                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1d5:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1db:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x1e3:0x5 DW_TAG_pointer_type
	.long	488                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1e8:0x5 DW_TAG_const_type
	.long	493                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1ed:0x8 DW_TAG_typedef
	.long	501                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x1f5:0x9e DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x1f9:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x202:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x20b:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	448                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x214:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	699                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x21d:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	699                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x226:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	699                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x22f:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	699                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x238:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x241:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	37                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x24a:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	38                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x253:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	39                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x25c:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x265:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	41                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x26e:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	42                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x277:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	43                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x280:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x289:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x293:0x8 DW_TAG_typedef
	.long	667                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x29b:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2a3:0x8 DW_TAG_typedef
	.long	683                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2ab:0x8 DW_TAG_typedef
	.long	691                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2b3:0x8 DW_TAG_typedef
	.long	189                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2bb:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x2c3:0x5 DW_TAG_pointer_type
	.long	712                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2c8:0x8 DW_TAG_typedef
	.long	720                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2d0:0x8 DW_TAG_typedef
	.long	444                             # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2d8:0x2d DW_TAG_subprogram
	.byte	56                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	492                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	475                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x2e1:0x5 DW_TAG_formal_parameter
	.long	773                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2e6:0x5 DW_TAG_formal_parameter
	.long	1113                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2eb:0x5 DW_TAG_formal_parameter
	.long	1206                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2f0:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2f5:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2fa:0x5 DW_TAG_formal_parameter
	.long	1216                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2ff:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x305:0x5 DW_TAG_pointer_type
	.long	778                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x30a:0x8 DW_TAG_typedef
	.long	786                             # DW_AT_type
	.byte	75                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x312:0x113 DW_TAG_structure_type
	.byte	208                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x316:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x31f:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x328:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	448                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x331:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x33a:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x343:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	1061                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x34c:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	1097                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x355:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x35e:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x367:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x370:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x379:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x382:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x38b:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x394:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x39d:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3a6:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3af:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3b8:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	699                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3c1:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	699                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	188                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3ca:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	699                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3d3:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	699                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3dc:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	200                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3e5:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	201                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3ee:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.byte	202                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x3f7:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	203                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x400:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	204                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x409:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	205                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x412:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	206                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x41b:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	207                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x425:0x5 DW_TAG_pointer_type
	.long	1066                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x42a:0x8 DW_TAG_typedef
	.long	1074                            # DW_AT_type
	.byte	63                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x432:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x436:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	675                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x43f:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x449:0xc DW_TAG_array_type
	.long	712                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x44e:0x6 DW_TAG_subrange_type
	.long	1109                            # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x455:0x4 DW_TAG_base_type
	.byte	65                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	17                              # Abbrev [17] 0x459:0x5 DW_TAG_pointer_type
	.long	1118                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x45e:0x9 DW_TAG_typedef
	.long	1127                            # DW_AT_type
	.byte	79                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x467:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x46c:0xa DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	1163                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x476:0xa DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	1189                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x480:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	125                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x48b:0x5 DW_TAG_pointer_type
	.long	1168                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x490:0x15 DW_TAG_subroutine_type
	.long	125                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x495:0x5 DW_TAG_formal_parameter
	.long	125                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x49a:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x49f:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x4a5:0x5 DW_TAG_pointer_type
	.long	1194                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x4aa:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x4ab:0x5 DW_TAG_formal_parameter
	.long	125                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4b0:0x5 DW_TAG_formal_parameter
	.long	125                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x4b6:0x5 DW_TAG_pointer_type
	.long	1211                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x4bb:0x5 DW_TAG_const_type
	.long	712                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x4c0:0x5 DW_TAG_pointer_type
	.long	181                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4c5:0xf DW_TAG_subprogram
	.byte	80                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1236                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x4ce:0x5 DW_TAG_formal_parameter
	.long	1113                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x4d4:0x5 DW_TAG_pointer_type
	.long	1241                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4d9:0x8 DW_TAG_typedef
	.long	1249                            # DW_AT_type
	.byte	82                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x4e1:0x2 DW_TAG_structure_type
	.byte	81                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	10                              # Abbrev [10] 0x4e3:0xf DW_TAG_subprogram
	.byte	83                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	675                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x4ec:0x5 DW_TAG_formal_parameter
	.long	1266                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x4f2:0x5 DW_TAG_pointer_type
	.long	1271                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x4f7:0x5 DW_TAG_const_type
	.long	778                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4fc:0x1e DW_TAG_subprogram
	.byte	84                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	343                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	475                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x505:0x5 DW_TAG_formal_parameter
	.long	1236                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x50a:0x5 DW_TAG_formal_parameter
	.long	1113                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x50f:0x5 DW_TAG_formal_parameter
	.long	675                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x514:0x5 DW_TAG_formal_parameter
	.long	675                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x51a:0x10 DW_TAG_subprogram
	.byte	85                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	315                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x51f:0x5 DW_TAG_formal_parameter
	.long	1236                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x524:0x5 DW_TAG_formal_parameter
	.long	1113                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x52a:0x1e DW_TAG_subprogram
	.byte	86                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	648                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	475                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x533:0x5 DW_TAG_formal_parameter
	.long	1352                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x538:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x53d:0x5 DW_TAG_formal_parameter
	.long	1216                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x542:0x5 DW_TAG_formal_parameter
	.long	181                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x548:0x5 DW_TAG_pointer_type
	.long	1357                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x54d:0x5 DW_TAG_const_type
	.long	1241                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x552:0xf DW_TAG_subprogram
	.byte	87                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	424                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	675                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x55b:0x5 DW_TAG_formal_parameter
	.long	1352                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x561:0x13 DW_TAG_subprogram
	.byte	88                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	475                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x569:0x5 DW_TAG_formal_parameter
	.long	483                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x56e:0x5 DW_TAG_formal_parameter
	.long	707                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x574:0x5 DW_TAG_const_type
	.long	181                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x579:0x5 DW_TAG_const_type
	.long	475                             # DW_AT_type
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
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	420                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/stream_buffer_encoder.c" # string offset=105
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
	.asciz	"LZMA_CHECK_NONE"               # string offset=384
.Linfo_string17:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=400
.Linfo_string18:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=417
.Linfo_string19:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=434
.Linfo_string20:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=452
.Linfo_string21:
	.asciz	"lzma_block_buffer_bound"       # string offset=471
.Linfo_string22:
	.asciz	"unsigned long"                 # string offset=495
.Linfo_string23:
	.asciz	"size_t"                        # string offset=509
.Linfo_string24:
	.asciz	"lzma_check_is_supported"       # string offset=516
.Linfo_string25:
	.asciz	"unsigned char"                 # string offset=540
.Linfo_string26:
	.asciz	"lzma_bool"                     # string offset=554
.Linfo_string27:
	.asciz	"lzma_check"                    # string offset=564
.Linfo_string28:
	.asciz	"lzma_stream_header_encode"     # string offset=575
.Linfo_string29:
	.asciz	"lzma_ret"                      # string offset=601
.Linfo_string30:
	.asciz	"version"                       # string offset=610
.Linfo_string31:
	.asciz	"__uint32_t"                    # string offset=618
.Linfo_string32:
	.asciz	"uint32_t"                      # string offset=629
.Linfo_string33:
	.asciz	"backward_size"                 # string offset=638
.Linfo_string34:
	.asciz	"__uint64_t"                    # string offset=652
.Linfo_string35:
	.asciz	"uint64_t"                      # string offset=663
.Linfo_string36:
	.asciz	"lzma_vli"                      # string offset=672
.Linfo_string37:
	.asciz	"check"                         # string offset=681
.Linfo_string38:
	.asciz	"reserved_enum1"                # string offset=687
.Linfo_string39:
	.asciz	"lzma_reserved_enum"            # string offset=702
.Linfo_string40:
	.asciz	"reserved_enum2"                # string offset=721
.Linfo_string41:
	.asciz	"reserved_enum3"                # string offset=736
.Linfo_string42:
	.asciz	"reserved_enum4"                # string offset=751
.Linfo_string43:
	.asciz	"reserved_bool1"                # string offset=766
.Linfo_string44:
	.asciz	"reserved_bool2"                # string offset=781
.Linfo_string45:
	.asciz	"reserved_bool3"                # string offset=796
.Linfo_string46:
	.asciz	"reserved_bool4"                # string offset=811
.Linfo_string47:
	.asciz	"reserved_bool5"                # string offset=826
.Linfo_string48:
	.asciz	"reserved_bool6"                # string offset=841
.Linfo_string49:
	.asciz	"reserved_bool7"                # string offset=856
.Linfo_string50:
	.asciz	"reserved_bool8"                # string offset=871
.Linfo_string51:
	.asciz	"reserved_int1"                 # string offset=886
.Linfo_string52:
	.asciz	"reserved_int2"                 # string offset=900
.Linfo_string53:
	.asciz	"lzma_stream_flags"             # string offset=914
.Linfo_string54:
	.asciz	"__uint8_t"                     # string offset=932
.Linfo_string55:
	.asciz	"uint8_t"                       # string offset=942
.Linfo_string56:
	.asciz	"lzma_block_buffer_encode"      # string offset=950
.Linfo_string57:
	.asciz	"header_size"                   # string offset=975
.Linfo_string58:
	.asciz	"compressed_size"               # string offset=987
.Linfo_string59:
	.asciz	"uncompressed_size"             # string offset=1003
.Linfo_string60:
	.asciz	"filters"                       # string offset=1021
.Linfo_string61:
	.asciz	"id"                            # string offset=1029
.Linfo_string62:
	.asciz	"options"                       # string offset=1032
.Linfo_string63:
	.asciz	"lzma_filter"                   # string offset=1040
.Linfo_string64:
	.asciz	"raw_check"                     # string offset=1052
.Linfo_string65:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=1062
.Linfo_string66:
	.asciz	"reserved_ptr1"                 # string offset=1082
.Linfo_string67:
	.asciz	"reserved_ptr2"                 # string offset=1096
.Linfo_string68:
	.asciz	"reserved_ptr3"                 # string offset=1110
.Linfo_string69:
	.asciz	"reserved_int3"                 # string offset=1124
.Linfo_string70:
	.asciz	"reserved_int4"                 # string offset=1138
.Linfo_string71:
	.asciz	"reserved_int5"                 # string offset=1152
.Linfo_string72:
	.asciz	"reserved_int6"                 # string offset=1166
.Linfo_string73:
	.asciz	"reserved_int7"                 # string offset=1180
.Linfo_string74:
	.asciz	"reserved_int8"                 # string offset=1194
.Linfo_string75:
	.asciz	"lzma_block"                    # string offset=1208
.Linfo_string76:
	.asciz	"alloc"                         # string offset=1219
.Linfo_string77:
	.asciz	"free"                          # string offset=1225
.Linfo_string78:
	.asciz	"opaque"                        # string offset=1230
.Linfo_string79:
	.asciz	"lzma_allocator"                # string offset=1237
.Linfo_string80:
	.asciz	"lzma_index_init"               # string offset=1252
.Linfo_string81:
	.asciz	"lzma_index_s"                  # string offset=1268
.Linfo_string82:
	.asciz	"lzma_index"                    # string offset=1281
.Linfo_string83:
	.asciz	"lzma_block_unpadded_size"      # string offset=1292
.Linfo_string84:
	.asciz	"lzma_index_append"             # string offset=1317
.Linfo_string85:
	.asciz	"lzma_index_end"                # string offset=1335
.Linfo_string86:
	.asciz	"lzma_index_buffer_encode"      # string offset=1350
.Linfo_string87:
	.asciz	"lzma_index_size"               # string offset=1375
.Linfo_string88:
	.asciz	"lzma_stream_footer_encode"     # string offset=1391
.Linfo_string89:
	.asciz	"lzma_stream_buffer_bound"      # string offset=1417
.Linfo_string90:
	.asciz	"lzma_stream_buffer_encode"     # string offset=1442
.Linfo_string91:
	.asciz	"block_bound"                   # string offset=1468
.Linfo_string92:
	.asciz	"stream_flags"                  # string offset=1480
.Linfo_string93:
	.asciz	"block"                         # string offset=1493
.Linfo_string94:
	.asciz	"allocator"                     # string offset=1499
.Linfo_string95:
	.asciz	"in"                            # string offset=1509
.Linfo_string96:
	.asciz	"in_size"                       # string offset=1512
.Linfo_string97:
	.asciz	"out"                           # string offset=1520
.Linfo_string98:
	.asciz	"out_pos_ptr"                   # string offset=1524
.Linfo_string99:
	.asciz	"out_size"                      # string offset=1536
.Linfo_string100:
	.asciz	"out_pos"                       # string offset=1545
.Linfo_string101:
	.asciz	"ret_"                          # string offset=1553
.Linfo_string102:
	.asciz	"i"                             # string offset=1558
.Linfo_string103:
	.asciz	"ret"                           # string offset=1560
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp1
	.quad	.Lfunc_begin1
	.quad	.Ltmp32
	.quad	.Ltmp16
	.quad	.Ltmp23
	.quad	.Ltmp33
	.quad	.Ltmp36
	.quad	.Ltmp41
	.quad	.Ltmp42
	.quad	.Ltmp46
	.quad	.Ltmp52
	.quad	.Ltmp57
	.quad	.Ltmp59
	.quad	.Ltmp61
	.quad	.Ltmp67
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
