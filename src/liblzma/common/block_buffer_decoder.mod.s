	.text
	.file	"block_buffer_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/block_buffer_decoder.c" md5 0xecaea2d3c10afacf016d39de887b7677
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.globl	lzma_block_buffer_decode        # -- Begin function lzma_block_buffer_decode
	.p2align	4, 0x90
	.type	lzma_block_buffer_decode,@function
lzma_block_buffer_decode:               # @lzma_block_buffer_decode
.Lfunc_begin0:
	.loc	0 20 0                          # liblzma/common/block_buffer_decoder.c:20:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r9
	#DEBUG_VALUE: lzma_block_buffer_decode:out_pos <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_decode:out_size <- [DW_OP_plus_uconst 168] [$rsp+0]
	movl	$11, %eax
.Ltmp0:
	.loc	0 21 13 prologue_end            # liblzma/common/block_buffer_decoder.c:21:13
	testq	%rcx, %rcx
	.loc	0 21 21 is_stmt 0               # liblzma/common/block_buffer_decoder.c:21:21
	je	.LBB0_13
.Ltmp1:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r9
	#DEBUG_VALUE: lzma_block_buffer_decode:out_pos <- [DW_OP_plus_uconst 160] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_decode:out_size <- [DW_OP_plus_uconst 168] [$rsp+0]
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
	.loc	0 21 28                         # liblzma/common/block_buffer_decoder.c:21:28
	testq	%rdx, %rdx
	setne	%r11b
	.loc	0 22 7 is_stmt 1                # liblzma/common/block_buffer_decoder.c:22:7
	movq	(%rcx), %r10
	cmpq	%r8, %r10
	sete	%bl
	.loc	0 21 36                         # liblzma/common/block_buffer_decoder.c:21:36
	orb	%r11b, %bl
	cmpb	$1, %bl
	jne	.LBB0_12
.Ltmp2:
# %bb.2:                                # %lor.lhs.false3
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r9
	.loc	0 22 15                         # liblzma/common/block_buffer_decoder.c:22:15
	cmpq	%r8, %r10
	seta	%r10b
	movq	160(%rsp), %r13
	testq	%r13, %r13
	sete	%r11b
	.loc	0 22 25 is_stmt 0               # liblzma/common/block_buffer_decoder.c:22:25
	orb	%r10b, %r11b
	jne	.LBB0_12
.Ltmp3:
# %bb.3:                                # %lor.lhs.false7
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r9
	.loc	0 0 25                          # liblzma/common/block_buffer_decoder.c:0:25
	movq	168(%rsp), %rbp
	.loc	0 23 12 is_stmt 1               # liblzma/common/block_buffer_decoder.c:23:12
	testq	%r9, %r9
	sete	%r10b
	cmpq	%rbp, (%r13)
	setne	%r11b
	seta	%bl
	.loc	0 23 20 is_stmt 0               # liblzma/common/block_buffer_decoder.c:23:20
	andb	%r10b, %r11b
	orb	%bl, %r11b
	jne	.LBB0_12
.Ltmp4:
# %bb.4:                                # %if.end
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $rdx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- $r8
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r9
	.loc	0 0 20                          # liblzma/common/block_buffer_decoder.c:0:20
	movq	%rdx, %r12
.Ltmp5:
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $r12
	movq	%r9, %r15
.Ltmp6:
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r15
	movq	%r8, 8(%rsp)                    # 8-byte Spill
.Ltmp7:
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	movq	%rcx, %r14
.Ltmp8:
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $r14
	.loc	0 28 18 is_stmt 1               # liblzma/common/block_buffer_decoder.c:28:18
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	$-1, 40(%rsp)
	leaq	32(%rsp), %rax
	movq	%rdi, %rdx
	.loc	0 29 17                         # liblzma/common/block_buffer_decoder.c:29:17
	movq	%rax, %rdi
.Ltmp9:
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- $rdx
	.loc	0 0 17 is_stmt 0                # liblzma/common/block_buffer_decoder.c:0:17
	movq	%rsi, %rbx
	.loc	0 29 17                         # liblzma/common/block_buffer_decoder.c:29:17
	callq	lzma_block_decoder_init@PLT
