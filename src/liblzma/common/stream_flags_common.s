	.text
	.file	"stream_flags_common.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/stream_flags_common.c" md5 0xdd7c194f7d4e72ab8af23ad14250b27e
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	3 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	4 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.globl	lzma_stream_flags_compare       # -- Begin function lzma_stream_flags_compare
	.p2align	4, 0x90
	.type	lzma_stream_flags_compare,@function
lzma_stream_flags_compare:              # @lzma_stream_flags_compare
.Lfunc_begin0:
	.loc	0 23 0                          # liblzma/common/stream_flags_common.c:23:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- $rsi
	movl	$8, %eax
.Ltmp0:
	.loc	0 25 17 prologue_end            # liblzma/common/stream_flags_common.c:25:17
	cmpl	$0, (%rdi)
	.loc	0 25 22 is_stmt 0               # liblzma/common/stream_flags_common.c:25:22
	je	.LBB0_1
.Ltmp1:
.LBB0_12:                               # %return
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 47 1 is_stmt 1                # liblzma/common/stream_flags_common.c:47:1
	retq
.Ltmp2:
.LBB0_1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- $rsi
	.loc	0 25 36                         # liblzma/common/stream_flags_common.c:25:36
	cmpl	$0, (%rsi)
.Ltmp3:
	.loc	0 25 6 is_stmt 0                # liblzma/common/stream_flags_common.c:25:6
	jne	.LBB0_12
.Ltmp4:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- $rsi
	.loc	0 29 24 is_stmt 1               # liblzma/common/stream_flags_common.c:29:24
	movl	16(%rdi), %ecx
	movl	$11, %eax
	.loc	0 29 31 is_stmt 0               # liblzma/common/stream_flags_common.c:29:31
	cmpl	$15, %ecx
	.loc	0 30 4 is_stmt 1                # liblzma/common/stream_flags_common.c:30:4
	ja	.LBB0_12
.Ltmp5:
# %bb.3:                                # %lor.lhs.false4
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- $rsi
	.loc	0 30 25 is_stmt 0               # liblzma/common/stream_flags_common.c:30:25
	movl	16(%rsi), %edx
	.loc	0 30 32                         # liblzma/common/stream_flags_common.c:30:32
	cmpl	$15, %edx
.Ltmp6:
	.loc	0 29 6 is_stmt 1                # liblzma/common/stream_flags_common.c:29:6
	ja	.LBB0_12
.Ltmp7:
# %bb.4:                                # %if.end8
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- $rsi
	.loc	0 33 15                         # liblzma/common/stream_flags_common.c:33:15
	cmpl	%edx, %ecx
.Ltmp8:
	.loc	0 33 6 is_stmt 0                # liblzma/common/stream_flags_common.c:33:6
	jne	.LBB0_5
.Ltmp9:
# %bb.6:                                # %if.end13
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- $rsi
	.loc	0 37 9 is_stmt 1                # liblzma/common/stream_flags_common.c:37:9
	movq	8(%rdi), %rcx
	.loc	0 37 23 is_stmt 0               # liblzma/common/stream_flags_common.c:37:23
	cmpq	$-1, %rcx
	.loc	0 38 4 is_stmt 1                # liblzma/common/stream_flags_common.c:38:4
	je	.LBB0_11
.Ltmp10:
# %bb.7:                                # %land.lhs.true
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- $rsi
	.loc	0 38 10 is_stmt 0               # liblzma/common/stream_flags_common.c:38:10
	movq	8(%rsi), %rdx
	.loc	0 38 24                         # liblzma/common/stream_flags_common.c:38:24
	cmpq	$-1, %rdx
.Ltmp11:
	.loc	0 37 6 is_stmt 1                # liblzma/common/stream_flags_common.c:37:6
	je	.LBB0_11
.Ltmp12:
# %bb.8:                                # %if.then17
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- $rsi
	#DEBUG_VALUE: is_backward_size_valid:options <- undef
	.loc	0 0 6 is_stmt 0                 # liblzma/common/stream_flags_common.c:0:6
	movabsq	$17179869181, %rsi              # imm = 0x3FFFFFFFD
.Ltmp13:
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- [DW_OP_LLVM_entry_value 1] $rsi
	.file	5 "liblzma/common" "stream_flags_common.h" md5 0xcd1b47fc58dd9f8e4116d4803eca0476
	.loc	5 29 4 is_stmt 1                # liblzma/common/stream_flags_common.h:29:4
	leaq	-4(%rcx), %rdi
.Ltmp14:
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- [DW_OP_LLVM_entry_value 1] $rdi
	cmpq	%rsi, %rdi
	setae	%dil
	testb	$3, %cl
	setne	%r8b
.Ltmp15:
	.loc	0 39 34                         # liblzma/common/stream_flags_common.c:39:34
	orb	%dil, %r8b
	jne	.LBB0_12
.Ltmp16:
# %bb.9:                                # %lor.lhs.false18
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: is_backward_size_valid:options <- undef
	.loc	5 29 4                          # liblzma/common/stream_flags_common.h:29:4
	leaq	-4(%rdx), %rdi
	cmpq	%rsi, %rdi
	setae	%sil
	testb	$3, %dl
	setne	%dil
