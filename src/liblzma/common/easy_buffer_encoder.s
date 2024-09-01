	.text
	.file	"easy_buffer_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/easy_buffer_encoder.c" md5 0x762e8c7ebc1c62e1479c966319025d31
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.globl	lzma_easy_buffer_encode         # -- Begin function lzma_easy_buffer_encode
	.p2align	4, 0x90
	.type	lzma_easy_buffer_encode,@function
lzma_easy_buffer_encode:                # @lzma_easy_buffer_encode
.Lfunc_begin0:
	.loc	0 20 0                          # liblzma/common/easy_buffer_encoder.c:20:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_easy_buffer_encode:preset <- $edi
	#DEBUG_VALUE: lzma_easy_buffer_encode:check <- $esi
	#DEBUG_VALUE: lzma_easy_buffer_encode:allocator <- $rdx
	#DEBUG_VALUE: lzma_easy_buffer_encode:in <- $rcx
	#DEBUG_VALUE: lzma_easy_buffer_encode:in_size <- $r8
	#DEBUG_VALUE: lzma_easy_buffer_encode:out <- $r9
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$192, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
.Ltmp0:
	#DEBUG_VALUE: lzma_easy_buffer_encode:out_pos <- [DW_OP_plus_uconst 240] [$rsp+0]
	#DEBUG_VALUE: lzma_easy_buffer_encode:out_size <- [DW_OP_plus_uconst 248] [$rsp+0]
	movq	%r9, %rbx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movl	%esi, %ebp
	movl	%edi, %esi
.Ltmp1:
	#DEBUG_VALUE: lzma_easy_buffer_encode:check <- $ebp
	movq	%rsp, %rdi
.Ltmp2:
	#DEBUG_VALUE: lzma_easy_buffer_encode:preset <- $esi
	.loc	0 22 6 prologue_end             # liblzma/common/easy_buffer_encoder.c:22:6
	callq	lzma_easy_preset@PLT
.Ltmp3:
	#DEBUG_VALUE: lzma_easy_buffer_encode:out <- $rbx
	#DEBUG_VALUE: lzma_easy_buffer_encode:in_size <- $r14
	#DEBUG_VALUE: lzma_easy_buffer_encode:in <- $r15
	#DEBUG_VALUE: lzma_easy_buffer_encode:allocator <- $r12
	#DEBUG_VALUE: lzma_easy_buffer_encode:preset <- [DW_OP_LLVM_entry_value 1] $edi
	movl	%eax, %ecx
	movl	$8, %eax
.Ltmp4:
	.loc	0 22 6 is_stmt 0                # liblzma/common/easy_buffer_encoder.c:22:6
	testb	%cl, %cl
	jne	.LBB0_2
.Ltmp5:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_easy_buffer_encode:preset <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: lzma_easy_buffer_encode:check <- $ebp
	#DEBUG_VALUE: lzma_easy_buffer_encode:allocator <- $r12
	#DEBUG_VALUE: lzma_easy_buffer_encode:in <- $r15
	#DEBUG_VALUE: lzma_easy_buffer_encode:in_size <- $r14
	#DEBUG_VALUE: lzma_easy_buffer_encode:out <- $rbx
	#DEBUG_VALUE: lzma_easy_buffer_encode:out_pos <- [DW_OP_plus_uconst 240] [$rsp+0]
	#DEBUG_VALUE: lzma_easy_buffer_encode:out_size <- [DW_OP_plus_uconst 248] [$rsp+0]
	.loc	0 0 6                           # liblzma/common/easy_buffer_encoder.c:0:6
	movq	%rsp, %rdi
	.loc	0 25 9 is_stmt 1                # liblzma/common/easy_buffer_encoder.c:25:9
	movl	%ebp, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	movq	%rbx, %r9
	pushq	248(%rsp)