.Ltmp10:
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rbx
	.loc	0 0 17                          # liblzma/common/block_buffer_decoder.c:0:17
	movq	%rbx, %rsi
.Ltmp11:
	#DEBUG_VALUE: lzma_block_buffer_decode:ret <- $eax
	.loc	0 32 10 is_stmt 1               # liblzma/common/block_buffer_decoder.c:32:10
	testl	%eax, %eax
.Ltmp12:
	.loc	0 32 6 is_stmt 0                # liblzma/common/block_buffer_decoder.c:32:6
	jne	.LBB0_11
.Ltmp13:
# %bb.5:                                # %if.then14
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $r14
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r15
	#DEBUG_VALUE: lzma_block_buffer_decode:ret <- $eax
	.loc	0 0 6                           # liblzma/common/block_buffer_decoder.c:0:6
	movq	%r14, %rcx
.Ltmp14:
	.loc	0 35 27 is_stmt 1               # liblzma/common/block_buffer_decoder.c:35:27
	movq	(%r14), %rax
.Ltmp15:
	#DEBUG_VALUE: in_start <- $rax
	.loc	0 0 27 is_stmt 0                # liblzma/common/block_buffer_decoder.c:0:27
	movq	%rax, 24(%rsp)                  # 8-byte Spill
.Ltmp16:
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 36 28 is_stmt 1               # liblzma/common/block_buffer_decoder.c:36:28
	movq	(%r13), %rax
.Ltmp17:
	#DEBUG_VALUE: out_start <- $rax
	.loc	0 0 28 is_stmt 0                # liblzma/common/block_buffer_decoder.c:0:28
	movq	%rax, 16(%rsp)                  # 8-byte Spill
.Ltmp18:
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 39 42 is_stmt 1               # liblzma/common/block_buffer_decoder.c:39:42
	movq	32(%rsp), %rdi
	.loc	0 39 9 is_stmt 0                # liblzma/common/block_buffer_decoder.c:39:9
	subq	$8, %rsp
.Ltmp19:
	.cfi_adjust_cfa_offset 8
	movq	%r12, %rdx
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	%r15, %r9
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	*88(%rsp)
.Ltmp20:
	#DEBUG_VALUE: lzma_block_buffer_decode:ret <- $eax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	.loc	0 43 7 is_stmt 1                # liblzma/common/block_buffer_decoder.c:43:7
	cmpl	$1, %eax
	je	.LBB0_6
.Ltmp21:
# %bb.7:                                # %if.then14
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $r14
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r15
	#DEBUG_VALUE: lzma_block_buffer_decode:ret <- $eax
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	testl	%eax, %eax
	jne	.LBB0_9
.Ltmp22:
# %bb.8:                                # %if.then19
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $r14
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r15
	#DEBUG_VALUE: lzma_block_buffer_decode:ret <- $eax
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 0 7 is_stmt 0                 # liblzma/common/block_buffer_decoder.c:0:7
	xorl	%eax, %eax
.Ltmp23:
	movq	8(%rsp), %rcx                   # 8-byte Reload
.Ltmp24:
	.loc	0 62 17 is_stmt 1               # liblzma/common/block_buffer_decoder.c:62:17
	cmpq	%rcx, (%r14)
	setne	%al
	addl	$9, %eax
.Ltmp25:
.LBB0_9:                                # %if.end24
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $r14
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r15
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_block_buffer_decode:ret <- $eax
	.loc	0 0 17 is_stmt 0                # liblzma/common/block_buffer_decoder.c:0:17
	movq	24(%rsp), %rcx                  # 8-byte Reload
	.loc	0 69 12 is_stmt 1               # liblzma/common/block_buffer_decoder.c:69:12
	movq	%rcx, (%r14)
	movq	16(%rsp), %rcx                  # 8-byte Reload
	.loc	0 70 13                         # liblzma/common/block_buffer_decoder.c:70:13
	movq	%rcx, (%r13)
	jmp	.LBB0_10
.Ltmp26:
.LBB0_6:
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $r14
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r15
	#DEBUG_VALUE: lzma_block_buffer_decode:ret <- $eax
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 0 13 is_stmt 0                # liblzma/common/block_buffer_decoder.c:0:13
	xorl	%eax, %eax
