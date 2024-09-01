	.text
	.file	"block_buffer_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/block_buffer_encoder.c" md5 0x898d84ac5cb0ab1b377dfd08911813d3
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.file	4 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	5 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.globl	lzma_block_buffer_bound         # -- Begin function lzma_block_buffer_bound
	.p2align	4, 0x90
	.type	lzma_block_buffer_bound,@function
lzma_block_buffer_bound:                # @lzma_block_buffer_bound
.Lfunc_begin0:
	.loc	0 56 0                          # liblzma/common/block_buffer_encoder.c:56:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_buffer_bound:uncompressed_size <- $rdi
	#DEBUG_VALUE: lzma2_bound:uncompressed_size <- $rdi
	movabsq	$9223372036854774715, %rax      # imm = 0x7FFFFFFFFFFFFBBB
.Ltmp0:
	.loc	0 35 24 prologue_end            # liblzma/common/block_buffer_encoder.c:35:24
	leaq	1(%rax), %rcx
	cmpq	%rcx, %rdi
.Ltmp1:
	.loc	0 35 6 is_stmt 0                # liblzma/common/block_buffer_encoder.c:35:6
	jbe	.LBB0_2
.Ltmp2:
# %bb.1:
	#DEBUG_VALUE: lzma_block_buffer_bound:uncompressed_size <- $rdi
	.loc	0 0 6                           # liblzma/common/block_buffer_encoder.c:0:6
	xorl	%eax, %eax
	.loc	0 78 1 is_stmt 1                # liblzma/common/block_buffer_encoder.c:78:1
	retq
.Ltmp3:
.LBB0_2:                                # %if.end.i
	#DEBUG_VALUE: lzma_block_buffer_bound:uncompressed_size <- $rdi
	#DEBUG_VALUE: lzma2_bound:uncompressed_size <- $rdi
	.loc	0 42 66                         # liblzma/common/block_buffer_encoder.c:42:66
	leaq	65535(%rdi), %rcx
	.loc	0 43 5                          # liblzma/common/block_buffer_encoder.c:43:5
	shrq	$16, %rcx
	.loc	0 44 4                          # liblzma/common/block_buffer_encoder.c:44:4
	leaq	(%rcx,%rcx,2), %rcx
.Ltmp4:
	#DEBUG_VALUE: lzma2_bound:overhead <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rcx
	.loc	0 47 26                         # liblzma/common/block_buffer_encoder.c:47:26
	subq	%rcx, %rax
	.loc	0 47 37 is_stmt 0               # liblzma/common/block_buffer_encoder.c:47:37
	cmpq	%rdi, %rax
	jae	.LBB0_4
.Ltmp5:
# %bb.3:
	#DEBUG_VALUE: lzma_block_buffer_bound:uncompressed_size <- $rdi
	.loc	0 0 37                          # liblzma/common/block_buffer_encoder.c:0:37
	xorl	%eax, %eax
	.loc	0 78 1 is_stmt 1                # liblzma/common/block_buffer_encoder.c:78:1
	retq
.Ltmp6:
.LBB0_4:                                # %lzma2_bound.exit
	#DEBUG_VALUE: lzma_block_buffer_bound:uncompressed_size <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_bound:lzma2_size <- undef
	.loc	0 63 6                          # liblzma/common/block_buffer_encoder.c:63:6
	leaq	(%rdi,%rcx), %rax
	addq	$4, %rax
	andq	$-4, %rax
	addq	$92, %rax
	.loc	0 78 1                          # liblzma/common/block_buffer_encoder.c:78:1
	retq
.Ltmp7:
.Lfunc_end0:
	.size	lzma_block_buffer_bound, .Lfunc_end0-lzma_block_buffer_bound
	.cfi_endproc
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	7 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	8 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
                                        # -- End function
	.globl	lzma_block_buffer_encode        # -- Begin function lzma_block_buffer_encode
	.p2align	4, 0x90
	.type	lzma_block_buffer_encode,@function
lzma_block_buffer_encode:               # @lzma_block_buffer_encode
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $r9
	#DEBUG_VALUE: lzma_block_buffer_encode:out_size <- [DW_OP_plus_uconst 192] [$rsp+0]
	.loc	0 230 12 prologue_end           # liblzma/common/block_buffer_encoder.c:230:12
	testq	%rdi, %rdi
	.loc	0 230 20 is_stmt 0              # liblzma/common/block_buffer_encoder.c:230:20
	je	.LBB1_2
.Ltmp8:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $r9
	#DEBUG_VALUE: lzma_block_buffer_encode:out_size <- [DW_OP_plus_uconst 192] [$rsp+0]
	.loc	0 230 27                        # liblzma/common/block_buffer_encoder.c:230:27
	testq	%rdx, %rdx
	sete	%al
	testq	%rcx, %rcx
	setne	%r10b
	.loc	0 230 35                        # liblzma/common/block_buffer_encoder.c:230:35
	andb	%al, %r10b
	testq	%r8, %r8
	sete	%al
	testq	%r9, %r9
	sete	%r11b
	orb	%al, %r11b
	orb	%r10b, %r11b
	je	.LBB1_3
.Ltmp9:
.LBB1_2:
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $r9
	#DEBUG_VALUE: lzma_block_buffer_encode:out_size <- [DW_OP_plus_uconst 192] [$rsp+0]
	.loc	0 0 35                          # liblzma/common/block_buffer_encoder.c:0:35
	movl	$11, %eax
	.loc	0 305 1 is_stmt 1               # liblzma/common/block_buffer_encoder.c:305:1
	retq
.Ltmp10:
.LBB1_3:                                # %lor.lhs.false7
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $r9
	#DEBUG_VALUE: lzma_block_buffer_encode:out_size <- [DW_OP_plus_uconst 192] [$rsp+0]
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
	movq	192(%rsp), %r12
.Ltmp11:
	.loc	0 231 35                        # liblzma/common/block_buffer_encoder.c:231:35
	cmpq	%r12, (%r9)
.Ltmp12:
	.loc	0 230 6                         # liblzma/common/block_buffer_encoder.c:230:6
	jbe	.LBB1_5
.Ltmp13:
.LBB1_4:
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $r9
	.loc	0 0 6 is_stmt 0                 # liblzma/common/block_buffer_encoder.c:0:6
	movl	$11, %eax
.Ltmp14:
	.loc	0 240 4 is_stmt 1               # liblzma/common/block_buffer_encoder.c:240:4
	jmp	.LBB1_22
.Ltmp15:
.LBB1_5:                                # %if.end
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $r9
	.loc	0 0 4 is_stmt 0                 # liblzma/common/block_buffer_encoder.c:0:4
	movl	$8, %eax
.Ltmp16:
	.loc	0 236 21 is_stmt 1              # liblzma/common/block_buffer_encoder.c:236:21
	cmpl	$0, (%rdi)
.Ltmp17:
	.loc	0 236 6 is_stmt 0               # liblzma/common/block_buffer_encoder.c:236:6
	je	.LBB1_6
.Ltmp18:
.LBB1_22:
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 0 6                           # liblzma/common/block_buffer_encoder.c:0:6
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
	.loc	0 305 1 is_stmt 1               # liblzma/common/block_buffer_encoder.c:305:1
	retq
.Ltmp19:
.LBB1_6:                                # %if.end11
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $r9
	.loc	0 239 28                        # liblzma/common/block_buffer_encoder.c:239:28
	movl	8(%rdi), %r10d
	.loc	0 239 35 is_stmt 0              # liblzma/common/block_buffer_encoder.c:239:35
	cmpl	$15, %r10d
	.loc	0 240 4 is_stmt 1               # liblzma/common/block_buffer_encoder.c:240:4
	ja	.LBB1_4
.Ltmp20:
# %bb.8:                                # %lor.lhs.false13
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $r9
	.loc	0 240 22 is_stmt 0              # liblzma/common/block_buffer_encoder.c:240:22
	cmpq	$0, 32(%rdi)
	movl	$11, %eax
.Ltmp21:
	.loc	0 239 6 is_stmt 1               # liblzma/common/block_buffer_encoder.c:239:6
	je	.LBB1_22
.Ltmp22:
# %bb.9:                                # %if.end16
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $r9
	.loc	0 0 6 is_stmt 0                 # liblzma/common/block_buffer_encoder.c:0:6
	movq	%rsi, %r15
.Ltmp23:
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
.Ltmp24:
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
.Ltmp25:
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	movq	%rdi, %r13
.Ltmp26:
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r13
	movq	%r8, 24(%rsp)                   # 8-byte Spill
.Ltmp27:
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	movq	%r9, %rbp
.Ltmp28:
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	.loc	0 243 7 is_stmt 1               # liblzma/common/block_buffer_encoder.c:243:7
	movl	%r10d, %edi
	callq	lzma_check_is_supported@PLT
.Ltmp29:
	testb	%al, %al
.Ltmp30:
	.loc	0 243 6 is_stmt 0               # liblzma/common/block_buffer_encoder.c:243:6
	je	.LBB1_21
.Ltmp31:
# %bb.10:                               # %if.end19
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r13
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	.loc	0 0 6                           # liblzma/common/block_buffer_encoder.c:0:6
	movl	(%rbp), %eax
	.loc	0 249 24 is_stmt 1              # liblzma/common/block_buffer_encoder.c:249:24
	movl	%r12d, %ecx
	subl	%eax, %ecx
	.loc	0 249 36 is_stmt 0              # liblzma/common/block_buffer_encoder.c:249:36
	andl	$3, %ecx
	.loc	0 249 11                        # liblzma/common/block_buffer_encoder.c:249:11
	subq	%rcx, %r12
.Ltmp32:
	#DEBUG_VALUE: lzma_block_buffer_encode:out_size <- $r12
	.loc	0 0 11                          # liblzma/common/block_buffer_encoder.c:0:11
	movq	%r13, %r14
	.loc	0 252 51 is_stmt 1              # liblzma/common/block_buffer_encoder.c:252:51
	movl	8(%r13), %edi
	.loc	0 252 28 is_stmt 0              # liblzma/common/block_buffer_encoder.c:252:28
	callq	lzma_check_size@PLT
.Ltmp33:
	movl	%eax, %ebx
.Ltmp34:
	#DEBUG_VALUE: lzma_block_buffer_encode:check_size <- $ebx
	.loc	0 256 15 is_stmt 1              # liblzma/common/block_buffer_encoder.c:256:15
	movq	%r12, %rcx
	subq	(%rbp), %rcx
	movl	$10, %eax
	.loc	0 256 26 is_stmt 0              # liblzma/common/block_buffer_encoder.c:256:26
	cmpq	%rbx, %rcx
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
.Ltmp35:
	.loc	0 256 6                         # liblzma/common/block_buffer_encoder.c:256:6
	jbe	.LBB1_22
