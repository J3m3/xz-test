	.text
	.file	"stream_flags_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/stream_flags_encoder.c" md5 0x0bf07b93a64696a494670a0b5c1e9dfe
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.globl	lzma_stream_header_encode       # -- Begin function lzma_stream_header_encode
	.p2align	4, 0x90
	.type	lzma_stream_header_encode,@function
lzma_stream_header_encode:              # @lzma_stream_header_encode
.Lfunc_begin0:
	.loc	0 31 0                          # liblzma/common/stream_flags_encoder.c:31:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_stream_header_encode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_header_encode:out <- $rsi
	movl	$8, %eax
.Ltmp0:
	.loc	0 35 23 prologue_end            # liblzma/common/stream_flags_encoder.c:35:23
	cmpl	$0, (%rdi)
.Ltmp1:
	.loc	0 35 6 is_stmt 0                # liblzma/common/stream_flags_encoder.c:35:6
	je	.LBB0_1
.Ltmp2:
.LBB0_3:                                # %return
	#DEBUG_VALUE: lzma_stream_header_encode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_header_encode:out <- $rsi
	.loc	0 53 1 is_stmt 1                # liblzma/common/stream_flags_encoder.c:53:1
	retq
.Ltmp3:
.LBB0_1:                                # %if.end
	#DEBUG_VALUE: lzma_stream_header_encode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_header_encode:out <- $rsi
	.loc	0 39 2                          # liblzma/common/stream_flags_encoder.c:39:2
	movq	lzma_header_magic@GOTPCREL(%rip), %rax
	movzwl	4(%rax), %ecx
	movw	%cx, 4(%rsi)
	movl	(%rax), %eax
	movl	%eax, (%rsi)
.Ltmp4:
	#DEBUG_VALUE: stream_flags_encode:options <- $rdi
	#DEBUG_VALUE: stream_flags_encode:out <- [DW_OP_plus_uconst 6, DW_OP_stack_value] $rsi
	.loc	0 0 2 is_stmt 0                 # liblzma/common/stream_flags_encoder.c:0:2
	movl	$11, %eax
.Ltmp5:
	.loc	0 19 37 is_stmt 1               # liblzma/common/stream_flags_encoder.c:19:37
	cmpl	$15, 16(%rdi)
.Ltmp6:
	.loc	0 19 6 is_stmt 0                # liblzma/common/stream_flags_encoder.c:19:6
	ja	.LBB0_3
.Ltmp7:
# %bb.2:                                # %if.end2
	#DEBUG_VALUE: lzma_stream_header_encode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_header_encode:out <- $rsi
	#DEBUG_VALUE: stream_flags_encode:options <- $rdi
	#DEBUG_VALUE: stream_flags_encode:out <- [DW_OP_plus_uconst 6, DW_OP_stack_value] $rsi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 42 39 is_stmt 1               # liblzma/common/stream_flags_encoder.c:42:39
	leaq	6(%rsi), %rax
.Ltmp8:
	#DEBUG_VALUE: stream_flags_encode:out <- $rax
	.loc	0 22 9                          # liblzma/common/stream_flags_encoder.c:22:9
	movb	$0, 6(%rsi)
	.loc	0 23 20                         # liblzma/common/stream_flags_encoder.c:23:20
	movzbl	16(%rdi), %ecx
	.loc	0 23 9 is_stmt 0                # liblzma/common/stream_flags_encoder.c:23:9
	movb	%cl, 7(%rsi)
	movq	%rsi, %rbx
.Ltmp9:
	#DEBUG_VALUE: lzma_stream_header_encode:out <- $rbx
	.loc	0 46 23 is_stmt 1               # liblzma/common/stream_flags_encoder.c:46:23
	movl	$2, %esi
	movq	%rax, %rdi
.Ltmp10:
	#DEBUG_VALUE: lzma_stream_header_encode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	xorl	%edx, %edx
	callq	lzma_crc32@PLT
.Ltmp11:
	movl	%eax, %ecx
