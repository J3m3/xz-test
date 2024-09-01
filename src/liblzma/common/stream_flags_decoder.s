	.text
	.file	"stream_flags_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/stream_flags_decoder.c" md5 0xa6d63bd83f97b1aa444916dbbbfa60b1
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.globl	lzma_stream_header_decode       # -- Begin function lzma_stream_header_decode
	.p2align	4, 0x90
	.type	lzma_stream_header_decode,@function
lzma_stream_header_decode:              # @lzma_stream_header_decode
.Lfunc_begin0:
	.loc	0 32 0                          # liblzma/common/stream_flags_decoder.c:32:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_stream_header_decode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_header_decode:in <- $rsi
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	.loc	0 34 6 prologue_end             # liblzma/common/stream_flags_decoder.c:34:6
	movl	(%rsi), %eax
	movq	lzma_header_magic@GOTPCREL(%rip), %rcx
	xorl	(%rcx), %eax
	movzwl	4(%rsi), %edx
	xorw	4(%rcx), %dx
	movzwl	%dx, %ecx
	orl	%eax, %ecx
	movl	$7, %eax
.Ltmp0:
	.loc	0 34 6 is_stmt 0                # liblzma/common/stream_flags_decoder.c:34:6
	je	.LBB0_1
.Ltmp1:
.LBB0_5:                                # %return
	#DEBUG_VALUE: lzma_stream_header_decode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_stream_header_decode:in <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 56 1 epilogue_begin is_stmt 1 # liblzma/common/stream_flags_decoder.c:56:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp2:
.LBB0_1:                                # %if.end
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_stream_header_decode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_header_decode:in <- $rsi
	.loc	0 0 1 is_stmt 0                 # liblzma/common/stream_flags_decoder.c:0:1
	movq	%rsi, %rbx
	movq	%rdi, %r14
	.loc	0 39 37 is_stmt 1               # liblzma/common/stream_flags_decoder.c:39:37
	leaq	6(%rsi), %r15
	.loc	0 39 23 is_stmt 0               # liblzma/common/stream_flags_decoder.c:39:23
	movl	$2, %esi
.Ltmp3:
	#DEBUG_VALUE: lzma_stream_header_decode:in <- $rbx
	movq	%r15, %rdi
.Ltmp4:
	#DEBUG_VALUE: lzma_stream_header_decode:options <- $r14
	xorl	%edx, %edx
	callq	lzma_crc32@PLT
.Ltmp5:
	movl	%eax, %ecx
.Ltmp6:
	#DEBUG_VALUE: lzma_stream_header_decode:crc <- $eax
	.loc	0 0 23                          # liblzma/common/stream_flags_decoder.c:0:23
	movl	$9, %eax
.Ltmp7:
	#DEBUG_VALUE: lzma_stream_header_decode:crc <- $ecx
	#DEBUG_VALUE: unaligned_read32le:num <- undef
	.loc	0 41 10 is_stmt 1               # liblzma/common/stream_flags_decoder.c:41:10
	cmpl	8(%rbx), %ecx
.Ltmp8:
	.loc	0 41 6 is_stmt 0                # liblzma/common/stream_flags_decoder.c:41:6
	jne	.LBB0_5
.Ltmp9:
# %bb.2:                                # %if.end7
	#DEBUG_VALUE: lzma_stream_header_decode:options <- $r14
	#DEBUG_VALUE: lzma_stream_header_decode:in <- $rbx
	#DEBUG_VALUE: lzma_stream_header_decode:crc <- $ecx
	#DEBUG_VALUE: stream_flags_decode:options <- $r14
	#DEBUG_VALUE: stream_flags_decode:in <- $r15
	.loc	0 0 6                           # liblzma/common/stream_flags_decoder.c:0:6
	movl	$8, %eax
.Ltmp10:
	.loc	0 20 12 is_stmt 1               # liblzma/common/stream_flags_decoder.c:20:12
	cmpb	$0, (%r15)
	.loc	0 20 20 is_stmt 0               # liblzma/common/stream_flags_decoder.c:20:20
	jne	.LBB0_5
.Ltmp11:
# %bb.3:                                # %lor.lhs.false.i
	#DEBUG_VALUE: lzma_stream_header_decode:options <- $r14
	#DEBUG_VALUE: lzma_stream_header_decode:in <- $rbx
	#DEBUG_VALUE: lzma_stream_header_decode:crc <- $ecx
	#DEBUG_VALUE: stream_flags_decode:options <- $r14
	#DEBUG_VALUE: stream_flags_decode:in <- $r15
	.loc	0 20 30                         # liblzma/common/stream_flags_decoder.c:20:30
	cmpb	$15, 7(%rbx)