.Ltmp36:
# %bb.11:                               # %if.end27
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r13
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	#DEBUG_VALUE: lzma_block_buffer_encode:out_size <- $r12
	#DEBUG_VALUE: lzma_block_buffer_encode:check_size <- $ebx
	.loc	0 0 6                           # liblzma/common/block_buffer_encoder.c:0:6
	movq	%rbp, %r9
	.loc	0 259 11 is_stmt 1              # liblzma/common/block_buffer_encoder.c:259:11
	subq	%rbx, %r12
.Ltmp37:
	#DEBUG_VALUE: lzma_block_buffer_encode:out_size <- $r12
	.loc	0 262 23                        # liblzma/common/block_buffer_encoder.c:262:23
	movq	%r12, (%rsp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	block_encode_normal
.Ltmp38:
	#DEBUG_VALUE: lzma_block_buffer_encode:ret <- $eax
	.loc	0 264 6                         # liblzma/common/block_buffer_encoder.c:264:6
	testl	%eax, %eax
	je	.LBB1_14
.Ltmp39:
# %bb.12:                               # %if.end27
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r13
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	#DEBUG_VALUE: lzma_block_buffer_encode:out_size <- $r12
	#DEBUG_VALUE: lzma_block_buffer_encode:check_size <- $ebx
	#DEBUG_VALUE: lzma_block_buffer_encode:ret <- $eax
	cmpl	$10, %eax
	jne	.LBB1_22
.Ltmp40:
# %bb.13:                               # %do.body
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r13
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	#DEBUG_VALUE: lzma_block_buffer_encode:out_size <- $r12
	#DEBUG_VALUE: lzma_block_buffer_encode:check_size <- $ebx
	#DEBUG_VALUE: lzma_block_buffer_encode:ret <- $eax
	.loc	0 275 3                         # liblzma/common/block_buffer_encoder.c:275:3
	movq	%r13, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rbp, %r8
	movq	%r12, %r9
	callq	block_encode_uncompressed
.Ltmp41:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 275 3 is_stmt 0               # liblzma/common/block_buffer_encoder.c:275:3
	testl	%eax, %eax
	jne	.LBB1_22
.Ltmp42:
.LBB1_14:                               # %if.end42
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r13
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	#DEBUG_VALUE: lzma_block_buffer_encode:out_size <- $r12
	#DEBUG_VALUE: lzma_block_buffer_encode:check_size <- $ebx
	.loc	0 0 3                           # liblzma/common/block_buffer_encoder.c:0:3
	movq	%r13, %r12
.Ltmp43:
	.loc	0 284 34 is_stmt 1              # liblzma/common/block_buffer_encoder.c:284:34
	movq	16(%r13), %rax
.Ltmp44:
	#DEBUG_VALUE: i <- $rax
	.loc	0 284 2 is_stmt 0               # liblzma/common/block_buffer_encoder.c:284:2
	testb	$3, %al
	movq	24(%rsp), %r13                  # 8-byte Reload
.Ltmp45:
	je	.LBB1_19
.Ltmp46:
# %bb.15:                               # %for.body
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r12
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	#DEBUG_VALUE: lzma_block_buffer_encode:check_size <- $ebx
	#DEBUG_VALUE: i <- $rax
	#DEBUG_VALUE: i <- $rax
	.loc	0 286 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:286:17
	movq	(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbp)
	.loc	0 286 21 is_stmt 0              # liblzma/common/block_buffer_encoder.c:286:21
	movb	$0, (%r13,%rcx)
.Ltmp47:
	.loc	0 284 59 is_stmt 1              # liblzma/common/block_buffer_encoder.c:284:59
	leal	1(%rax), %ecx
.Ltmp48:
	#DEBUG_VALUE: i <- undef
	.loc	0 284 2 is_stmt 0               # liblzma/common/block_buffer_encoder.c:284:2
	testb	$3, %cl
	je	.LBB1_19
.Ltmp49:
# %bb.16:                               # %for.body.1
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r12
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	#DEBUG_VALUE: lzma_block_buffer_encode:check_size <- $ebx
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 286 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:286:17
	movq	(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbp)
	.loc	0 286 21 is_stmt 0              # liblzma/common/block_buffer_encoder.c:286:21
	movb	$0, (%r13,%rcx)
.Ltmp50:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $rax
	.loc	0 284 54 is_stmt 1              # liblzma/common/block_buffer_encoder.c:284:54
	movl	%eax, %ecx
	andl	$3, %ecx
.Ltmp51:
	.loc	0 284 2 is_stmt 0               # liblzma/common/block_buffer_encoder.c:284:2
	cmpl	$2, %ecx
	je	.LBB1_19
.Ltmp52:
# %bb.17:                               # %for.body.2
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r12
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	#DEBUG_VALUE: lzma_block_buffer_encode:check_size <- $ebx
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $rax
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $rax
	.loc	0 286 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:286:17
	movq	(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbp)
	.loc	0 286 21 is_stmt 0              # liblzma/common/block_buffer_encoder.c:286:21
	movb	$0, (%r13,%rcx)
.Ltmp53:
	.loc	0 284 59 is_stmt 1              # liblzma/common/block_buffer_encoder.c:284:59
	decl	%eax
.Ltmp54:
	#DEBUG_VALUE: i <- undef
	.loc	0 284 2 is_stmt 0               # liblzma/common/block_buffer_encoder.c:284:2
	testb	$3, %al
	je	.LBB1_19
.Ltmp55:
# %bb.18:                               # %for.body.3
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r12
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	#DEBUG_VALUE: lzma_block_buffer_encode:check_size <- $ebx
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 3, DW_OP_stack_value] undef
	.loc	0 286 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:286:17
	movq	(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbp)
	.loc	0 286 21 is_stmt 0              # liblzma/common/block_buffer_encoder.c:286:21
	movb	$0, (%r13,%rax)
.Ltmp56:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 4, DW_OP_stack_value] undef
.LBB1_19:                               # %for.cond.cleanup
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r12
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	#DEBUG_VALUE: lzma_block_buffer_encode:check_size <- $ebx
	.loc	0 0 21                          # liblzma/common/block_buffer_encoder.c:0:21
	xorl	%eax, %eax
.Ltmp57:
	.loc	0 290 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:290:17
	testq	%rbx, %rbx
.Ltmp58:
	.loc	0 290 6 is_stmt 0               # liblzma/common/block_buffer_encoder.c:290:6
	je	.LBB1_22
.Ltmp59:
# %bb.20:                               # %if.then49
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r12
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	#DEBUG_VALUE: lzma_block_buffer_encode:check_size <- $ebx
	.loc	0 295 34 is_stmt 1              # liblzma/common/block_buffer_encoder.c:295:34
	movl	8(%r12), %esi
	leaq	32(%rsp), %r14
	.loc	0 295 3 is_stmt 0               # liblzma/common/block_buffer_encoder.c:295:3
	movq	%r14, %rdi
	callq	lzma_check_init@PLT
.Ltmp60:
	.loc	0 296 36 is_stmt 1              # liblzma/common/block_buffer_encoder.c:296:36
	movl	8(%r12), %esi
	.loc	0 296 3 is_stmt 0               # liblzma/common/block_buffer_encoder.c:296:3
	movq	%r14, %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	callq	lzma_check_update@PLT
.Ltmp61:
	.loc	0 297 36 is_stmt 1              # liblzma/common/block_buffer_encoder.c:297:36
	movl	8(%r12), %esi
	.loc	0 297 3 is_stmt 0               # liblzma/common/block_buffer_encoder.c:297:3
	movq	%r14, %rdi
	callq	lzma_check_finish@PLT
.Ltmp62:
	.loc	0 299 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:299:17
	addq	$40, %r12
.Ltmp63:
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 299 3 is_stmt 0               # liblzma/common/block_buffer_encoder.c:299:3
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.Ltmp64:
	.loc	0 300 14 is_stmt 1              # liblzma/common/block_buffer_encoder.c:300:14
	addq	(%rbp), %r13
	.loc	0 300 3 is_stmt 0               # liblzma/common/block_buffer_encoder.c:300:3
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.Ltmp65:
	.loc	0 0 3                           # liblzma/common/block_buffer_encoder.c:0:3
	xorl	%eax, %eax
	.loc	0 301 12 is_stmt 1              # liblzma/common/block_buffer_encoder.c:301:12
	addq	%rbx, (%rbp)
	jmp	.LBB1_22
.Ltmp66:
.LBB1_21:
	#DEBUG_VALUE: lzma_block_buffer_encode:block <- $r13
	#DEBUG_VALUE: lzma_block_buffer_encode:allocator <- $r15
	#DEBUG_VALUE: lzma_block_buffer_encode:in <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:in_size <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out <- [DW_OP_plus_uconst 24] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_encode:out_pos <- $rbp
	.loc	0 0 12 is_stmt 0                # liblzma/common/block_buffer_encoder.c:0:12
	movl	$3, %eax
	jmp	.LBB1_22
.Lfunc_end1:
	.size	lzma_block_buffer_encode, .Lfunc_end1-lzma_block_buffer_encode
	.cfi_endproc
	.file	9 "liblzma/check" "check.h" md5 0x938220df6e0ab33115ef85b0d8c70c5b
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_encode_normal
	.type	block_encode_normal,@function
block_encode_normal:                    # @block_encode_normal
.Lfunc_begin2:
	.loc	0 166 0 is_stmt 1               # liblzma/common/block_buffer_encoder.c:166:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: block_encode_normal:block <- $rdi
	#DEBUG_VALUE: block_encode_normal:allocator <- $rsi
	#DEBUG_VALUE: block_encode_normal:in <- $rdx
	#DEBUG_VALUE: block_encode_normal:in_size <- $rcx
	#DEBUG_VALUE: block_encode_normal:out <- $r8
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r9
	#DEBUG_VALUE: block_encode_normal:out_size <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lzma2_bound:uncompressed_size <- $rcx
	movabsq	$9223372036854774715, %rax      # imm = 0x7FFFFFFFFFFFFBBB
.Ltmp67:
	.loc	0 35 24 prologue_end            # liblzma/common/block_buffer_encoder.c:35:24
	leaq	1(%rax), %r10
	cmpq	%r10, %rcx