.Ltmp27:
.LBB0_10:                               # %if.end26
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $r14
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r15
	#DEBUG_VALUE: in_start <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: out_start <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	movq	%rbx, %rsi
.Ltmp28:
.LBB0_11:                               # %if.end26
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- $r12
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- $r14
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- $r15
	#DEBUG_VALUE: lzma_block_buffer_decode:ret <- $eax
	leaq	32(%rsp), %rdi
	movl	%eax, %ebx
.Ltmp29:
	#DEBUG_VALUE: lzma_block_buffer_decode:ret <- $ebx
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 77 2 is_stmt 1                # liblzma/common/block_buffer_decoder.c:77:2
	callq	lzma_next_end@PLT
.Ltmp30:
	.loc	0 0 2 is_stmt 0                 # liblzma/common/block_buffer_decoder.c:0:2
	movl	%ebx, %eax
.Ltmp31:
.LBB0_12:
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	addq	$104, %rsp
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
.Ltmp32:
.LBB0_13:                               # %return
	#DEBUG_VALUE: lzma_block_buffer_decode:block <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_block_buffer_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_block_buffer_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_block_buffer_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_block_buffer_decode:out <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 80 1 is_stmt 1                # liblzma/common/block_buffer_decoder.c:80:1
	retq
.Ltmp33:
.Lfunc_end0:
	.size	lzma_block_buffer_decode, .Lfunc_end0-lzma_block_buffer_decode
	.cfi_endproc
	.file	4 "liblzma/common" "block_decoder.h" md5 0xd741972e9232abef21e8d748627f2569
	.file	5 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	7 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	8 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	9 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	10 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	11 "liblzma/api/lzma" "block.h" md5 0xbf8cbafce550217b909c63081e414910
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	11                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
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
	.byte	160                             # 160
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	168                             # 168
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
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
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x4ba DW_TAG_compile_unit
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
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x60:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x63:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x66:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x69:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x6d:0xc DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x75:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x79:0x15 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x81:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x84:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x87:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8a:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x8e:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x8f:0x8 DW_TAG_typedef
	.long	151                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x97:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x9b:0x99 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\340~"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	332                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0xae:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	860                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xb7:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	528                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xc0:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	634                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xc9:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	669                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xd2:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	604                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xdb:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	679                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xe4:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	669                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xed:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	604                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xf6:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	345                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x101:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	332                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x10a:0x19 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp26-.Ltmp14                 # DW_AT_high_pc
	.byte	10                              # Abbrev [10] 0x110:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	1216                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x119:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	1216                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x123:0x6 DW_TAG_call_site
	.long	308                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x129:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	87
	.byte	3                               # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x12d:0x6 DW_TAG_call_site
	.long	1201                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x134:0x18 DW_TAG_subprogram
	.byte	27                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	332                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x13c:0x5 DW_TAG_formal_parameter
	.long	340                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x141:0x5 DW_TAG_formal_parameter
	.long	528                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x146:0x5 DW_TAG_formal_parameter
	.long	860                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x14c:0x8 DW_TAG_typedef
	.long	39                              # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x154:0x5 DW_TAG_pointer_type
	.long	345                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x159:0x8 DW_TAG_typedef
	.long	353                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x161:0x4e DW_TAG_structure_type
	.byte	55                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x166:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	431                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x16f:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x178:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	143                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x181:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x18a:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	693                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x193:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	718                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x19c:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	752                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x1a5:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	788                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x1af:0x5 DW_TAG_pointer_type
	.long	436                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x1b4:0x4 DW_TAG_typedef
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1b8:0x8 DW_TAG_typedef
	.long	448                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1c0:0x8 DW_TAG_typedef
	.long	456                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1c8:0x8 DW_TAG_typedef
	.long	151                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1d0:0x8 DW_TAG_typedef
	.long	472                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x1d8:0x5 DW_TAG_pointer_type
	.long	477                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1dd:0x33 DW_TAG_subroutine_type
	.long	332                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x1e2:0x5 DW_TAG_formal_parameter
	.long	431                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1e7:0x5 DW_TAG_formal_parameter
	.long	528                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1ec:0x5 DW_TAG_formal_parameter
	.long	629                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1f1:0x5 DW_TAG_formal_parameter
	.long	664                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1f6:0x5 DW_TAG_formal_parameter
	.long	604                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1fb:0x5 DW_TAG_formal_parameter
	.long	674                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x200:0x5 DW_TAG_formal_parameter
	.long	664                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x205:0x5 DW_TAG_formal_parameter
	.long	604                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x20a:0x5 DW_TAG_formal_parameter
	.long	684                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x210:0x5 DW_TAG_pointer_type
	.long	533                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x215:0x9 DW_TAG_typedef
	.long	542                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x21e:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x223:0xa DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	578                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x22d:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x237:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	142                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x242:0x5 DW_TAG_pointer_type
	.long	583                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x247:0x15 DW_TAG_subroutine_type
	.long	142                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x24c:0x5 DW_TAG_formal_parameter
	.long	142                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x251:0x5 DW_TAG_formal_parameter
	.long	604                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x256:0x5 DW_TAG_formal_parameter
	.long	604                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x25c:0x8 DW_TAG_typedef
	.long	151                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x264:0x5 DW_TAG_pointer_type
	.long	617                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x269:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x26a:0x5 DW_TAG_formal_parameter
	.long	142                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x26f:0x5 DW_TAG_formal_parameter
	.long	142                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x275:0x5 DW_TAG_restrict_type
	.long	634                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x27a:0x5 DW_TAG_pointer_type
	.long	639                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x27f:0x5 DW_TAG_const_type
	.long	644                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x284:0x8 DW_TAG_typedef
	.long	652                             # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x28c:0x8 DW_TAG_typedef
	.long	660                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x294:0x4 DW_TAG_base_type
	.byte	42                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	25                              # Abbrev [25] 0x298:0x5 DW_TAG_restrict_type
	.long	669                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x29d:0x5 DW_TAG_pointer_type
	.long	604                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2a2:0x5 DW_TAG_restrict_type
	.long	679                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2a7:0x5 DW_TAG_pointer_type
	.long	644                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2ac:0x9 DW_TAG_typedef
	.long	121                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2b5:0x8 DW_TAG_typedef
	.long	701                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x2bd:0x5 DW_TAG_pointer_type
	.long	706                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x2c2:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x2c3:0x5 DW_TAG_formal_parameter
	.long	431                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2c8:0x5 DW_TAG_formal_parameter
	.long	528                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x2ce:0x5 DW_TAG_pointer_type
	.long	723                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x2d3:0xb DW_TAG_subroutine_type
	.long	734                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x2d8:0x5 DW_TAG_formal_parameter
	.long	742                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2de:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x2e6:0x5 DW_TAG_pointer_type
	.long	747                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x2eb:0x5 DW_TAG_const_type
	.long	436                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2f0:0x5 DW_TAG_pointer_type
	.long	757                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x2f5:0x1a DW_TAG_subroutine_type
	.long	332                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x2fa:0x5 DW_TAG_formal_parameter
	.long	431                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2ff:0x5 DW_TAG_formal_parameter
	.long	783                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x304:0x5 DW_TAG_formal_parameter
	.long	783                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x309:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x30f:0x5 DW_TAG_pointer_type
	.long	448                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x314:0x5 DW_TAG_pointer_type
	.long	793                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x319:0x1a DW_TAG_subroutine_type
	.long	332                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x31e:0x5 DW_TAG_formal_parameter
	.long	431                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x323:0x5 DW_TAG_formal_parameter
	.long	528                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x328:0x5 DW_TAG_formal_parameter
	.long	819                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x32d:0x5 DW_TAG_formal_parameter
	.long	819                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x333:0x5 DW_TAG_pointer_type
	.long	824                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x338:0x5 DW_TAG_const_type
	.long	829                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x33d:0x8 DW_TAG_typedef
	.long	837                             # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x345:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x349:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x352:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	142                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x35c:0x5 DW_TAG_pointer_type
	.long	865                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x361:0x8 DW_TAG_typedef
	.long	873                             # DW_AT_type
	.byte	92                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x369:0x113 DW_TAG_structure_type
	.byte	208                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x36d:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	1148                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x376:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	1148                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x37f:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	734                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x388:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x391:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x39a:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	1164                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x3a3:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	1169                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x3ac:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	142                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x3b5:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	142                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x3be:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	142                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x3c7:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	1148                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x3d0:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	1148                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x3d9:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x3e2:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x3eb:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x3f4:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x3fd:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x406:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	440                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x40f:0x9 DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	1185                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	232                             # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x418:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	1185                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	188                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x421:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	1185                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x42a:0x9 DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	1185                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x433:0x9 DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	1193                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	236                             # DW_AT_decl_line
	.byte	200                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x43c:0x9 DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	1193                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	201                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x445:0x9 DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	1193                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.byte	202                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x44e:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	1193                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	203                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x457:0x9 DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	1193                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	204                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x460:0x9 DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1193                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	205                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x469:0x9 DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1193                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.byte	206                             # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x472:0x9 DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	1193                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	207                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x47c:0x8 DW_TAG_typedef
	.long	1156                            # DW_AT_type
	.byte	59                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x484:0x8 DW_TAG_typedef
	.long	84                              # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x48c:0x5 DW_TAG_pointer_type
	.long	829                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x491:0xc DW_TAG_array_type
	.long	644                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x496:0x6 DW_TAG_subrange_type
	.long	1181                            # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x49d:0x4 DW_TAG_base_type
	.byte	66                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	6                               # Abbrev [6] 0x4a1:0x8 DW_TAG_typedef
	.long	109                             # DW_AT_type
	.byte	79                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4a9:0x8 DW_TAG_typedef
	.long	660                             # DW_AT_type
	.byte	84                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x4b1:0xf DW_TAG_subprogram
	.byte	93                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x4b5:0x5 DW_TAG_formal_parameter
	.long	340                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x4ba:0x5 DW_TAG_formal_parameter
	.long	528                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x4c0:0x5 DW_TAG_const_type
	.long	604                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	432                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/block_buffer_decoder.c" # string offset=105
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
	.asciz	"unsigned long"                 # string offset=523
