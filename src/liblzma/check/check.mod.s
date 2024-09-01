	.text
	.file	"check.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/check/check.c" md5 0x8fa3c3e33fe92c31a91a9f5b9e5120ff
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	4 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.globl	lzma_check_is_supported         # -- Begin function lzma_check_is_supported
	.p2align	4, 0x90
	.type	lzma_check_is_supported,@function
lzma_check_is_supported:                # @lzma_check_is_supported
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_check_is_supported:type <- $edi
	.loc	0 19 27 prologue_end            # liblzma/check/check.c:19:27
	cmpl	$15, %edi
.Ltmp0:
	.loc	0 19 6 is_stmt 0                # liblzma/check/check.c:19:6
	jbe	.LBB0_2
.Ltmp1:
# %bb.1:
	#DEBUG_VALUE: lzma_check_is_supported:type <- $edi
	.loc	0 0 6                           # liblzma/check/check.c:0:6
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	.loc	0 60 1 is_stmt 1                # liblzma/check/check.c:60:1
	retq
.Ltmp2:
.LBB0_2:                                # %if.end
	#DEBUG_VALUE: lzma_check_is_supported:type <- $edi
	.loc	0 59 9                          # liblzma/check/check.c:59:9
	movl	%edi, %eax
	movzbl	lzma_check_is_supported.available_checks(%rax), %eax
                                        # kill: def $al killed $al killed $eax
	.loc	0 60 1                          # liblzma/check/check.c:60:1
	retq
.Ltmp3:
.Lfunc_end0:
	.size	lzma_check_is_supported, .Lfunc_end0-lzma_check_is_supported
	.cfi_endproc
                                        # -- End function
	.globl	lzma_check_size                 # -- Begin function lzma_check_size
	.p2align	4, 0x90
	.type	lzma_check_size,@function
lzma_check_size:                        # @lzma_check_size
.Lfunc_begin1:
	.loc	0 65 0                          # liblzma/check/check.c:65:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_check_size:type <- $edi
	movl	$-1, %eax
.Ltmp4:
	.loc	0 66 27 prologue_end            # liblzma/check/check.c:66:27
	cmpl	$15, %edi
.Ltmp5:
	.loc	0 66 6 is_stmt 0                # liblzma/check/check.c:66:6
	ja	.LBB1_2
.Ltmp6:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: lzma_check_size:type <- $edi
	.loc	0 79 9 is_stmt 1                # liblzma/check/check.c:79:9
	movl	%edi, %eax
	movzbl	lzma_check_size.check_sizes(%rax), %eax
.Ltmp7:
.LBB1_2:                                # %return
	#DEBUG_VALUE: lzma_check_size:type <- $edi
	.loc	0 80 1                          # liblzma/check/check.c:80:1
	retq
.Ltmp8:
.Lfunc_end1:
	.size	lzma_check_size, .Lfunc_end1-lzma_check_size
	.cfi_endproc
                                        # -- End function
	.globl	lzma_check_init                 # -- Begin function lzma_check_init
	.p2align	4, 0x90
	.type	lzma_check_init,@function
lzma_check_init:                        # @lzma_check_init
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_check_init:check <- $rdi
	#DEBUG_VALUE: lzma_check_init:type <- $esi
	.loc	0 86 2 prologue_end             # liblzma/check/check.c:86:2
	cmpl	$10, %esi
.Ltmp9:
	je	lzma_sha256_init@PLT            # TAILCALL
.Ltmp10:
# %bb.1:                                # %entry
	#DEBUG_VALUE: lzma_check_init:check <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_check_init:type <- [DW_OP_LLVM_entry_value 1] $esi
	cmpl	$4, %esi
	je	.LBB2_4
.Ltmp11:
# %bb.2:                                # %entry
	#DEBUG_VALUE: lzma_check_init:check <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_check_init:type <- [DW_OP_LLVM_entry_value 1] $esi
	cmpl	$1, %esi
	jne	.LBB2_5
.Ltmp12:
# %bb.3:                                # %sw.bb
	#DEBUG_VALUE: lzma_check_init:check <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_check_init:type <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 92 22                         # liblzma/check/check.c:92:22
	movl	$0, 64(%rdi)
.Ltmp13:
	.loc	0 112 2                         # liblzma/check/check.c:112:2
	retq