.Ltmp6:
	#DEBUG_VALUE: lzma_easy_buffer_encode:out_size <- [DW_OP_plus_uconst 248] [$rdi+0]
	#DEBUG_VALUE: lzma_easy_buffer_encode:out_pos <- [DW_OP_plus_uconst 240] [$rdi+0]
	.cfi_adjust_cfa_offset 8
	pushq	248(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	lzma_stream_buffer_encode@PLT
.Ltmp7:
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp8:
.LBB0_2:                                # %cleanup
	#DEBUG_VALUE: lzma_easy_buffer_encode:preset <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: lzma_easy_buffer_encode:check <- $ebp
	#DEBUG_VALUE: lzma_easy_buffer_encode:allocator <- $r12
	#DEBUG_VALUE: lzma_easy_buffer_encode:in <- $r15
	#DEBUG_VALUE: lzma_easy_buffer_encode:in_size <- $r14
	#DEBUG_VALUE: lzma_easy_buffer_encode:out <- $rbx
	.loc	0 27 1 epilogue_begin           # liblzma/common/easy_buffer_encoder.c:27:1
	addq	$192, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
.Ltmp9:
	#DEBUG_VALUE: lzma_easy_buffer_encode:out <- [DW_OP_LLVM_entry_value 1] $r9
	.cfi_def_cfa_offset 40
	popq	%r12
.Ltmp10:
	#DEBUG_VALUE: lzma_easy_buffer_encode:allocator <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp11:
	#DEBUG_VALUE: lzma_easy_buffer_encode:in_size <- [DW_OP_LLVM_entry_value 1] $r8
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp12:
	#DEBUG_VALUE: lzma_easy_buffer_encode:in <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp13:
	#DEBUG_VALUE: lzma_easy_buffer_encode:check <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp14:
.Lfunc_end0:
	.size	lzma_easy_buffer_encode, .Lfunc_end0-lzma_easy_buffer_encode
	.cfi_endproc
	.file	4 "liblzma/common" "easy_preset.h" md5 0xd577811d5aeebd46232348c9f7923e50
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	7 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	8 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	9 "liblzma/api/lzma" "container.h" md5 0x7f878de3abe07c50108c7f7da139bedb
	.file	10 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
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
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
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
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
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
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	240                             # 240
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	240                             # 240
	.byte	1                               # 
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	248                             # 248
	.byte	1                               # 
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	248                             # 248
	.byte	1                               # 
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x386 DW_TAG_compile_unit
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
	.byte	2                               # Abbrev [2] 0x6d:0xf DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x75:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x78:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x7c:0x18 DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x84:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x87:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8a:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8d:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x90:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x94:0xc DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x9c:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa0:0x73 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	5                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.ascii	"\220~"
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	781                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xb3:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	661                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xbc:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	794                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xc5:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	802                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xce:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	677                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xd7:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	878                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xe0:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	903                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xe9:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	908                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xf2:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	878                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xfb:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.long	303                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x106:0x6 DW_TAG_call_site
	.long	275                             # DW_AT_call_origin
	.byte	1                               # DW_AT_call_return_pc
	.byte	8                               # Abbrev [8] 0x10c:0x6 DW_TAG_call_site
	.long	731                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x113:0x13 DW_TAG_subprogram
	.byte	28                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	294                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x11b:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x120:0x5 DW_TAG_formal_parameter
	.long	661                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x126:0x4 DW_TAG_base_type
	.byte	29                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x12a:0x5 DW_TAG_pointer_type
	.long	303                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x12f:0x8 DW_TAG_typedef
	.long	311                             # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x137:0x17 DW_TAG_structure_type
	.byte	192                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x13b:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	334                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x144:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	410                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x14e:0xc DW_TAG_array_type
	.long	346                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x153:0x6 DW_TAG_subrange_type
	.long	406                             # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x15a:0x8 DW_TAG_typedef
	.long	354                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x162:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x166:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	377                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x16f:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x179:0x8 DW_TAG_typedef
	.long	385                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x181:0x8 DW_TAG_typedef
	.long	393                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x189:0x8 DW_TAG_typedef
	.long	401                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x191:0x4 DW_TAG_base_type
	.byte	32                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x195:0x1 DW_TAG_pointer_type
	.byte	18                              # Abbrev [18] 0x196:0x4 DW_TAG_base_type
	.byte	38                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	19                              # Abbrev [19] 0x19a:0x9 DW_TAG_typedef
	.long	419                             # DW_AT_type
	.byte	72                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1a3:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x1a7:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1b0:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	677                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1b9:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1c2:0xa DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1cc:0xa DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1d6:0xa DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1e0:0xa DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	707                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1ea:0xa DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1f4:0xa DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	715                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1fe:0xa DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x208:0xa DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x212:0xa DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x21c:0xa DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x226:0xa DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x230:0xa DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x23a:0xa DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x244:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x24e:0xa DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	661                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x258:0xa DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	723                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x262:0xa DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	723                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x26c:0xa DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	723                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x276:0xa DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	723                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x280:0xa DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x28a:0xa DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x295:0x8 DW_TAG_typedef
	.long	669                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x29d:0x8 DW_TAG_typedef
	.long	84                              # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2a5:0x5 DW_TAG_pointer_type
	.long	682                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x2aa:0x5 DW_TAG_const_type
	.long	687                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2af:0x8 DW_TAG_typedef
	.long	695                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2b7:0x8 DW_TAG_typedef
	.long	703                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x2bf:0x4 DW_TAG_base_type
	.byte	44                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x2c3:0x8 DW_TAG_typedef
	.long	109                             # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2cb:0x8 DW_TAG_typedef
	.long	124                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2d3:0x8 DW_TAG_typedef
	.long	148                             # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2db:0x32 DW_TAG_subprogram
	.byte	74                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.short	270                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	781                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x2e4:0x5 DW_TAG_formal_parameter
	.long	789                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2e9:0x5 DW_TAG_formal_parameter
	.long	794                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2ee:0x5 DW_TAG_formal_parameter
	.long	802                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2f3:0x5 DW_TAG_formal_parameter
	.long	677                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2f8:0x5 DW_TAG_formal_parameter
	.long	878                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2fd:0x5 DW_TAG_formal_parameter
	.long	903                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x302:0x5 DW_TAG_formal_parameter
	.long	908                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x307:0x5 DW_TAG_formal_parameter
	.long	878                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x30d:0x8 DW_TAG_typedef
	.long	39                              # DW_AT_type
	.byte	75                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x315:0x5 DW_TAG_pointer_type
	.long	346                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x31a:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	76                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x322:0x5 DW_TAG_pointer_type
	.long	807                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x327:0x9 DW_TAG_typedef
	.long	816                             # DW_AT_type
	.byte	81                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x330:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x335:0xa DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	852                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x33f:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x349:0xa DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	405                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x354:0x5 DW_TAG_pointer_type
	.long	857                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x359:0x15 DW_TAG_subroutine_type
	.long	405                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x35e:0x5 DW_TAG_formal_parameter
	.long	405                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x363:0x5 DW_TAG_formal_parameter
	.long	878                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x368:0x5 DW_TAG_formal_parameter
	.long	878                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x36e:0x8 DW_TAG_typedef
	.long	401                             # DW_AT_type
	.byte	78                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x376:0x5 DW_TAG_pointer_type
	.long	891                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x37b:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x37c:0x5 DW_TAG_formal_parameter
	.long	405                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x381:0x5 DW_TAG_formal_parameter
	.long	405                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x387:0x5 DW_TAG_pointer_type
	.long	687                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x38c:0x5 DW_TAG_pointer_type
	.long	878                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	372                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/easy_buffer_encoder.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=142
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=174
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=187
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=195
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=211
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=225
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=248
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=263
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=278
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=298
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=316
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=335
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=351
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=366
.Linfo_string16:
	.asciz	"LZMA_CHECK_NONE"               # string offset=382
.Linfo_string17:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=398
.Linfo_string18:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=415
.Linfo_string19:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=432
.Linfo_string20:
	.asciz	"LZMA_MODE_FAST"                # string offset=450
.Linfo_string21:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=465
.Linfo_string22:
	.asciz	"LZMA_MF_HC3"                   # string offset=482
.Linfo_string23:
	.asciz	"LZMA_MF_HC4"                   # string offset=494
.Linfo_string24:
	.asciz	"LZMA_MF_BT2"                   # string offset=506
.Linfo_string25:
	.asciz	"LZMA_MF_BT3"                   # string offset=518
.Linfo_string26:
	.asciz	"LZMA_MF_BT4"                   # string offset=530
.Linfo_string27:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=542
.Linfo_string28:
	.asciz	"lzma_easy_preset"              # string offset=561
.Linfo_string29:
	.asciz	"_Bool"                         # string offset=578
.Linfo_string30:
	.asciz	"filters"                       # string offset=584
.Linfo_string31:
	.asciz	"id"                            # string offset=592
.Linfo_string32:
	.asciz	"unsigned long"                 # string offset=595
.Linfo_string33:
	.asciz	"__uint64_t"                    # string offset=609
.Linfo_string34:
	.asciz	"uint64_t"                      # string offset=620
.Linfo_string35:
	.asciz	"lzma_vli"                      # string offset=629
.Linfo_string36:
	.asciz	"options"                       # string offset=638
.Linfo_string37:
	.asciz	"lzma_filter"                   # string offset=646
.Linfo_string38:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=658
.Linfo_string39:
	.asciz	"opt_lzma"                      # string offset=678
.Linfo_string40:
	.asciz	"dict_size"                     # string offset=687
.Linfo_string41:
	.asciz	"__uint32_t"                    # string offset=697
.Linfo_string42:
	.asciz	"uint32_t"                      # string offset=708
.Linfo_string43:
	.asciz	"preset_dict"                   # string offset=717
.Linfo_string44:
	.asciz	"unsigned char"                 # string offset=729
.Linfo_string45:
	.asciz	"__uint8_t"                     # string offset=743
.Linfo_string46:
	.asciz	"uint8_t"                       # string offset=753
.Linfo_string47:
	.asciz	"preset_dict_size"              # string offset=761
.Linfo_string48:
	.asciz	"lc"                            # string offset=778
.Linfo_string49:
	.asciz	"lp"                            # string offset=781
.Linfo_string50:
	.asciz	"pb"                            # string offset=784
.Linfo_string51:
	.asciz	"mode"                          # string offset=787
.Linfo_string52:
	.asciz	"lzma_mode"                     # string offset=792
.Linfo_string53:
	.asciz	"nice_len"                      # string offset=802
.Linfo_string54:
	.asciz	"mf"                            # string offset=811
.Linfo_string55:
	.asciz	"lzma_match_finder"             # string offset=814
.Linfo_string56:
	.asciz	"depth"                         # string offset=832
.Linfo_string57:
	.asciz	"reserved_int1"                 # string offset=838
.Linfo_string58:
	.asciz	"reserved_int2"                 # string offset=852
.Linfo_string59:
	.asciz	"reserved_int3"                 # string offset=866
.Linfo_string60:
	.asciz	"reserved_int4"                 # string offset=880
.Linfo_string61:
	.asciz	"reserved_int5"                 # string offset=894
.Linfo_string62:
	.asciz	"reserved_int6"                 # string offset=908
.Linfo_string63:
	.asciz	"reserved_int7"                 # string offset=922
.Linfo_string64:
	.asciz	"reserved_int8"                 # string offset=936
.Linfo_string65:
	.asciz	"reserved_enum1"                # string offset=950
.Linfo_string66:
	.asciz	"lzma_reserved_enum"            # string offset=965
.Linfo_string67:
	.asciz	"reserved_enum2"                # string offset=984
.Linfo_string68:
	.asciz	"reserved_enum3"                # string offset=999
.Linfo_string69:
	.asciz	"reserved_enum4"                # string offset=1014
.Linfo_string70:
	.asciz	"reserved_ptr1"                 # string offset=1029
.Linfo_string71:
	.asciz	"reserved_ptr2"                 # string offset=1043
.Linfo_string72:
	.asciz	"lzma_options_lzma"             # string offset=1057
.Linfo_string73:
	.asciz	"lzma_options_easy"             # string offset=1075
.Linfo_string74:
	.asciz	"lzma_stream_buffer_encode"     # string offset=1093
.Linfo_string75:
	.asciz	"lzma_ret"                      # string offset=1119
.Linfo_string76:
	.asciz	"lzma_check"                    # string offset=1128
.Linfo_string77:
	.asciz	"alloc"                         # string offset=1139
.Linfo_string78:
	.asciz	"size_t"                        # string offset=1145
.Linfo_string79:
	.asciz	"free"                          # string offset=1152
.Linfo_string80:
	.asciz	"opaque"                        # string offset=1157
.Linfo_string81:
	.asciz	"lzma_allocator"                # string offset=1164
.Linfo_string82:
	.asciz	"lzma_easy_buffer_encode"       # string offset=1179
.Linfo_string83:
	.asciz	"opt_easy"                      # string offset=1203
.Linfo_string84:
	.asciz	"preset"                        # string offset=1212
.Linfo_string85:
	.asciz	"check"                         # string offset=1219
.Linfo_string86:
	.asciz	"allocator"                     # string offset=1225
.Linfo_string87:
	.asciz	"in"                            # string offset=1235
.Linfo_string88:
	.asciz	"in_size"                       # string offset=1238
.Linfo_string89:
	.asciz	"out"                           # string offset=1246
.Linfo_string90:
	.asciz	"out_pos"                       # string offset=1250
.Linfo_string91:
	.asciz	"out_size"                      # string offset=1258
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp3
	.quad	.Ltmp7
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