.Ltmp68:
	.loc	0 35 6 is_stmt 0                # liblzma/common/block_buffer_encoder.c:35:6
	ja	.LBB2_2
.Ltmp69:
# %bb.1:                                # %if.end.i
	#DEBUG_VALUE: block_encode_normal:block <- $rdi
	#DEBUG_VALUE: block_encode_normal:allocator <- $rsi
	#DEBUG_VALUE: block_encode_normal:in <- $rdx
	#DEBUG_VALUE: block_encode_normal:in_size <- $rcx
	#DEBUG_VALUE: block_encode_normal:out <- $r8
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r9
	#DEBUG_VALUE: block_encode_normal:out_size <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lzma2_bound:uncompressed_size <- $rcx
	.loc	0 42 66 is_stmt 1               # liblzma/common/block_buffer_encoder.c:42:66
	leaq	65535(%rcx), %r10
	.loc	0 43 5                          # liblzma/common/block_buffer_encoder.c:43:5
	shrq	$16, %r10
	.loc	0 44 4                          # liblzma/common/block_buffer_encoder.c:44:4
	leaq	(%r10,%r10,2), %r10
.Ltmp70:
	#DEBUG_VALUE: lzma2_bound:overhead <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r10
	.loc	0 47 26                         # liblzma/common/block_buffer_encoder.c:47:26
	subq	%r10, %rax
	.loc	0 47 37 is_stmt 0               # liblzma/common/block_buffer_encoder.c:47:37
	cmpq	%rcx, %rax
	jae	.LBB2_4
.Ltmp71:
.LBB2_2:                                # %lzma2_bound.exit.thread
	#DEBUG_VALUE: block_encode_normal:block <- $rdi
	#DEBUG_VALUE: block_encode_normal:allocator <- $rsi
	#DEBUG_VALUE: block_encode_normal:in <- $rdx
	#DEBUG_VALUE: block_encode_normal:in_size <- $rcx
	#DEBUG_VALUE: block_encode_normal:out <- $r8
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r9
	#DEBUG_VALUE: block_encode_normal:out_size <- [DW_OP_plus_uconst 160] [$rsp+0]
	.loc	0 168 25 is_stmt 1              # liblzma/common/block_buffer_encoder.c:168:25
	movq	$0, 16(%rdi)
	movl	$9, %eax
	.loc	0 221 1                         # liblzma/common/block_buffer_encoder.c:221:1
	retq
.Ltmp72:
.LBB2_4:                                # %if.end
	#DEBUG_VALUE: block_encode_normal:block <- $rdi
	#DEBUG_VALUE: block_encode_normal:allocator <- $rsi
	#DEBUG_VALUE: block_encode_normal:in <- $rdx
	#DEBUG_VALUE: block_encode_normal:in_size <- $rcx
	#DEBUG_VALUE: block_encode_normal:out <- $r8
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r9
	#DEBUG_VALUE: block_encode_normal:out_size <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lzma2_bound:uncompressed_size <- $rcx
	#DEBUG_VALUE: lzma2_bound:overhead <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $r10
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
	movq	%rdx, %r15
.Ltmp73:
	#DEBUG_VALUE: block_encode_normal:in <- $r15
	.loc	0 0 1 is_stmt 0                 # liblzma/common/block_buffer_encoder.c:0:1
	movq	%rsi, %r14
.Ltmp74:
	#DEBUG_VALUE: block_encode_normal:allocator <- $r14
	movq	%r8, 8(%rsp)                    # 8-byte Spill
.Ltmp75:
	#DEBUG_VALUE: block_encode_normal:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	movq	%r9, %r13
.Ltmp76:
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r13
	.loc	0 47 6 is_stmt 1                # liblzma/common/block_buffer_encoder.c:47:6
	leaq	1(%rcx,%r10), %rax
.Ltmp77:
	.loc	0 168 25                        # liblzma/common/block_buffer_encoder.c:168:25
	movq	%rax, 16(%rdi)
	movq	%rcx, %r12
	.loc	0 172 27                        # liblzma/common/block_buffer_encoder.c:172:27
	movq	%rcx, 24(%rdi)
	movq	%rdi, %rbx
.Ltmp78:
	.loc	0 173 2                         # liblzma/common/block_buffer_encoder.c:173:2
	callq	lzma_block_header_size@PLT
.Ltmp79:
	#DEBUG_VALUE: block_encode_normal:block <- $rbx
	#DEBUG_VALUE: lzma2_bound:uncompressed_size <- $r12
	#DEBUG_VALUE: block_encode_normal:in_size <- $r12
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 173 2 is_stmt 0               # liblzma/common/block_buffer_encoder.c:173:2
	testl	%eax, %eax
	jne	.LBB2_14
.Ltmp80:
# %bb.5:                                # %do.end
	#DEBUG_VALUE: block_encode_normal:block <- $rbx
	#DEBUG_VALUE: block_encode_normal:allocator <- $r14
	#DEBUG_VALUE: block_encode_normal:in <- $r15
	#DEBUG_VALUE: block_encode_normal:in_size <- $r12
	#DEBUG_VALUE: block_encode_normal:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r13
	.loc	0 0 2                           # liblzma/common/block_buffer_encoder.c:0:2
	movq	160(%rsp), %rcx
.Ltmp81:
	.loc	0 176 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:176:17
	movq	(%r13), %rdx
	.loc	0 176 15 is_stmt 0              # liblzma/common/block_buffer_encoder.c:176:15
	subq	%rdx, %rcx
	.loc	0 176 36                        # liblzma/common/block_buffer_encoder.c:176:36
	movl	4(%rbx), %ebp
	movl	$10, %eax
	.loc	0 176 26                        # liblzma/common/block_buffer_encoder.c:176:26
	cmpq	%rbp, %rcx
.Ltmp82:
	.loc	0 176 6                         # liblzma/common/block_buffer_encoder.c:176:6
	jbe	.LBB2_14
.Ltmp83:
# %bb.6:                                # %if.end9
	#DEBUG_VALUE: block_encode_normal:block <- $rbx
	#DEBUG_VALUE: block_encode_normal:allocator <- $r14
	#DEBUG_VALUE: block_encode_normal:in <- $r15
	#DEBUG_VALUE: block_encode_normal:in_size <- $r12
	#DEBUG_VALUE: block_encode_normal:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r13
	#DEBUG_VALUE: block_encode_normal:out_start <- $rdx
	.loc	0 0 6                           # liblzma/common/block_buffer_encoder.c:0:6
	movq	%rdx, (%rsp)                    # 8-byte Spill
.Ltmp84:
	#DEBUG_VALUE: block_encode_normal:out_start <- [DW_OP_deref] $rsp
	.loc	0 180 11 is_stmt 1              # liblzma/common/block_buffer_encoder.c:180:11
	addq	%rdx, %rbp
	movq	%rbp, (%r13)
.Ltmp85:
	.loc	0 184 35                        # liblzma/common/block_buffer_encoder.c:184:35
	movq	16(%rbx), %rcx
.Ltmp86:
	#DEBUG_VALUE: block_encode_normal:out_size <- undef
	.loc	0 0 35 is_stmt 0                # liblzma/common/block_buffer_encoder.c:0:35
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
.Ltmp87:
	.loc	0 189 18 is_stmt 1              # liblzma/common/block_buffer_encoder.c:189:18
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	$-1, 40(%rsp)
	.loc	0 191 36                        # liblzma/common/block_buffer_encoder.c:191:36
	movq	32(%rbx), %rdx
	leaq	32(%rsp), %rdi
	.loc	0 190 17                        # liblzma/common/block_buffer_encoder.c:190:17
	movq	%r14, %rsi
	callq	lzma_raw_encoder_init@PLT
.Ltmp88:
	#DEBUG_VALUE: block_encode_normal:ret <- $eax
	.loc	0 193 10                        # liblzma/common/block_buffer_encoder.c:193:10
	testl	%eax, %eax
.Ltmp89:
	.loc	0 193 6 is_stmt 0               # liblzma/common/block_buffer_encoder.c:193:6
	jne	.LBB2_8
.Ltmp90:
# %bb.7:                                # %if.then23
	#DEBUG_VALUE: block_encode_normal:block <- $rbx
	#DEBUG_VALUE: block_encode_normal:allocator <- $r14
	#DEBUG_VALUE: block_encode_normal:in <- $r15
	#DEBUG_VALUE: block_encode_normal:in_size <- $r12
	#DEBUG_VALUE: block_encode_normal:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r13
	#DEBUG_VALUE: block_encode_normal:out_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: block_encode_normal:ret <- $eax
	.loc	0 0 6                           # liblzma/common/block_buffer_encoder.c:0:6
	movq	160(%rsp), %rcx
.Ltmp91:
	.loc	0 184 15 is_stmt 1              # liblzma/common/block_buffer_encoder.c:184:15
	movq	%rcx, %rax
.Ltmp92:
	subq	%rbp, %rax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	addq	%rdx, %rbp
	.loc	0 184 26 is_stmt 0              # liblzma/common/block_buffer_encoder.c:184:26
	cmpq	%rdx, %rax
.Ltmp93:
	.loc	0 184 6                         # liblzma/common/block_buffer_encoder.c:184:6
	cmovbeq	%rcx, %rbp
.Ltmp94:
	#DEBUG_VALUE: block_encode_normal:out_size <- $rbp
	.loc	0 194 10 is_stmt 1              # liblzma/common/block_buffer_encoder.c:194:10
	movq	$0, 24(%rsp)
	.loc	0 195 38                        # liblzma/common/block_buffer_encoder.c:195:38
	movq	32(%rsp), %rdi
	.loc	0 195 9 is_stmt 0               # liblzma/common/block_buffer_encoder.c:195:9
	subq	$8, %rsp
.Ltmp95:
	.cfi_adjust_cfa_offset 8
	.loc	0 0 9                           # liblzma/common/block_buffer_encoder.c:0:9
	leaq	32(%rsp), %rcx
	.loc	0 195 9                         # liblzma/common/block_buffer_encoder.c:195:9
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %r8
	movq	16(%rsp), %r9                   # 8-byte Reload
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	*88(%rsp)
.Ltmp96:
	#DEBUG_VALUE: block_encode_normal:ret <- $eax
	addq	$32, %rsp
.Ltmp97:
	.cfi_adjust_cfa_offset -32
