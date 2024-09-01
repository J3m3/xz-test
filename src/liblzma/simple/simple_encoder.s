	.text
	.file	"simple_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/simple/simple_encoder.c" md5 0x34df5d4515882cf036653c42587118a2
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.globl	lzma_simple_props_size          # -- Begin function lzma_simple_props_size
	.p2align	4, 0x90
	.type	lzma_simple_props_size,@function
lzma_simple_props_size:                 # @lzma_simple_props_size
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_props_size:size <- $rdi
	#DEBUG_VALUE: lzma_simple_props_size:options <- $rsi
	#DEBUG_VALUE: lzma_simple_props_size:opt <- $rsi
	.loc	0 20 31 prologue_end            # liblzma/simple/simple_encoder.c:20:31
	xorl	%eax, %eax
	.loc	0 20 15 is_stmt 0               # liblzma/simple/simple_encoder.c:20:15
	testq	%rsi, %rsi
	.loc	0 20 23                         # liblzma/simple/simple_encoder.c:20:23
	je	.LBB0_2
.Ltmp0:
# %bb.1:                                # %lor.rhs
	#DEBUG_VALUE: lzma_simple_props_size:size <- $rdi
	#DEBUG_VALUE: lzma_simple_props_size:options <- $rsi
	#DEBUG_VALUE: lzma_simple_props_size:opt <- $rsi
	.loc	0 20 31                         # liblzma/simple/simple_encoder.c:20:31
	cmpl	$0, (%rsi)
	setne	%al
	.loc	0 20 10                         # liblzma/simple/simple_encoder.c:20:10
	shll	$2, %eax
.Ltmp1:
.LBB0_2:                                # %lor.end
	#DEBUG_VALUE: lzma_simple_props_size:size <- $rdi
	#DEBUG_VALUE: lzma_simple_props_size:options <- $rsi
	#DEBUG_VALUE: lzma_simple_props_size:opt <- $rsi
	.loc	0 20 8                          # liblzma/simple/simple_encoder.c:20:8
	movl	%eax, (%rdi)
	.loc	0 21 2 is_stmt 1                # liblzma/simple/simple_encoder.c:21:2
	xorl	%eax, %eax
	retq
.Ltmp2:
.Lfunc_end0:
	.size	lzma_simple_props_size, .Lfunc_end0-lzma_simple_props_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_simple_props_encode        # -- Begin function lzma_simple_props_encode
	.p2align	4, 0x90
	.type	lzma_simple_props_encode,@function
lzma_simple_props_encode:               # @lzma_simple_props_encode
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_simple_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_simple_props_encode:opt <- $rdi
	.loc	0 32 10 prologue_end            # liblzma/simple/simple_encoder.c:32:10
	testq	%rdi, %rdi
	.loc	0 32 18 is_stmt 0               # liblzma/simple/simple_encoder.c:32:18
	je	.LBB1_3
.Ltmp3:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_simple_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_simple_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_simple_props_encode:opt <- $rdi
	.loc	0 32 26                         # liblzma/simple/simple_encoder.c:32:26
	movl	(%rdi), %eax
	.loc	0 32 39                         # liblzma/simple/simple_encoder.c:32:39
	testl	%eax, %eax
.Ltmp4:
	.loc	0 32 6                          # liblzma/simple/simple_encoder.c:32:6
	je	.LBB1_3
.Ltmp5:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_simple_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_simple_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_simple_props_encode:opt <- $rdi
	#DEBUG_VALUE: unaligned_write32le:buf <- $rsi
	#DEBUG_VALUE: unaligned_write32le:num <- $eax
	.file	2 "common" "tuklib_integer.h" md5 0x877bd6a1d04ec1170bc985c87ef412ed
	.loc	2 356 9 is_stmt 1               # common/tuklib_integer.h:356:9
	movl	%eax, (%rsi)