.Linfo_string26:
	.asciz	"uintptr_t"                     # string offset=537
.Linfo_string27:
	.asciz	"lzma_block_decoder_init"       # string offset=547
.Linfo_string28:
	.asciz	"lzma_ret"                      # string offset=571
.Linfo_string29:
	.asciz	"coder"                         # string offset=580
.Linfo_string30:
	.asciz	"lzma_coder"                    # string offset=586
.Linfo_string31:
	.asciz	"id"                            # string offset=597
.Linfo_string32:
	.asciz	"__uint64_t"                    # string offset=600
.Linfo_string33:
	.asciz	"uint64_t"                      # string offset=611
.Linfo_string34:
	.asciz	"lzma_vli"                      # string offset=620
.Linfo_string35:
	.asciz	"init"                          # string offset=629
.Linfo_string36:
	.asciz	"code"                          # string offset=634
.Linfo_string37:
	.asciz	"alloc"                         # string offset=639
.Linfo_string38:
	.asciz	"size_t"                        # string offset=645
.Linfo_string39:
	.asciz	"free"                          # string offset=652
.Linfo_string40:
	.asciz	"opaque"                        # string offset=657
.Linfo_string41:
	.asciz	"lzma_allocator"                # string offset=664
.Linfo_string42:
	.asciz	"unsigned char"                 # string offset=679
