	.text
	.file	"filter_flags_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/filter_flags_decoder.c" md5 0xa151777be74814b1fc1db0aad7e16145
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.globl	lzma_filter_flags_decode        # -- Begin function lzma_filter_flags_decode
	.p2align	4, 0x90
	.type	lzma_filter_flags_decode,@function
lzma_filter_flags_decode:               # @lzma_filter_flags_decode
.Lfunc_begin0:
	.loc	0 20 0                          # liblzma/common/filter_flags_decoder.c:20:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_filter_flags_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_filter_flags_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_filter_flags_decode:in <- $rdx
	#DEBUG_VALUE: lzma_filter_flags_decode:in_pos <- $rcx
	#DEBUG_VALUE: lzma_filter_flags_decode:in_size <- $r8
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r8, %r13
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
.Ltmp0:
	.loc	0 22 18 prologue_end            # liblzma/common/filter_flags_decoder.c:22:18
	movq	$0, 8(%rdi)
.Ltmp1:
	.loc	0 25 2                          # liblzma/common/filter_flags_decoder.c:25:2
	xorl	%esi, %esi
.Ltmp2:
	#DEBUG_VALUE: lzma_filter_flags_decode:allocator <- $r15
	callq	lzma_vli_decode@PLT
.Ltmp3:
	#DEBUG_VALUE: lzma_filter_flags_decode:in_size <- $r13
	#DEBUG_VALUE: lzma_filter_flags_decode:in_pos <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_decode:in <- $r14
	#DEBUG_VALUE: lzma_filter_flags_decode:filter <- $r12
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 25 2 is_stmt 0                # liblzma/common/filter_flags_decoder.c:25:2
	testl	%eax, %eax
	jne	.LBB0_5
.Ltmp4:
# %bb.1:                                # %do.end
	#DEBUG_VALUE: lzma_filter_flags_decode:filter <- $r12
	#DEBUG_VALUE: lzma_filter_flags_decode:allocator <- $r15
	#DEBUG_VALUE: lzma_filter_flags_decode:in <- $r14
	#DEBUG_VALUE: lzma_filter_flags_decode:in_pos <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_decode:in_size <- $r13
	.loc	0 28 14 is_stmt 1               # liblzma/common/filter_flags_decoder.c:28:14
	movq	(%r12), %rax
	.loc	0 28 17 is_stmt 0               # liblzma/common/filter_flags_decoder.c:28:17
	shrq	$62, %rax
	movl	$9, %eax
.Ltmp5:
	.loc	0 28 6                          # liblzma/common/filter_flags_decoder.c:28:6
	jne	.LBB0_5
.Ltmp6:
# %bb.2:                                # %if.end4
	#DEBUG_VALUE: lzma_filter_flags_decode:filter <- $r12
	#DEBUG_VALUE: lzma_filter_flags_decode:allocator <- $r15
	#DEBUG_VALUE: lzma_filter_flags_decode:in <- $r14
	#DEBUG_VALUE: lzma_filter_flags_decode:in_pos <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_decode:in_size <- $r13
	.loc	0 0 6                           # liblzma/common/filter_flags_decoder.c:0:6
	leaq	8(%rsp), %rdi
.Ltmp7:
	.loc	0 33 2 is_stmt 1                # liblzma/common/filter_flags_decoder.c:33:2
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%r13, %r8
	callq	lzma_vli_decode@PLT
.Ltmp8:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 33 2 is_stmt 0                # liblzma/common/filter_flags_decoder.c:33:2
	testl	%eax, %eax
	jne	.LBB0_5
.Ltmp9:
# %bb.3:                                # %do.end14
	#DEBUG_VALUE: lzma_filter_flags_decode:filter <- $r12
	#DEBUG_VALUE: lzma_filter_flags_decode:allocator <- $r15
	#DEBUG_VALUE: lzma_filter_flags_decode:in <- $r14
	#DEBUG_VALUE: lzma_filter_flags_decode:in_pos <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_decode:in_size <- $r13
	.loc	0 37 16 is_stmt 1               # liblzma/common/filter_flags_decoder.c:37:16
	movq	(%rbx), %rdx
	.loc	0 37 14 is_stmt 0               # liblzma/common/filter_flags_decoder.c:37:14
	subq	%rdx, %r13
