	.text
	.file	"easy_decoder_memusage.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/easy_decoder_memusage.c" md5 0x43079fb7742b6f77ac819f9bf881fd75
	.file	1 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.file	2 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.globl	lzma_easy_decoder_memusage      # -- Begin function lzma_easy_decoder_memusage
	.p2align	4, 0x90
	.type	lzma_easy_decoder_memusage,@function
lzma_easy_decoder_memusage:             # @lzma_easy_decoder_memusage
.Lfunc_begin0:
	.loc	0 18 0                          # liblzma/common/easy_decoder_memusage.c:18:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_easy_decoder_memusage:preset <- $edi
	subq	$200, %rsp
	.cfi_def_cfa_offset 208
	movl	%edi, %esi
	leaq	8(%rsp), %rdi
.Ltmp0:
	#DEBUG_VALUE: lzma_easy_decoder_memusage:preset <- $esi
	.loc	0 20 6 prologue_end             # liblzma/common/easy_decoder_memusage.c:20:6
	callq	lzma_easy_preset@PLT
.Ltmp1:
	#DEBUG_VALUE: lzma_easy_decoder_memusage:preset <- [DW_OP_LLVM_entry_value 1] $edi
	movl	%eax, %ecx
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
.Ltmp2:
	.loc	0 20 6 is_stmt 0                # liblzma/common/easy_decoder_memusage.c:20:6
	testb	%cl, %cl
	jne	.LBB0_2
.Ltmp3:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_easy_decoder_memusage:preset <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	0 0 6                           # liblzma/common/easy_decoder_memusage.c:0:6
	leaq	8(%rsp), %rdi
	.loc	0 23 9 is_stmt 1                # liblzma/common/easy_decoder_memusage.c:23:9
	callq	lzma_raw_decoder_memusage@PLT
.Ltmp4:
.LBB0_2:                                # %cleanup
	#DEBUG_VALUE: lzma_easy_decoder_memusage:preset <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	0 24 1 epilogue_begin           # liblzma/common/easy_decoder_memusage.c:24:1
	addq	$200, %rsp
	.cfi_def_cfa_offset 8
	retq
.Ltmp5:
.Lfunc_end0:
	.size	lzma_easy_decoder_memusage, .Lfunc_end0-lzma_easy_decoder_memusage
	.cfi_endproc
	.file	3 "liblzma/common" "easy_preset.h" md5 0xd577811d5aeebd46232348c9f7923e50
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	1                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
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
	.byte	8                               # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
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
	.byte	1                               # Abbrev [1] 0xc:0x263 DW_TAG_compile_unit
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
	.byte	2                               # Abbrev [2] 0x27:0xf DW_TAG_enumeration_type
	.long	54                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x2f:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x32:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x36:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x3a:0x18 DW_TAG_enumeration_type
	.long	54                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x42:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x45:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4b:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4e:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x52:0xc DW_TAG_enumeration_type
	.long	54                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x5a:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x5e:0x30 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	252                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x6d:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	528                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x76:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	170                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x81:0x6 DW_TAG_call_site
	.long	142                             # DW_AT_call_origin
	.byte	1                               # DW_AT_call_return_pc
	.byte	8                               # Abbrev [8] 0x87:0x6 DW_TAG_call_site
	.long	598                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x8e:0x13 DW_TAG_subprogram
	.byte	12                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	161                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x96:0x5 DW_TAG_formal_parameter
	.long	165                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x9b:0x5 DW_TAG_formal_parameter
	.long	528                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa1:0x4 DW_TAG_base_type
	.byte	13                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0xa5:0x5 DW_TAG_pointer_type
	.long	170                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xaa:0x8 DW_TAG_typedef
	.long	178                             # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xb2:0x17 DW_TAG_structure_type
	.byte	192                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xb6:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	201                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xbf:0x9 DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	277                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xc9:0xc DW_TAG_array_type
	.long	213                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0xce:0x6 DW_TAG_subrange_type
	.long	273                             # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xd5:0x8 DW_TAG_typedef
	.long	221                             # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xdd:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xe1:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	244                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0xea:0x9 DW_TAG_member
	.byte	20                              # DW_AT_name
	.long	272                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xf4:0x8 DW_TAG_typedef
	.long	252                             # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xfc:0x8 DW_TAG_typedef
	.long	260                             # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x104:0x8 DW_TAG_typedef
	.long	268                             # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x10c:0x4 DW_TAG_base_type
	.byte	16                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x110:0x1 DW_TAG_pointer_type
	.byte	18                              # Abbrev [18] 0x111:0x4 DW_TAG_base_type
	.byte	22                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	19                              # Abbrev [19] 0x115:0x9 DW_TAG_typedef
	.long	286                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x11e:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x122:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x12b:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	544                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x134:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x13d:0xa DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x147:0xa DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x151:0xa DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x15b:0xa DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	574                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x165:0xa DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x16f:0xa DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	582                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x179:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x183:0xa DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x18d:0xa DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x197:0xa DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1a1:0xa DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1ab:0xa DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1b5:0xa DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1bf:0xa DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1c9:0xa DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1d3:0xa DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	590                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1dd:0xa DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	590                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1e7:0xa DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	590                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1f1:0xa DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	590                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1fb:0xa DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	272                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x205:0xa DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	272                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x210:0x8 DW_TAG_typedef
	.long	536                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x218:0x8 DW_TAG_typedef
	.long	54                              # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x220:0x5 DW_TAG_pointer_type
	.long	549                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x225:0x5 DW_TAG_const_type
	.long	554                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x22a:0x8 DW_TAG_typedef
	.long	562                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x232:0x8 DW_TAG_typedef
	.long	570                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x23a:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x23e:0x8 DW_TAG_typedef
	.long	39                              # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x246:0x8 DW_TAG_typedef
	.long	58                              # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x24e:0x8 DW_TAG_typedef
	.long	82                              # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x256:0xe DW_TAG_subprogram
	.byte	58                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	252                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x25e:0x5 DW_TAG_formal_parameter
	.long	612                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x264:0x5 DW_TAG_pointer_type
	.long	617                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x269:0x5 DW_TAG_const_type
	.long	213                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	252                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/easy_decoder_memusage.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=144
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=176
.Linfo_string4:
	.asciz	"LZMA_MODE_FAST"                # string offset=189