.Ltmp12:
	.loc	0 20 6                          # liblzma/common/stream_flags_decoder.c:20:6
	ja	.LBB0_5
.Ltmp13:
# %bb.4:                                # %if.end11
	#DEBUG_VALUE: lzma_stream_header_decode:options <- $r14
	#DEBUG_VALUE: lzma_stream_header_decode:in <- $rbx
	#DEBUG_VALUE: lzma_stream_header_decode:crc <- $ecx
	#DEBUG_VALUE: stream_flags_decode:options <- $r14
	#DEBUG_VALUE: stream_flags_decode:in <- $r15
	.loc	0 23 19 is_stmt 1               # liblzma/common/stream_flags_decoder.c:23:19
	movl	$0, (%r14)
	movzbl	7(%rbx), %eax
	.loc	0 24 25                         # liblzma/common/stream_flags_decoder.c:24:25
	andl	$15, %eax
	.loc	0 24 17 is_stmt 0               # liblzma/common/stream_flags_decoder.c:24:17
	movl	%eax, 16(%r14)
.Ltmp14:
	.loc	0 53 25 is_stmt 1               # liblzma/common/stream_flags_decoder.c:53:25
	movq	$-1, 8(%r14)
	xorl	%eax, %eax
	.loc	0 56 1 epilogue_begin           # liblzma/common/stream_flags_decoder.c:56:1
	popq	%rbx
.Ltmp15:
	#DEBUG_VALUE: lzma_stream_header_decode:in <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp16:
	#DEBUG_VALUE: lzma_stream_header_decode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 8
	retq
.Ltmp18:
.Lfunc_end0:
	.size	lzma_stream_header_decode, .Lfunc_end0-lzma_stream_header_decode
	.cfi_endproc
	.file	5 "liblzma/api/lzma" "stream_flags.h" md5 0xd3814c86a389337e759db33a259f1072
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
                                        # -- End function
	.globl	lzma_stream_footer_decode       # -- Begin function lzma_stream_footer_decode
	.p2align	4, 0x90
	.type	lzma_stream_footer_decode,@function
lzma_stream_footer_decode:              # @lzma_stream_footer_decode
.Lfunc_begin1:
	.loc	0 61 0                          # liblzma/common/stream_flags_decoder.c:61:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_stream_footer_decode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_footer_decode:in <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	.loc	0 63 6 prologue_end             # liblzma/common/stream_flags_decoder.c:63:6
	movzwl	10(%rsi), %ecx
	movq	lzma_footer_magic@GOTPCREL(%rip), %rdx
	movl	$7, %eax
	cmpw	(%rdx), %cx
.Ltmp19:
	.loc	0 63 6 is_stmt 0                # liblzma/common/stream_flags_decoder.c:63:6
	je	.LBB1_1
.Ltmp20:
.LBB1_5:                                # %return
	#DEBUG_VALUE: lzma_stream_footer_decode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_stream_footer_decode:in <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 82 1 epilogue_begin is_stmt 1 # liblzma/common/stream_flags_decoder.c:82:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Ltmp21:
.LBB1_1:                                # %if.end
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_stream_footer_decode:options <- $rdi
	#DEBUG_VALUE: lzma_stream_footer_decode:in <- $rsi
	.loc	0 0 1 is_stmt 0                 # liblzma/common/stream_flags_decoder.c:0:1
	movq	%rsi, %r14
	movq	%rdi, %rbx
	.loc	0 68 37 is_stmt 1               # liblzma/common/stream_flags_decoder.c:68:37
	leaq	4(%rsi), %rdi
.Ltmp22:
	#DEBUG_VALUE: lzma_stream_footer_decode:options <- $rbx
	.loc	0 68 23 is_stmt 0               # liblzma/common/stream_flags_decoder.c:68:23
	movl	$6, %esi
.Ltmp23:
	#DEBUG_VALUE: lzma_stream_footer_decode:in <- $r14
	xorl	%edx, %edx
	callq	lzma_crc32@PLT
.Ltmp24:
	movl	%eax, %ecx
.Ltmp25:
	#DEBUG_VALUE: lzma_stream_footer_decode:crc <- $ecx
	.loc	0 0 23                          # liblzma/common/stream_flags_decoder.c:0:23
	movl	$9, %eax
.Ltmp26:
	#DEBUG_VALUE: unaligned_read32le:num <- undef
	.loc	0 70 10 is_stmt 1               # liblzma/common/stream_flags_decoder.c:70:10
	cmpl	(%r14), %ecx
.Ltmp27:
	.loc	0 70 6 is_stmt 0                # liblzma/common/stream_flags_decoder.c:70:6
	jne	.LBB1_5
