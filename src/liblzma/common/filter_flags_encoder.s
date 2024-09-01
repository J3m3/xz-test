	.text
	.file	"filter_flags_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/filter_flags_encoder.c" md5 0x544eb0dae4e7a381d8d20707b95c3de0
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.globl	lzma_filter_flags_size          # -- Begin function lzma_filter_flags_size
	.p2align	4, 0x90
	.type	lzma_filter_flags_size,@function
lzma_filter_flags_size:                 # @lzma_filter_flags_size
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_filter_flags_size:size <- $rdi
	#DEBUG_VALUE: lzma_filter_flags_size:filter <- $rsi
	.loc	0 19 14 prologue_end            # liblzma/common/filter_flags_encoder.c:19:14
	movq	(%rsi), %rax
	.loc	0 19 17 is_stmt 0               # liblzma/common/filter_flags_encoder.c:19:17
	shrq	$62, %rax
	movl	$11, %eax
.Ltmp0:
	.loc	0 19 6                          # liblzma/common/filter_flags_encoder.c:19:6
	jne	.LBB0_4
.Ltmp1:
# %bb.1:                                # %do.body
	#DEBUG_VALUE: lzma_filter_flags_size:size <- $rdi
	#DEBUG_VALUE: lzma_filter_flags_size:filter <- $rsi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp2:
	.loc	0 22 2 is_stmt 1                # liblzma/common/filter_flags_encoder.c:22:2
	callq	lzma_properties_size@PLT
.Ltmp3:
	#DEBUG_VALUE: lzma_filter_flags_size:filter <- $r14
	#DEBUG_VALUE: lzma_filter_flags_size:size <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 22 2 is_stmt 0                # liblzma/common/filter_flags_encoder.c:22:2
	testl	%eax, %eax
	jne	.LBB0_3
.Ltmp4:
# %bb.2:                                # %do.end
	#DEBUG_VALUE: lzma_filter_flags_size:size <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_size:filter <- $r14
	.loc	0 24 33 is_stmt 1               # liblzma/common/filter_flags_encoder.c:24:33
	movq	(%r14), %rdi
	.loc	0 24 11 is_stmt 0               # liblzma/common/filter_flags_encoder.c:24:11
	callq	lzma_vli_size@PLT
.Ltmp5:
	movl	%eax, %ebp
	.loc	0 24 53                         # liblzma/common/filter_flags_encoder.c:24:53
	movl	(%rbx), %edi
	.loc	0 24 39                         # liblzma/common/filter_flags_encoder.c:24:39
	callq	lzma_vli_size@PLT
.Ltmp6:
	.loc	0 24 37                         # liblzma/common/filter_flags_encoder.c:24:37
	addl	%ebp, %eax
	.loc	0 24 8                          # liblzma/common/filter_flags_encoder.c:24:8
	addl	%eax, (%rbx)
	xorl	%eax, %eax
.Ltmp7:
.LBB0_3:
	#DEBUG_VALUE: lzma_filter_flags_size:size <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_size:filter <- $r14
	.loc	0 0 8                           # liblzma/common/filter_flags_encoder.c:0:8
	popq	%rbx
.Ltmp8:
	#DEBUG_VALUE: lzma_filter_flags_size:size <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp9:
	#DEBUG_VALUE: lzma_filter_flags_size:filter <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
.Ltmp10:
.LBB0_4:                                # %return
	#DEBUG_VALUE: lzma_filter_flags_size:size <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_filter_flags_size:filter <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 27 1 is_stmt 1                # liblzma/common/filter_flags_encoder.c:27:1
	retq
.Ltmp11:
.Lfunc_end0:
	.size	lzma_filter_flags_size, .Lfunc_end0-lzma_filter_flags_size
	.cfi_endproc
	.file	2 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	5 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
                                        # -- End function
	.globl	lzma_filter_flags_encode        # -- Begin function lzma_filter_flags_encode
	.p2align	4, 0x90
	.type	lzma_filter_flags_encode,@function
lzma_filter_flags_encode:               # @lzma_filter_flags_encode
.Lfunc_begin1:
	.loc	0 33 0                          # liblzma/common/filter_flags_encoder.c:33:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_filter_flags_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_filter_flags_encode:out <- $rsi
	#DEBUG_VALUE: lzma_filter_flags_encode:out_pos <- $rdx
	#DEBUG_VALUE: lzma_filter_flags_encode:out_size <- $rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r15