.Linfo_string5:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=204
.Linfo_string6:
	.asciz	"LZMA_MF_HC3"                   # string offset=221
.Linfo_string7:
	.asciz	"LZMA_MF_HC4"                   # string offset=233
.Linfo_string8:
	.asciz	"LZMA_MF_BT2"                   # string offset=245
.Linfo_string9:
	.asciz	"LZMA_MF_BT3"                   # string offset=257
.Linfo_string10:
	.asciz	"LZMA_MF_BT4"                   # string offset=269
.Linfo_string11:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=281
.Linfo_string12:
	.asciz	"lzma_easy_preset"              # string offset=300
.Linfo_string13:
	.asciz	"_Bool"                         # string offset=317
.Linfo_string14:
	.asciz	"filters"                       # string offset=323
.Linfo_string15:
	.asciz	"id"                            # string offset=331
.Linfo_string16:
	.asciz	"unsigned long"                 # string offset=334
.Linfo_string17:
	.asciz	"__uint64_t"                    # string offset=348
.Linfo_string18:
	.asciz	"uint64_t"                      # string offset=359
.Linfo_string19:
	.asciz	"lzma_vli"                      # string offset=368
.Linfo_string20:
	.asciz	"options"                       # string offset=377
.Linfo_string21:
	.asciz	"lzma_filter"                   # string offset=385
.Linfo_string22:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=397
.Linfo_string23:
	.asciz	"opt_lzma"                      # string offset=417
.Linfo_string24:
	.asciz	"dict_size"                     # string offset=426
.Linfo_string25:
	.asciz	"__uint32_t"                    # string offset=436
.Linfo_string26:
	.asciz	"uint32_t"                      # string offset=447
.Linfo_string27:
	.asciz	"preset_dict"                   # string offset=456
.Linfo_string28:
	.asciz	"unsigned char"                 # string offset=468
.Linfo_string29:
	.asciz	"__uint8_t"                     # string offset=482
.Linfo_string30:
	.asciz	"uint8_t"                       # string offset=492
.Linfo_string31:
	.asciz	"preset_dict_size"              # string offset=500
.Linfo_string32:
	.asciz	"lc"                            # string offset=517
.Linfo_string33:
	.asciz	"lp"                            # string offset=520
.Linfo_string34:
	.asciz	"pb"                            # string offset=523
.Linfo_string35:
	.asciz	"mode"                          # string offset=526
.Linfo_string36:
	.asciz	"lzma_mode"                     # string offset=531
.Linfo_string37:
	.asciz	"nice_len"                      # string offset=541
.Linfo_string38:
	.asciz	"mf"                            # string offset=550
.Linfo_string39:
	.asciz	"lzma_match_finder"             # string offset=553
.Linfo_string40:
	.asciz	"depth"                         # string offset=571
.Linfo_string41:
	.asciz	"reserved_int1"                 # string offset=577
.Linfo_string42:
	.asciz	"reserved_int2"                 # string offset=591
.Linfo_string43:
	.asciz	"reserved_int3"                 # string offset=605
.Linfo_string44:
	.asciz	"reserved_int4"                 # string offset=619
.Linfo_string45:
	.asciz	"reserved_int5"                 # string offset=633
.Linfo_string46:
	.asciz	"reserved_int6"                 # string offset=647
.Linfo_string47:
	.asciz	"reserved_int7"                 # string offset=661
.Linfo_string48:
	.asciz	"reserved_int8"                 # string offset=675
.Linfo_string49:
	.asciz	"reserved_enum1"                # string offset=689
.Linfo_string50:
	.asciz	"lzma_reserved_enum"            # string offset=704
.Linfo_string51:
	.asciz	"reserved_enum2"                # string offset=723
.Linfo_string52:
	.asciz	"reserved_enum3"                # string offset=738
.Linfo_string53:
	.asciz	"reserved_enum4"                # string offset=753
.Linfo_string54:
	.asciz	"reserved_ptr1"                 # string offset=768
.Linfo_string55:
	.asciz	"reserved_ptr2"                 # string offset=782
.Linfo_string56:
	.asciz	"lzma_options_lzma"             # string offset=796
.Linfo_string57:
	.asciz	"lzma_options_easy"             # string offset=814
.Linfo_string58:
	.asciz	"lzma_raw_decoder_memusage"     # string offset=832
.Linfo_string59:
	.asciz	"lzma_easy_decoder_memusage"    # string offset=858
.Linfo_string60:
	.asciz	"opt_easy"                      # string offset=885
.Linfo_string61:
	.asciz	"preset"                        # string offset=894
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp1
	.quad	.Ltmp4
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
