	.text
	.file	"lzma_encoder_presets.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/lzma/lzma_encoder_presets.c" md5 0x0a5ebb3f0e6b11f43a1e1f264dd97819
	.file	1 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.file	2 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_lzma_preset
.LCPI0_0:
	.long	0                               # 0x0
	.long	3                               # 0x3
	.long	0                               # 0x0
	.long	2                               # 0x2
	.text
	.globl	lzma_lzma_preset
	.p2align	4, 0x90
	.type	lzma_lzma_preset,@function
lzma_lzma_preset:                       # @lzma_lzma_preset
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_lzma_preset:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_preset:preset <- $esi
	.loc	0 19 32 prologue_end            # liblzma/lzma/lzma_encoder_presets.c:19:32
	movl	%esi, %edx
	andl	$31, %edx
.Ltmp0:
	#DEBUG_VALUE: lzma_lzma_preset:flags <- [DW_OP_constu 18446744073709551584, DW_OP_and, DW_OP_stack_value] $esi
	#DEBUG_VALUE: lzma_lzma_preset:supported_flags <- -2147483648
	#DEBUG_VALUE: lzma_lzma_preset:level <- $edx
	.loc	0 23 12                         # liblzma/lzma/lzma_encoder_presets.c:23:12
	cmpl	$10, %edx
	setae	%cl
	testl	$2147483616, %esi               # imm = 0x7FFFFFE0
	setne	%r8b
	movb	$1, %al
	.loc	0 23 16 is_stmt 0               # liblzma/lzma/lzma_encoder_presets.c:23:16
	orb	%cl, %r8b
	jne	.LBB0_9
.Ltmp1:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_lzma_preset:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_preset:preset <- $esi
	#DEBUG_VALUE: lzma_lzma_preset:flags <- [DW_OP_constu 18446744073709551584, DW_OP_and, DW_OP_stack_value] $esi
	#DEBUG_VALUE: lzma_lzma_preset:supported_flags <- -2147483648
	#DEBUG_VALUE: lzma_lzma_preset:level <- $edx
	.loc	0 26 23 is_stmt 1               # liblzma/lzma/lzma_encoder_presets.c:26:23
	movq	$0, 8(%rdi)
	.loc	0 27 28                         # liblzma/lzma/lzma_encoder_presets.c:27:28
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,3,0,2]
	movups	%xmm0, 16(%rdi)
	movabsq	$1735881565001815058, %rax      # imm = 0x1817171616151412
	.loc	0 37 50                         # liblzma/lzma/lzma_encoder_presets.c:37:50
	movq	%rax, -16(%rsp)
	movw	$6681, -8(%rsp)                 # imm = 0x1A19
	.loc	0 37 38 is_stmt 0               # liblzma/lzma/lzma_encoder_presets.c:37:38
	movzbl	-16(%rsp,%rdx), %ecx
	.loc	0 37 35                         # liblzma/lzma/lzma_encoder_presets.c:37:35
	movl	$1, %r8d
	shll	%cl, %r8d
	movl	$1, %eax
	.loc	0 37 21                         # liblzma/lzma/lzma_encoder_presets.c:37:21
	movl	%r8d, (%rdi)
.Ltmp2:
	.loc	0 41 12 is_stmt 1               # liblzma/lzma/lzma_encoder_presets.c:41:12
	cmpl	$3, %edx
.Ltmp3:
	.loc	0 41 6 is_stmt 0                # liblzma/lzma/lzma_encoder_presets.c:41:6
	ja	.LBB0_3
.Ltmp4:
# %bb.2:                                # %if.then13
	#DEBUG_VALUE: lzma_lzma_preset:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_preset:preset <- $esi
	#DEBUG_VALUE: lzma_lzma_preset:flags <- [DW_OP_constu 18446744073709551584, DW_OP_and, DW_OP_stack_value] $esi
	#DEBUG_VALUE: lzma_lzma_preset:supported_flags <- -2147483648
	#DEBUG_VALUE: lzma_lzma_preset:level <- $edx
	.loc	0 43 17 is_stmt 1               # liblzma/lzma/lzma_encoder_presets.c:43:17
	cmpl	$1, %edx
	movl	$4, %ecx
	sbbl	$0, %ecx
	.loc	0 44 29                         # liblzma/lzma/lzma_encoder_presets.c:44:29
	cmpl	$2, %edx
	movl	$128, %r9d
	movl	$273, %r8d                      # imm = 0x111
	.loc	0 44 23 is_stmt 0               # liblzma/lzma/lzma_encoder_presets.c:44:23
	cmovbl	%r9d, %r8d
	.loc	0 48 32 is_stmt 1               # liblzma/lzma/lzma_encoder_presets.c:48:32
	movl	$806881284, -20(%rsp)           # imm = 0x30180804
	.loc	0 48 20 is_stmt 0               # liblzma/lzma/lzma_encoder_presets.c:48:20
	movzbl	-20(%rsp,%rdx), %r9d
	.loc	0 50 2 is_stmt 1                # liblzma/lzma/lzma_encoder_presets.c:50:2
	jmp	.LBB0_4