.Ltmp17:
	.loc	0 39 7                          # liblzma/common/stream_flags_common.c:39:7
	orb	%sil, %dil
	jne	.LBB0_12
.Ltmp18:
# %bb.10:                               # %if.end21
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 0 7 is_stmt 0                 # liblzma/common/stream_flags_common.c:0:7
	movl	$9, %eax
.Ltmp19:
	.loc	0 42 24 is_stmt 1               # liblzma/common/stream_flags_common.c:42:24
	cmpq	%rdx, %rcx
.Ltmp20:
	.loc	0 42 7 is_stmt 0                # liblzma/common/stream_flags_common.c:42:7
	jne	.LBB0_12
.Ltmp21:
.LBB0_11:                               # %if.end27
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 0 7                           # liblzma/common/stream_flags_common.c:0:7
	xorl	%eax, %eax
	.loc	0 47 1 is_stmt 1                # liblzma/common/stream_flags_common.c:47:1
	retq
.Ltmp22:
.LBB0_5:
	#DEBUG_VALUE: lzma_stream_flags_compare:a <- $rdi
	#DEBUG_VALUE: lzma_stream_flags_compare:b <- $rsi
	.loc	0 0 1 is_stmt 0                 # liblzma/common/stream_flags_common.c:0:1
	movl	$9, %eax
	.loc	0 47 1                          # liblzma/common/stream_flags_common.c:47:1
	retq
.Ltmp23:
.Lfunc_end0:
	.size	lzma_stream_flags_compare, .Lfunc_end0-lzma_stream_flags_compare
	.cfi_endproc
	.file	6 "liblzma/api/lzma" "stream_flags.h" md5 0xd3814c86a389337e759db33a259f1072
	.file	7 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
                                        # -- End function
	.type	lzma_header_magic,@object       # @lzma_header_magic
	.section	.rodata,"a",@progbits
	.globl	lzma_header_magic
lzma_header_magic:
	.asciz	"\3757zXZ"
	.size	lzma_header_magic, 6

	.type	lzma_footer_magic,@object       # @lzma_footer_magic
	.globl	lzma_footer_magic
lzma_footer_magic:
	.ascii	"YZ"
	.size	lzma_footer_magic, 2

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	2                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
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
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
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
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	8                               # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x206 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	50                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x32:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x37:0x6 DW_TAG_subrange_type
	.long	87                              # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3e:0x5 DW_TAG_const_type
	.long	67                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x43:0x8 DW_TAG_typedef
	.long	75                              # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x4b:0x8 DW_TAG_typedef
	.long	83                              # DW_AT_type
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x53:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x57:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x5b:0xb DW_TAG_variable
	.byte	8                               # DW_AT_name
	.long	102                             # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               # Abbrev [3] 0x66:0xc DW_TAG_array_type
	.long	62                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6b:0x6 DW_TAG_subrange_type
	.long	87                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x72:0x2d DW_TAG_enumeration_type
	.long	159                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7a:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x7d:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x80:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x83:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x86:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x89:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x8c:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x8f:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x92:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x95:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x98:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x9b:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x9f:0x4 DW_TAG_base_type
	.byte	9                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xa3:0x15 DW_TAG_enumeration_type
	.long	159                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xab:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0xae:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0xb1:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0xb4:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb8:0xc DW_TAG_enumeration_type
	.long	159                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xc0:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc4:0x11 DW_TAG_subprogram
	.byte	27                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	213                             # DW_AT_type
                                        # DW_AT_inline
	.byte	12                              # Abbrev [12] 0xcc:0x8 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	217                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xd5:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0xd9:0x5 DW_TAG_pointer_type
	.long	222                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xde:0x5 DW_TAG_const_type
	.long	227                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xe3:0x8 DW_TAG_typedef
	.long	235                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xeb:0x9e DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0xef:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	393                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0xf8:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	409                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x101:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	437                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x10a:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	445                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x113:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	445                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x11c:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	445                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x125:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	445                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x12e:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	453                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x137:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	453                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	37                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x140:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	453                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	38                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x149:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	453                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	39                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x152:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	453                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x15b:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	453                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	41                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x164:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	453                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	42                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x16d:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	453                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	43                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x176:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	393                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x17f:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	393                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x189:0x8 DW_TAG_typedef
	.long	401                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x191:0x8 DW_TAG_typedef
	.long	159                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x199:0x8 DW_TAG_typedef
	.long	417                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1a1:0x8 DW_TAG_typedef
	.long	425                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1a9:0x8 DW_TAG_typedef
	.long	433                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1b1:0x4 DW_TAG_base_type
	.byte	34                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x1b5:0x8 DW_TAG_typedef
	.long	163                             # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1bd:0x8 DW_TAG_typedef
	.long	184                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1c5:0x8 DW_TAG_typedef
	.long	83                              # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x1cd:0x3c DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	521                             # DW_AT_type
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0x1dc:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	217                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1e5:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	217                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1ee:0xd DW_TAG_inlined_subroutine
	.long	196                             # DW_AT_abstract_origin
	.byte	3                               # DW_AT_low_pc
	.long	.Ltmp15-.Ltmp13                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	39                              # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x1fb:0xd DW_TAG_inlined_subroutine
	.long	196                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp17-.Ltmp16                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	39                              # DW_AT_call_line
	.byte	38                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x209:0x8 DW_TAG_typedef
	.long	114                             # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	248                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/stream_flags_common.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=142