.Ltmp12:
	#DEBUG_VALUE: lzma_stream_header_encode:crc <- $eax
	#DEBUG_VALUE: unaligned_write32le:num <- $eax
	#DEBUG_VALUE: unaligned_write32le:buf <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rbx
	.loc	0 0 23 is_stmt 0                # liblzma/common/stream_flags_encoder.c:0:23
	xorl	%eax, %eax
.Ltmp13:
	#DEBUG_VALUE: unaligned_write32le:num <- $ecx
	#DEBUG_VALUE: lzma_stream_header_encode:crc <- $ecx
	.file	3 "common" "tuklib_integer.h" md5 0x877bd6a1d04ec1170bc985c87ef412ed
	.loc	3 356 9 is_stmt 1               # common/tuklib_integer.h:356:9
	movl	%ecx, 8(%rbx)
	popq	%rbx
.Ltmp14:
	#DEBUG_VALUE: lzma_stream_header_encode:out <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 53 1                          # liblzma/common/stream_flags_encoder.c:53:1
	retq
.Ltmp15:
.Lfunc_end0:
	.size	lzma_stream_header_encode, .Lfunc_end0-lzma_stream_header_encode
	.cfi_endproc
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	6 "liblzma/api/lzma" "stream_flags.h" md5 0xd3814c86a389337e759db33a259f1072
	.file	7 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
                                        # -- End function
	.globl	lzma_stream_footer_encode       # -- Begin function lzma_stream_footer_encode
	.p2align	4, 0x90
	.type	lzma_stream_footer_encode,@function
lzma_stream_footer_encode:              # @lzma_stream_footer_encode
.Lfunc_begin1:
	.loc	0 58 0                          # liblzma/common/stream_flags_encoder.c:58:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_stream_footer_encode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_footer_encode:out <- $rsi
	movl	$8, %eax
.Ltmp16:
	.loc	0 62 23 prologue_end            # liblzma/common/stream_flags_encoder.c:62:23
	cmpl	$0, (%rdi)
.Ltmp17:
	.loc	0 62 6 is_stmt 0                # liblzma/common/stream_flags_encoder.c:62:6
	je	.LBB1_1
.Ltmp18:
.LBB1_4:                                # %return
	#DEBUG_VALUE: lzma_stream_footer_encode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_footer_encode:out <- $rsi
	.loc	0 86 1 is_stmt 1                # liblzma/common/stream_flags_encoder.c:86:1
	retq
.Ltmp19:
.LBB1_1:                                # %if.end
	#DEBUG_VALUE: lzma_stream_footer_encode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_footer_encode:out <- $rsi
	.loc	0 66 7                          # liblzma/common/stream_flags_encoder.c:66:7
	movq	8(%rdi), %rcx
.Ltmp20:
	#DEBUG_VALUE: is_backward_size_valid:options <- undef
	.file	9 "liblzma/common" "stream_flags_common.h" md5 0xcd1b47fc58dd9f8e4116d4803eca0476
	.loc	9 29 4                          # liblzma/common/stream_flags_common.h:29:4
	leaq	-4(%rcx), %rax
	movabsq	$17179869180, %rdx              # imm = 0x3FFFFFFFC
	cmpq	%rdx, %rax
	seta	%dl
	testb	$3, %cl
	setne	%r8b
	movl	$11, %eax
.Ltmp21:
	.loc	0 66 6                          # liblzma/common/stream_flags_encoder.c:66:6
	orb	%dl, %r8b
	jne	.LBB1_4
.Ltmp22:
# %bb.2:                                # %if.end2
	#DEBUG_VALUE: lzma_stream_footer_encode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_footer_encode:out <- $rsi
	.loc	0 69 54                         # liblzma/common/stream_flags_encoder.c:69:54
	shrq	$2, %rcx
	.loc	0 69 31 is_stmt 0               # liblzma/common/stream_flags_encoder.c:69:31
	decl	%ecx
.Ltmp23:
	#DEBUG_VALUE: unaligned_write32le:num <- $ecx
	#DEBUG_VALUE: unaligned_write32le:buf <- undef
	.loc	3 356 9 is_stmt 1               # common/tuklib_integer.h:356:9
	movl	%ecx, 4(%rsi)