.Ltmp10:
	#DEBUG_VALUE: lzma_filter_flags_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 37 26                         # liblzma/common/filter_flags_decoder.c:37:26
	movq	8(%rsp), %rcx
	movl	$9, %eax
	.loc	0 37 24                         # liblzma/common/filter_flags_decoder.c:37:24
	cmpq	%rcx, %r13
.Ltmp11:
	.loc	0 37 6                          # liblzma/common/filter_flags_decoder.c:37:6
	jb	.LBB0_5
.Ltmp12:
# %bb.4:                                # %if.end17
	#DEBUG_VALUE: lzma_filter_flags_decode:filter <- $r12
	#DEBUG_VALUE: lzma_filter_flags_decode:allocator <- $r15
	#DEBUG_VALUE: lzma_filter_flags_decode:in <- $r14
	#DEBUG_VALUE: lzma_filter_flags_decode:in_pos <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 41 26 is_stmt 1               # liblzma/common/filter_flags_decoder.c:41:26
	addq	%rdx, %r14
.Ltmp13:
	#DEBUG_VALUE: lzma_filter_flags_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 40 23                         # liblzma/common/filter_flags_decoder.c:40:23
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	lzma_properties_decode@PLT
.Ltmp14:
	#DEBUG_VALUE: lzma_filter_flags_decode:ret <- $eax
	.loc	0 43 13                         # liblzma/common/filter_flags_decoder.c:43:13
	movq	8(%rsp), %rcx
	.loc	0 43 10 is_stmt 0               # liblzma/common/filter_flags_decoder.c:43:10
	addq	%rcx, (%rbx)
.Ltmp15:
.LBB0_5:                                # %return
	#DEBUG_VALUE: lzma_filter_flags_decode:filter <- $r12
	#DEBUG_VALUE: lzma_filter_flags_decode:allocator <- $r15
	#DEBUG_VALUE: lzma_filter_flags_decode:in <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_filter_flags_decode:in_pos <- $rbx
	#DEBUG_VALUE: lzma_filter_flags_decode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 46 1 epilogue_begin is_stmt 1 # liblzma/common/filter_flags_decoder.c:46:1
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
.Ltmp16:
	#DEBUG_VALUE: lzma_filter_flags_decode:in_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 40
	popq	%r12
.Ltmp17:
	#DEBUG_VALUE: lzma_filter_flags_decode:filter <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp18:
	#DEBUG_VALUE: lzma_filter_flags_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp19:
.Lfunc_end0:
	.size	lzma_filter_flags_decode, .Lfunc_end0-lzma_filter_flags_decode
	.cfi_endproc
	.file	2 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	5 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	6 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	8                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
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
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
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
	.byte	1                               # Abbrev [1] 0xc:0x1eb DW_TAG_compile_unit
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
	.byte	5                               # Abbrev [5] 0x58:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x59:0x83 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	254                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x68:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	368                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x71:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	404                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x7a:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	308                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x83:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	295                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x8c:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	300                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x95:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	267                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa0:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	497                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xa9:0x10 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp4-.Ltmp1                   # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0xaf:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	497                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xb9:0x10 DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp9-.Ltmp7                   # DW_AT_high_pc
	.byte	9                               # Abbrev [9] 0xbf:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	497                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc9:0x6 DW_TAG_call_site
	.long	220                             # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0xcf:0x6 DW_TAG_call_site
	.long	220                             # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0xd5:0x6 DW_TAG_call_site
	.long	338                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xdc:0x22 DW_TAG_subprogram
	.byte	16                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	254                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0xe4:0x5 DW_TAG_formal_parameter
	.long	262                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xe9:0x5 DW_TAG_formal_parameter
	.long	295                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xee:0x5 DW_TAG_formal_parameter
	.long	308                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xf3:0x5 DW_TAG_formal_parameter
	.long	295                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xf8:0x5 DW_TAG_formal_parameter
	.long	300                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0xfe:0x8 DW_TAG_typedef
	.long	39                              # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x106:0x5 DW_TAG_pointer_type
	.long	267                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x10b:0x8 DW_TAG_typedef
	.long	275                             # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x113:0x8 DW_TAG_typedef
	.long	283                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x11b:0x8 DW_TAG_typedef
	.long	291                             # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x123:0x4 DW_TAG_base_type
	.byte	18                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x127:0x5 DW_TAG_pointer_type
	.long	300                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x12c:0x8 DW_TAG_typedef
	.long	291                             # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x134:0x5 DW_TAG_pointer_type
	.long	313                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x139:0x5 DW_TAG_const_type
	.long	318                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x13e:0x8 DW_TAG_typedef
	.long	326                             # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x146:0x8 DW_TAG_typedef
	.long	334                             # DW_AT_type
	.byte	24                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x14e:0x4 DW_TAG_base_type
	.byte	23                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x152:0x1e DW_TAG_subprogram
	.byte	26                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	358                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	254                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x15b:0x5 DW_TAG_formal_parameter
	.long	368                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x160:0x5 DW_TAG_formal_parameter
	.long	404                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x165:0x5 DW_TAG_formal_parameter
	.long	308                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x16a:0x5 DW_TAG_formal_parameter
	.long	300                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x170:0x5 DW_TAG_pointer_type
	.long	373                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x175:0x8 DW_TAG_typedef
	.long	381                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x17d:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x181:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	267                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x18a:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	88                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x194:0x5 DW_TAG_pointer_type
	.long	409                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x199:0x9 DW_TAG_typedef
	.long	418                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x1a2:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x1a7:0xa DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	454                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x1b1:0xa DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	480                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x1bb:0xa DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	88                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1c6:0x5 DW_TAG_pointer_type
	.long	459                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x1cb:0x15 DW_TAG_subroutine_type
	.long	88                              # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x1d0:0x5 DW_TAG_formal_parameter
	.long	88                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1d5:0x5 DW_TAG_formal_parameter
	.long	300                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1da:0x5 DW_TAG_formal_parameter
	.long	300                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1e0:0x5 DW_TAG_pointer_type
	.long	485                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x1e5:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x1e6:0x5 DW_TAG_formal_parameter
	.long	88                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1eb:0x5 DW_TAG_formal_parameter
	.long	88                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x1f1:0x5 DW_TAG_const_type
	.long	254                             # DW_AT_type
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
	.asciz	"liblzma/common/filter_flags_decoder.c" # string offset=105
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
	.asciz	"lzma_vli_decode"               # string offset=383
.Linfo_string17:
	.asciz	"lzma_ret"                      # string offset=399
.Linfo_string18:
	.asciz	"unsigned long"                 # string offset=408
.Linfo_string19:
	.asciz	"__uint64_t"                    # string offset=422
.Linfo_string20:
	.asciz	"uint64_t"                      # string offset=433
.Linfo_string21:
	.asciz	"lzma_vli"                      # string offset=442
.Linfo_string22:
	.asciz	"size_t"                        # string offset=451
.Linfo_string23:
	.asciz	"unsigned char"                 # string offset=458
.Linfo_string24:
	.asciz	"__uint8_t"                     # string offset=472
.Linfo_string25:
	.asciz	"uint8_t"                       # string offset=482
.Linfo_string26:
	.asciz	"lzma_properties_decode"        # string offset=490
.Linfo_string27:
	.asciz	"id"                            # string offset=513
.Linfo_string28:
	.asciz	"options"                       # string offset=516
.Linfo_string29:
	.asciz	"lzma_filter"                   # string offset=524
.Linfo_string30:
	.asciz	"alloc"                         # string offset=536
.Linfo_string31:
	.asciz	"free"                          # string offset=542
.Linfo_string32:
	.asciz	"opaque"                        # string offset=547
.Linfo_string33:
	.asciz	"lzma_allocator"                # string offset=554
.Linfo_string34:
	.asciz	"lzma_filter_flags_decode"      # string offset=569
.Linfo_string35:
	.asciz	"props_size"                    # string offset=594
.Linfo_string36:
	.asciz	"filter"                        # string offset=605
.Linfo_string37:
	.asciz	"allocator"                     # string offset=612
.Linfo_string38:
	.asciz	"in"                            # string offset=622
.Linfo_string39:
	.asciz	"in_pos"                        # string offset=625
.Linfo_string40:
	.asciz	"in_size"                       # string offset=632
.Linfo_string41:
	.asciz	"ret_"                          # string offset=640
.Linfo_string42:
	.asciz	"ret"                           # string offset=645
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
	.quad	.Ltmp1
	.quad	.Ltmp7
	.quad	.Ltmp3
	.quad	.Ltmp8
	.quad	.Ltmp14
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