.LBB2_8:                                # %if.end25
	#DEBUG_VALUE: block_encode_normal:block <- $rbx
	#DEBUG_VALUE: block_encode_normal:allocator <- $r14
	#DEBUG_VALUE: block_encode_normal:in <- $r15
	#DEBUG_VALUE: block_encode_normal:in_size <- $r12
	#DEBUG_VALUE: block_encode_normal:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r13
	#DEBUG_VALUE: block_encode_normal:out_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: block_encode_normal:ret <- $eax
	#DEBUG_VALUE: block_encode_normal:ret <- $eax
	.loc	0 0 9                           # liblzma/common/block_buffer_encoder.c:0:9
	leaq	32(%rsp), %rdi
	.loc	0 201 2 is_stmt 1               # liblzma/common/block_buffer_encoder.c:201:2
	movq	%r14, %rsi
	movl	%eax, %ebp
.Ltmp98:
	#DEBUG_VALUE: block_encode_normal:ret <- $ebp
	callq	lzma_next_end@PLT
.Ltmp99:
	.loc	0 203 6                         # liblzma/common/block_buffer_encoder.c:203:6
	testl	%ebp, %ebp
	je	.LBB2_12
.Ltmp100:
# %bb.9:                                # %if.end25
	#DEBUG_VALUE: block_encode_normal:block <- $rbx
	#DEBUG_VALUE: block_encode_normal:allocator <- $r14
	#DEBUG_VALUE: block_encode_normal:in <- $r15
	#DEBUG_VALUE: block_encode_normal:in_size <- $r12
	#DEBUG_VALUE: block_encode_normal:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r13
	#DEBUG_VALUE: block_encode_normal:out_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: block_encode_normal:ret <- $ebp
	.loc	0 0 6 is_stmt 0                 # liblzma/common/block_buffer_encoder.c:0:6
	movl	%ebp, %eax
	.loc	0 203 6                         # liblzma/common/block_buffer_encoder.c:203:6
	cmpl	$1, %ebp
	movq	%r13, %rdx
	jne	.LBB2_13
.Ltmp101:
# %bb.10:                               # %if.then28
	#DEBUG_VALUE: block_encode_normal:block <- $rbx
	#DEBUG_VALUE: block_encode_normal:allocator <- $r14
	#DEBUG_VALUE: block_encode_normal:in <- $r15
	#DEBUG_VALUE: block_encode_normal:in_size <- $r12
	#DEBUG_VALUE: block_encode_normal:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r13
	#DEBUG_VALUE: block_encode_normal:out_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: block_encode_normal:ret <- $ebp
	.loc	0 206 7 is_stmt 1               # liblzma/common/block_buffer_encoder.c:206:7
	movq	(%rdx), %rax
	.loc	0 206 38 is_stmt 0              # liblzma/common/block_buffer_encoder.c:206:38
	movl	4(%rbx), %ecx
	movq	(%rsp), %rdx                    # 8-byte Reload
	.loc	0 206 16                        # liblzma/common/block_buffer_encoder.c:206:16
	addq	%rdx, %rcx
	subq	%rcx, %rax
	.loc	0 206 5                         # liblzma/common/block_buffer_encoder.c:206:5
	movq	%rax, 16(%rbx)
	movq	8(%rsp), %rsi                   # 8-byte Reload
	.loc	0 207 45 is_stmt 1              # liblzma/common/block_buffer_encoder.c:207:45
	addq	%rdx, %rsi
	.loc	0 207 9 is_stmt 0               # liblzma/common/block_buffer_encoder.c:207:9
	movq	%rbx, %rdi
	callq	lzma_block_header_encode@PLT
.Ltmp102:
	.loc	0 0 9                           # liblzma/common/block_buffer_encoder.c:0:9
	movq	%r13, %rdx
	.loc	0 207 9                         # liblzma/common/block_buffer_encoder.c:207:9
	movl	%eax, %ecx
.Ltmp103:
	#DEBUG_VALUE: block_encode_normal:ret <- $ecx
	.loc	0 0 9                           # liblzma/common/block_buffer_encoder.c:0:9
	movl	$11, %eax
.Ltmp104:
	.loc	0 208 11 is_stmt 1              # liblzma/common/block_buffer_encoder.c:208:11
	testl	%ecx, %ecx
.Ltmp105:
	#DEBUG_VALUE: block_encode_normal:ret <- undef
	.loc	0 0 0 is_stmt 0                 # liblzma/common/block_buffer_encoder.c:0:0
	jne	.LBB2_13
.Ltmp106:
# %bb.11:
	#DEBUG_VALUE: block_encode_normal:block <- $rbx
	#DEBUG_VALUE: block_encode_normal:allocator <- $r14
	#DEBUG_VALUE: block_encode_normal:in <- $r15
	#DEBUG_VALUE: block_encode_normal:in_size <- $r12
	#DEBUG_VALUE: block_encode_normal:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r13
	#DEBUG_VALUE: block_encode_normal:out_start <- [DW_OP_deref] $rsp
	xorl	%eax, %eax
	jmp	.LBB2_14
.Ltmp107:
.LBB2_12:                               # %select.unfold89
	#DEBUG_VALUE: block_encode_normal:block <- $rbx
	#DEBUG_VALUE: block_encode_normal:allocator <- $r14
	#DEBUG_VALUE: block_encode_normal:in <- $r15
	#DEBUG_VALUE: block_encode_normal:in_size <- $r12
	#DEBUG_VALUE: block_encode_normal:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r13
	#DEBUG_VALUE: block_encode_normal:out_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: block_encode_normal:ret <- $ebp
	movl	$10, %eax
	movq	%r13, %rdx
.Ltmp108:
.LBB2_13:                               # %if.then46
	#DEBUG_VALUE: block_encode_normal:block <- $rbx
	#DEBUG_VALUE: block_encode_normal:allocator <- $r14
	#DEBUG_VALUE: block_encode_normal:in <- $r15
	#DEBUG_VALUE: block_encode_normal:in_size <- $r12
	#DEBUG_VALUE: block_encode_normal:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r13
	#DEBUG_VALUE: block_encode_normal:out_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: block_encode_normal:ret <- $eax
	movq	(%rsp), %rcx                    # 8-byte Reload
.Ltmp109:
	.loc	0 218 12 is_stmt 1              # liblzma/common/block_buffer_encoder.c:218:12
	movq	%rcx, (%rdx)
.Ltmp110:
.LBB2_14:
	#DEBUG_VALUE: block_encode_normal:block <- $rbx
	#DEBUG_VALUE: block_encode_normal:allocator <- $r14
	#DEBUG_VALUE: block_encode_normal:in <- $r15
	#DEBUG_VALUE: block_encode_normal:in_size <- $r12
	#DEBUG_VALUE: block_encode_normal:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_normal:out_pos <- $r13
	.loc	0 0 12 is_stmt 0                # liblzma/common/block_buffer_encoder.c:0:12
	addq	$104, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp111:
	#DEBUG_VALUE: block_encode_normal:block <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 48
	popq	%r12
.Ltmp112:
	#DEBUG_VALUE: block_encode_normal:in_size <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp113:
	#DEBUG_VALUE: block_encode_normal:out_pos <- [DW_OP_LLVM_entry_value 1] $r9
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp114:
	#DEBUG_VALUE: block_encode_normal:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp115:
	#DEBUG_VALUE: block_encode_normal:in <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	.loc	0 221 1 is_stmt 1               # liblzma/common/block_buffer_encoder.c:221:1
	retq
.Ltmp116:
.Lfunc_end2:
	.size	block_encode_normal, .Lfunc_end2-block_encode_normal
	.cfi_endproc
	.file	10 "liblzma/api/lzma" "block.h" md5 0xbf8cbafce550217b909c63081e414910
	.file	11 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	12 "liblzma/common" "filter_encoder.h" md5 0xddc4c6a58369644501ee0eefd7b6bf8f
	.file	13 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_encode_uncompressed
	.type	block_encode_uncompressed,@function
block_encode_uncompressed:              # @block_encode_uncompressed
.Lfunc_begin3:
	.loc	0 84 0                          # liblzma/common/block_buffer_encoder.c:84:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: block_encode_uncompressed:block <- $rdi
	#DEBUG_VALUE: block_encode_uncompressed:in <- $rsi
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $rdx
	#DEBUG_VALUE: block_encode_uncompressed:out <- $rcx
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r8
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- $r9
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%r8, %r14
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
.Ltmp117:
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
.Ltmp118:
	.loc	0 91 20 prologue_end            # liblzma/common/block_buffer_encoder.c:91:20
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movl	$4096, 48(%rsp)                 # imm = 0x1000
	.loc	0 96 16                         # liblzma/common/block_buffer_encoder.c:96:16
	movq	$33, 16(%rsp)
	leaq	48(%rsp), %rax
	.loc	0 97 21                         # liblzma/common/block_buffer_encoder.c:97:21
	movq	%rax, 24(%rsp)
	.loc	0 98 16                         # liblzma/common/block_buffer_encoder.c:98:16
	movq	$-1, 32(%rsp)
	.loc	0 102 37                        # liblzma/common/block_buffer_encoder.c:102:37
	movq	32(%rdi), %r12
.Ltmp119:
	#DEBUG_VALUE: block_encode_uncompressed:filters_orig <- $r12
	.loc	0 0 37 is_stmt 0                # liblzma/common/block_buffer_encoder.c:0:37
	leaq	16(%rsp), %rax
	.loc	0 103 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:103:17
	movq	%rax, 32(%rdi)
.Ltmp120:
	.loc	0 105 6                         # liblzma/common/block_buffer_encoder.c:105:6
	callq	lzma_block_header_size@PLT
.Ltmp121:
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- $rbp
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $rbx
	#DEBUG_VALUE: block_encode_uncompressed:in <- $r15
	#DEBUG_VALUE: block_encode_uncompressed:block <- $r13
	.loc	0 105 36 is_stmt 0              # liblzma/common/block_buffer_encoder.c:105:36
	testl	%eax, %eax
.Ltmp122:
	.loc	0 105 6                         # liblzma/common/block_buffer_encoder.c:105:6
	je	.LBB3_2
.Ltmp123:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: block_encode_uncompressed:block <- $r13
	#DEBUG_VALUE: block_encode_uncompressed:in <- $r15
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $rbx
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- $rbp
	#DEBUG_VALUE: block_encode_uncompressed:filters_orig <- $r12
	.loc	0 106 18 is_stmt 1              # liblzma/common/block_buffer_encoder.c:106:18
	movq	%r12, 32(%r13)
	movl	$11, %eax
	.loc	0 107 3                         # liblzma/common/block_buffer_encoder.c:107:3
	jmp	.LBB3_12