.Ltmp14:
.LBB2_4:                                # %sw.bb1
	#DEBUG_VALUE: lzma_check_init:check <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_check_init:type <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 98 22                         # liblzma/check/check.c:98:22
	movq	$0, 64(%rdi)
.Ltmp15:
.LBB2_5:                                # %sw.epilog
	#DEBUG_VALUE: lzma_check_init:check <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_check_init:type <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 112 2                         # liblzma/check/check.c:112:2
	retq
.Ltmp16:
.Lfunc_end2:
	.size	lzma_check_init, .Lfunc_end2-lzma_check_init
	.cfi_endproc
	.file	5 "liblzma/check" "check.h" md5 0x938220df6e0ab33115ef85b0d8c70c5b
                                        # -- End function
	.globl	lzma_check_update               # -- Begin function lzma_check_update
	.p2align	4, 0x90
	.type	lzma_check_update,@function
lzma_check_update:                      # @lzma_check_update
.Lfunc_begin3:
	.loc	0 119 0                         # liblzma/check/check.c:119:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_check_update:check <- $rdi
	#DEBUG_VALUE: lzma_check_update:type <- $esi
	#DEBUG_VALUE: lzma_check_update:buf <- $rdx
	#DEBUG_VALUE: lzma_check_update:size <- $rcx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp17:
	.loc	0 120 2 prologue_end            # liblzma/check/check.c:120:2
	cmpl	$10, %esi
	je	.LBB3_4
.Ltmp18:
# %bb.1:                                # %entry
	#DEBUG_VALUE: lzma_check_update:check <- $rbx
	#DEBUG_VALUE: lzma_check_update:type <- $esi
	#DEBUG_VALUE: lzma_check_update:buf <- $rdx
	#DEBUG_VALUE: lzma_check_update:size <- $rcx
	cmpl	$4, %esi
	je	.LBB3_5
.Ltmp19:
# %bb.2:                                # %entry
	#DEBUG_VALUE: lzma_check_update:check <- $rbx
	#DEBUG_VALUE: lzma_check_update:type <- $esi
	#DEBUG_VALUE: lzma_check_update:buf <- $rdx
	#DEBUG_VALUE: lzma_check_update:size <- $rcx
	cmpl	$1, %esi
	jne	.LBB3_6
.Ltmp20:
# %bb.3:                                # %sw.bb
	#DEBUG_VALUE: lzma_check_update:check <- $rbx
	#DEBUG_VALUE: lzma_check_update:type <- $esi
	#DEBUG_VALUE: lzma_check_update:buf <- $rdx
	#DEBUG_VALUE: lzma_check_update:size <- $rcx
	.loc	0 123 59                        # liblzma/check/check.c:123:59
	movl	64(%rbx), %eax
	.loc	0 123 24 is_stmt 0              # liblzma/check/check.c:123:24
	movq	%rdx, %rdi
	movq	%rcx, %rsi
.Ltmp21:
	#DEBUG_VALUE: lzma_check_update:type <- [DW_OP_LLVM_entry_value 1] $esi
	movl	%eax, %edx
.Ltmp22:
	#DEBUG_VALUE: lzma_check_update:buf <- $rdi
	callq	lzma_crc32@PLT
.Ltmp23:
	#DEBUG_VALUE: lzma_check_update:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_check_update:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 123 22                        # liblzma/check/check.c:123:22
	movl	%eax, 64(%rbx)
.Ltmp24:
	.loc	0 143 2 epilogue_begin is_stmt 1 # liblzma/check/check.c:143:2
	popq	%rbx
.Ltmp25:
	#DEBUG_VALUE: lzma_check_update:check <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp26:
.LBB3_5:                                # %sw.bb2
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: lzma_check_update:check <- $rbx
	#DEBUG_VALUE: lzma_check_update:type <- $esi
	#DEBUG_VALUE: lzma_check_update:buf <- $rdx
	#DEBUG_VALUE: lzma_check_update:size <- $rcx
	.loc	0 129 59                        # liblzma/check/check.c:129:59
	movq	64(%rbx), %rax
	.loc	0 129 24 is_stmt 0              # liblzma/check/check.c:129:24
	movq	%rdx, %rdi
	movq	%rcx, %rsi
.Ltmp27:
	#DEBUG_VALUE: lzma_check_update:type <- [DW_OP_LLVM_entry_value 1] $esi
	movq	%rax, %rdx
.Ltmp28:
	#DEBUG_VALUE: lzma_check_update:buf <- $rdi
	callq	lzma_crc64@PLT
