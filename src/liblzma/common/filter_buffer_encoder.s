	.text
	.file	"filter_buffer_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/filter_buffer_encoder.c" md5 0x0998afbb91f47ff68f6e2b95ba048706
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.globl	lzma_raw_buffer_encode          # -- Begin function lzma_raw_buffer_encode
	.p2align	4, 0x90
	.type	lzma_raw_buffer_encode,@function
lzma_raw_buffer_encode:                 # @lzma_raw_buffer_encode
.Lfunc_begin0:
	.loc	0 20 0                          # liblzma/common/filter_buffer_encoder.c:20:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_raw_buffer_encode:filters <- $rdi
	#DEBUG_VALUE: lzma_raw_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_buffer_encode:in <- $rdx
	#DEBUG_VALUE: lzma_raw_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_raw_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_pos <- $r9
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
.Ltmp0:
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_size <- [DW_OP_plus_uconst 144] [$rsp+0]
	movq	%rdx, %r15
	movq	%rdi, %rdx
.Ltmp1:
	#DEBUG_VALUE: lzma_raw_buffer_encode:in <- $r15
	.loc	0 22 10 prologue_end            # liblzma/common/filter_buffer_encoder.c:22:10
	testq	%r15, %r15
	sete	%al
	testq	%rcx, %rcx
	setne	%dil
.Ltmp2:
	#DEBUG_VALUE: lzma_raw_buffer_encode:filters <- $rdx
	.loc	0 22 18 is_stmt 0               # liblzma/common/filter_buffer_encoder.c:22:18
	andb	%al, %dil
	testq	%r8, %r8
	sete	%al
	testq	%r9, %r9
	sete	%r10b
	orb	%al, %r10b
	orb	%dil, %r10b
	movl	$11, %eax
	jne	.LBB0_5
.Ltmp3:
# %bb.1:                                # %lor.lhs.false5
	#DEBUG_VALUE: lzma_raw_buffer_encode:filters <- $rdx
	#DEBUG_VALUE: lzma_raw_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_buffer_encode:in <- $r15
	#DEBUG_VALUE: lzma_raw_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_raw_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_pos <- $r9
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_size <- [DW_OP_plus_uconst 144] [$rsp+0]
	.loc	0 0 18                          # liblzma/common/filter_buffer_encoder.c:0:18
	movq	144(%rsp), %rbp
	.loc	0 23 35 is_stmt 1               # liblzma/common/filter_buffer_encoder.c:23:35
	cmpq	%rbp, (%r9)
.Ltmp4:
	.loc	0 22 6                          # liblzma/common/filter_buffer_encoder.c:22:6
	ja	.LBB0_5
.Ltmp5:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_raw_buffer_encode:filters <- $rdx
	#DEBUG_VALUE: lzma_raw_buffer_encode:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_buffer_encode:in <- $r15
	#DEBUG_VALUE: lzma_raw_buffer_encode:in_size <- $rcx
	#DEBUG_VALUE: lzma_raw_buffer_encode:out <- $r8
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_pos <- $r9
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_size <- [DW_OP_plus_uconst 144] [$rsp+0]
	.loc	0 0 6 is_stmt 0                 # liblzma/common/filter_buffer_encoder.c:0:6
	movq	%rcx, %r14
.Ltmp6:
	#DEBUG_VALUE: lzma_raw_buffer_encode:in_size <- $r14
	movq	%r8, %rbx
.Ltmp7:
	#DEBUG_VALUE: lzma_raw_buffer_encode:out <- $rbx
	movq	%r9, %r13