.Ltmp5:
.LBB0_3:                                # %if.else
	#DEBUG_VALUE: lzma_lzma_preset:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_preset:preset <- $esi
	#DEBUG_VALUE: lzma_lzma_preset:flags <- [DW_OP_constu 18446744073709551584, DW_OP_and, DW_OP_stack_value] $esi
	#DEBUG_VALUE: lzma_lzma_preset:supported_flags <- -2147483648
	#DEBUG_VALUE: lzma_lzma_preset:level <- $edx
	.loc	0 53 23                         # liblzma/lzma/lzma_encoder_presets.c:53:23
	xorl	%eax, %eax
	cmpl	$5, %edx
	setne	%al
	shll	$5, %eax
	addl	$32, %eax
	.loc	0 53 29 is_stmt 0               # liblzma/lzma/lzma_encoder_presets.c:53:29
	cmpl	$4, %edx
	movl	$16, %r8d
	.loc	0 53 23                         # liblzma/lzma/lzma_encoder_presets.c:53:23
	cmovnel	%eax, %r8d
	xorl	%r9d, %r9d
	movl	$20, %ecx
	movl	$2, %eax
.Ltmp6:
.LBB0_4:                                # %if.end36
	#DEBUG_VALUE: lzma_lzma_preset:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_preset:preset <- $esi
	#DEBUG_VALUE: lzma_lzma_preset:flags <- [DW_OP_constu 18446744073709551584, DW_OP_and, DW_OP_stack_value] $esi
	#DEBUG_VALUE: lzma_lzma_preset:supported_flags <- -2147483648
	#DEBUG_VALUE: lzma_lzma_preset:level <- $edx
	.loc	0 0 0                           # liblzma/lzma/lzma_encoder_presets.c:0:0
	movl	%eax, 32(%rdi)
	movl	%ecx, 40(%rdi)
	movl	%r8d, 36(%rdi)
	movl	%r9d, 44(%rdi)
	xorl	%eax, %eax
.Ltmp7:
	.loc	0 57 12 is_stmt 1               # liblzma/lzma/lzma_encoder_presets.c:57:12
	testl	%esi, %esi
.Ltmp8:
	.loc	0 57 6 is_stmt 0                # liblzma/lzma/lzma_encoder_presets.c:57:6
	js	.LBB0_5
.Ltmp9:
.LBB0_9:                                # %cleanup
	#DEBUG_VALUE: lzma_lzma_preset:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_preset:preset <- $esi
	#DEBUG_VALUE: lzma_lzma_preset:flags <- [DW_OP_constu 18446744073709551584, DW_OP_and, DW_OP_stack_value] $esi
	#DEBUG_VALUE: lzma_lzma_preset:supported_flags <- -2147483648
	#DEBUG_VALUE: lzma_lzma_preset:level <- $edx
                                        # kill: def $al killed $al killed $eax
	.loc	0 70 1 is_stmt 1                # liblzma/lzma/lzma_encoder_presets.c:70:1
	retq
.Ltmp10:
.LBB0_5:                                # %if.then39
	#DEBUG_VALUE: lzma_lzma_preset:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_preset:preset <- $esi
	#DEBUG_VALUE: lzma_lzma_preset:flags <- [DW_OP_constu 18446744073709551584, DW_OP_and, DW_OP_stack_value] $esi
	#DEBUG_VALUE: lzma_lzma_preset:supported_flags <- -2147483648
	#DEBUG_VALUE: lzma_lzma_preset:level <- $edx
	.loc	0 58 17                         # liblzma/lzma/lzma_encoder_presets.c:58:17
	movl	$2, 32(%rdi)
	.loc	0 59 15                         # liblzma/lzma/lzma_encoder_presets.c:59:15
	movl	$20, 40(%rdi)
	movl	$192, %ecx