.Ltmp6:
.LBB1_3:                                # %cleanup
	#DEBUG_VALUE: lzma_simple_props_encode:options <- $rdi
	#DEBUG_VALUE: lzma_simple_props_encode:out <- $rsi
	#DEBUG_VALUE: lzma_simple_props_encode:opt <- $rdi
	.loc	0 38 1                          # liblzma/simple/simple_encoder.c:38:1
	xorl	%eax, %eax
	retq
.Ltmp7:
.Lfunc_end1:
	.size	lzma_simple_props_encode, .Lfunc_end1-lzma_simple_props_encode
	.cfi_endproc
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
                                        # -- End function
	.file	5 "liblzma/api/lzma" "bcj.h" md5 0xa1035092336f34cf9afafbb05b1edd83
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
	.byte	10                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x13b DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.byte	2                               # Abbrev [2] 0x23:0x2d DW_TAG_enumeration_type
	.long	80                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x2b:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x2e:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x31:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x34:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x37:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3a:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3d:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x40:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x43:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x46:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x49:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4c:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x50:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x54:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x55:0x2e DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	270                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x64:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	278                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x6e:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	283                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x78:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	289                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x83:0x18 DW_TAG_subprogram
	.byte	16                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x88:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	155                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x91:0x9 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	180                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x9b:0x5 DW_TAG_pointer_type
	.long	160                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xa0:0x8 DW_TAG_typedef
	.long	168                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xa8:0x8 DW_TAG_typedef
	.long	176                             # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xb0:0x4 DW_TAG_base_type
	.byte	18                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0xb4:0x8 DW_TAG_typedef
	.long	188                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xbc:0x8 DW_TAG_typedef
	.long	80                              # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xc4:0x4a DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	270                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xd3:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	283                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xdd:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	155                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xe7:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	289                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xf1:0x1c DW_TAG_inlined_subroutine
	.long	131                             # DW_AT_abstract_origin
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	35                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0xfe:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	136                             # DW_AT_abstract_origin
	.byte	14                              # Abbrev [14] 0x105:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	80
	.long	145                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x10e:0x8 DW_TAG_typedef
	.long	35                              # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x116:0x5 DW_TAG_pointer_type
	.long	180                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x11b:0x5 DW_TAG_pointer_type
	.long	288                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x120:0x1 DW_TAG_const_type
	.byte	16                              # Abbrev [16] 0x121:0x5 DW_TAG_const_type
	.long	294                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x126:0x5 DW_TAG_pointer_type
	.long	299                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x12b:0x5 DW_TAG_const_type
	.long	304                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x130:0x8 DW_TAG_typedef
	.long	312                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x138:0xe DW_TAG_structure_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x13c:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	180                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	136                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/simple/simple_encoder.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=137
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=169
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=182
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=190
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=206
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=220
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=243
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=258
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=273
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=293
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=311
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=330
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=346
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=361
.Linfo_string16:
	.asciz	"unaligned_write32le"           # string offset=377
.Linfo_string17:
	.asciz	"buf"                           # string offset=397
.Linfo_string18:
	.asciz	"unsigned char"                 # string offset=401
.Linfo_string19:
	.asciz	"__uint8_t"                     # string offset=415
.Linfo_string20:
	.asciz	"uint8_t"                       # string offset=425
.Linfo_string21:
	.asciz	"num"                           # string offset=433
.Linfo_string22:
	.asciz	"__uint32_t"                    # string offset=437
.Linfo_string23:
	.asciz	"uint32_t"                      # string offset=448
.Linfo_string24:
	.asciz	"lzma_simple_props_size"        # string offset=457
.Linfo_string25:
	.asciz	"lzma_ret"                      # string offset=480
.Linfo_string26:
	.asciz	"lzma_simple_props_encode"      # string offset=489
.Linfo_string27:
	.asciz	"size"                          # string offset=514
.Linfo_string28:
	.asciz	"options"                       # string offset=519
.Linfo_string29:
	.asciz	"opt"                           # string offset=527
.Linfo_string30:
	.asciz	"start_offset"                  # string offset=531
.Linfo_string31:
	.asciz	"lzma_options_bcj"              # string offset=544
.Linfo_string32:
	.asciz	"out"                           # string offset=561
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Ltmp5
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