.Ltmp29:
	#DEBUG_VALUE: lzma_check_update:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: lzma_check_update:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 129 22                        # liblzma/check/check.c:129:22
	movq	%rax, 64(%rbx)
.Ltmp30:
.LBB3_6:                                # %sw.epilog
	#DEBUG_VALUE: lzma_check_update:check <- $rbx
	#DEBUG_VALUE: lzma_check_update:type <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: lzma_check_update:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_check_update:size <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 143 2 epilogue_begin is_stmt 1 # liblzma/check/check.c:143:2
	popq	%rbx
.Ltmp31:
	#DEBUG_VALUE: lzma_check_update:check <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp32:
.LBB3_4:                                # %sw.bb6
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: lzma_check_update:check <- $rbx
	#DEBUG_VALUE: lzma_check_update:type <- $esi
	#DEBUG_VALUE: lzma_check_update:buf <- $rdx
	#DEBUG_VALUE: lzma_check_update:size <- $rcx
	.loc	0 135 3                         # liblzma/check/check.c:135:3
	movq	%rdx, %rdi
	movq	%rcx, %rsi
.Ltmp33:
	#DEBUG_VALUE: lzma_check_update:type <- [DW_OP_LLVM_entry_value 1] $esi
	movq	%rbx, %rdx
.Ltmp34:
	#DEBUG_VALUE: lzma_check_update:buf <- $rdi
	.loc	0 135 3 epilogue_begin is_stmt 0 # liblzma/check/check.c:135:3
	popq	%rbx
.Ltmp35:
	#DEBUG_VALUE: lzma_check_update:check <- $rdx
	.cfi_def_cfa_offset 8
	jmp	lzma_sha256_update@PLT          # TAILCALL
.Ltmp36:
.Lfunc_end3:
	.size	lzma_check_update, .Lfunc_end3-lzma_check_update
	.cfi_endproc
	.file	6 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
                                        # -- End function
	.globl	lzma_check_finish               # -- Begin function lzma_check_finish
	.p2align	4, 0x90
	.type	lzma_check_finish,@function
lzma_check_finish:                      # @lzma_check_finish
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_check_finish:check <- $rdi
	#DEBUG_VALUE: lzma_check_finish:type <- $esi
	.loc	0 150 2 prologue_end is_stmt 1  # liblzma/check/check.c:150:2
	cmpl	$10, %esi
.Ltmp37:
	je	lzma_sha256_finish@PLT          # TAILCALL
.Ltmp38:
# %bb.1:                                # %entry
	#DEBUG_VALUE: lzma_check_finish:check <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_check_finish:type <- [DW_OP_LLVM_entry_value 1] $esi
	cmpl	$4, %esi
	je	.LBB4_4
.Ltmp39:
# %bb.2:                                # %entry
	#DEBUG_VALUE: lzma_check_finish:check <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_check_finish:type <- [DW_OP_LLVM_entry_value 1] $esi
	cmpl	$1, %esi
	jne	.LBB4_5
.Ltmp40:
# %bb.3:                                # %sw.bb
	#DEBUG_VALUE: lzma_check_finish:check <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_check_finish:type <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 153 26                        # liblzma/check/check.c:153:26
	movl	64(%rdi), %eax
	.loc	0 153 24 is_stmt 0              # liblzma/check/check.c:153:24
	movl	%eax, (%rdi)
.Ltmp41:
	.loc	0 173 2 is_stmt 1               # liblzma/check/check.c:173:2
	retq
.Ltmp42:
.LBB4_4:                                # %sw.bb1
	#DEBUG_VALUE: lzma_check_finish:check <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_check_finish:type <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 159 26                        # liblzma/check/check.c:159:26
	movq	64(%rdi), %rax
	.loc	0 159 24 is_stmt 0              # liblzma/check/check.c:159:24
	movq	%rax, (%rdi)
.Ltmp43:
.LBB4_5:                                # %sw.epilog
	#DEBUG_VALUE: lzma_check_finish:check <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: lzma_check_finish:type <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 173 2 is_stmt 1               # liblzma/check/check.c:173:2
	retq
.Ltmp44:
.Lfunc_end4:
	.size	lzma_check_finish, .Lfunc_end4-lzma_check_finish
	.cfi_endproc
                                        # -- End function
	.type	lzma_check_is_supported.available_checks,@object # @lzma_check_is_supported.available_checks
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
lzma_check_is_supported.available_checks:
	.asciz	"\001\001\000\000\001\000\000\000\000\000\001\000\000\000\000"
	.size	lzma_check_is_supported.available_checks, 16

	.type	lzma_check_size.check_sizes,@object # @lzma_check_size.check_sizes
	.p2align	4, 0x0