.Ltmp8:
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_pos <- $r13
	.loc	0 27 18 is_stmt 1               # liblzma/common/filter_buffer_encoder.c:27:18
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	$-1, 24(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rsi, %r12
.Ltmp9:
	.loc	0 28 2                          # liblzma/common/filter_buffer_encoder.c:28:2
	callq	lzma_raw_encoder_init@PLT
.Ltmp10:
	#DEBUG_VALUE: lzma_raw_buffer_encode:filters <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_raw_buffer_encode:allocator <- $r12
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 28 2 is_stmt 0                # liblzma/common/filter_buffer_encoder.c:28:2
	testl	%eax, %eax
	jne	.LBB0_5
.Ltmp11:
# %bb.3:                                # %do.end
	#DEBUG_VALUE: lzma_raw_buffer_encode:filters <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_raw_buffer_encode:allocator <- $r12
	#DEBUG_VALUE: lzma_raw_buffer_encode:in <- $r15
	#DEBUG_VALUE: lzma_raw_buffer_encode:in_size <- $r14
	#DEBUG_VALUE: lzma_raw_buffer_encode:out <- $rbx
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_pos <- $r13
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_size <- [DW_OP_plus_uconst 144] [$rsp+0]
	.loc	0 32 27 is_stmt 1               # liblzma/common/filter_buffer_encoder.c:32:27
	movq	(%r13), %rcx
.Ltmp12:
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_start <- $rcx
	.loc	0 0 27 is_stmt 0                # liblzma/common/filter_buffer_encoder.c:0:27
	movq	%rcx, (%rsp)                    # 8-byte Spill
.Ltmp13:
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_start <- [DW_OP_deref] $rsp
	.loc	0 35 9 is_stmt 1                # liblzma/common/filter_buffer_encoder.c:35:9
	movq	$0, 8(%rsp)
	.loc	0 36 32                         # liblzma/common/filter_buffer_encoder.c:36:32
	movq	16(%rsp), %rdi
	.loc	0 36 17 is_stmt 0               # liblzma/common/filter_buffer_encoder.c:36:17
	subq	$8, %rsp
.Ltmp14:
	.cfi_adjust_cfa_offset 8
	.loc	0 0 17                          # liblzma/common/filter_buffer_encoder.c:0:17
	leaq	16(%rsp), %rcx
	.loc	0 36 17                         # liblzma/common/filter_buffer_encoder.c:36:17
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %r8
	movq	%rbx, %r9
	pushq	$3
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	*72(%rsp)
.Ltmp15:
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	%eax, %ebx
.Ltmp16:
	#DEBUG_VALUE: lzma_raw_buffer_encode:out <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_raw_buffer_encode:ret <- $ebx
	.loc	0 0 17                          # liblzma/common/filter_buffer_encoder.c:0:17
	leaq	16(%rsp), %rdi
	.loc	0 38 2 is_stmt 1                # liblzma/common/filter_buffer_encoder.c:38:2
	movq	%r12, %rsi
	callq	lzma_next_end@PLT
.Ltmp17:
	.loc	0 0 2 is_stmt 0                 # liblzma/common/filter_buffer_encoder.c:0:2
	xorl	%eax, %eax
.Ltmp18:
	.loc	0 40 10 is_stmt 1               # liblzma/common/filter_buffer_encoder.c:40:10
	cmpl	$1, %ebx
.Ltmp19:
	.loc	0 40 6 is_stmt 0                # liblzma/common/filter_buffer_encoder.c:40:6
	je	.LBB0_5
.Ltmp20:
# %bb.4:                                # %if.else
	#DEBUG_VALUE: lzma_raw_buffer_encode:filters <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_raw_buffer_encode:allocator <- $r12
	#DEBUG_VALUE: lzma_raw_buffer_encode:in <- $r15
	#DEBUG_VALUE: lzma_raw_buffer_encode:in_size <- $r14
	#DEBUG_VALUE: lzma_raw_buffer_encode:out <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_pos <- $r13
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_start <- [DW_OP_deref] $rsp
	#DEBUG_VALUE: lzma_raw_buffer_encode:ret <- $ebx
	.loc	0 43 11 is_stmt 1               # liblzma/common/filter_buffer_encoder.c:43:11
	testl	%ebx, %ebx
	movl	$10, %eax
.Ltmp21:
	.loc	0 43 7 is_stmt 0                # liblzma/common/filter_buffer_encoder.c:43:7
	cmovnel	%ebx, %eax
.Ltmp22:
	#DEBUG_VALUE: lzma_raw_buffer_encode:ret <- $eax
	.loc	0 0 7                           # liblzma/common/filter_buffer_encoder.c:0:7
	movq	(%rsp), %rcx                    # 8-byte Reload
	.loc	0 50 12 is_stmt 1               # liblzma/common/filter_buffer_encoder.c:50:12
	movq	%rcx, (%r13)
.Ltmp23:
	#DEBUG_VALUE: lzma_raw_buffer_encode:ret <- $eax
.LBB0_5:                                # %return
	#DEBUG_VALUE: lzma_raw_buffer_encode:filters <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_raw_buffer_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_raw_buffer_encode:in <- $r15
	#DEBUG_VALUE: lzma_raw_buffer_encode:in_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_raw_buffer_encode:out <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_raw_buffer_encode:out_pos <- [DW_OP_LLVM_entry_value 1] $r9
	.loc	0 54 1 epilogue_begin           # liblzma/common/filter_buffer_encoder.c:54:1
	addq	$88, %rsp
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
.Ltmp24:
	#DEBUG_VALUE: lzma_raw_buffer_encode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp25:
.Lfunc_end0:
	.size	lzma_raw_buffer_encode, .Lfunc_end0-lzma_raw_buffer_encode
	.cfi_endproc
	.file	4 "liblzma/common" "filter_encoder.h" md5 0xddc4c6a58369644501ee0eefd7b6bf8f
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
	.long	10                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
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
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	144                             # 144
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
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
	.byte	1                               # Abbrev [1] 0xc:0x360 DW_TAG_compile_unit
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
	.byte	7                               # Abbrev [7] 0x8f:0x9b DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\360~"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	322                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0xa2:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	809                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xab:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	518                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xb4:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	624                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xbd:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xc6:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	669                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xcf:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	659                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xd8:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xe1:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xec:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xf7:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	870                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x100:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	322                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x109:0x10 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp11-.Ltmp9                  # DW_AT_high_pc
	.byte	10                              # Abbrev [10] 0x10f:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	67                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	865                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x119:0x6 DW_TAG_call_site
	.long	298                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	13                              # Abbrev [13] 0x11f:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	87
	.byte	3                               # DW_AT_call_return_pc
	.byte	12                              # Abbrev [12] 0x123:0x6 DW_TAG_call_site
	.long	850                             # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x12a:0x18 DW_TAG_subprogram
	.byte	26                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	322                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x132:0x5 DW_TAG_formal_parameter
	.long	330                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x137:0x5 DW_TAG_formal_parameter
	.long	518                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x13c:0x5 DW_TAG_formal_parameter
	.long	809                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x142:0x8 DW_TAG_typedef
	.long	39                              # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x14a:0x5 DW_TAG_pointer_type
	.long	335                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x14f:0x8 DW_TAG_typedef
	.long	343                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x157:0x4e DW_TAG_structure_type
	.byte	54                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x15c:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	421                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x165:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	430                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x16e:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	131                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x177:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	454                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x180:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	683                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x189:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	708                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x192:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	742                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x19b:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	778                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x1a5:0x5 DW_TAG_pointer_type
	.long	426                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x1aa:0x4 DW_TAG_typedef
	.byte	29                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1ae:0x8 DW_TAG_typedef
	.long	438                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1b6:0x8 DW_TAG_typedef
	.long	446                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1be:0x8 DW_TAG_typedef
	.long	139                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1c6:0x8 DW_TAG_typedef
	.long	462                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x1ce:0x5 DW_TAG_pointer_type
	.long	467                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1d3:0x33 DW_TAG_subroutine_type
	.long	322                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x1d8:0x5 DW_TAG_formal_parameter
	.long	421                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1dd:0x5 DW_TAG_formal_parameter
	.long	518                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1e2:0x5 DW_TAG_formal_parameter
	.long	619                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1e7:0x5 DW_TAG_formal_parameter
	.long	654                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1ec:0x5 DW_TAG_formal_parameter
	.long	594                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1f1:0x5 DW_TAG_formal_parameter
	.long	664                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1f6:0x5 DW_TAG_formal_parameter
	.long	654                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1fb:0x5 DW_TAG_formal_parameter
	.long	594                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x200:0x5 DW_TAG_formal_parameter
	.long	674                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x206:0x5 DW_TAG_pointer_type
	.long	523                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x20b:0x9 DW_TAG_typedef
	.long	532                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x214:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x219:0xa DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	568                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x223:0xa DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	602                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x22d:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	130                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x238:0x5 DW_TAG_pointer_type
	.long	573                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x23d:0x15 DW_TAG_subroutine_type
	.long	130                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x242:0x5 DW_TAG_formal_parameter
	.long	130                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x247:0x5 DW_TAG_formal_parameter
	.long	594                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x24c:0x5 DW_TAG_formal_parameter
	.long	594                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x252:0x8 DW_TAG_typedef
	.long	139                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x25a:0x5 DW_TAG_pointer_type
	.long	607                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x25f:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x260:0x5 DW_TAG_formal_parameter
	.long	130                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x265:0x5 DW_TAG_formal_parameter
	.long	130                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x26b:0x5 DW_TAG_restrict_type
	.long	624                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x270:0x5 DW_TAG_pointer_type
	.long	629                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x275:0x5 DW_TAG_const_type
	.long	634                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x27a:0x8 DW_TAG_typedef
	.long	642                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x282:0x8 DW_TAG_typedef
	.long	650                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x28a:0x4 DW_TAG_base_type
	.byte	41                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	25                              # Abbrev [25] 0x28e:0x5 DW_TAG_restrict_type
	.long	659                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x293:0x5 DW_TAG_pointer_type
	.long	594                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x298:0x5 DW_TAG_restrict_type
	.long	669                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x29d:0x5 DW_TAG_pointer_type
	.long	634                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2a2:0x9 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x2ab:0x8 DW_TAG_typedef
	.long	691                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x2b3:0x5 DW_TAG_pointer_type
	.long	696                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x2b8:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x2b9:0x5 DW_TAG_formal_parameter
	.long	421                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2be:0x5 DW_TAG_formal_parameter
	.long	518                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x2c4:0x5 DW_TAG_pointer_type
	.long	713                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x2c9:0xb DW_TAG_subroutine_type
	.long	724                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x2ce:0x5 DW_TAG_formal_parameter
	.long	732                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2d4:0x8 DW_TAG_typedef
	.long	109                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x2dc:0x5 DW_TAG_pointer_type
	.long	737                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x2e1:0x5 DW_TAG_const_type
	.long	426                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x2e6:0x5 DW_TAG_pointer_type
	.long	747                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x2eb:0x1a DW_TAG_subroutine_type
	.long	322                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x2f0:0x5 DW_TAG_formal_parameter
	.long	421                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2f5:0x5 DW_TAG_formal_parameter
	.long	773                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2fa:0x5 DW_TAG_formal_parameter
	.long	773                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x2ff:0x5 DW_TAG_formal_parameter
	.long	438                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x305:0x5 DW_TAG_pointer_type
	.long	438                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x30a:0x5 DW_TAG_pointer_type
	.long	783                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x30f:0x1a DW_TAG_subroutine_type
	.long	322                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x314:0x5 DW_TAG_formal_parameter
	.long	421                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x319:0x5 DW_TAG_formal_parameter
	.long	518                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x31e:0x5 DW_TAG_formal_parameter
	.long	809                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x323:0x5 DW_TAG_formal_parameter
	.long	809                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x329:0x5 DW_TAG_pointer_type
	.long	814                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x32e:0x5 DW_TAG_const_type
	.long	819                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x333:0x8 DW_TAG_typedef
	.long	827                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x33b:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x33f:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	430                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x348:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	130                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x352:0xf DW_TAG_subprogram
	.byte	56                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x356:0x5 DW_TAG_formal_parameter
	.long	330                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x35b:0x5 DW_TAG_formal_parameter
	.long	518                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x361:0x5 DW_TAG_const_type
	.long	322                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x366:0x5 DW_TAG_const_type
	.long	594                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	284                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/filter_buffer_encoder.c" # string offset=105
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
	.asciz	"lzma_raw_encoder_init"         # string offset=529
.Linfo_string27:
	.asciz	"lzma_ret"                      # string offset=551
.Linfo_string28:
	.asciz	"coder"                         # string offset=560
.Linfo_string29:
	.asciz	"lzma_coder"                    # string offset=566
.Linfo_string30:
	.asciz	"id"                            # string offset=577
.Linfo_string31:
	.asciz	"__uint64_t"                    # string offset=580
.Linfo_string32:
	.asciz	"uint64_t"                      # string offset=591
.Linfo_string33:
	.asciz	"lzma_vli"                      # string offset=600
.Linfo_string34:
	.asciz	"init"                          # string offset=609
.Linfo_string35:
	.asciz	"code"                          # string offset=614
.Linfo_string36:
	.asciz	"alloc"                         # string offset=619
.Linfo_string37:
	.asciz	"size_t"                        # string offset=625
.Linfo_string38:
	.asciz	"free"                          # string offset=632
.Linfo_string39:
	.asciz	"opaque"                        # string offset=637
.Linfo_string40:
	.asciz	"lzma_allocator"                # string offset=644
.Linfo_string41:
	.asciz	"unsigned char"                 # string offset=659
.Linfo_string42:
	.asciz	"__uint8_t"                     # string offset=673
.Linfo_string43:
	.asciz	"uint8_t"                       # string offset=683
.Linfo_string44:
	.asciz	"lzma_action"                   # string offset=691
.Linfo_string45:
	.asciz	"lzma_code_function"            # string offset=703
.Linfo_string46:
	.asciz	"end"                           # string offset=722
.Linfo_string47:
	.asciz	"lzma_end_function"             # string offset=726
.Linfo_string48:
	.asciz	"get_check"                     # string offset=744
.Linfo_string49:
	.asciz	"lzma_check"                    # string offset=754
.Linfo_string50:
	.asciz	"memconfig"                     # string offset=765
.Linfo_string51:
	.asciz	"update"                        # string offset=775
.Linfo_string52:
	.asciz	"options"                       # string offset=782
.Linfo_string53:
	.asciz	"lzma_filter"                   # string offset=790
.Linfo_string54:
	.asciz	"lzma_next_coder_s"             # string offset=802
.Linfo_string55:
	.asciz	"lzma_next_coder"               # string offset=820
.Linfo_string56:
	.asciz	"lzma_next_end"                 # string offset=836
.Linfo_string57:
	.asciz	"lzma_raw_buffer_encode"        # string offset=850
.Linfo_string58:
	.asciz	"next"                          # string offset=873
.Linfo_string59:
	.asciz	"in_pos"                        # string offset=878
.Linfo_string60:
	.asciz	"filters"                       # string offset=885
.Linfo_string61:
	.asciz	"allocator"                     # string offset=893
.Linfo_string62:
	.asciz	"in"                            # string offset=903
.Linfo_string63:
	.asciz	"in_size"                       # string offset=906
.Linfo_string64:
	.asciz	"out"                           # string offset=914
.Linfo_string65:
	.asciz	"out_pos"                       # string offset=918
.Linfo_string66:
	.asciz	"out_size"                      # string offset=926
.Linfo_string67:
	.asciz	"ret_"                          # string offset=935
.Linfo_string68:
	.asciz	"out_start"                     # string offset=940
.Linfo_string69:
	.asciz	"ret"                           # string offset=950
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp9
	.quad	.Ltmp10
	.quad	.Ltmp15
	.quad	.Ltmp17
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