.Ltmp12:
	.loc	0 35 14 prologue_end            # liblzma/common/filter_flags_encoder.c:35:14
	movq	(%rdi), %rdi
.Ltmp13:
	#DEBUG_VALUE: lzma_filter_flags_encode:filter <- $r15
	.loc	0 35 17 is_stmt 0               # liblzma/common/filter_flags_encoder.c:35:17
	movq	%rdi, %rax
	shrq	$62, %rax
	movl	$11, %eax
.Ltmp14:
	.loc	0 35 6                          # liblzma/common/filter_flags_encoder.c:35:6
	jne	.LBB1_7
.Ltmp15:
# %bb.1:                                # %do.body
	#DEBUG_VALUE: lzma_filter_flags_encode:filter <- $r15
	#DEBUG_VALUE: lzma_filter_flags_encode:out <- $rsi
	#DEBUG_VALUE: lzma_filter_flags_encode:out_pos <- $rdx
	#DEBUG_VALUE: lzma_filter_flags_encode:out_size <- $rcx
	.loc	0 0 6                           # liblzma/common/filter_flags_encoder.c:0:6
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r14
.Ltmp16:
	.loc	0 38 2 is_stmt 1                # liblzma/common/filter_flags_encoder.c:38:2
	xorl	%esi, %esi
.Ltmp17:
	#DEBUG_VALUE: lzma_filter_flags_encode:out <- $r14
	movq	%r14, %rdx
.Ltmp18:
	#DEBUG_VALUE: lzma_filter_flags_encode:out_pos <- $rbx
	movq	%rbx, %rcx
.Ltmp19:
	#DEBUG_VALUE: lzma_filter_flags_encode:out_size <- $r12
	movq	%r12, %r8
	callq	lzma_vli_encode@PLT
.Ltmp20:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 38 2 is_stmt 0                # liblzma/common/filter_flags_encoder.c:38:2
	testl	%eax, %eax
	jne	.LBB1_7
.Ltmp21:
# %bb.2:                                # %do.end
	#DEBUG_VALUE: lzma_filter_flags_encode:filter <- $r15
	#DEBUG_VALUE: lzma_filter_flags_encode:out <- $r14
	#DEBUG_VALUE: lzma_filter_flags_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_encode:out_size <- $r12
	.loc	0 0 2                           # liblzma/common/filter_flags_encoder.c:0:2
	leaq	4(%rsp), %rdi
.Ltmp22:
	.loc	0 43 2 is_stmt 1                # liblzma/common/filter_flags_encoder.c:43:2
	movq	%r15, %rsi
	callq	lzma_properties_size@PLT
.Ltmp23:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 43 2 is_stmt 0                # liblzma/common/filter_flags_encoder.c:43:2
	testl	%eax, %eax
.Ltmp24:
	.loc	0 48 6 is_stmt 1                # liblzma/common/filter_flags_encoder.c:48:6
	jne	.LBB1_7
.Ltmp25:
# %bb.3:                                # %do.body15
	#DEBUG_VALUE: lzma_filter_flags_encode:filter <- $r15
	#DEBUG_VALUE: lzma_filter_flags_encode:out <- $r14
	#DEBUG_VALUE: lzma_filter_flags_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_encode:out_size <- $r12
	.loc	0 44 2                          # liblzma/common/filter_flags_encoder.c:44:2
	movl	4(%rsp), %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	lzma_vli_encode@PLT
.Ltmp26:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 44 2 is_stmt 0                # liblzma/common/filter_flags_encoder.c:44:2
	testl	%eax, %eax
	jne	.LBB1_7
.Ltmp27:
# %bb.4:                                # %do.end26
	#DEBUG_VALUE: lzma_filter_flags_encode:filter <- $r15
	#DEBUG_VALUE: lzma_filter_flags_encode:out <- $r14
	#DEBUG_VALUE: lzma_filter_flags_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_encode:out_size <- $r12
	.loc	0 48 17 is_stmt 1               # liblzma/common/filter_flags_encoder.c:48:17
	movq	(%rbx), %rcx
	.loc	0 48 15 is_stmt 0               # liblzma/common/filter_flags_encoder.c:48:15
	subq	%rcx, %r12