.Ltmp124:
.LBB3_2:                                # %if.end
	#DEBUG_VALUE: block_encode_uncompressed:block <- $r13
	#DEBUG_VALUE: block_encode_uncompressed:in <- $r15
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $rbx
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- $rbp
	#DEBUG_VALUE: block_encode_uncompressed:filters_orig <- $r12
	.loc	0 116 17                        # liblzma/common/block_buffer_encoder.c:116:17
	movq	(%r14), %rsi
	.loc	0 116 15 is_stmt 0              # liblzma/common/block_buffer_encoder.c:116:15
	subq	%rsi, %rbp
.Ltmp125:
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 117 13 is_stmt 1              # liblzma/common/block_buffer_encoder.c:117:13
	movl	4(%r13), %eax
	.loc	0 117 25 is_stmt 0              # liblzma/common/block_buffer_encoder.c:117:25
	addq	16(%r13), %rax
	.loc	0 117 4                         # liblzma/common/block_buffer_encoder.c:117:4
	cmpq	%rax, %rbp
.Ltmp126:
	.loc	0 116 6 is_stmt 1               # liblzma/common/block_buffer_encoder.c:116:6
	jae	.LBB3_4
.Ltmp127:
# %bb.3:                                # %if.then9
	#DEBUG_VALUE: block_encode_uncompressed:block <- $r13
	#DEBUG_VALUE: block_encode_uncompressed:in <- $r15
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $rbx
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_encode_uncompressed:filters_orig <- $r12
	.loc	0 118 18                        # liblzma/common/block_buffer_encoder.c:118:18
	movq	%r12, 32(%r13)
	movl	$10, %eax
	.loc	0 119 3                         # liblzma/common/block_buffer_encoder.c:119:3
	jmp	.LBB3_12
.Ltmp128:
.LBB3_4:                                # %if.end11
	#DEBUG_VALUE: block_encode_uncompressed:block <- $r13
	#DEBUG_VALUE: block_encode_uncompressed:in <- $r15
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $rbx
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_encode_uncompressed:filters_orig <- $r12
	.loc	0 122 42                        # liblzma/common/block_buffer_encoder.c:122:42
	addq	8(%rsp), %rsi                   # 8-byte Folded Reload
	.loc	0 122 6 is_stmt 0               # liblzma/common/block_buffer_encoder.c:122:6
	movq	%r13, %rdi
	callq	lzma_block_header_encode@PLT
.Ltmp129:
	movl	%eax, %ecx
.Ltmp130:
	.loc	0 0 0                           # liblzma/common/block_buffer_encoder.c:0:0
	movq	%r12, 32(%r13)
	movl	$11, %eax
.Ltmp131:
	.loc	0 122 54                        # liblzma/common/block_buffer_encoder.c:122:54
	testl	%ecx, %ecx
.Ltmp132:
	.loc	0 122 6                         # liblzma/common/block_buffer_encoder.c:122:6
	jne	.LBB3_12
.Ltmp133:
# %bb.5:                                # %if.end17
	#DEBUG_VALUE: block_encode_uncompressed:block <- $r13
	#DEBUG_VALUE: block_encode_uncompressed:in <- $r15
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $rbx
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_encode_uncompressed:filters_orig <- $r12
	.loc	0 128 21 is_stmt 1              # liblzma/common/block_buffer_encoder.c:128:21
	movl	4(%r13), %ebp
	.loc	0 128 11 is_stmt 0              # liblzma/common/block_buffer_encoder.c:128:11
	addq	(%r14), %rbp
.Ltmp134:
	#DEBUG_VALUE: block_encode_uncompressed:in_pos <- 0
	#DEBUG_VALUE: block_encode_uncompressed:control <- 1
	.loc	0 134 16 is_stmt 1              # liblzma/common/block_buffer_encoder.c:134:16
	testq	%rbx, %rbx
	.loc	0 134 2 is_stmt 0               # liblzma/common/block_buffer_encoder.c:134:2
	je	.LBB3_10
.Ltmp135:
# %bb.6:                                # %while.body.preheader
	#DEBUG_VALUE: block_encode_uncompressed:block <- $r13
	#DEBUG_VALUE: block_encode_uncompressed:in <- $r15
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $rbx
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_encode_uncompressed:filters_orig <- $r12
	#DEBUG_VALUE: block_encode_uncompressed:in_pos <- 0
	#DEBUG_VALUE: block_encode_uncompressed:control <- 1
	#DEBUG_VALUE: block_encode_uncompressed:control <- 1
	#DEBUG_VALUE: block_encode_uncompressed:in_pos <- 0
	.loc	0 137 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:137:17
	leaq	1(%rbp), %rax
	movq	%rax, (%r14)
	movq	8(%rsp), %rsi                   # 8-byte Reload
	.loc	0 137 21 is_stmt 0              # liblzma/common/block_buffer_encoder.c:137:21
	movb	$1, (%rsi,%rbp)
.Ltmp136:
	#DEBUG_VALUE: block_encode_uncompressed:control <- 2
	.loc	0 142 7 is_stmt 1               # liblzma/common/block_buffer_encoder.c:142:7
	cmpq	$65536, %rbx                    # imm = 0x10000
	movl	$65536, %r13d                   # imm = 0x10000
.Ltmp137:
	#DEBUG_VALUE: block_encode_uncompressed:block <- [DW_OP_LLVM_entry_value 1] $rdi
	cmovbq	%rbx, %r13
.Ltmp138:
	#DEBUG_VALUE: copy_size <- $r13
	#DEBUG_VALUE: block_encode_uncompressed:in_pos <- $r13
	.loc	0 143 34                        # liblzma/common/block_buffer_encoder.c:143:34
	leaq	-1(%r13), %rax
	.loc	0 143 17 is_stmt 0              # liblzma/common/block_buffer_encoder.c:143:17
	movq	(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r14)
	.loc	0 143 21                        # liblzma/common/block_buffer_encoder.c:143:21
	movb	%ah, (%rsi,%rcx)
	.loc	0 144 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:144:17
	movq	(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r14)
	.loc	0 144 21 is_stmt 0              # liblzma/common/block_buffer_encoder.c:144:21
	movb	%al, (%rsi,%rcx)
	movq	(%r14), %rdi
	.loc	0 148 14 is_stmt 1              # liblzma/common/block_buffer_encoder.c:148:14
	addq	%rsi, %rdi
	movq	%r15, %r12
.Ltmp139:
	.loc	0 148 3 is_stmt 0               # liblzma/common/block_buffer_encoder.c:148:3
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
.Ltmp140:
	.loc	0 0 3                           # liblzma/common/block_buffer_encoder.c:0:3
	movq	(%r14), %rbp
	.loc	0 151 12 is_stmt 1              # liblzma/common/block_buffer_encoder.c:151:12
	addq	%r13, %rbp
.Ltmp141:
	.loc	0 134 16                        # liblzma/common/block_buffer_encoder.c:134:16
	cmpq	$65537, %rbx                    # imm = 0x10001
	.loc	0 134 2 is_stmt 0               # liblzma/common/block_buffer_encoder.c:134:2
	jb	.LBB3_10
.Ltmp142:
# %bb.7:                                # %while.body.preheader1
	#DEBUG_VALUE: block_encode_uncompressed:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: block_encode_uncompressed:in <- $r15
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $rbx
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_encode_uncompressed:in_pos <- $r13
	#DEBUG_VALUE: block_encode_uncompressed:control <- 2
	#DEBUG_VALUE: copy_size <- $r13
	.loc	0 0 2                           # liblzma/common/block_buffer_encoder.c:0:2
	movq	%rbx, %r15
.Ltmp143:
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $r15
	#DEBUG_VALUE: block_encode_uncompressed:in <- $r12
	movq	8(%rsp), %rbx                   # 8-byte Reload
.Ltmp144:
	.p2align	4, 0x90
.LBB3_8:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: block_encode_uncompressed:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: block_encode_uncompressed:in <- $r12
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $r15
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- [DW_OP_LLVM_entry_value 1] $r9
	#DEBUG_VALUE: block_encode_uncompressed:in_pos <- $r13
	#DEBUG_VALUE: block_encode_uncompressed:control <- 2
	#DEBUG_VALUE: block_encode_uncompressed:control <- 2
	#DEBUG_VALUE: block_encode_uncompressed:in_pos <- $r13
	.loc	0 137 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:137:17
	leaq	1(%rbp), %rax
	movq	%rax, (%r14)
	.loc	0 137 21 is_stmt 0              # liblzma/common/block_buffer_encoder.c:137:21
	movb	$2, (%rbx,%rbp)
	.loc	0 142 7 is_stmt 1               # liblzma/common/block_buffer_encoder.c:142:7
	movq	%r15, %rbp
	subq	%r13, %rbp
	cmpq	$65536, %rbp                    # imm = 0x10000
	movl	$65536, %eax                    # imm = 0x10000
	cmovaeq	%rax, %rbp
.Ltmp145:
	#DEBUG_VALUE: copy_size <- $rbp
	.loc	0 143 34                        # liblzma/common/block_buffer_encoder.c:143:34
	leaq	-1(%rbp), %rax
	.loc	0 143 17 is_stmt 0              # liblzma/common/block_buffer_encoder.c:143:17
	movq	(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r14)
	.loc	0 143 21                        # liblzma/common/block_buffer_encoder.c:143:21
	movb	%ah, (%rbx,%rcx)
	.loc	0 144 17 is_stmt 1              # liblzma/common/block_buffer_encoder.c:144:17
	movq	(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r14)
	.loc	0 144 21 is_stmt 0              # liblzma/common/block_buffer_encoder.c:144:21
	movb	%al, (%rbx,%rcx)
	movq	(%r14), %rdi
	.loc	0 148 14 is_stmt 1              # liblzma/common/block_buffer_encoder.c:148:14
	addq	%rbx, %rdi
	.loc	0 148 29 is_stmt 0              # liblzma/common/block_buffer_encoder.c:148:29
	leaq	(%r12,%r13), %rsi
	.loc	0 148 3                         # liblzma/common/block_buffer_encoder.c:148:3
	movq	%rbp, %rdx
	callq	memcpy@PLT
.Ltmp146:
	.loc	0 150 10 is_stmt 1              # liblzma/common/block_buffer_encoder.c:150:10
	addq	%rbp, %r13
.Ltmp147:
	#DEBUG_VALUE: block_encode_uncompressed:in_pos <- $r13
	.loc	0 151 12                        # liblzma/common/block_buffer_encoder.c:151:12
	addq	(%r14), %rbp
