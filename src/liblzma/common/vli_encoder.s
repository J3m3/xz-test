	.text
	.file	"vli_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/vli_encoder.c" md5 0x4de7f9e5052ab9957fee955a20da3326
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.globl	lzma_vli_encode                 # -- Begin function lzma_vli_encode
	.p2align	4, 0x90
	.type	lzma_vli_encode,@function
lzma_vli_encode:                        # @lzma_vli_encode
.Lfunc_begin0:
	.loc	0 20 0                          # liblzma/common/vli_encoder.c:20:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_encode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_encode:out <- $rdx
	#DEBUG_VALUE: lzma_vli_encode:out_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_encode:out_size <- $r8
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 22 9 prologue_end             # liblzma/common/vli_encoder.c:22:9
	movq	$0, -8(%rsp)
.Ltmp0:
	.loc	0 23 14                         # liblzma/common/vli_encoder.c:23:14
	xorl	%eax, %eax
	testq	%rsi, %rsi
	sete	%r11b
	.loc	0 0 0 is_stmt 0                 # liblzma/common/vli_encoder.c:0:0
	movq	(%rcx), %r10
	leaq	-8(%rsp), %r9
	cmoveq	%r9, %rsi
.Ltmp1:
	#DEBUG_VALUE: lzma_vli_encode:vli_pos <- [DW_OP_LLVM_entry_value 1] $rsi
	cmpq	%r8, %r10
	jae	.LBB0_1
.Ltmp2:
# %bb.2:                                # %if.end6
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_encode:vli_pos <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_vli_encode:out <- $rdx
	#DEBUG_VALUE: lzma_vli_encode:out_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_encode:out_size <- $r8
	#DEBUG_VALUE: lzma_vli_encode:vli_pos <- $rsi
	.loc	0 38 6 is_stmt 1                # liblzma/common/vli_encoder.c:38:6
	movq	(%rsi), %r11
	.loc	0 38 15 is_stmt 0               # liblzma/common/vli_encoder.c:38:15
	cmpq	$9, %r11
	setae	%al
	testq	%rdi, %rdi
	sets	%bl
	.loc	0 38 37                         # liblzma/common/vli_encoder.c:38:37
	orb	%al, %bl
	movl	$11, %eax
	jne	.LBB0_8
.Ltmp3:
# %bb.3:                                # %if.end10
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_encode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_encode:out <- $rdx
	#DEBUG_VALUE: lzma_vli_encode:out_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_encode:out_size <- $r8
	.loc	0 43 6 is_stmt 1                # liblzma/common/vli_encoder.c:43:6
	leal	(,%r11,8), %eax
	subl	%r11d, %eax
	movq	%rcx, %rbx
.Ltmp4:
	#DEBUG_VALUE: lzma_vli_encode:out_pos <- $rbx
	movl	%eax, %ecx
	shrq	%cl, %rdi
.Ltmp5:
	#DEBUG_VALUE: lzma_vli_encode:vli <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	.loc	0 0 6 is_stmt 0                 # liblzma/common/vli_encoder.c:0:6
	movq	%rbx, %rax
	.loc	0 46 2 is_stmt 1                # liblzma/common/vli_encoder.c:46:2
	incq	%r11
	incq	%r10
	negq	%r8
.Ltmp6:
	#DEBUG_VALUE: lzma_vli_encode:out_size <- [DW_OP_LLVM_entry_value 1] $r8
	.p2align	4, 0x90
.LBB0_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_encode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_encode:out <- $rdx
	#DEBUG_VALUE: lzma_vli_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_vli_encode:out_size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	.loc	0 46 13 is_stmt 0               # liblzma/common/vli_encoder.c:46:13
	cmpq	$128, %rdi
	.loc	0 46 2                          # liblzma/common/vli_encoder.c:46:2
	jb	.LBB0_7
.Ltmp7:
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB0_4 Depth=1
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_encode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_encode:out <- $rdx
	#DEBUG_VALUE: lzma_vli_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_vli_encode:out_size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 50 3 is_stmt 1                # liblzma/common/vli_encoder.c:50:3
	movq	%r11, (%rsi)
	.loc	0 54 34                         # liblzma/common/vli_encoder.c:54:34
	movl	%edi, %ecx
	orb	$-128, %cl
	.loc	0 54 17 is_stmt 0               # liblzma/common/vli_encoder.c:54:17
	movb	%cl, -1(%rdx,%r10)
	.loc	0 55 7 is_stmt 1                # liblzma/common/vli_encoder.c:55:7
	shrq	$7, %rdi
.Ltmp8:
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	.loc	0 57 7                          # liblzma/common/vli_encoder.c:57:7
	movq	%r10, (%rax)
	.loc	0 57 18 is_stmt 0               # liblzma/common/vli_encoder.c:57:18
	incq	%r11
	leaq	(%r8,%r10), %rcx
	incq	%rcx
	incq	%r10
	cmpq	$1, %rcx
.Ltmp9:
	.loc	0 57 7                          # liblzma/common/vli_encoder.c:57:7
	jne	.LBB0_4
.Ltmp10:
# %bb.6:                                # %if.then18
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_encode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_encode:out <- $rdx
	#DEBUG_VALUE: lzma_vli_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_vli_encode:out_size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 0 7                           # liblzma/common/vli_encoder.c:0:7
	xorl	%ecx, %ecx