.Ltmp24:
	#DEBUG_VALUE: stream_flags_encode:options <- $rdi
	#DEBUG_VALUE: stream_flags_encode:out <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rsi
	.loc	0 19 37                         # liblzma/common/stream_flags_encoder.c:19:37
	cmpl	$15, 16(%rdi)
.Ltmp25:
	.loc	0 19 6 is_stmt 0                # liblzma/common/stream_flags_encoder.c:19:6
	ja	.LBB1_4
.Ltmp26:
# %bb.3:                                # %if.end6
	#DEBUG_VALUE: lzma_stream_footer_encode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_footer_encode:out <- $rsi
	#DEBUG_VALUE: stream_flags_encode:options <- $rdi
	#DEBUG_VALUE: stream_flags_encode:out <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rsi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 0 0                           # liblzma/common/stream_flags_encoder.c:0:0
	leaq	4(%rsi), %rax
	#DEBUG_VALUE: stream_flags_encode:out <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rsi
.Ltmp27:
	.loc	0 22 9 is_stmt 1                # liblzma/common/stream_flags_encoder.c:22:9
	movb	$0, 8(%rsi)
	.loc	0 23 20                         # liblzma/common/stream_flags_encoder.c:23:20
	movzbl	16(%rdi), %ecx
	.loc	0 23 9 is_stmt 0                # liblzma/common/stream_flags_encoder.c:23:9
	movb	%cl, 9(%rsi)
	movq	%rsi, %rbx
.Ltmp28:
	#DEBUG_VALUE: stream_flags_encode:out <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $rbx
	#DEBUG_VALUE: lzma_stream_footer_encode:out <- $rbx
	.loc	0 76 23 is_stmt 1               # liblzma/common/stream_flags_encoder.c:76:23
	movl	$6, %esi
	movq	%rax, %rdi
.Ltmp29:
	#DEBUG_VALUE: lzma_stream_footer_encode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	xorl	%edx, %edx
	callq	lzma_crc32@PLT
.Ltmp30:
	movl	%eax, %ecx
.Ltmp31:
	#DEBUG_VALUE: lzma_stream_footer_encode:crc <- $eax
	#DEBUG_VALUE: unaligned_write32le:num <- $eax
	#DEBUG_VALUE: unaligned_write32le:buf <- $rbx
	.loc	0 0 23 is_stmt 0                # liblzma/common/stream_flags_encoder.c:0:23
	xorl	%eax, %eax
.Ltmp32:
	#DEBUG_VALUE: unaligned_write32le:num <- $ecx
	#DEBUG_VALUE: lzma_stream_footer_encode:crc <- $ecx
	.loc	3 353 9 is_stmt 1               # common/tuklib_integer.h:353:9
	movb	%cl, (%rbx)
	.loc	3 354 9                         # common/tuklib_integer.h:354:9
	movb	%ch, 1(%rbx)
	.loc	3 355 15                        # common/tuklib_integer.h:355:15
	movl	%ecx, %edx
	shrl	$16, %edx
	.loc	3 355 9 is_stmt 0               # common/tuklib_integer.h:355:9
	movb	%dl, 2(%rbx)
	.loc	3 356 15 is_stmt 1              # common/tuklib_integer.h:356:15
	shrl	$24, %ecx
.Ltmp33:
	.loc	3 356 9 is_stmt 0               # common/tuklib_integer.h:356:9
	movb	%cl, 3(%rbx)
.Ltmp34:
	.loc	0 82 2 is_stmt 1                # liblzma/common/stream_flags_encoder.c:82:2
	movq	lzma_footer_magic@GOTPCREL(%rip), %rcx
	movzwl	(%rcx), %ecx
	movw	%cx, 10(%rbx)
	popq	%rbx
.Ltmp35:
	#DEBUG_VALUE: lzma_stream_footer_encode:out <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 86 1                          # liblzma/common/stream_flags_encoder.c:86:1
	retq