.Ltmp148:
	.loc	0 0 0 is_stmt 0                 # liblzma/common/block_buffer_encoder.c:0:0
	movq	%rbp, (%r14)
	.loc	0 134 16 is_stmt 1              # liblzma/common/block_buffer_encoder.c:134:16
	cmpq	%r15, %r13
	.loc	0 134 2 is_stmt 0               # liblzma/common/block_buffer_encoder.c:134:2
	jb	.LBB3_8
	jmp	.LBB3_11
.Ltmp149:
.LBB3_10:
	#DEBUG_VALUE: block_encode_uncompressed:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: block_encode_uncompressed:in <- $r15
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- $rbx
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 0 2                           # liblzma/common/block_buffer_encoder.c:0:2
	movq	8(%rsp), %rbx                   # 8-byte Reload
.Ltmp150:
.LBB3_11:                               # %while.end
	#DEBUG_VALUE: block_encode_uncompressed:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: block_encode_uncompressed:in <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 155 16 is_stmt 1              # liblzma/common/block_buffer_encoder.c:155:16
	leaq	1(%rbp), %rax
	movq	%rax, (%r14)
	.loc	0 155 20 is_stmt 0              # liblzma/common/block_buffer_encoder.c:155:20
	movb	$0, (%rbx,%rbp)
	xorl	%eax, %eax