.Linfo_string43:
	.asciz	"__uint8_t"                     # string offset=693
.Linfo_string44:
	.asciz	"uint8_t"                       # string offset=703
.Linfo_string45:
	.asciz	"lzma_action"                   # string offset=711
.Linfo_string46:
	.asciz	"lzma_code_function"            # string offset=723
.Linfo_string47:
	.asciz	"end"                           # string offset=742
.Linfo_string48:
	.asciz	"lzma_end_function"             # string offset=746
.Linfo_string49:
	.asciz	"get_check"                     # string offset=764
.Linfo_string50:
	.asciz	"lzma_check"                    # string offset=774
.Linfo_string51:
	.asciz	"memconfig"                     # string offset=785
.Linfo_string52:
	.asciz	"update"                        # string offset=795
.Linfo_string53:
	.asciz	"options"                       # string offset=802
.Linfo_string54:
	.asciz	"lzma_filter"                   # string offset=810
.Linfo_string55:
	.asciz	"lzma_next_coder_s"             # string offset=822
.Linfo_string56:
	.asciz	"lzma_next_coder"               # string offset=840
.Linfo_string57:
	.asciz	"version"                       # string offset=856
.Linfo_string58:
	.asciz	"__uint32_t"                    # string offset=864
.Linfo_string59:
	.asciz	"uint32_t"                      # string offset=875
