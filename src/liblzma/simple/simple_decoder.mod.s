	.text
	.file	"simple_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/simple/simple_decoder.c" md5 0x849564dda3db2d5ced571e5ecf1bfe34
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.globl	lzma_simple_props_decode        # -- Begin function lzma_simple_props_decode
	.p2align	4, 0x90
	.type	lzma_simple_props_decode,@function
lzma_simple_props_decode:               # @lzma_simple_props_decode
.Lfunc_begin0:
	.loc	0 19 0                          # liblzma/simple/simple_decoder.c:19:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_props_decode:options <- $rdi
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_props_decode:props <- $rdx
	#DEBUG_VALUE: lzma_simple_props_decode:props_size <- $rcx
	xorl	%eax, %eax
.Ltmp0:
	.loc	0 20 6 prologue_end             # liblzma/simple/simple_decoder.c:20:6
	testq	%rcx, %rcx
	je	.LBB0_3
.Ltmp1:
# %bb.1:                                # %entry
	#DEBUG_VALUE: lzma_simple_props_decode:options <- $rdi
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_props_decode:props <- $rdx
	#DEBUG_VALUE: lzma_simple_props_decode:props_size <- $rcx
	cmpq	$4, %rcx
	jne	.LBB0_2
.Ltmp2:
# %bb.4:                                # %if.end3
	#DEBUG_VALUE: lzma_simple_props_decode:options <- $rdi
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_props_decode:props <- $rdx
	#DEBUG_VALUE: lzma_simple_props_decode:props_size <- $rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
.Ltmp3:
	#DEBUG_VALUE: lzma_simple_props_decode:props <- $r15
	.loc	0 0 6 is_stmt 0                 # liblzma/simple/simple_decoder.c:0:6
	movq	%rdi, %r14
.Ltmp4:
	#DEBUG_VALUE: lzma_simple_props_decode:options <- $r14
	.loc	0 26 26 is_stmt 1               # liblzma/simple/simple_decoder.c:26:26
	movl	$4, %edi
	movq	%rsi, %rbx
	callq	lzma_alloc@PLT
.Ltmp5:
	#DEBUG_VALUE: lzma_simple_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_simple_props_decode:opt <- $rax
	.loc	0 28 10                         # liblzma/simple/simple_decoder.c:28:10
	testq	%rax, %rax
.Ltmp6:
	.loc	0 28 6 is_stmt 0                # liblzma/simple/simple_decoder.c:28:6
	je	.LBB0_5
.Ltmp7:
# %bb.6:                                # %if.end6
	#DEBUG_VALUE: lzma_simple_props_decode:options <- $r14
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_simple_props_decode:props <- $r15
	#DEBUG_VALUE: lzma_simple_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_simple_props_decode:opt <- $rax
	.loc	0 0 0                           # liblzma/simple/simple_decoder.c:0:0
	movq	%rax, %rdi
.Ltmp8:
	#DEBUG_VALUE: unaligned_read32le:buf <- $r15
	.file	4 "common" "tuklib_integer.h" md5 0x877bd6a1d04ec1170bc985c87ef412ed
	.loc	4 313 27 is_stmt 1              # common/tuklib_integer.h:313:27
	movl	(%r15), %eax
.Ltmp9:
	#DEBUG_VALUE: lzma_simple_props_decode:opt <- $rdi
	#DEBUG_VALUE: unaligned_read32le:num <- $eax
	.loc	0 31 20                         # liblzma/simple/simple_decoder.c:31:20
	movl	%eax, (%rdi)
.Ltmp10:
	.loc	0 34 24                         # liblzma/simple/simple_decoder.c:34:24
	testl	%eax, %eax
	movl	$0, %eax
.Ltmp11:
	.loc	0 34 6 is_stmt 0                # liblzma/simple/simple_decoder.c:34:6
	je	.LBB0_7
.Ltmp12:
# %bb.8:                                # %if.else
	#DEBUG_VALUE: lzma_simple_props_decode:options <- $r14
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_simple_props_decode:props <- $r15
	#DEBUG_VALUE: lzma_simple_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_simple_props_decode:opt <- $rdi
	.loc	0 37 12 is_stmt 1               # liblzma/simple/simple_decoder.c:37:12
	movq	%rdi, (%r14)
	popq	%rbx