.Ltmp151:
.LBB3_12:                               # %cleanup
	#DEBUG_VALUE: block_encode_uncompressed:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: block_encode_uncompressed:in <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: block_encode_uncompressed:in_size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: block_encode_uncompressed:out <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- $r14
	#DEBUG_VALUE: block_encode_uncompressed:out_size <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 159 1 epilogue_begin is_stmt 1 # liblzma/common/block_buffer_encoder.c:159:1
	addq	$168, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp152:
	#DEBUG_VALUE: block_encode_uncompressed:out_pos <- [DW_OP_LLVM_entry_value 1] $r8
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp153:
.Lfunc_end3:
	.size	block_encode_uncompressed, .Lfunc_end3-block_encode_uncompressed
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	35                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	192                             # 192
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
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
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	160                             # 160
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp137-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp143-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp152-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp134-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	26                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	29                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x8f1 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	2                               # Abbrev [2] 0x7d:0x15 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x85:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x88:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8b:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8e:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x92:0xf DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x9a:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x9d:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xa1:0x18 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xa9:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xac:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xaf:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb2:0x3 DW_TAG_enumerator
	.byte	30                              # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb5:0x3 DW_TAG_enumerator
	.byte	31                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xb9:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0xba:0x8 DW_TAG_typedef
	.long	194                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xc2:0x4 DW_TAG_base_type
	.byte	32                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xc6:0x8 DW_TAG_typedef
	.long	194                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xce:0x19 DW_TAG_subprogram
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	231                             # DW_AT_type
                                        # DW_AT_inline
	.byte	8                               # Abbrev [8] 0xd6:0x8 DW_TAG_formal_parameter
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	231                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xde:0x8 DW_TAG_variable
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	255                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xe7:0x8 DW_TAG_typedef
	.long	239                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xef:0x8 DW_TAG_typedef
	.long	247                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xf7:0x8 DW_TAG_typedef
	.long	194                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xff:0x5 DW_TAG_const_type
	.long	231                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x104:0x38 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	186                             # DW_AT_type
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x113:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x11d:0x8 DW_TAG_variable
	.byte	124                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	231                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x125:0x16 DW_TAG_inlined_subroutine
	.long	206                             # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	62                              # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x12e:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	214                             # DW_AT_abstract_origin
	.byte	15                              # Abbrev [15] 0x134:0x6 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.long	222                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x13c:0xc1 DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	121                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1183                            # DW_AT_type
                                        # DW_AT_external
	.byte	16                              # Abbrev [16] 0x14b:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	125                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	1191                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x154:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	126                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	1711                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x15d:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.long	1143                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x166:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x16f:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.long	1824                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x178:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.long	1814                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x181:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x18a:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.long	2011                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x193:0xa DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	262                             # DW_AT_decl_line
	.long	2016                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x19d:0x11 DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp42-.Ltmp40                 # DW_AT_high_pc
	.byte	18                              # Abbrev [18] 0x1a3:0xa DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	275                             # DW_AT_decl_line
	.long	2016                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x1ae:0x11 DW_TAG_lexical_block
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp56-.Ltmp43                 # DW_AT_high_pc
	.byte	18                              # Abbrev [18] 0x1b4:0xa DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	284                             # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x1bf:0x13 DW_TAG_lexical_block
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp66-.Ltmp59                 # DW_AT_high_pc
	.byte	20                              # Abbrev [20] 0x1c5:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.long	932                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x1d2:0x6 DW_TAG_call_site
	.long	509                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	21                              # Abbrev [21] 0x1d8:0x6 DW_TAG_call_site
	.long	543                             # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	21                              # Abbrev [21] 0x1de:0x6 DW_TAG_call_site
	.long	573                             # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	21                              # Abbrev [21] 0x1e4:0x6 DW_TAG_call_site
	.long	769                             # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	21                              # Abbrev [21] 0x1ea:0x6 DW_TAG_call_site
	.long	912                             # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	21                              # Abbrev [21] 0x1f0:0x6 DW_TAG_call_site
	.long	1118                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	21                              # Abbrev [21] 0x1f6:0x6 DW_TAG_call_site
	.long	1153                            # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x1fd:0xe DW_TAG_subprogram
	.byte	41                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	523                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x205:0x5 DW_TAG_formal_parameter
	.long	535                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x20b:0x8 DW_TAG_typedef
	.long	531                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x213:0x4 DW_TAG_base_type
	.byte	42                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x217:0x8 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x21f:0xe DW_TAG_subprogram
	.byte	45                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	557                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x227:0x5 DW_TAG_formal_parameter
	.long	535                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x22d:0x8 DW_TAG_typedef
	.long	565                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x235:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	24                              # Abbrev [24] 0x23d:0xc4 DW_TAG_subprogram
	.byte	12                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\340~"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1183                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x250:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	125                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.long	1191                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x259:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	126                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	163                             # DW_AT_decl_line
	.long	1711                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x262:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.long	1143                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x26b:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x274:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.long	1824                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x27d:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.long	1814                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x286:0x9 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x28f:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.byte	136                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.long	1552                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x29a:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.long	2011                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x2a3:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.long	1183                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2ac:0x16 DW_TAG_inlined_subroutine
	.long	206                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	168                             # DW_AT_call_line
	.byte	27                              # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x2b5:0x6 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.long	214                             # DW_AT_abstract_origin
	.byte	15                              # Abbrev [15] 0x2bb:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	222                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x2c2:0x10 DW_TAG_lexical_block
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp80-.Ltmp78                 # DW_AT_high_pc
	.byte	17                              # Abbrev [17] 0x2c8:0x9 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.long	2016                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x2d2:0x12 DW_TAG_lexical_block
	.byte	14                              # DW_AT_low_pc
	.long	.Ltmp97-.Ltmp94                 # DW_AT_high_pc
	.byte	25                              # Abbrev [25] 0x2d8:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	24
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x2e4:0x6 DW_TAG_call_site
	.long	1168                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	21                              # Abbrev [21] 0x2ea:0x6 DW_TAG_call_site
	.long	1523                            # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	26                              # Abbrev [26] 0x2f0:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	87
	.byte	17                              # DW_AT_call_return_pc
	.byte	21                              # Abbrev [21] 0x2f4:0x6 DW_TAG_call_site
	.long	1966                            # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	21                              # Abbrev [21] 0x2fa:0x6 DW_TAG_call_site
	.long	1981                            # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x301:0x8f DW_TAG_subprogram
	.byte	20                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1183                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x310:0x9 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.byte	125                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	1191                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x319:0x9 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	1143                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x322:0x9 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x32b:0x9 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_location
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	1824                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x334:0x9 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	1814                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x33d:0x9 DW_TAG_formal_parameter
	.byte	30                              # DW_AT_location
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x346:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	48
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	2021                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x351:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.long	2288                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x35c:0x9 DW_TAG_variable
	.byte	31                              # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	1479                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x365:0x9 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x36e:0x9 DW_TAG_variable
	.byte	33                              # DW_AT_location
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.long	1062                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x377:0xc DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	17                              # Abbrev [17] 0x379:0x9 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.byte	155                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	2011                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x383:0x6 DW_TAG_call_site
	.long	1168                            # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	21                              # Abbrev [21] 0x389:0x6 DW_TAG_call_site
	.long	1981                            # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x390:0xf DW_TAG_subprogram
	.byte	48                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x394:0x5 DW_TAG_formal_parameter
	.long	927                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x399:0x5 DW_TAG_formal_parameter
	.long	535                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x39f:0x5 DW_TAG_pointer_type
	.long	932                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x3a4:0x8 DW_TAG_typedef
	.long	940                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x3ac:0x6e DW_TAG_structure_type
	.byte	104                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x3b0:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	953                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	32                              # Abbrev [32] 0x3b9:0x20 DW_TAG_union_type
	.byte	64                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x3bd:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	1050                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x3c6:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x3cf:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	1094                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x3d9:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	994                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	32                              # Abbrev [32] 0x3e2:0x37 DW_TAG_union_type
	.byte	40                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x3e6:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x3ef:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	239                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x3f8:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	1025                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	30                              # Abbrev [30] 0x401:0x17 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x405:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	1106                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x40e:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	239                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x41a:0xc DW_TAG_array_type
	.long	1062                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x41f:0x6 DW_TAG_subrange_type
	.long	1078                            # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x426:0x8 DW_TAG_typedef
	.long	1070                            # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x42e:0x8 DW_TAG_typedef
	.long	531                             # DW_AT_type
	.byte	51                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	35                              # Abbrev [35] 0x436:0x4 DW_TAG_base_type
	.byte	53                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	33                              # Abbrev [33] 0x43a:0xc DW_TAG_array_type
	.long	557                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x43f:0x6 DW_TAG_subrange_type
	.long	1078                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x446:0xc DW_TAG_array_type
	.long	239                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x44b:0x6 DW_TAG_subrange_type
	.long	1078                            # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x452:0xc DW_TAG_array_type
	.long	557                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x457:0x6 DW_TAG_subrange_type
	.long	1078                            # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x45e:0x19 DW_TAG_subprogram
	.byte	62                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x462:0x5 DW_TAG_formal_parameter
	.long	927                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x467:0x5 DW_TAG_formal_parameter
	.long	535                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x46c:0x5 DW_TAG_formal_parameter
	.long	1143                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x471:0x5 DW_TAG_formal_parameter
	.long	186                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x477:0x5 DW_TAG_pointer_type
	.long	1148                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x47c:0x5 DW_TAG_const_type
	.long	1062                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x481:0xf DW_TAG_subprogram
	.byte	63                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x485:0x5 DW_TAG_formal_parameter
	.long	927                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x48a:0x5 DW_TAG_formal_parameter
	.long	535                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x490:0xf DW_TAG_subprogram
	.byte	64                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1183                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x499:0x5 DW_TAG_formal_parameter
	.long	1191                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x49f:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	65                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x4a7:0x5 DW_TAG_pointer_type
	.long	1196                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x4ac:0x8 DW_TAG_typedef
	.long	1204                            # DW_AT_type
	.byte	99                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x4b4:0x113 DW_TAG_structure_type
	.byte	208                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x4b8:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x4c1:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x4ca:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	535                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x4d3:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x4dc:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x4e5:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	1479                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x4ee:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	1050                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x4f7:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x500:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x509:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x512:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x51b:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x524:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x52d:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x536:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x53f:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x548:0x9 DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x551:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x55a:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1515                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x563:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1515                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	188                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x56c:0x9 DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1515                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x575:0x9 DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1515                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x57e:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	523                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	200                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x587:0x9 DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	523                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	201                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x590:0x9 DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	523                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.byte	202                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x599:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	523                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	203                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x5a2:0x9 DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	523                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	204                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x5ab:0x9 DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	523                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	205                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x5b4:0x9 DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	523                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	206                             # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x5bd:0x9 DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	523                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	207                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x5c7:0x5 DW_TAG_pointer_type
	.long	1484                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x5cc:0x8 DW_TAG_typedef
	.long	1492                            # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x5d4:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x5d8:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x5e1:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x5eb:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	87                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x5f3:0x18 DW_TAG_subprogram
	.byte	100                             # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1183                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x5fb:0x5 DW_TAG_formal_parameter
	.long	1547                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x600:0x5 DW_TAG_formal_parameter
	.long	1711                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x605:0x5 DW_TAG_formal_parameter
	.long	1956                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x60b:0x5 DW_TAG_pointer_type
	.long	1552                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x610:0x8 DW_TAG_typedef
	.long	1560                            # DW_AT_type
	.byte	117                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	37                              # Abbrev [37] 0x618:0x4e DW_TAG_structure_type
	.byte	116                             # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x61d:0x9 DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	1638                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x626:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	231                             # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x62f:0x9 DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	198                             # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x638:0x9 DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	1647                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x641:0x9 DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	1838                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x64a:0x9 DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	1863                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x653:0x9 DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	1889                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x65c:0x9 DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	1925                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x666:0x5 DW_TAG_pointer_type
	.long	1643                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x66b:0x4 DW_TAG_typedef
	.byte	102                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x66f:0x8 DW_TAG_typedef
	.long	1655                            # DW_AT_type
	.byte	110                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x677:0x5 DW_TAG_pointer_type
	.long	1660                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x67c:0x33 DW_TAG_subroutine_type
	.long	1183                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x681:0x5 DW_TAG_formal_parameter
	.long	1638                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x686:0x5 DW_TAG_formal_parameter
	.long	1711                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x68b:0x5 DW_TAG_formal_parameter
	.long	1804                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x690:0x5 DW_TAG_formal_parameter
	.long	1809                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x695:0x5 DW_TAG_formal_parameter
	.long	186                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x69a:0x5 DW_TAG_formal_parameter
	.long	1819                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x69f:0x5 DW_TAG_formal_parameter
	.long	1809                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x6a4:0x5 DW_TAG_formal_parameter
	.long	186                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x6a9:0x5 DW_TAG_formal_parameter
	.long	1829                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x6af:0x5 DW_TAG_pointer_type
	.long	1716                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x6b4:0x9 DW_TAG_typedef
	.long	1725                            # DW_AT_type
	.byte	108                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	41                              # Abbrev [41] 0x6bd:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	42                              # Abbrev [42] 0x6c2:0xa DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	1761                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x6cc:0xa DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	1787                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x6d6:0xa DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x6e1:0x5 DW_TAG_pointer_type
	.long	1766                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x6e6:0x15 DW_TAG_subroutine_type
	.long	185                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x6eb:0x5 DW_TAG_formal_parameter
	.long	185                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x6f0:0x5 DW_TAG_formal_parameter
	.long	186                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x6f5:0x5 DW_TAG_formal_parameter
	.long	186                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x6fb:0x5 DW_TAG_pointer_type
	.long	1792                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0x700:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x701:0x5 DW_TAG_formal_parameter
	.long	185                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x706:0x5 DW_TAG_formal_parameter
	.long	185                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x70c:0x5 DW_TAG_restrict_type
	.long	1143                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x711:0x5 DW_TAG_restrict_type
	.long	1814                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x716:0x5 DW_TAG_pointer_type
	.long	186                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x71b:0x5 DW_TAG_restrict_type
	.long	1824                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x720:0x5 DW_TAG_pointer_type
	.long	1062                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x725:0x9 DW_TAG_typedef
	.long	125                             # DW_AT_type
	.byte	109                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x72e:0x8 DW_TAG_typedef
	.long	1846                            # DW_AT_type
	.byte	112                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x736:0x5 DW_TAG_pointer_type
	.long	1851                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0x73b:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x73c:0x5 DW_TAG_formal_parameter
	.long	1638                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x741:0x5 DW_TAG_formal_parameter
	.long	1711                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x747:0x5 DW_TAG_pointer_type
	.long	1868                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x74c:0xb DW_TAG_subroutine_type
	.long	535                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x751:0x5 DW_TAG_formal_parameter
	.long	1879                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x757:0x5 DW_TAG_pointer_type
	.long	1884                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x75c:0x5 DW_TAG_const_type
	.long	1643                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x761:0x5 DW_TAG_pointer_type
	.long	1894                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x766:0x1a DW_TAG_subroutine_type
	.long	1183                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x76b:0x5 DW_TAG_formal_parameter
	.long	1638                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x770:0x5 DW_TAG_formal_parameter
	.long	1920                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x775:0x5 DW_TAG_formal_parameter
	.long	1920                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x77a:0x5 DW_TAG_formal_parameter
	.long	239                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x780:0x5 DW_TAG_pointer_type
	.long	239                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x785:0x5 DW_TAG_pointer_type
	.long	1930                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x78a:0x1a DW_TAG_subroutine_type
	.long	1183                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x78f:0x5 DW_TAG_formal_parameter
	.long	1638                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x794:0x5 DW_TAG_formal_parameter
	.long	1711                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x799:0x5 DW_TAG_formal_parameter
	.long	1956                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x79e:0x5 DW_TAG_formal_parameter
	.long	1956                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x7a4:0x5 DW_TAG_pointer_type
	.long	1961                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x7a9:0x5 DW_TAG_const_type
	.long	1484                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x7ae:0xf DW_TAG_subprogram
	.byte	118                             # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x7b2:0x5 DW_TAG_formal_parameter
	.long	1547                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x7b7:0x5 DW_TAG_formal_parameter
	.long	1711                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x7bd:0x14 DW_TAG_subprogram
	.byte	119                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	305                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1183                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x7c6:0x5 DW_TAG_formal_parameter
	.long	2001                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x7cb:0x5 DW_TAG_formal_parameter
	.long	1824                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x7d1:0x5 DW_TAG_pointer_type
	.long	2006                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x7d6:0x5 DW_TAG_const_type
	.long	1196                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x7db:0x5 DW_TAG_const_type
	.long	186                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x7e0:0x5 DW_TAG_const_type
	.long	1183                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x7e5:0x9 DW_TAG_typedef
	.long	2030                            # DW_AT_type
	.byte	152                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x7ee:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x7f2:0x9 DW_TAG_member
	.byte	140                             # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x7fb:0x9 DW_TAG_member
	.byte	141                             # DW_AT_name
	.long	1143                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	31                              # Abbrev [31] 0x804:0x9 DW_TAG_member
	.byte	142                             # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x80d:0xa DW_TAG_member
	.byte	143                             # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x817:0xa DW_TAG_member
	.byte	144                             # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x821:0xa DW_TAG_member
	.byte	145                             # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x82b:0xa DW_TAG_member
	.byte	146                             # DW_AT_name
	.long	2272                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x835:0xa DW_TAG_member
	.byte	148                             # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x83f:0xa DW_TAG_member
	.byte	149                             # DW_AT_name
	.long	2280                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x849:0xa DW_TAG_member
	.byte	151                             # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x853:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x85d:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x867:0xa DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x871:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x87b:0xa DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x885:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x88f:0xa DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x899:0xa DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	557                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x8a3:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1515                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x8ad:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1515                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x8b7:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1515                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x8c1:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1515                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x8cb:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x8d5:0xa DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x8e0:0x8 DW_TAG_typedef
	.long	146                             # DW_AT_type
	.byte	147                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x8e8:0x8 DW_TAG_typedef
	.long	161                             # DW_AT_type
	.byte	150                             # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x8f0:0xc DW_TAG_array_type
	.long	1484                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x8f5:0x6 DW_TAG_subrange_type
	.long	1078                            # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	3                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp135-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	628                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/block_buffer_encoder.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=143
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=175
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=188
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=196
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=212
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=226
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=249
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=264
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=279
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=299
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=317
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=336
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=352
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=367
.Linfo_string16:
	.asciz	"LZMA_CHECK_NONE"               # string offset=383
.Linfo_string17:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=399
.Linfo_string18:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=416
.Linfo_string19:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=433
.Linfo_string20:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=451
.Linfo_string21:
	.asciz	"LZMA_RUN"                      # string offset=470
.Linfo_string22:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=479
.Linfo_string23:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=495
.Linfo_string24:
	.asciz	"LZMA_FINISH"                   # string offset=511
.Linfo_string25:
	.asciz	"LZMA_MODE_FAST"                # string offset=523
.Linfo_string26:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=538
.Linfo_string27:
	.asciz	"LZMA_MF_HC3"                   # string offset=555
.Linfo_string28:
	.asciz	"LZMA_MF_HC4"                   # string offset=567
.Linfo_string29:
	.asciz	"LZMA_MF_BT2"                   # string offset=579
.Linfo_string30:
	.asciz	"LZMA_MF_BT3"                   # string offset=591
.Linfo_string31:
	.asciz	"LZMA_MF_BT4"                   # string offset=603
.Linfo_string32:
	.asciz	"unsigned long"                 # string offset=615