.Ltmp28:
# %bb.2:                                # %if.end7
	#DEBUG_VALUE: lzma_stream_footer_decode:options <- $rbx
	#DEBUG_VALUE: lzma_stream_footer_decode:in <- $r14
	#DEBUG_VALUE: lzma_stream_footer_decode:crc <- $ecx
	#DEBUG_VALUE: stream_flags_decode:options <- $rbx
	#DEBUG_VALUE: stream_flags_decode:in <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $r14
	.loc	0 0 6                           # liblzma/common/stream_flags_decoder.c:0:6
	movl	$8, %eax
.Ltmp29:
	.loc	0 20 12 is_stmt 1               # liblzma/common/stream_flags_decoder.c:20:12
	cmpb	$0, 8(%r14)
	.loc	0 20 20 is_stmt 0               # liblzma/common/stream_flags_decoder.c:20:20
	jne	.LBB1_5
.Ltmp30:
# %bb.3:                                # %lor.lhs.false.i
	#DEBUG_VALUE: lzma_stream_footer_decode:options <- $rbx
	#DEBUG_VALUE: lzma_stream_footer_decode:in <- $r14
	#DEBUG_VALUE: lzma_stream_footer_decode:crc <- $ecx
	#DEBUG_VALUE: stream_flags_decode:options <- $rbx
	#DEBUG_VALUE: stream_flags_decode:in <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $r14
	.loc	0 20 30                         # liblzma/common/stream_flags_decoder.c:20:30
	cmpb	$15, 9(%r14)
.Ltmp31:
	.loc	0 20 6                          # liblzma/common/stream_flags_decoder.c:20:6
	ja	.LBB1_5
.Ltmp32:
# %bb.4:                                # %if.end11
	#DEBUG_VALUE: lzma_stream_footer_decode:options <- $rbx
	#DEBUG_VALUE: lzma_stream_footer_decode:in <- $r14
	#DEBUG_VALUE: lzma_stream_footer_decode:crc <- $ecx
	#DEBUG_VALUE: stream_flags_decode:options <- $rbx
	#DEBUG_VALUE: stream_flags_decode:in <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $r14
	.loc	0 23 19 is_stmt 1               # liblzma/common/stream_flags_decoder.c:23:19
	movl	$0, (%rbx)
	movzbl	9(%r14), %eax
	.loc	0 24 25                         # liblzma/common/stream_flags_decoder.c:24:25
	andl	$15, %eax
	.loc	0 24 17 is_stmt 0               # liblzma/common/stream_flags_decoder.c:24:17
	movl	%eax, 16(%rbx)
.Ltmp33:
	#DEBUG_VALUE: unaligned_read32le:buf <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $r14
	.file	8 "common" "tuklib_integer.h" md5 0x877bd6a1d04ec1170bc985c87ef412ed
	.loc	8 313 27 is_stmt 1              # common/tuklib_integer.h:313:27
	movl	4(%r14), %eax
.Ltmp34:
	#DEBUG_VALUE: unaligned_read32le:num <- undef
	.loc	0 79 56                         # liblzma/common/stream_flags_decoder.c:79:56
	leaq	4(,%rax,4), %rax
	.loc	0 79 25 is_stmt 0               # liblzma/common/stream_flags_decoder.c:79:25
	movq	%rax, 8(%rbx)
	xorl	%eax, %eax
	.loc	0 82 1 epilogue_begin is_stmt 1 # liblzma/common/stream_flags_decoder.c:82:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp35:
	#DEBUG_VALUE: lzma_stream_footer_decode:options <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp36:
	#DEBUG_VALUE: lzma_stream_footer_decode:in <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp37:
.Lfunc_end1:
	.size	lzma_stream_footer_decode, .Lfunc_end1-lzma_stream_footer_decode
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	6                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
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
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
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
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x294 DW_TAG_compile_unit
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
	.byte	2                               # Abbrev [2] 0x6d:0xc DW_TAG_enumeration_type
	.long	84                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x75:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x79:0x8 DW_TAG_typedef
	.long	129                             # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x81:0x8 DW_TAG_typedef
	.long	84                              # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x89:0x19 DW_TAG_subprogram
	.byte	23                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	162                             # DW_AT_type
                                        # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x91:0x8 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	166                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x99:0x8 DW_TAG_formal_parameter
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	393                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa2:0x4 DW_TAG_base_type
	.byte	24                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xa6:0x5 DW_TAG_pointer_type
	.long	171                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xab:0x8 DW_TAG_typedef
	.long	179                             # DW_AT_type
	.byte	51                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb3:0x9e DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb7:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	121                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xc0:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	337                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xc9:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xd2:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	373                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xdb:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	373                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xe4:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	373                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xed:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	373                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xf6:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xff:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	37                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x108:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	38                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x111:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	39                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x11a:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x123:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	41                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x12c:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	42                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x135:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	43                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x13e:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	121                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x147:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	121                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x151:0x8 DW_TAG_typedef
	.long	345                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x159:0x8 DW_TAG_typedef
	.long	353                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x161:0x8 DW_TAG_typedef
	.long	361                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x169:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x16d:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x175:0x8 DW_TAG_typedef
	.long	109                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x17d:0x8 DW_TAG_typedef
	.long	389                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x185:0x4 DW_TAG_base_type
	.byte	40                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x189:0x5 DW_TAG_pointer_type
	.long	398                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x18e:0x5 DW_TAG_const_type
	.long	403                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x193:0x8 DW_TAG_typedef
	.long	411                             # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x19b:0x8 DW_TAG_typedef
	.long	389                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1a3:0x4d DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	658                             # DW_AT_type
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x1b2:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	166                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1bb:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	393                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1c4:0x9 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	666                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1cd:0x1c DW_TAG_inlined_subroutine
	.long	137                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp14-.Ltmp10                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	46                              # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	16                              # Abbrev [16] 0x1da:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	145                             # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x1e1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	153                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x1e9:0x6 DW_TAG_call_site
	.long	496                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x1f0:0x18 DW_TAG_subprogram
	.byte	55                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	121                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x1f8:0x5 DW_TAG_formal_parameter
	.long	393                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x1fd:0x5 DW_TAG_formal_parameter
	.long	520                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x202:0x5 DW_TAG_formal_parameter
	.long	121                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x208:0x8 DW_TAG_typedef
	.long	361                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x210:0x1c DW_TAG_subprogram
	.byte	57                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	121                             # DW_AT_type
                                        # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x219:0x9 DW_TAG_formal_parameter
	.byte	58                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.long	393                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x222:0x9 DW_TAG_variable
	.byte	59                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	313                             # DW_AT_decl_line
	.long	121                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x22c:0x66 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	658                             # DW_AT_type
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x23b:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	166                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x244:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	393                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x24d:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	666                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x256:0x1e DW_TAG_inlined_subroutine
	.long	137                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp29                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	74                              # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	16                              # Abbrev [16] 0x263:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	145                             # DW_AT_abstract_origin
	.byte	16                              # Abbrev [16] 0x26a:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	126
	.byte	8
	.byte	159
	.long	153                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x274:0x17 DW_TAG_inlined_subroutine
	.long	528                             # DW_AT_abstract_origin
	.byte	5                               # DW_AT_low_pc
	.long	.Ltmp34-.Ltmp33                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	78                              # DW_AT_call_line
	.byte	27                              # DW_AT_call_column
	.byte	16                              # Abbrev [16] 0x281:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	126
	.byte	4
	.byte	159
	.long	537                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x28b:0x6 DW_TAG_call_site
	.long	496                             # DW_AT_call_origin
	.byte	6                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x292:0x8 DW_TAG_typedef
	.long	39                              # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x29a:0x5 DW_TAG_const_type
	.long	121                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	260                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/stream_flags_decoder.c" # string offset=105
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
	.asciz	"__uint32_t"                    # string offset=470
.Linfo_string22:
	.asciz	"uint32_t"                      # string offset=481
.Linfo_string23:
	.asciz	"stream_flags_decode"           # string offset=490
.Linfo_string24:
	.asciz	"_Bool"                         # string offset=510
.Linfo_string25:
	.asciz	"options"                       # string offset=516
.Linfo_string26:
	.asciz	"version"                       # string offset=524
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
	.asciz	"in"                            # string offset=875
.Linfo_string53:
	.asciz	"__uint8_t"                     # string offset=878
.Linfo_string54:
	.asciz	"uint8_t"                       # string offset=888
.Linfo_string55:
	.asciz	"lzma_crc32"                    # string offset=896
.Linfo_string56:
	.asciz	"size_t"                        # string offset=907
.Linfo_string57:
	.asciz	"unaligned_read32le"            # string offset=914
.Linfo_string58:
	.asciz	"buf"                           # string offset=933
.Linfo_string59:
	.asciz	"num"                           # string offset=937
.Linfo_string60:
	.asciz	"lzma_stream_header_decode"     # string offset=941
.Linfo_string61:
	.asciz	"lzma_ret"                      # string offset=967
.Linfo_string62:
	.asciz	"lzma_stream_footer_decode"     # string offset=976
.Linfo_string63:
	.asciz	"crc"                           # string offset=1002
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp10
	.quad	.Ltmp5
	.quad	.Lfunc_begin1
	.quad	.Ltmp29
	.quad	.Ltmp33
	.quad	.Ltmp24
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