.Ltmp36:
.Lfunc_end1:
	.size	lzma_stream_footer_encode, .Lfunc_end1-lzma_stream_footer_encode
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	9                               # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
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
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	6                               # 6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	8                               # 8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
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
	.byte	116                             # DW_AT_rnglists_base
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	23                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x2e7 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x2d DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x33:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x36:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x39:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3f:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x45:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4b:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4e:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x51:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x54:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x58:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x5c:0x15 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x64:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x67:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6a:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6d:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x71:0xc DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x79:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x7d:0x19 DW_TAG_subprogram
	.byte	21                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	150                             # DW_AT_type
                                        # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x85:0x8 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	154                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x8d:0x8 DW_TAG_formal_parameter
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	402                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x96:0x4 DW_TAG_base_type
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x9a:0x5 DW_TAG_pointer_type
	.long	159                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x9f:0x5 DW_TAG_const_type
	.long	164                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa4:0x8 DW_TAG_typedef
	.long	172                             # DW_AT_type
	.byte	51                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xac:0x9e DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb0:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb9:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	346                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xc2:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	374                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xcb:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	382                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xd4:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	382                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xdd:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	382                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xe6:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	382                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xef:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xf8:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	37                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x101:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	38                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x10a:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	39                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x113:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x11c:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	41                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x125:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	42                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x12e:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	390                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	43                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x137:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x140:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x14a:0x8 DW_TAG_typedef
	.long	338                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x152:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x15a:0x8 DW_TAG_typedef
	.long	354                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x162:0x8 DW_TAG_typedef
	.long	362                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x16a:0x8 DW_TAG_typedef
	.long	370                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x172:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x176:0x8 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x17e:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x186:0x8 DW_TAG_typedef
	.long	398                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x18e:0x4 DW_TAG_base_type
	.byte	40                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x192:0x5 DW_TAG_pointer_type
	.long	407                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x197:0x8 DW_TAG_typedef
	.long	415                             # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x19f:0x8 DW_TAG_typedef
	.long	398                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1a7:0x18 DW_TAG_subprogram
	.byte	55                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	13                              # Abbrev [13] 0x1ac:0x9 DW_TAG_formal_parameter
	.byte	56                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	402                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1b5:0x9 DW_TAG_formal_parameter
	.byte	57                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	351                             # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1bf:0x66 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	741                             # DW_AT_type
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x1ce:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	154                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1d7:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	402                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1e0:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	749                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1e9:0x17 DW_TAG_inlined_subroutine
	.long	125                             # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	42                              # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x1f2:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	133                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x1f9:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.long	141                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x200:0x1e DW_TAG_inlined_subroutine
	.long	423                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp14-.Ltmp13                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	49                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x20d:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	115
	.byte	8
	.byte	159
	.long	428                             # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x216:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	437                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x21e:0x6 DW_TAG_call_site
	.long	549                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x225:0x18 DW_TAG_subprogram
	.byte	58                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	330                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x22d:0x5 DW_TAG_formal_parameter
	.long	573                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x232:0x5 DW_TAG_formal_parameter
	.long	583                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x237:0x5 DW_TAG_formal_parameter
	.long	330                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x23d:0x5 DW_TAG_pointer_type
	.long	578                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x242:0x5 DW_TAG_const_type
	.long	407                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x247:0x8 DW_TAG_typedef
	.long	370                             # DW_AT_type
	.byte	59                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x24f:0x11 DW_TAG_subprogram
	.byte	60                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	150                             # DW_AT_type
                                        # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x257:0x8 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	154                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x260:0x85 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	741                             # DW_AT_type
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x26f:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	154                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x278:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	402                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x281:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	749                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x28a:0xd DW_TAG_inlined_subroutine
	.long	591                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp21-.Ltmp20                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	66                              # DW_AT_call_line
	.byte	7                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x297:0x15 DW_TAG_inlined_subroutine
	.long	423                             # DW_AT_abstract_origin
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp24-.Ltmp23                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	69                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x2a4:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.long	437                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x2ac:0x17 DW_TAG_inlined_subroutine
	.long	125                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	72                              # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x2b5:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	133                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x2bc:0x6 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.long	141                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x2c3:0x1b DW_TAG_inlined_subroutine
	.long	423                             # DW_AT_abstract_origin
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp34-.Ltmp32                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	79                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	18                              # Abbrev [18] 0x2d0:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	428                             # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x2d7:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.long	437                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x2de:0x6 DW_TAG_call_site
	.long	549                             # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x2e5:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	62                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2ed:0x5 DW_TAG_const_type
	.long	330                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	2                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	264                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/stream_flags_encoder.c" # string offset=105
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
	.asciz	"stream_flags_encode"           # string offset=470