.Linfo_string60:
	.asciz	"header_size"                   # string offset=884
.Linfo_string61:
	.asciz	"check"                         # string offset=896
.Linfo_string62:
	.asciz	"compressed_size"               # string offset=902
.Linfo_string63:
	.asciz	"uncompressed_size"             # string offset=918
.Linfo_string64:
	.asciz	"filters"                       # string offset=936
.Linfo_string65:
	.asciz	"raw_check"                     # string offset=944
.Linfo_string66:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=954
.Linfo_string67:
	.asciz	"reserved_ptr1"                 # string offset=974
.Linfo_string68:
	.asciz	"reserved_ptr2"                 # string offset=988
.Linfo_string69:
	.asciz	"reserved_ptr3"                 # string offset=1002
.Linfo_string70:
	.asciz	"reserved_int1"                 # string offset=1016
.Linfo_string71:
	.asciz	"reserved_int2"                 # string offset=1030
.Linfo_string72:
	.asciz	"reserved_int3"                 # string offset=1044
.Linfo_string73:
	.asciz	"reserved_int4"                 # string offset=1058
.Linfo_string74:
	.asciz	"reserved_int5"                 # string offset=1072
.Linfo_string75:
	.asciz	"reserved_int6"                 # string offset=1086
.Linfo_string76:
	.asciz	"reserved_int7"                 # string offset=1100
.Linfo_string77:
	.asciz	"reserved_int8"                 # string offset=1114
.Linfo_string78:
	.asciz	"reserved_enum1"                # string offset=1128
.Linfo_string79:
	.asciz	"lzma_reserved_enum"            # string offset=1143
.Linfo_string80:
	.asciz	"reserved_enum2"                # string offset=1162
.Linfo_string81:
	.asciz	"reserved_enum3"                # string offset=1177
.Linfo_string82:
	.asciz	"reserved_enum4"                # string offset=1192
.Linfo_string83:
	.asciz	"reserved_bool1"                # string offset=1207
.Linfo_string84:
	.asciz	"lzma_bool"                     # string offset=1222
.Linfo_string85:
	.asciz	"reserved_bool2"                # string offset=1232
.Linfo_string86:
	.asciz	"reserved_bool3"                # string offset=1247
.Linfo_string87:
	.asciz	"reserved_bool4"                # string offset=1262
.Linfo_string88:
	.asciz	"reserved_bool5"                # string offset=1277
.Linfo_string89:
	.asciz	"reserved_bool6"                # string offset=1292
.Linfo_string90:
	.asciz	"reserved_bool7"                # string offset=1307
.Linfo_string91:
	.asciz	"reserved_bool8"                # string offset=1322
.Linfo_string92:
	.asciz	"lzma_block"                    # string offset=1337
.Linfo_string93:
	.asciz	"lzma_next_end"                 # string offset=1348
.Linfo_string94:
	.asciz	"lzma_block_buffer_decode"      # string offset=1362
.Linfo_string95:
	.asciz	"block_decoder"                 # string offset=1387
.Linfo_string96:
	.asciz	"block"                         # string offset=1401
.Linfo_string97:
	.asciz	"allocator"                     # string offset=1407
.Linfo_string98:
	.asciz	"in"                            # string offset=1417
.Linfo_string99:
	.asciz	"in_pos"                        # string offset=1420
.Linfo_string100:
	.asciz	"in_size"                       # string offset=1427
.Linfo_string101:
	.asciz	"out"                           # string offset=1435
.Linfo_string102:
	.asciz	"out_pos"                       # string offset=1439
.Linfo_string103:
	.asciz	"out_size"                      # string offset=1447
.Linfo_string104:
	.asciz	"ret"                           # string offset=1456
.Linfo_string105:
	.asciz	"in_start"                      # string offset=1460
.Linfo_string106:
	.asciz	"out_start"                     # string offset=1469
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp14
	.quad	.Ltmp10
	.quad	.Ltmp20
	.quad	.Ltmp30
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