.Ltmp13:
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	.loc	0 0 12 is_stmt 0                # liblzma/simple/simple_decoder.c:0:12
	popq	%r14
.Ltmp14:
	#DEBUG_VALUE: lzma_simple_props_decode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp15:
	#DEBUG_VALUE: lzma_simple_props_decode:props <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.loc	0 40 1 is_stmt 1                # liblzma/simple/simple_decoder.c:40:1
	retq
.Ltmp16:
.LBB0_2:                                # %if.then2
	#DEBUG_VALUE: lzma_simple_props_decode:options <- $rdi
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_props_decode:props <- $rdx
	#DEBUG_VALUE: lzma_simple_props_decode:props_size <- $rcx
	.loc	0 0 1 is_stmt 0                 # liblzma/simple/simple_decoder.c:0:1
	movl	$8, %eax
.Ltmp17:
.LBB0_3:                                # %return
	#DEBUG_VALUE: lzma_simple_props_decode:options <- $rdi
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_props_decode:props <- $rdx
	#DEBUG_VALUE: lzma_simple_props_decode:props_size <- $rcx
	.loc	0 40 1                          # liblzma/simple/simple_decoder.c:40:1
	retq
.Ltmp18:
.LBB0_5:
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	#DEBUG_VALUE: lzma_simple_props_decode:options <- $r14
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_simple_props_decode:props <- $r15
	#DEBUG_VALUE: lzma_simple_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_simple_props_decode:opt <- $rax
	.loc	0 0 1                           # liblzma/simple/simple_decoder.c:0:1
	movl	$5, %eax
.Ltmp19:
	popq	%rbx
.Ltmp20:
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp21:
	#DEBUG_VALUE: lzma_simple_props_decode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp22:
	#DEBUG_VALUE: lzma_simple_props_decode:props <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.loc	0 40 1                          # liblzma/simple/simple_decoder.c:40:1
	retq
.Ltmp23:
.LBB0_7:                                # %if.then10
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	#DEBUG_VALUE: lzma_simple_props_decode:options <- $r14
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- $rbx
	#DEBUG_VALUE: lzma_simple_props_decode:props <- $r15
	#DEBUG_VALUE: lzma_simple_props_decode:props_size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_simple_props_decode:opt <- $rdi
	.loc	0 35 3 is_stmt 1                # liblzma/simple/simple_decoder.c:35:3
	movq	%rbx, %rsi
	callq	lzma_free@PLT
.Ltmp24:
	.loc	0 0 3 is_stmt 0                 # liblzma/simple/simple_decoder.c:0:3
	xorl	%eax, %eax
	popq	%rbx
.Ltmp25:
	#DEBUG_VALUE: lzma_simple_props_decode:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp26:
	#DEBUG_VALUE: lzma_simple_props_decode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp27:
	#DEBUG_VALUE: lzma_simple_props_decode:props <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.loc	0 40 1 is_stmt 1                # liblzma/simple/simple_decoder.c:40:1
	retq