.Ltmp11:
	.loc	0 60 18                         # liblzma/lzma/lzma_encoder_presets.c:60:18
	cmpl	$3, %edx
	je	.LBB0_8
.Ltmp12:
# %bb.6:                                # %if.then39
	#DEBUG_VALUE: lzma_lzma_preset:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_preset:preset <- $esi
	#DEBUG_VALUE: lzma_lzma_preset:flags <- [DW_OP_constu 18446744073709551584, DW_OP_and, DW_OP_stack_value] $esi
	#DEBUG_VALUE: lzma_lzma_preset:supported_flags <- -2147483648
	#DEBUG_VALUE: lzma_lzma_preset:level <- $edx
	cmpl	$5, %edx
	je	.LBB0_8
.Ltmp13:
# %bb.7:                                # %if.else50
	#DEBUG_VALUE: lzma_lzma_preset:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_preset:preset <- $esi
	#DEBUG_VALUE: lzma_lzma_preset:flags <- [DW_OP_constu 18446744073709551584, DW_OP_and, DW_OP_stack_value] $esi
	#DEBUG_VALUE: lzma_lzma_preset:supported_flags <- -2147483648
	#DEBUG_VALUE: lzma_lzma_preset:level <- $edx
	.loc	0 0 18 is_stmt 0                # liblzma/lzma/lzma_encoder_presets.c:0:18
	movl	$512, %eax                      # imm = 0x200
	movl	$273, %ecx                      # imm = 0x111
.Ltmp14:
.LBB0_8:                                # %cleanup.sink.split
	#DEBUG_VALUE: lzma_lzma_preset:options <- $rdi
	#DEBUG_VALUE: lzma_lzma_preset:preset <- $esi
	#DEBUG_VALUE: lzma_lzma_preset:flags <- [DW_OP_constu 18446744073709551584, DW_OP_and, DW_OP_stack_value] $esi
	#DEBUG_VALUE: lzma_lzma_preset:supported_flags <- -2147483648
	#DEBUG_VALUE: lzma_lzma_preset:level <- $edx
	movl	%ecx, 36(%rdi)
	movl	%eax, 44(%rdi)
	xorl	%eax, %eax
.Ltmp15:
                                        # kill: def $al killed $al killed $eax
	.loc	0 70 1 is_stmt 1                # liblzma/lzma/lzma_encoder_presets.c:70:1
	retq
.Ltmp16:
.Lfunc_end0:
	.size	lzma_lzma_preset, .Lfunc_end0-lzma_lzma_preset
	.cfi_endproc
                                        # -- End function
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	3                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	22                              # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	16                              # DW_OP_constu
	.byte	224                             # 18446744073709551584
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	12                              # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	128                             # 18446744071562067968
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	248                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	1                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xc:0x1e6 DW_TAG_compile_unit
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
	.byte	5                               # Abbrev [5] 0x5e:0x3f DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	157                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x6d:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	169                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x77:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	425                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x81:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_location
	.byte	49                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x8a:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	50                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x93:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x9d:0x8 DW_TAG_typedef
	.long	165                             # DW_AT_type
	.byte	14                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xa5:0x4 DW_TAG_base_type
	.byte	13                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xa9:0x5 DW_TAG_pointer_type
	.long	174                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xae:0x9 DW_TAG_typedef
	.long	183                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb7:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xbb:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xc4:0x9 DW_TAG_member
	.byte	19                              # DW_AT_name
	.long	441                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xcd:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xd6:0xa DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xe0:0xa DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xea:0xa DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xf4:0xa DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	467                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xfe:0xa DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x108:0xa DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x112:0xa DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x11c:0xa DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x126:0xa DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x130:0xa DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x13a:0xa DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x144:0xa DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x14e:0xa DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x158:0xa DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x162:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x16c:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	483                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x176:0xa DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	483                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x180:0xa DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	483                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x18a:0xa DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	483                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x194:0xa DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x19e:0xa DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1a9:0x8 DW_TAG_typedef
	.long	433                             # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1b1:0x8 DW_TAG_typedef
	.long	54                              # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1b9:0x5 DW_TAG_pointer_type
	.long	446                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1be:0x5 DW_TAG_const_type
	.long	451                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1c3:0x8 DW_TAG_typedef
	.long	459                             # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1cb:0x8 DW_TAG_typedef
	.long	165                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1d3:0x8 DW_TAG_typedef
	.long	39                              # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1db:0x8 DW_TAG_typedef
	.long	58                              # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1e3:0x8 DW_TAG_typedef
	.long	82                              # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1eb:0x1 DW_TAG_pointer_type
	.byte	14                              # Abbrev [14] 0x1ec:0x5 DW_TAG_const_type
	.long	425                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	212                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/lzma/lzma_encoder_presets.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=141
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=173
.Linfo_string4:
	.asciz	"LZMA_MODE_FAST"                # string offset=186