.Linfo_string22:
	.asciz	"_Bool"                         # string offset=490
.Linfo_string23:
	.asciz	"options"                       # string offset=496
.Linfo_string24:
	.asciz	"version"                       # string offset=504
.Linfo_string25:
	.asciz	"__uint32_t"                    # string offset=512
.Linfo_string26:
	.asciz	"uint32_t"                      # string offset=523
.Linfo_string27:
	.asciz	"backward_size"                 # string offset=532
.Linfo_string28:
	.asciz	"unsigned long"                 # string offset=546
.Linfo_string29:
	.asciz	"__uint64_t"                    # string offset=560
.Linfo_string30:
	.asciz	"uint64_t"                      # string offset=571
.Linfo_string31:
	.asciz	"lzma_vli"                      # string offset=580
.Linfo_string32:
	.asciz	"check"                         # string offset=589
.Linfo_string33:
	.asciz	"lzma_check"                    # string offset=595
.Linfo_string34:
	.asciz	"reserved_enum1"                # string offset=606
.Linfo_string35:
	.asciz	"lzma_reserved_enum"            # string offset=621
.Linfo_string36:
	.asciz	"reserved_enum2"                # string offset=640
.Linfo_string37:
	.asciz	"reserved_enum3"                # string offset=655
.Linfo_string38:
	.asciz	"reserved_enum4"                # string offset=670
.Linfo_string39:
	.asciz	"reserved_bool1"                # string offset=685
.Linfo_string40:
	.asciz	"unsigned char"                 # string offset=700
.Linfo_string41:
	.asciz	"lzma_bool"                     # string offset=714
.Linfo_string42:
	.asciz	"reserved_bool2"                # string offset=724
.Linfo_string43:
	.asciz	"reserved_bool3"                # string offset=739
.Linfo_string44:
	.asciz	"reserved_bool4"                # string offset=754
.Linfo_string45:
	.asciz	"reserved_bool5"                # string offset=769
.Linfo_string46:
	.asciz	"reserved_bool6"                # string offset=784
.Linfo_string47:
	.asciz	"reserved_bool7"                # string offset=799
.Linfo_string48:
	.asciz	"reserved_bool8"                # string offset=814
.Linfo_string49:
	.asciz	"reserved_int1"                 # string offset=829
.Linfo_string50:
	.asciz	"reserved_int2"                 # string offset=843
.Linfo_string51:
	.asciz	"lzma_stream_flags"             # string offset=857
.Linfo_string52:
	.asciz	"out"                           # string offset=875
.Linfo_string53:
	.asciz	"__uint8_t"                     # string offset=879
.Linfo_string54:
	.asciz	"uint8_t"                       # string offset=889
.Linfo_string55:
	.asciz	"unaligned_write32le"           # string offset=897
.Linfo_string56:
	.asciz	"buf"                           # string offset=917
.Linfo_string57:
	.asciz	"num"                           # string offset=921
.Linfo_string58:
	.asciz	"lzma_crc32"                    # string offset=925
.Linfo_string59:
	.asciz	"size_t"                        # string offset=936
.Linfo_string60:
	.asciz	"is_backward_size_valid"        # string offset=943
.Linfo_string61:
	.asciz	"lzma_stream_header_encode"     # string offset=966
.Linfo_string62:
	.asciz	"lzma_ret"                      # string offset=992
.Linfo_string63:
	.asciz	"lzma_stream_footer_encode"     # string offset=1001
.Linfo_string64:
	.asciz	"crc"                           # string offset=1027
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp13
	.quad	.Ltmp11
	.quad	.Lfunc_begin1
	.quad	.Ltmp20
	.quad	.Ltmp23
	.quad	.Ltmp32
	.quad	.Ltmp30
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