.Linfo_string33:
	.asciz	"size_t"                        # string offset=629
.Linfo_string34:
	.asciz	"uintptr_t"                     # string offset=636
.Linfo_string35:
	.asciz	"lzma2_bound"                   # string offset=646
.Linfo_string36:
	.asciz	"__uint64_t"                    # string offset=658
.Linfo_string37:
	.asciz	"uint64_t"                      # string offset=669
.Linfo_string38:
	.asciz	"lzma_vli"                      # string offset=678
.Linfo_string39:
	.asciz	"uncompressed_size"             # string offset=687
.Linfo_string40:
	.asciz	"overhead"                      # string offset=705
.Linfo_string41:
	.asciz	"lzma_check_is_supported"       # string offset=714
.Linfo_string42:
	.asciz	"unsigned char"                 # string offset=738
.Linfo_string43:
	.asciz	"lzma_bool"                     # string offset=752
.Linfo_string44:
	.asciz	"lzma_check"                    # string offset=762
.Linfo_string45:
	.asciz	"lzma_check_size"               # string offset=773
.Linfo_string46:
	.asciz	"__uint32_t"                    # string offset=789
.Linfo_string47:
	.asciz	"uint32_t"                      # string offset=800
.Linfo_string48:
	.asciz	"lzma_check_init"               # string offset=809
.Linfo_string49:
	.asciz	"buffer"                        # string offset=825
.Linfo_string50:
	.asciz	"u8"                            # string offset=832
.Linfo_string51:
	.asciz	"__uint8_t"                     # string offset=835
.Linfo_string52:
	.asciz	"uint8_t"                       # string offset=845
.Linfo_string53:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=853
.Linfo_string54:
	.asciz	"u32"                           # string offset=873
.Linfo_string55:
	.asciz	"u64"                           # string offset=877
.Linfo_string56:
	.asciz	"state"                         # string offset=881
.Linfo_string57:
	.asciz	"crc32"                         # string offset=887
.Linfo_string58:
	.asciz	"crc64"                         # string offset=893
.Linfo_string59:
	.asciz	"sha256"                        # string offset=899
.Linfo_string60:
	.asciz	"size"                          # string offset=906
.Linfo_string61:
	.asciz	"lzma_check_state"              # string offset=911
.Linfo_string62:
	.asciz	"lzma_check_update"             # string offset=928
.Linfo_string63:
	.asciz	"lzma_check_finish"             # string offset=946
.Linfo_string64:
	.asciz	"lzma_block_header_size"        # string offset=964
.Linfo_string65:
	.asciz	"lzma_ret"                      # string offset=987
.Linfo_string66:
	.asciz	"version"                       # string offset=996
.Linfo_string67:
	.asciz	"header_size"                   # string offset=1004
.Linfo_string68:
	.asciz	"check"                         # string offset=1016
.Linfo_string69:
	.asciz	"compressed_size"               # string offset=1022
.Linfo_string70:
	.asciz	"filters"                       # string offset=1038
.Linfo_string71:
	.asciz	"id"                            # string offset=1046
.Linfo_string72:
	.asciz	"options"                       # string offset=1049
.Linfo_string73:
	.asciz	"lzma_filter"                   # string offset=1057
.Linfo_string74:
	.asciz	"raw_check"                     # string offset=1069
.Linfo_string75:
	.asciz	"reserved_ptr1"                 # string offset=1079
.Linfo_string76:
	.asciz	"reserved_ptr2"                 # string offset=1093
.Linfo_string77:
	.asciz	"reserved_ptr3"                 # string offset=1107
.Linfo_string78:
	.asciz	"reserved_int1"                 # string offset=1121
.Linfo_string79:
	.asciz	"reserved_int2"                 # string offset=1135
.Linfo_string80:
	.asciz	"reserved_int3"                 # string offset=1149
.Linfo_string81:
	.asciz	"reserved_int4"                 # string offset=1163
.Linfo_string82:
	.asciz	"reserved_int5"                 # string offset=1177
.Linfo_string83:
	.asciz	"reserved_int6"                 # string offset=1191
.Linfo_string84:
	.asciz	"reserved_int7"                 # string offset=1205
.Linfo_string85:
	.asciz	"reserved_int8"                 # string offset=1219
.Linfo_string86:
	.asciz	"reserved_enum1"                # string offset=1233
.Linfo_string87:
	.asciz	"lzma_reserved_enum"            # string offset=1248
.Linfo_string88:
	.asciz	"reserved_enum2"                # string offset=1267
.Linfo_string89:
	.asciz	"reserved_enum3"                # string offset=1282
.Linfo_string90:
	.asciz	"reserved_enum4"                # string offset=1297
.Linfo_string91:
	.asciz	"reserved_bool1"                # string offset=1312
.Linfo_string92:
	.asciz	"reserved_bool2"                # string offset=1327
.Linfo_string93:
	.asciz	"reserved_bool3"                # string offset=1342
.Linfo_string94:
	.asciz	"reserved_bool4"                # string offset=1357
.Linfo_string95:
	.asciz	"reserved_bool5"                # string offset=1372
.Linfo_string96:
	.asciz	"reserved_bool6"                # string offset=1387
.Linfo_string97:
	.asciz	"reserved_bool7"                # string offset=1402
.Linfo_string98:
	.asciz	"reserved_bool8"                # string offset=1417
.Linfo_string99:
	.asciz	"lzma_block"                    # string offset=1432
.Linfo_string100:
	.asciz	"lzma_raw_encoder_init"         # string offset=1443
.Linfo_string101:
	.asciz	"coder"                         # string offset=1465
.Linfo_string102:
	.asciz	"lzma_coder"                    # string offset=1471
.Linfo_string103:
	.asciz	"init"                          # string offset=1482
.Linfo_string104:
	.asciz	"code"                          # string offset=1487
.Linfo_string105:
	.asciz	"alloc"                         # string offset=1492
.Linfo_string106:
	.asciz	"free"                          # string offset=1498
.Linfo_string107:
	.asciz	"opaque"                        # string offset=1503
.Linfo_string108:
	.asciz	"lzma_allocator"                # string offset=1510
.Linfo_string109:
	.asciz	"lzma_action"                   # string offset=1525
.Linfo_string110:
	.asciz	"lzma_code_function"            # string offset=1537
.Linfo_string111:
	.asciz	"end"                           # string offset=1556
.Linfo_string112:
	.asciz	"lzma_end_function"             # string offset=1560
.Linfo_string113:
	.asciz	"get_check"                     # string offset=1578
.Linfo_string114:
	.asciz	"memconfig"                     # string offset=1588
.Linfo_string115:
	.asciz	"update"                        # string offset=1598
.Linfo_string116:
	.asciz	"lzma_next_coder_s"             # string offset=1605
.Linfo_string117:
	.asciz	"lzma_next_coder"               # string offset=1623
.Linfo_string118:
	.asciz	"lzma_next_end"                 # string offset=1639
.Linfo_string119:
	.asciz	"lzma_block_header_encode"      # string offset=1653
.Linfo_string120:
	.asciz	"lzma_block_buffer_bound"       # string offset=1678
.Linfo_string121:
	.asciz	"lzma_block_buffer_encode"      # string offset=1702
.Linfo_string122:
	.asciz	"block_encode_normal"           # string offset=1727
.Linfo_string123:
	.asciz	"block_encode_uncompressed"     # string offset=1747
.Linfo_string124:
	.asciz	"lzma2_size"                    # string offset=1773
.Linfo_string125:
	.asciz	"block"                         # string offset=1784
.Linfo_string126:
	.asciz	"allocator"                     # string offset=1790
.Linfo_string127:
	.asciz	"in"                            # string offset=1800
.Linfo_string128:
	.asciz	"in_size"                       # string offset=1803
.Linfo_string129:
	.asciz	"out"                           # string offset=1811
.Linfo_string130:
	.asciz	"out_pos"                       # string offset=1815
.Linfo_string131:
	.asciz	"out_size"                      # string offset=1823
.Linfo_string132:
	.asciz	"check_size"                    # string offset=1832
.Linfo_string133:
	.asciz	"ret"                           # string offset=1843
.Linfo_string134:
	.asciz	"ret_"                          # string offset=1847
.Linfo_string135:
	.asciz	"i"                             # string offset=1852
.Linfo_string136:
	.asciz	"raw_encoder"                   # string offset=1854
.Linfo_string137:
	.asciz	"in_pos"                        # string offset=1866
.Linfo_string138:
	.asciz	"out_start"                     # string offset=1873
.Linfo_string139:
	.asciz	"lzma2"                         # string offset=1883
.Linfo_string140:
	.asciz	"dict_size"                     # string offset=1889
.Linfo_string141:
	.asciz	"preset_dict"                   # string offset=1899
.Linfo_string142:
	.asciz	"preset_dict_size"              # string offset=1911
.Linfo_string143:
	.asciz	"lc"                            # string offset=1928
.Linfo_string144:
	.asciz	"lp"                            # string offset=1931
.Linfo_string145:
	.asciz	"pb"                            # string offset=1934
.Linfo_string146:
	.asciz	"mode"                          # string offset=1937
.Linfo_string147:
	.asciz	"lzma_mode"                     # string offset=1942
.Linfo_string148:
	.asciz	"nice_len"                      # string offset=1952
.Linfo_string149:
	.asciz	"mf"                            # string offset=1961
.Linfo_string150:
	.asciz	"lzma_match_finder"             # string offset=1964
.Linfo_string151:
	.asciz	"depth"                         # string offset=1982
.Linfo_string152:
	.asciz	"lzma_options_lzma"             # string offset=1988
.Linfo_string153:
	.asciz	"filters_orig"                  # string offset=2006
.Linfo_string154:
	.asciz	"control"                       # string offset=2019
.Linfo_string155:
	.asciz	"copy_size"                     # string offset=2027
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Ltmp40
	.quad	.Ltmp43
	.quad	.Ltmp59
	.quad	.Ltmp29
	.quad	.Ltmp33
	.quad	.Ltmp38
	.quad	.Ltmp41
	.quad	.Ltmp60
	.quad	.Ltmp61
	.quad	.Ltmp62
	.quad	.Lfunc_begin2
	.quad	.Ltmp78
	.quad	.Ltmp94
	.quad	.Ltmp79
	.quad	.Ltmp88
	.quad	.Ltmp96
	.quad	.Ltmp99
	.quad	.Ltmp102
	.quad	.Lfunc_begin3
	.quad	.Ltmp121
	.quad	.Ltmp129
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