.Ltmp28:
	#DEBUG_VALUE: lzma_filter_flags_encode:out_size <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 48 28                         # liblzma/common/filter_flags_encoder.c:48:28
	movl	4(%rsp), %edx
	movl	$11, %eax
	.loc	0 48 26                         # liblzma/common/filter_flags_encoder.c:48:26
	cmpq	%rdx, %r12
.Ltmp29:
	.loc	0 48 6                          # liblzma/common/filter_flags_encoder.c:48:6
	jb	.LBB1_7
.Ltmp30:
# %bb.5:                                # %do.body32
	#DEBUG_VALUE: lzma_filter_flags_encode:filter <- $r15
	#DEBUG_VALUE: lzma_filter_flags_encode:out <- $r14
	#DEBUG_VALUE: lzma_filter_flags_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_encode:out_size <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 51 2 is_stmt 1                # liblzma/common/filter_flags_encoder.c:51:2
	addq	%rcx, %r14
.Ltmp31:
	#DEBUG_VALUE: lzma_filter_flags_encode:out <- [DW_OP_LLVM_entry_value 1] $rsi
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	lzma_properties_encode@PLT
.Ltmp32:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 51 2 is_stmt 0                # liblzma/common/filter_flags_encoder.c:51:2
	testl	%eax, %eax
	jne	.LBB1_7
.Ltmp33:
# %bb.6:                                # %do.end43
	#DEBUG_VALUE: lzma_filter_flags_encode:filter <- $r15
	#DEBUG_VALUE: lzma_filter_flags_encode:out <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_filter_flags_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_encode:out_size <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 53 14 is_stmt 1               # liblzma/common/filter_flags_encoder.c:53:14
	movl	4(%rsp), %eax
	.loc	0 53 11 is_stmt 0               # liblzma/common/filter_flags_encoder.c:53:11
	addq	%rax, (%rbx)
	xorl	%eax, %eax
.Ltmp34:
.LBB1_7:                                # %return
	#DEBUG_VALUE: lzma_filter_flags_encode:filter <- $r15
	#DEBUG_VALUE: lzma_filter_flags_encode:out <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_filter_flags_encode:out_pos <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_filter_flags_encode:out_size <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 56 1 epilogue_begin is_stmt 1 # liblzma/common/filter_flags_encoder.c:56:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp35:
	#DEBUG_VALUE: lzma_filter_flags_encode:filter <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp36:
.Lfunc_end1:
	.size	lzma_filter_flags_encode, .Lfunc_end1-lzma_filter_flags_encode
	.cfi_endproc
	.file	6 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
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
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
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
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	19                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x20e DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0x58:0x44 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	176                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x67:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	184                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x70:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	205                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x79:0x10 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp4-.Ltmp2                   # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0x7f:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	532                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x89:0x6 DW_TAG_call_site
	.long	156                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x8f:0x6 DW_TAG_call_site
	.long	275                             # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x95:0x6 DW_TAG_call_site
	.long	275                             # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x9c:0x14 DW_TAG_subprogram
	.byte	16                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	176                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0xa5:0x5 DW_TAG_formal_parameter
	.long	184                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xaa:0x5 DW_TAG_formal_parameter
	.long	205                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xb0:0x8 DW_TAG_typedef
	.long	39                              # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xb8:0x5 DW_TAG_pointer_type
	.long	189                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xbd:0x8 DW_TAG_typedef
	.long	197                             # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xc5:0x8 DW_TAG_typedef
	.long	84                              # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xcd:0x5 DW_TAG_pointer_type
	.long	210                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0xd2:0x5 DW_TAG_const_type
	.long	215                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xd7:0x8 DW_TAG_typedef
	.long	223                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0xdf:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0xe3:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	246                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0xec:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	274                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xf6:0x8 DW_TAG_typedef
	.long	254                             # DW_AT_type
	.byte	24                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xfe:0x8 DW_TAG_typedef
	.long	262                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x106:0x8 DW_TAG_typedef
	.long	270                             # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x10e:0x4 DW_TAG_base_type
	.byte	21                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x112:0x1 DW_TAG_pointer_type
	.byte	18                              # Abbrev [18] 0x113:0xe DW_TAG_subprogram
	.byte	27                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	189                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x11b:0x5 DW_TAG_formal_parameter
	.long	246                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x121:0x97 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	176                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x130:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	205                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x139:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	487                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x142:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	474                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x14b:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	479                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x154:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	4
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x15f:0x10 DW_TAG_lexical_block
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp21-.Ltmp16                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0x165:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	532                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x16f:0x10 DW_TAG_lexical_block
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp24-.Ltmp22                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0x175:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	532                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x17f:0x10 DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp27-.Ltmp25                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0x185:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	532                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x18f:0x10 DW_TAG_lexical_block
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp30                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0x195:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	532                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x19f:0x6 DW_TAG_call_site
	.long	440                             # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x1a5:0x6 DW_TAG_call_site
	.long	156                             # DW_AT_call_origin
	.byte	11                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x1ab:0x6 DW_TAG_call_site
	.long	440                             # DW_AT_call_origin
	.byte	12                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x1b1:0x6 DW_TAG_call_site
	.long	512                             # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x1b8:0x22 DW_TAG_subprogram
	.byte	28                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	176                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x1c0:0x5 DW_TAG_formal_parameter
	.long	246                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1c5:0x5 DW_TAG_formal_parameter
	.long	474                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1ca:0x5 DW_TAG_formal_parameter
	.long	487                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1cf:0x5 DW_TAG_formal_parameter
	.long	474                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1d4:0x5 DW_TAG_formal_parameter
	.long	479                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1da:0x5 DW_TAG_pointer_type
	.long	479                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1df:0x8 DW_TAG_typedef
	.long	270                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1e7:0x5 DW_TAG_pointer_type
	.long	492                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1ec:0x8 DW_TAG_typedef
	.long	500                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1f4:0x8 DW_TAG_typedef
	.long	508                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x1fc:0x4 DW_TAG_base_type
	.byte	30                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x200:0x14 DW_TAG_subprogram
	.byte	33                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	333                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	176                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x209:0x5 DW_TAG_formal_parameter
	.long	205                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x20e:0x5 DW_TAG_formal_parameter
	.long	487                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x214:0x5 DW_TAG_const_type
	.long	176                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	176                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/filter_flags_encoder.c" # string offset=105
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
	.asciz	"lzma_properties_size"          # string offset=383