.Linfo_string3:
	.asciz	"lzma_header_magic"             # string offset=174
.Linfo_string4:
	.asciz	"unsigned char"                 # string offset=192
.Linfo_string5:
	.asciz	"__uint8_t"                     # string offset=206
.Linfo_string6:
	.asciz	"uint8_t"                       # string offset=216
.Linfo_string7:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=224
.Linfo_string8:
	.asciz	"lzma_footer_magic"             # string offset=244
.Linfo_string9:
	.asciz	"unsigned int"                  # string offset=262
.Linfo_string10:
	.asciz	"LZMA_OK"                       # string offset=275
.Linfo_string11:
	.asciz	"LZMA_STREAM_END"               # string offset=283
.Linfo_string12:
	.asciz	"LZMA_NO_CHECK"                 # string offset=299
.Linfo_string13:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=313
.Linfo_string14:
	.asciz	"LZMA_GET_CHECK"                # string offset=336
.Linfo_string15:
	.asciz	"LZMA_MEM_ERROR"                # string offset=351
.Linfo_string16:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=366
.Linfo_string17:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=386
.Linfo_string18:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=404
.Linfo_string19:
	.asciz	"LZMA_DATA_ERROR"               # string offset=423
.Linfo_string20:
	.asciz	"LZMA_BUF_ERROR"                # string offset=439
.Linfo_string21:
	.asciz	"LZMA_PROG_ERROR"               # string offset=454
.Linfo_string22:
	.asciz	"LZMA_CHECK_NONE"               # string offset=470
.Linfo_string23:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=486
.Linfo_string24:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=503
.Linfo_string25:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=520
.Linfo_string26:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=538
.Linfo_string27:
	.asciz	"is_backward_size_valid"        # string offset=557
.Linfo_string28:
	.asciz	"_Bool"                         # string offset=580
.Linfo_string29:
	.asciz	"options"                       # string offset=586
.Linfo_string30:
	.asciz	"version"                       # string offset=594
.Linfo_string31:
	.asciz	"__uint32_t"                    # string offset=602
.Linfo_string32:
	.asciz	"uint32_t"                      # string offset=613
.Linfo_string33:
	.asciz	"backward_size"                 # string offset=622
.Linfo_string34:
	.asciz	"unsigned long"                 # string offset=636
.Linfo_string35:
	.asciz	"__uint64_t"                    # string offset=650
.Linfo_string36:
	.asciz	"uint64_t"                      # string offset=661
.Linfo_string37:
	.asciz	"lzma_vli"                      # string offset=670
.Linfo_string38:
	.asciz	"check"                         # string offset=679
.Linfo_string39:
	.asciz	"lzma_check"                    # string offset=685
.Linfo_string40:
	.asciz	"reserved_enum1"                # string offset=696
.Linfo_string41:
	.asciz	"lzma_reserved_enum"            # string offset=711
.Linfo_string42:
	.asciz	"reserved_enum2"                # string offset=730
.Linfo_string43:
	.asciz	"reserved_enum3"                # string offset=745
.Linfo_string44:
	.asciz	"reserved_enum4"                # string offset=760
.Linfo_string45:
	.asciz	"reserved_bool1"                # string offset=775
.Linfo_string46:
	.asciz	"lzma_bool"                     # string offset=790
.Linfo_string47:
	.asciz	"reserved_bool2"                # string offset=800
.Linfo_string48:
	.asciz	"reserved_bool3"                # string offset=815
.Linfo_string49:
	.asciz	"reserved_bool4"                # string offset=830
.Linfo_string50:
	.asciz	"reserved_bool5"                # string offset=845
.Linfo_string51:
	.asciz	"reserved_bool6"                # string offset=860
.Linfo_string52:
	.asciz	"reserved_bool7"                # string offset=875
.Linfo_string53:
	.asciz	"reserved_bool8"                # string offset=890
.Linfo_string54:
	.asciz	"reserved_int1"                 # string offset=905
.Linfo_string55:
	.asciz	"reserved_int2"                 # string offset=919
.Linfo_string56:
	.asciz	"lzma_stream_flags"             # string offset=933
.Linfo_string57:
	.asciz	"lzma_stream_flags_compare"     # string offset=951
.Linfo_string58:
	.asciz	"lzma_ret"                      # string offset=977
.Linfo_string59:
	.asciz	"a"                             # string offset=986
.Linfo_string60:
	.asciz	"b"                             # string offset=988
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	lzma_header_magic
	.quad	lzma_footer_magic
	.quad	.Lfunc_begin0
	.quad	.Ltmp13
	.quad	.Ltmp16
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