.Ltmp11:
	.loc	0 58 19 is_stmt 1               # liblzma/common/vli_encoder.c:58:19
	cmpq	%r9, %rsi
	movl	$11, %eax
	.loc	0 58 11 is_stmt 0               # liblzma/common/vli_encoder.c:58:11
	cmovnel	%ecx, %eax
.Ltmp12:
	.loc	0 69 1 epilogue_begin is_stmt 1 # liblzma/common/vli_encoder.c:69:1
	popq	%rbx
.Ltmp13:
	#DEBUG_VALUE: lzma_vli_encode:out_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp14:
.LBB0_1:
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_encode:vli_pos <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_vli_encode:out <- $rdx
	#DEBUG_VALUE: lzma_vli_encode:out_pos <- $rcx
	#DEBUG_VALUE: lzma_vli_encode:out_size <- $r8
	.loc	0 0 1 is_stmt 0                 # liblzma/common/vli_encoder.c:0:1
	movb	%r11b, %al
	orl	$10, %eax
	.loc	0 69 1 epilogue_begin           # liblzma/common/vli_encoder.c:69:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp15:
.LBB0_7:                                # %while.end
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_encode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_encode:out <- $rdx
	#DEBUG_VALUE: lzma_vli_encode:out_pos <- $rbx
	#DEBUG_VALUE: lzma_vli_encode:out_size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 63 16 is_stmt 1               # liblzma/common/vli_encoder.c:63:16
	movb	%dil, -1(%rdx,%r10)
	.loc	0 64 2                          # liblzma/common/vli_encoder.c:64:2
	movq	%r10, (%rax)
	.loc	0 65 2                          # liblzma/common/vli_encoder.c:65:2
	movq	%r11, (%rsi)
	.loc	0 67 17                         # liblzma/common/vli_encoder.c:67:17
	xorl	%eax, %eax
	cmpq	%r9, %rsi
	setne	%al
.Ltmp16:
.LBB0_8:                                # %cleanup
	#DEBUG_VALUE: lzma_vli_encode:vli <- $rdi
	#DEBUG_VALUE: lzma_vli_encode:vli_pos <- $rsi
	#DEBUG_VALUE: lzma_vli_encode:out <- $rdx
	#DEBUG_VALUE: lzma_vli_encode:out_pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_vli_encode:out_size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 69 1 epilogue_begin           # liblzma/common/vli_encoder.c:69:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp17:
.Lfunc_end0:
	.size	lzma_vli_encode, .Lfunc_end0-lzma_vli_encode
	.cfi_endproc
                                        # -- End function
	.file	4 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	5 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
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
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
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
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0xec DW_TAG_compile_unit
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
	.byte	6                               # Abbrev [6] 0x59:0x8 DW_TAG_typedef
	.long	97                              # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x61:0x8 DW_TAG_typedef
	.long	105                             # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x69:0x4 DW_TAG_base_type
	.byte	16                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x6d:0x4a DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	183                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x7c:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	203                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x86:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	227                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x8f:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	232                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x99:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	242                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa2:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xab:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	191                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xb7:0x8 DW_TAG_typedef
	.long	39                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xbf:0x8 DW_TAG_typedef
	.long	199                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xc7:0x4 DW_TAG_base_type
	.byte	22                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xcb:0x8 DW_TAG_typedef
	.long	211                             # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xd3:0x8 DW_TAG_typedef
	.long	219                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xdb:0x8 DW_TAG_typedef
	.long	199                             # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xe3:0x5 DW_TAG_pointer_type
	.long	191                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xe8:0x5 DW_TAG_restrict_type
	.long	237                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xed:0x5 DW_TAG_pointer_type
	.long	89                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0xf2:0x5 DW_TAG_restrict_type
	.long	227                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	132                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/vli_encoder.c"  # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=134
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=166
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=179
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=187
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=203
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=217
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=240
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=255
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=270
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=290
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=308
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=327
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=343
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=358
.Linfo_string16:
	.asciz	"unsigned char"                 # string offset=374
.Linfo_string17:
	.asciz	"__uint8_t"                     # string offset=388
.Linfo_string18:
	.asciz	"uint8_t"                       # string offset=398
.Linfo_string19:
	.asciz	"lzma_vli_encode"               # string offset=406
.Linfo_string20:
	.asciz	"lzma_ret"                      # string offset=422
.Linfo_string21:
	.asciz	"vli_pos_internal"              # string offset=431
.Linfo_string22:
	.asciz	"unsigned long"                 # string offset=448
.Linfo_string23:
	.asciz	"size_t"                        # string offset=462
.Linfo_string24:
	.asciz	"vli"                           # string offset=469
.Linfo_string25:
	.asciz	"__uint64_t"                    # string offset=473
.Linfo_string26:
	.asciz	"uint64_t"                      # string offset=484
.Linfo_string27:
	.asciz	"lzma_vli"                      # string offset=493
.Linfo_string28:
	.asciz	"vli_pos"                       # string offset=502
.Linfo_string29:
	.asciz	"out"                           # string offset=510
.Linfo_string30:
	.asciz	"out_pos"                       # string offset=514
.Linfo_string31:
	.asciz	"out_size"                      # string offset=522
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