.Linfo_string17:
	.asciz	"lzma_ret"                      # string offset=404
.Linfo_string18:
	.asciz	"__uint32_t"                    # string offset=413
.Linfo_string19:
	.asciz	"uint32_t"                      # string offset=424
.Linfo_string20:
	.asciz	"id"                            # string offset=433
.Linfo_string21:
	.asciz	"unsigned long"                 # string offset=436
.Linfo_string22:
	.asciz	"__uint64_t"                    # string offset=450
.Linfo_string23:
	.asciz	"uint64_t"                      # string offset=461
.Linfo_string24:
	.asciz	"lzma_vli"                      # string offset=470
.Linfo_string25:
	.asciz	"options"                       # string offset=479
.Linfo_string26:
	.asciz	"lzma_filter"                   # string offset=487
.Linfo_string27:
	.asciz	"lzma_vli_size"                 # string offset=499
.Linfo_string28:
	.asciz	"lzma_vli_encode"               # string offset=513
.Linfo_string29:
	.asciz	"size_t"                        # string offset=529
.Linfo_string30:
	.asciz	"unsigned char"                 # string offset=536
.Linfo_string31:
	.asciz	"__uint8_t"                     # string offset=550
.Linfo_string32:
	.asciz	"uint8_t"                       # string offset=560
.Linfo_string33:
	.asciz	"lzma_properties_encode"        # string offset=568
.Linfo_string34:
	.asciz	"lzma_filter_flags_size"        # string offset=591
.Linfo_string35:
	.asciz	"lzma_filter_flags_encode"      # string offset=614
.Linfo_string36:
	.asciz	"size"                          # string offset=639
.Linfo_string37:
	.asciz	"filter"                        # string offset=644
.Linfo_string38:
	.asciz	"ret_"                          # string offset=651
.Linfo_string39:
	.asciz	"props_size"                    # string offset=656
.Linfo_string40:
	.asciz	"out"                           # string offset=667
.Linfo_string41:
	.asciz	"out_pos"                       # string offset=671
.Linfo_string42:
	.asciz	"out_size"                      # string offset=679
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp2
	.quad	.Ltmp3
	.quad	.Ltmp5
	.quad	.Ltmp6
	.quad	.Lfunc_begin1
	.quad	.Ltmp16
	.quad	.Ltmp22
	.quad	.Ltmp25
	.quad	.Ltmp30
	.quad	.Ltmp20
	.quad	.Ltmp23
	.quad	.Ltmp26
	.quad	.Ltmp32
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