.Ltmp28:
.Lfunc_end0:
	.size	lzma_simple_props_decode, .Lfunc_end0-lzma_simple_props_decode
	.cfi_endproc
	.file	5 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	6 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
                                        # -- End function
	.file	7 "liblzma/api/lzma" "bcj.h" md5 0xa1035092336f34cf9afafbb05b1edd83
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	5                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x1a9 DW_TAG_compile_unit
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
	.byte	17                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x61:0x8 DW_TAG_typedef
	.long	84                              # DW_AT_type
	.byte	16                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x69:0x1c DW_TAG_subprogram
	.byte	18                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	89                              # DW_AT_type
                                        # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x72:0x9 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.long	133                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x7b:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	313                             # DW_AT_decl_line
	.long	89                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x85:0x5 DW_TAG_pointer_type
	.long	138                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x8a:0x5 DW_TAG_const_type
	.long	143                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x8f:0x8 DW_TAG_typedef
	.long	151                             # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x97:0x8 DW_TAG_typedef
	.long	159                             # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x9f:0x4 DW_TAG_base_type
	.byte	20                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0xa3:0x5e DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	396                             # DW_AT_type
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0xb2:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	404                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xbb:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	288                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xc4:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	133                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xcd:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	276                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0xd6:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	409                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0xdf:0x15 DW_TAG_inlined_subroutine
	.long	105                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp9-.Ltmp8                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	31                              # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	16                              # Abbrev [16] 0xec:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	114                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0xf4:0x6 DW_TAG_call_site
	.long	257                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	17                              # Abbrev [17] 0xfa:0x6 DW_TAG_call_site
	.long	381                             # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x101:0x13 DW_TAG_subprogram
	.byte	24                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	88                              # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x109:0x5 DW_TAG_formal_parameter
	.long	276                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x10e:0x5 DW_TAG_formal_parameter
	.long	288                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x114:0x8 DW_TAG_typedef
	.long	284                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x11c:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x120:0x5 DW_TAG_pointer_type
	.long	293                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x125:0x9 DW_TAG_typedef
	.long	302                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x12e:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x133:0xa DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	338                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x13d:0xa DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	364                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x147:0xa DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	88                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x152:0x5 DW_TAG_pointer_type
	.long	343                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x157:0x15 DW_TAG_subroutine_type
	.long	88                              # DW_AT_type
                                        # DW_AT_prototyped
	.byte	19                              # Abbrev [19] 0x15c:0x5 DW_TAG_formal_parameter
	.long	88                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x161:0x5 DW_TAG_formal_parameter
	.long	276                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x166:0x5 DW_TAG_formal_parameter
	.long	276                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x16c:0x5 DW_TAG_pointer_type
	.long	369                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x171:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	19                              # Abbrev [19] 0x172:0x5 DW_TAG_formal_parameter
	.long	88                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x177:0x5 DW_TAG_formal_parameter
	.long	88                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x17d:0xf DW_TAG_subprogram
	.byte	31                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x181:0x5 DW_TAG_formal_parameter
	.long	88                              # DW_AT_type
	.byte	19                              # Abbrev [19] 0x186:0x5 DW_TAG_formal_parameter
	.long	288                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x18c:0x8 DW_TAG_typedef
	.long	39                              # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x194:0x5 DW_TAG_pointer_type
	.long	88                              # DW_AT_type
	.byte	10                              # Abbrev [10] 0x199:0x5 DW_TAG_pointer_type
	.long	414                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x19e:0x8 DW_TAG_typedef
	.long	422                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x1a6:0xe DW_TAG_structure_type
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x1aa:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	89                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	168                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/simple/simple_decoder.c" # string offset=105
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
	.asciz	"__uint32_t"                    # string offset=377
.Linfo_string17:
	.asciz	"uint32_t"                      # string offset=388
.Linfo_string18:
	.asciz	"unaligned_read32le"            # string offset=397
.Linfo_string19:
	.asciz	"buf"                           # string offset=416
.Linfo_string20:
	.asciz	"unsigned char"                 # string offset=420
.Linfo_string21:
	.asciz	"__uint8_t"                     # string offset=434
.Linfo_string22:
	.asciz	"uint8_t"                       # string offset=444
.Linfo_string23:
	.asciz	"num"                           # string offset=452
.Linfo_string24:
	.asciz	"lzma_alloc"                    # string offset=456
.Linfo_string25:
	.asciz	"unsigned long"                 # string offset=467
.Linfo_string26:
	.asciz	"size_t"                        # string offset=481
.Linfo_string27:
	.asciz	"alloc"                         # string offset=488
.Linfo_string28:
	.asciz	"free"                          # string offset=494
.Linfo_string29:
	.asciz	"opaque"                        # string offset=499
.Linfo_string30:
	.asciz	"lzma_allocator"                # string offset=506
.Linfo_string31:
	.asciz	"lzma_free"                     # string offset=521
.Linfo_string32:
	.asciz	"lzma_simple_props_decode"      # string offset=531
.Linfo_string33:
	.asciz	"lzma_ret"                      # string offset=556
.Linfo_string34:
	.asciz	"options"                       # string offset=565
.Linfo_string35:
	.asciz	"allocator"                     # string offset=573
.Linfo_string36:
	.asciz	"props"                         # string offset=583
.Linfo_string37:
	.asciz	"props_size"                    # string offset=589
.Linfo_string38:
	.asciz	"opt"                           # string offset=600
.Linfo_string39:
	.asciz	"start_offset"                  # string offset=604
.Linfo_string40:
	.asciz	"lzma_options_bcj"              # string offset=617
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp8
	.quad	.Ltmp5
	.quad	.Ltmp24
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