lzma_check_size.check_sizes:
	.ascii	"\000\004\004\004\b\b\b\020\020\020   @@@"
	.size	lzma_check_size.check_sizes, 16

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
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
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
	.byte	3                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x287 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0x25 DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	93                              # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x36:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	76                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x41:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	650                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x4c:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x51:0x6 DW_TAG_subrange_type
	.long	105                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x58:0x5 DW_TAG_const_type
	.long	93                              # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5d:0x8 DW_TAG_typedef
	.long	101                             # DW_AT_type
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x65:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x69:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	2                               # Abbrev [2] 0x6d:0x25 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	204                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x7c:0xb DW_TAG_variable
	.byte	7                               # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	4                               # Abbrev [4] 0x87:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.long	650                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x92:0xc DW_TAG_array_type
	.long	158                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x97:0x6 DW_TAG_subrange_type
	.long	105                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x9e:0x5 DW_TAG_const_type
	.long	163                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xa3:0x8 DW_TAG_typedef
	.long	171                             # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xab:0x8 DW_TAG_typedef
	.long	101                             # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb3:0x15 DW_TAG_enumeration_type
	.long	200                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xbb:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xbe:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xc1:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	12                              # Abbrev [12] 0xc4:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xc8:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xcc:0x8 DW_TAG_typedef
	.long	212                             # DW_AT_type
	.byte	16                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xd4:0x8 DW_TAG_typedef
	.long	200                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xdc:0x8 DW_TAG_typedef
	.long	228                             # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xe4:0x8 DW_TAG_typedef
	.long	236                             # DW_AT_type
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xec:0x4 DW_TAG_base_type
	.byte	17                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0xf0:0x24 DW_TAG_subprogram
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0xfb:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	286                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x104:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	650                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x10d:0x6 DW_TAG_call_site
	.long	276                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	5                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x114:0xa DW_TAG_subprogram
	.byte	20                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0x118:0x5 DW_TAG_formal_parameter
	.long	286                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x11e:0x5 DW_TAG_pointer_type
	.long	291                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x123:0x8 DW_TAG_typedef
	.long	299                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x12b:0x6e DW_TAG_structure_type
	.byte	104                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x12f:0x9 DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	312                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x138:0x20 DW_TAG_union_type
	.byte	64                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x13c:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	409                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x145:0x9 DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	421                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x14e:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	433                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x158:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	353                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x161:0x37 DW_TAG_union_type
	.byte	40                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x165:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	204                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x16e:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x177:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	384                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x180:0x17 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x184:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	445                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x18d:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	220                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x199:0xc DW_TAG_array_type
	.long	163                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x19e:0x6 DW_TAG_subrange_type
	.long	105                             # DW_AT_type
	.byte	64                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1a5:0xc DW_TAG_array_type
	.long	204                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1aa:0x6 DW_TAG_subrange_type
	.long	105                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1b1:0xc DW_TAG_array_type
	.long	220                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1b6:0x6 DW_TAG_subrange_type
	.long	105                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1bd:0xc DW_TAG_array_type
	.long	204                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1c2:0x6 DW_TAG_subrange_type
	.long	105                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1c9:0x42 DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x1d4:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.long	286                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1dd:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.long	650                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1e6:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	44                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.long	547                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1ef:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.long	552                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x1f8:0x6 DW_TAG_call_site
	.long	523                             # DW_AT_call_origin
	.byte	7                               # DW_AT_call_return_pc
	.byte	22                              # Abbrev [22] 0x1fe:0x6 DW_TAG_call_site
	.long	560                             # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	15                              # Abbrev [15] 0x204:0x6 DW_TAG_call_site
	.long	584                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	9                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x20b:0x18 DW_TAG_subprogram
	.byte	31                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	204                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0x213:0x5 DW_TAG_formal_parameter
	.long	547                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x218:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x21d:0x5 DW_TAG_formal_parameter
	.long	204                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x223:0x5 DW_TAG_pointer_type
	.long	158                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x228:0x8 DW_TAG_typedef
	.long	236                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x230:0x18 DW_TAG_subprogram
	.byte	33                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	220                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0x238:0x5 DW_TAG_formal_parameter
	.long	547                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x23d:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x242:0x5 DW_TAG_formal_parameter
	.long	220                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x248:0x14 DW_TAG_subprogram
	.byte	34                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0x24c:0x5 DW_TAG_formal_parameter
	.long	547                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x251:0x5 DW_TAG_formal_parameter
	.long	552                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x256:0x5 DW_TAG_formal_parameter
	.long	286                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x25c:0x24 DW_TAG_subprogram
	.byte	10                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	40                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	14                              # Abbrev [14] 0x267:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	286                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x270:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	650                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x279:0x6 DW_TAG_call_site
	.long	640                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	11                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x280:0xa DW_TAG_subprogram
	.byte	35                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0x284:0x5 DW_TAG_formal_parameter
	.long	286                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x28a:0x8 DW_TAG_typedef
	.long	179                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	184                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/check/check.c"         # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=127