.Linfo_string5:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=201
.Linfo_string6:
	.asciz	"LZMA_MF_HC3"                   # string offset=218
.Linfo_string7:
	.asciz	"LZMA_MF_HC4"                   # string offset=230
.Linfo_string8:
	.asciz	"LZMA_MF_BT2"                   # string offset=242
.Linfo_string9:
	.asciz	"LZMA_MF_BT3"                   # string offset=254
.Linfo_string10:
	.asciz	"LZMA_MF_BT4"                   # string offset=266
.Linfo_string11:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=278
.Linfo_string12:
	.asciz	"lzma_lzma_preset"              # string offset=297
.Linfo_string13:
	.asciz	"unsigned char"                 # string offset=314
.Linfo_string14:
	.asciz	"lzma_bool"                     # string offset=328
.Linfo_string15:
	.asciz	"options"                       # string offset=338
.Linfo_string16:
	.asciz	"dict_size"                     # string offset=346
.Linfo_string17:
	.asciz	"__uint32_t"                    # string offset=356
.Linfo_string18:
	.asciz	"uint32_t"                      # string offset=367
.Linfo_string19:
	.asciz	"preset_dict"                   # string offset=376
.Linfo_string20:
	.asciz	"__uint8_t"                     # string offset=388
.Linfo_string21:
	.asciz	"uint8_t"                       # string offset=398
.Linfo_string22:
	.asciz	"preset_dict_size"              # string offset=406
.Linfo_string23:
	.asciz	"lc"                            # string offset=423
.Linfo_string24:
	.asciz	"lp"                            # string offset=426
.Linfo_string25:
	.asciz	"pb"                            # string offset=429
.Linfo_string26:
	.asciz	"mode"                          # string offset=432
.Linfo_string27:
	.asciz	"lzma_mode"                     # string offset=437
.Linfo_string28:
	.asciz	"nice_len"                      # string offset=447
.Linfo_string29:
	.asciz	"mf"                            # string offset=456
.Linfo_string30:
	.asciz	"lzma_match_finder"             # string offset=459
.Linfo_string31:
	.asciz	"depth"                         # string offset=477
.Linfo_string32:
	.asciz	"reserved_int1"                 # string offset=483
.Linfo_string33:
	.asciz	"reserved_int2"                 # string offset=497
.Linfo_string34:
	.asciz	"reserved_int3"                 # string offset=511
.Linfo_string35:
	.asciz	"reserved_int4"                 # string offset=525
.Linfo_string36:
	.asciz	"reserved_int5"                 # string offset=539
.Linfo_string37:
	.asciz	"reserved_int6"                 # string offset=553
.Linfo_string38:
	.asciz	"reserved_int7"                 # string offset=567
.Linfo_string39:
	.asciz	"reserved_int8"                 # string offset=581
.Linfo_string40:
	.asciz	"reserved_enum1"                # string offset=595
.Linfo_string41:
	.asciz	"lzma_reserved_enum"            # string offset=610
.Linfo_string42:
	.asciz	"reserved_enum2"                # string offset=629
.Linfo_string43:
	.asciz	"reserved_enum3"                # string offset=644
.Linfo_string44:
	.asciz	"reserved_enum4"                # string offset=659
.Linfo_string45:
	.asciz	"reserved_ptr1"                 # string offset=674
.Linfo_string46:
	.asciz	"reserved_ptr2"                 # string offset=688
.Linfo_string47:
	.asciz	"lzma_options_lzma"             # string offset=702
.Linfo_string48:
	.asciz	"preset"                        # string offset=720
.Linfo_string49:
	.asciz	"flags"                         # string offset=727
.Linfo_string50:
	.asciz	"supported_flags"               # string offset=733
.Linfo_string51:
	.asciz	"level"                         # string offset=749
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