.Linfo_string3:
	.asciz	"available_checks"              # string offset=159
.Linfo_string4:
	.asciz	"unsigned char"                 # string offset=176
.Linfo_string5:
	.asciz	"lzma_bool"                     # string offset=190
.Linfo_string6:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=200
.Linfo_string7:
	.asciz	"check_sizes"                   # string offset=220
.Linfo_string8:
	.asciz	"__uint8_t"                     # string offset=232
.Linfo_string9:
	.asciz	"uint8_t"                       # string offset=242
.Linfo_string10:
	.asciz	"unsigned int"                  # string offset=250
.Linfo_string11:
	.asciz	"LZMA_CHECK_NONE"               # string offset=263
.Linfo_string12:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=279
.Linfo_string13:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=296
.Linfo_string14:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=313
.Linfo_string15:
	.asciz	"__uint32_t"                    # string offset=331
.Linfo_string16:
	.asciz	"uint32_t"                      # string offset=342
.Linfo_string17:
	.asciz	"unsigned long"                 # string offset=351
.Linfo_string18:
	.asciz	"__uint64_t"                    # string offset=365
.Linfo_string19:
	.asciz	"uint64_t"                      # string offset=376
.Linfo_string20:
	.asciz	"lzma_sha256_init"              # string offset=385
.Linfo_string21:
	.asciz	"buffer"                        # string offset=402
.Linfo_string22:
	.asciz	"u8"                            # string offset=409
.Linfo_string23:
	.asciz	"u32"                           # string offset=412
.Linfo_string24:
	.asciz	"u64"                           # string offset=416
.Linfo_string25:
	.asciz	"state"                         # string offset=420
.Linfo_string26:
	.asciz	"crc32"                         # string offset=426
.Linfo_string27:
	.asciz	"crc64"                         # string offset=432
.Linfo_string28:
	.asciz	"sha256"                        # string offset=438
.Linfo_string29:
	.asciz	"size"                          # string offset=445
.Linfo_string30:
	.asciz	"lzma_check_state"              # string offset=450
.Linfo_string31:
	.asciz	"lzma_crc32"                    # string offset=467
.Linfo_string32:
	.asciz	"size_t"                        # string offset=478
.Linfo_string33:
	.asciz	"lzma_crc64"                    # string offset=485
.Linfo_string34:
	.asciz	"lzma_sha256_update"            # string offset=496
.Linfo_string35:
	.asciz	"lzma_sha256_finish"            # string offset=515
.Linfo_string36:
	.asciz	"lzma_check_is_supported"       # string offset=534
.Linfo_string37:
	.asciz	"lzma_check_size"               # string offset=558
.Linfo_string38:
	.asciz	"lzma_check_init"               # string offset=574
.Linfo_string39:
	.asciz	"lzma_check_update"             # string offset=590
.Linfo_string40:
	.asciz	"lzma_check_finish"             # string offset=608
.Linfo_string41:
	.asciz	"type"                          # string offset=626
.Linfo_string42:
	.asciz	"lzma_check"                    # string offset=631
.Linfo_string43:
	.asciz	"check"                         # string offset=642
.Linfo_string44:
	.asciz	"buf"                           # string offset=648
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	lzma_check_is_supported.available_checks
	.quad	lzma_check_size.check_sizes
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Ltmp9
	.quad	.Lfunc_begin3
	.quad	.Ltmp23
	.quad	.Ltmp29
	.quad	.Ltmp35
	.quad	.Lfunc_begin4
	.quad	.Ltmp37
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
