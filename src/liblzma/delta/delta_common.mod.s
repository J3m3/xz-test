	.text
	.file	"delta_common.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/delta/delta_common.c" md5 0x3f3bd7ade0eb539d460740f0c907babd
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "liblzma/api/lzma" "delta.h" md5 0x397cde14a8f4a544385c9c6ecc7e0cc9
	.file	4 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	7 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	8 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	9 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	10 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	11 "liblzma/delta" "delta_private.h" md5 0x41e9aeb6bf08fbe16153633c0856b3a7
	.globl	lzma_delta_coder_init           # -- Begin function lzma_delta_coder_init
	.p2align	4, 0x90
	.type	lzma_delta_coder_init,@function
lzma_delta_coder_init:                  # @lzma_delta_coder_init
.Lfunc_begin0:
	.loc	0 30 0                          # liblzma/delta/delta_common.c:30:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_delta_coder_init:next <- $rdi
	#DEBUG_VALUE: lzma_delta_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- $rdx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
.Ltmp0:
	.loc	0 32 18 prologue_end            # liblzma/delta/delta_common.c:32:18
	cmpq	$0, (%rdi)
.Ltmp1:
	.loc	0 32 6 is_stmt 0                # liblzma/delta/delta_common.c:32:6
	je	.LBB0_1
.Ltmp2:
# %bb.4:                                # %if.end9
	#DEBUG_VALUE: lzma_delta_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_delta_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- $rdx
	.loc	0 43 43 is_stmt 1               # liblzma/delta/delta_common.c:43:43
	movq	16(%rdx), %rcx
.Ltmp3:
	#DEBUG_VALUE: lzma_delta_coder_memusage:options <- $rcx
	#DEBUG_VALUE: lzma_delta_coder_memusage:opt <- $rcx
	.loc	0 0 43 is_stmt 0                # liblzma/delta/delta_common.c:0:43
	movl	$8, %eax
.Ltmp4:
	.loc	0 65 10 is_stmt 1               # liblzma/delta/delta_common.c:65:10
	testq	%rcx, %rcx
	.loc	0 65 18 is_stmt 0               # liblzma/delta/delta_common.c:65:18
	jne	.LBB0_5
.Ltmp5:
.LBB0_7:                                # %return
	#DEBUG_VALUE: lzma_delta_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_delta_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- $rdx
	.loc	0 57 1 epilogue_begin is_stmt 1 # liblzma/delta/delta_common.c:57:1
	popq	%rbx
.Ltmp6:
	#DEBUG_VALUE: lzma_delta_coder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp7:
.LBB0_1:                                # %if.then
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_delta_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_delta_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- $rdx
	.loc	0 0 1 is_stmt 0                 # liblzma/delta/delta_common.c:0:1
	movq	%rdx, %r14
.Ltmp8:
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- $r14
	.loc	0 33 17 is_stmt 1               # liblzma/delta/delta_common.c:33:17
	movl	$336, %edi                      # imm = 0x150
	movq	%rsi, %r15
	callq	lzma_alloc@PLT
.Ltmp9:
	#DEBUG_VALUE: lzma_delta_coder_init:allocator <- $r15
	.loc	0 33 15 is_stmt 0               # liblzma/delta/delta_common.c:33:15
	movq	%rax, (%rbx)
.Ltmp10:
	.loc	0 34 19 is_stmt 1               # liblzma/delta/delta_common.c:34:19
	testq	%rax, %rax
.Ltmp11:
	.loc	0 34 7 is_stmt 0                # liblzma/delta/delta_common.c:34:7
	je	.LBB0_2
.Ltmp12:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: lzma_delta_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_delta_coder_init:allocator <- $r15
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- $r14
	.loc	0 38 13 is_stmt 1               # liblzma/delta/delta_common.c:38:13
	movq	$delta_coder_end, 32(%rbx)
	.loc	0 39 47                         # liblzma/delta/delta_common.c:39:47
	movq	$0, (%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	%r14, %rdx
	movq	%r15, %rsi
.Ltmp13:
	.loc	0 43 43                         # liblzma/delta/delta_common.c:43:43
	movq	16(%rdx), %rcx
.Ltmp14:
	#DEBUG_VALUE: lzma_delta_coder_memusage:options <- undef
	#DEBUG_VALUE: lzma_delta_coder_memusage:opt <- undef
	.loc	0 0 43 is_stmt 0                # liblzma/delta/delta_common.c:0:43
	movl	$8, %eax
.Ltmp15:
	.loc	0 65 10 is_stmt 1               # liblzma/delta/delta_common.c:65:10
	testq	%rcx, %rcx
	.loc	0 65 18 is_stmt 0               # liblzma/delta/delta_common.c:65:18
	je	.LBB0_7
.Ltmp16:
.LBB0_5:                                # %lor.lhs.false.i
	#DEBUG_VALUE: lzma_delta_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_delta_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- $rdx
	.loc	0 65 31                         # liblzma/delta/delta_common.c:65:31
	cmpl	$0, (%rcx)
	.loc	0 66 4 is_stmt 1                # liblzma/delta/delta_common.c:66:4
	jne	.LBB0_7
.Ltmp17:
# %bb.6:                                # %lor.lhs.false2.i
	#DEBUG_VALUE: lzma_delta_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_delta_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- $rdx
	.loc	0 66 12 is_stmt 0               # liblzma/delta/delta_common.c:66:12
	movl	4(%rcx), %ecx
	.loc	0 67 4 is_stmt 1                # liblzma/delta/delta_common.c:67:4
	leal	-257(%rcx), %edi
	cmpl	$-256, %edi
	jb	.LBB0_7
.Ltmp18:
# %bb.8:                                # %if.end13
	#DEBUG_VALUE: lzma_delta_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_delta_coder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- $rdx
	#DEBUG_VALUE: lzma_delta_coder_init:opt <- undef
	.loc	0 48 31                         # liblzma/delta/delta_common.c:48:31
	movq	(%rbx), %rax
	.loc	0 48 48 is_stmt 0               # liblzma/delta/delta_common.c:48:48
	movq	%rcx, 64(%rax)
	.loc	0 51 31 is_stmt 1               # liblzma/delta/delta_common.c:51:31
	movq	(%rbx), %rax
	.loc	0 51 43 is_stmt 0               # liblzma/delta/delta_common.c:51:43
	movb	$0, 72(%rax)
	.loc	0 52 2 is_stmt 1                # liblzma/delta/delta_common.c:52:2
	movq	(%rbx), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 313(%rax)
	movups	%xmm0, 297(%rax)
	movups	%xmm0, 281(%rax)
	movups	%xmm0, 265(%rax)
	movups	%xmm0, 249(%rax)
	movups	%xmm0, 233(%rax)
	movups	%xmm0, 217(%rax)
	movups	%xmm0, 201(%rax)
	movups	%xmm0, 185(%rax)
	movups	%xmm0, 169(%rax)
	movups	%xmm0, 153(%rax)
	movups	%xmm0, 137(%rax)
	movups	%xmm0, 121(%rax)
	movups	%xmm0, 105(%rax)
	movups	%xmm0, 89(%rax)
	movups	%xmm0, 73(%rax)
	.loc	0 55 61                         # liblzma/delta/delta_common.c:55:61
	movq	(%rbx), %rdi
	.loc	0 56 23                         # liblzma/delta/delta_common.c:56:23
	addq	$24, %rdx
.Ltmp19:
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 55 9 epilogue_begin           # liblzma/delta/delta_common.c:55:9
	popq	%rbx
.Ltmp20:
	#DEBUG_VALUE: lzma_delta_coder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.Ltmp21:
	jmp	lzma_next_filter_init@PLT       # TAILCALL
.Ltmp22:
.LBB0_2:
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_delta_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_delta_coder_init:allocator <- $r15
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- $r14
	.loc	0 0 9 is_stmt 0                 # liblzma/delta/delta_common.c:0:9
	movl	$5, %eax
	.loc	0 57 1 epilogue_begin is_stmt 1 # liblzma/delta/delta_common.c:57:1
	popq	%rbx
.Ltmp23:
	#DEBUG_VALUE: lzma_delta_coder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp24:
	#DEBUG_VALUE: lzma_delta_coder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp25:
	#DEBUG_VALUE: lzma_delta_coder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp26:
.Lfunc_end0:
	.size	lzma_delta_coder_init, .Lfunc_end0-lzma_delta_coder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function delta_coder_end
	.type	delta_coder_end,@function
delta_coder_end:                        # @delta_coder_end
.Lfunc_begin1:
	.loc	0 19 0                          # liblzma/delta/delta_common.c:19:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: delta_coder_end:pcoder <- $rdi
	#DEBUG_VALUE: delta_coder_end:allocator <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
.Ltmp27:
	#DEBUG_VALUE: delta_coder_end:coder <- $rdi
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp28:
	.loc	0 21 2 prologue_end             # liblzma/delta/delta_common.c:21:2
	callq	lzma_next_end@PLT
.Ltmp29:
	#DEBUG_VALUE: delta_coder_end:allocator <- $rbx
	#DEBUG_VALUE: delta_coder_end:coder <- $r14
	#DEBUG_VALUE: delta_coder_end:pcoder <- $r14
	.loc	0 22 2                          # liblzma/delta/delta_common.c:22:2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	.loc	0 22 2 epilogue_begin is_stmt 0 # liblzma/delta/delta_common.c:22:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp30:
	#DEBUG_VALUE: delta_coder_end:allocator <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp31:
	#DEBUG_VALUE: delta_coder_end:coder <- $rdi
	#DEBUG_VALUE: delta_coder_end:pcoder <- $rdi
	.cfi_def_cfa_offset 8
	jmp	lzma_free@PLT                   # TAILCALL
.Ltmp32:
.Lfunc_end1:
	.size	delta_coder_end, .Lfunc_end1-delta_coder_end
	.cfi_endproc
                                        # -- End function
	.globl	lzma_delta_coder_memusage       # -- Begin function lzma_delta_coder_memusage
	.p2align	4, 0x90
	.type	lzma_delta_coder_memusage,@function
lzma_delta_coder_memusage:              # @lzma_delta_coder_memusage
.Lfunc_begin2:
	.loc	0 62 0 is_stmt 1                # liblzma/delta/delta_common.c:62:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_delta_coder_memusage:options <- $rdi
	#DEBUG_VALUE: lzma_delta_coder_memusage:opt <- $rdi
	movq	$-1, %rax
.Ltmp33:
	.loc	0 65 10 prologue_end            # liblzma/delta/delta_common.c:65:10
	testq	%rdi, %rdi
	.loc	0 65 18 is_stmt 0               # liblzma/delta/delta_common.c:65:18
	je	.LBB2_3
.Ltmp34:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: lzma_delta_coder_memusage:options <- $rdi
	#DEBUG_VALUE: lzma_delta_coder_memusage:opt <- $rdi
	.loc	0 65 31                         # liblzma/delta/delta_common.c:65:31
	cmpl	$0, (%rdi)
	.loc	0 66 4 is_stmt 1                # liblzma/delta/delta_common.c:66:4
	je	.LBB2_2
.Ltmp35:
.LBB2_3:                                # %cleanup
	#DEBUG_VALUE: lzma_delta_coder_memusage:options <- $rdi
	#DEBUG_VALUE: lzma_delta_coder_memusage:opt <- $rdi
	.loc	0 71 1                          # liblzma/delta/delta_common.c:71:1
	retq
.Ltmp36:
.LBB2_2:                                # %lor.lhs.false2
	#DEBUG_VALUE: lzma_delta_coder_memusage:options <- $rdi
	#DEBUG_VALUE: lzma_delta_coder_memusage:opt <- $rdi
	.loc	0 0 1 is_stmt 0                 # liblzma/delta/delta_common.c:0:1
	movl	$-257, %ecx                     # imm = 0xFEFF
.Ltmp37:
	.loc	0 67 4 is_stmt 1                # liblzma/delta/delta_common.c:67:4
	addl	4(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	$-256, %ecx
	sbbq	%rax, %rax
	orq	$336, %rax                      # imm = 0x150
.Ltmp38:
	.loc	0 71 1                          # liblzma/delta/delta_common.c:71:1
	retq
.Ltmp39:
.Lfunc_end2:
	.size	lzma_delta_coder_memusage, .Lfunc_end2-lzma_delta_coder_memusage
	.cfi_endproc
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
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
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
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
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
	.byte	27                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
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
	.byte	1                               # Abbrev [1] 0xc:0x4bc DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x64:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x67:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6a:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6d:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x71:0x15 DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x79:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7c:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7f:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x82:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x86:0xc DW_TAG_enumeration_type
	.long	88                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x8e:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x92:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x93:0x5 DW_TAG_pointer_type
	.long	152                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x98:0x2b DW_TAG_structure_type
	.byte	61                              # DW_AT_name
	.short	336                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9e:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	195                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xa7:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xb0:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xb9:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	730                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	73                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xc3:0x8 DW_TAG_typedef
	.long	203                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xcb:0x4e DW_TAG_structure_type
	.byte	55                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xd0:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	281                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xd9:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xe2:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	318                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xeb:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	326                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xf4:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	563                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xfd:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x106:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	622                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x10f:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	658                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x119:0x5 DW_TAG_pointer_type
	.long	286                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x11e:0x4 DW_TAG_typedef
	.byte	27                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x122:0x8 DW_TAG_typedef
	.long	298                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x12a:0x8 DW_TAG_typedef
	.long	306                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x132:0x8 DW_TAG_typedef
	.long	314                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x13a:0x4 DW_TAG_base_type
	.byte	29                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x13e:0x8 DW_TAG_typedef
	.long	314                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x146:0x8 DW_TAG_typedef
	.long	334                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x14e:0x5 DW_TAG_pointer_type
	.long	339                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x153:0x33 DW_TAG_subroutine_type
	.long	390                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x158:0x5 DW_TAG_formal_parameter
	.long	281                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x15d:0x5 DW_TAG_formal_parameter
	.long	398                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x162:0x5 DW_TAG_formal_parameter
	.long	499                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x167:0x5 DW_TAG_formal_parameter
	.long	534                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x16c:0x5 DW_TAG_formal_parameter
	.long	474                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x171:0x5 DW_TAG_formal_parameter
	.long	544                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x176:0x5 DW_TAG_formal_parameter
	.long	534                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x17b:0x5 DW_TAG_formal_parameter
	.long	474                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x180:0x5 DW_TAG_formal_parameter
	.long	554                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x186:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x18e:0x5 DW_TAG_pointer_type
	.long	403                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x193:0x9 DW_TAG_typedef
	.long	412                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x19c:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x1a1:0xa DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	448                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x1ab:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x1b5:0xa DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1c0:0x5 DW_TAG_pointer_type
	.long	453                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1c5:0x15 DW_TAG_subroutine_type
	.long	146                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x1ca:0x5 DW_TAG_formal_parameter
	.long	146                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1cf:0x5 DW_TAG_formal_parameter
	.long	474                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1d4:0x5 DW_TAG_formal_parameter
	.long	474                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1da:0x8 DW_TAG_typedef
	.long	314                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x1e2:0x5 DW_TAG_pointer_type
	.long	487                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1e7:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x1e8:0x5 DW_TAG_formal_parameter
	.long	146                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1ed:0x5 DW_TAG_formal_parameter
	.long	146                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x1f3:0x5 DW_TAG_restrict_type
	.long	504                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1f8:0x5 DW_TAG_pointer_type
	.long	509                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x1fd:0x5 DW_TAG_const_type
	.long	514                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x202:0x8 DW_TAG_typedef
	.long	522                             # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x20a:0x8 DW_TAG_typedef
	.long	530                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x212:0x4 DW_TAG_base_type
	.byte	42                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x216:0x5 DW_TAG_restrict_type
	.long	539                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x21b:0x5 DW_TAG_pointer_type
	.long	474                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x220:0x5 DW_TAG_restrict_type
	.long	549                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x225:0x5 DW_TAG_pointer_type
	.long	514                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x22a:0x9 DW_TAG_typedef
	.long	92                              # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x233:0x8 DW_TAG_typedef
	.long	571                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x23b:0x5 DW_TAG_pointer_type
	.long	576                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x240:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x241:0x5 DW_TAG_formal_parameter
	.long	281                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x246:0x5 DW_TAG_formal_parameter
	.long	398                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x24c:0x5 DW_TAG_pointer_type
	.long	593                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x251:0xb DW_TAG_subroutine_type
	.long	604                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x256:0x5 DW_TAG_formal_parameter
	.long	612                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x25c:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x264:0x5 DW_TAG_pointer_type
	.long	617                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x269:0x5 DW_TAG_const_type
	.long	286                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x26e:0x5 DW_TAG_pointer_type
	.long	627                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x273:0x1a DW_TAG_subroutine_type
	.long	390                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x278:0x5 DW_TAG_formal_parameter
	.long	281                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x27d:0x5 DW_TAG_formal_parameter
	.long	653                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x282:0x5 DW_TAG_formal_parameter
	.long	653                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x287:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x28d:0x5 DW_TAG_pointer_type
	.long	298                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x292:0x5 DW_TAG_pointer_type
	.long	663                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x297:0x1a DW_TAG_subroutine_type
	.long	390                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x29c:0x5 DW_TAG_formal_parameter
	.long	281                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2a1:0x5 DW_TAG_formal_parameter
	.long	398                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2a6:0x5 DW_TAG_formal_parameter
	.long	689                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2ab:0x5 DW_TAG_formal_parameter
	.long	689                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2b1:0x5 DW_TAG_pointer_type
	.long	694                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x2b6:0x5 DW_TAG_const_type
	.long	699                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2bb:0x8 DW_TAG_typedef
	.long	707                             # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x2c3:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2c7:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2d0:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x2da:0xd DW_TAG_array_type
	.long	514                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x2df:0x7 DW_TAG_subrange_type
	.long	743                             # DW_AT_type
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x2e7:0x4 DW_TAG_base_type
	.byte	60                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	24                              # Abbrev [24] 0x2eb:0x19 DW_TAG_subprogram
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	298                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x2f3:0x8 DW_TAG_formal_parameter
	.byte	53                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x2fb:0x8 DW_TAG_variable
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	778                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x304:0x5 DW_TAG_pointer_type
	.long	777                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x309:0x1 DW_TAG_const_type
	.byte	6                               # Abbrev [6] 0x30a:0x5 DW_TAG_pointer_type
	.long	783                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x30f:0x5 DW_TAG_const_type
	.long	788                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x314:0x8 DW_TAG_typedef
	.long	796                             # DW_AT_type
	.byte	75                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x31c:0x4d DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x320:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	873                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x329:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x332:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x33b:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x344:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x34d:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x356:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x35f:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x369:0x8 DW_TAG_typedef
	.long	134                             # DW_AT_type
	.byte	65                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x371:0x8 DW_TAG_typedef
	.long	889                             # DW_AT_type
	.byte	68                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x379:0x8 DW_TAG_typedef
	.long	88                              # DW_AT_type
	.byte	67                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	28                              # Abbrev [28] 0x381:0x55 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	390                             # DW_AT_type
                                        # DW_AT_external
	.byte	29                              # Abbrev [29] 0x390:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	25                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	1025                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x399:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	398                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x3a2:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	1030                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x3ab:0x8 DW_TAG_variable
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	778                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x3b3:0x16 DW_TAG_inlined_subroutine
	.long	747                             # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	43                              # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x3bc:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.long	755                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x3c2:0x6 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.long	763                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x3c9:0x6 DW_TAG_call_site
	.long	982                             # DW_AT_call_origin
	.byte	1                               # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0x3cf:0x6 DW_TAG_call_site
	.long	1001                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	2                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x3d6:0x13 DW_TAG_subprogram
	.byte	76                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	146                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x3de:0x5 DW_TAG_formal_parameter
	.long	474                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3e3:0x5 DW_TAG_formal_parameter
	.long	398                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x3e9:0x18 DW_TAG_subprogram
	.byte	77                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	390                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x3f1:0x5 DW_TAG_formal_parameter
	.long	1025                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3f6:0x5 DW_TAG_formal_parameter
	.long	398                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3fb:0x5 DW_TAG_formal_parameter
	.long	1030                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x401:0x5 DW_TAG_pointer_type
	.long	195                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x406:0x5 DW_TAG_pointer_type
	.long	1035                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x40b:0x5 DW_TAG_const_type
	.long	1040                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x410:0x8 DW_TAG_typedef
	.long	1048                            # DW_AT_type
	.byte	80                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x418:0x21 DW_TAG_structure_type
	.byte	79                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x41d:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x426:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	1081                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x42f:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x439:0x8 DW_TAG_typedef
	.long	1089                            # DW_AT_type
	.byte	78                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x441:0x5 DW_TAG_pointer_type
	.long	1094                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x446:0x15 DW_TAG_subroutine_type
	.long	390                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x44b:0x5 DW_TAG_formal_parameter
	.long	1025                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x450:0x5 DW_TAG_formal_parameter
	.long	398                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x455:0x5 DW_TAG_formal_parameter
	.long	1030                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x45b:0x33 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	29                              # Abbrev [29] 0x466:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	281                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x46f:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	398                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x478:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	147                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x481:0x6 DW_TAG_call_site
	.long	1166                            # DW_AT_call_origin
	.byte	4                               # DW_AT_call_return_pc
	.byte	34                              # Abbrev [34] 0x487:0x6 DW_TAG_call_site
	.long	1181                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	5                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x48e:0xf DW_TAG_subprogram
	.byte	81                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x492:0x5 DW_TAG_formal_parameter
	.long	1025                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x497:0x5 DW_TAG_formal_parameter
	.long	398                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x49d:0xf DW_TAG_subprogram
	.byte	82                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x4a1:0x5 DW_TAG_formal_parameter
	.long	146                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x4a6:0x5 DW_TAG_formal_parameter
	.long	398                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x4ac:0x1b DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	747                             # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x4b8:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	755                             # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x4bf:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.long	763                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	1                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	356                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/delta/delta_common.c"  # string offset=105
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
	.asciz	"LZMA_RUN"                      # string offset=374
.Linfo_string17:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=383
.Linfo_string18:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=399
.Linfo_string19:
	.asciz	"LZMA_FINISH"                   # string offset=415
.Linfo_string20:
	.asciz	"LZMA_CHECK_NONE"               # string offset=427
.Linfo_string21:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=443
.Linfo_string22:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=460
.Linfo_string23:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=477
.Linfo_string24:
	.asciz	"LZMA_DELTA_TYPE_BYTE"          # string offset=495
.Linfo_string25:
	.asciz	"next"                          # string offset=516
.Linfo_string26:
	.asciz	"coder"                         # string offset=521
.Linfo_string27:
	.asciz	"lzma_coder"                    # string offset=527
.Linfo_string28:
	.asciz	"id"                            # string offset=538
.Linfo_string29:
	.asciz	"unsigned long"                 # string offset=541
.Linfo_string30:
	.asciz	"__uint64_t"                    # string offset=555
.Linfo_string31:
	.asciz	"uint64_t"                      # string offset=566
.Linfo_string32:
	.asciz	"lzma_vli"                      # string offset=575
.Linfo_string33:
	.asciz	"init"                          # string offset=584
.Linfo_string34:
	.asciz	"uintptr_t"                     # string offset=589
.Linfo_string35:
	.asciz	"code"                          # string offset=599
.Linfo_string36:
	.asciz	"lzma_ret"                      # string offset=604
.Linfo_string37:
	.asciz	"alloc"                         # string offset=613
.Linfo_string38:
	.asciz	"size_t"                        # string offset=619
.Linfo_string39:
	.asciz	"free"                          # string offset=626
.Linfo_string40:
	.asciz	"opaque"                        # string offset=631
.Linfo_string41:
	.asciz	"lzma_allocator"                # string offset=638
.Linfo_string42:
	.asciz	"unsigned char"                 # string offset=653
.Linfo_string43:
	.asciz	"__uint8_t"                     # string offset=667
.Linfo_string44:
	.asciz	"uint8_t"                       # string offset=677
.Linfo_string45:
	.asciz	"lzma_action"                   # string offset=685
.Linfo_string46:
	.asciz	"lzma_code_function"            # string offset=697
.Linfo_string47:
	.asciz	"end"                           # string offset=716
.Linfo_string48:
	.asciz	"lzma_end_function"             # string offset=720
.Linfo_string49:
	.asciz	"get_check"                     # string offset=738
.Linfo_string50:
	.asciz	"lzma_check"                    # string offset=748
.Linfo_string51:
	.asciz	"memconfig"                     # string offset=759
.Linfo_string52:
	.asciz	"update"                        # string offset=769
.Linfo_string53:
	.asciz	"options"                       # string offset=776
.Linfo_string54:
	.asciz	"lzma_filter"                   # string offset=784
.Linfo_string55:
	.asciz	"lzma_next_coder_s"             # string offset=796
.Linfo_string56:
	.asciz	"lzma_next_coder"               # string offset=814
.Linfo_string57:
	.asciz	"distance"                      # string offset=830
.Linfo_string58:
	.asciz	"pos"                           # string offset=839
.Linfo_string59:
	.asciz	"history"                       # string offset=843
.Linfo_string60:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=851
.Linfo_string61:
	.asciz	"lzma_coder_s"                  # string offset=871
.Linfo_string62:
	.asciz	"lzma_delta_coder_memusage"     # string offset=884
.Linfo_string63:
	.asciz	"opt"                           # string offset=910
.Linfo_string64:
	.asciz	"type"                          # string offset=914
.Linfo_string65:
	.asciz	"lzma_delta_type"               # string offset=919
.Linfo_string66:
	.asciz	"dist"                          # string offset=935
.Linfo_string67:
	.asciz	"__uint32_t"                    # string offset=940
.Linfo_string68:
	.asciz	"uint32_t"                      # string offset=951
.Linfo_string69:
	.asciz	"reserved_int1"                 # string offset=960
.Linfo_string70:
	.asciz	"reserved_int2"                 # string offset=974
.Linfo_string71:
	.asciz	"reserved_int3"                 # string offset=988
.Linfo_string72:
	.asciz	"reserved_int4"                 # string offset=1002
.Linfo_string73:
	.asciz	"reserved_ptr1"                 # string offset=1016
.Linfo_string74:
	.asciz	"reserved_ptr2"                 # string offset=1030
.Linfo_string75:
	.asciz	"lzma_options_delta"            # string offset=1044
.Linfo_string76:
	.asciz	"lzma_alloc"                    # string offset=1063
.Linfo_string77:
	.asciz	"lzma_next_filter_init"         # string offset=1074
.Linfo_string78:
	.asciz	"lzma_init_function"            # string offset=1096
.Linfo_string79:
	.asciz	"lzma_filter_info_s"            # string offset=1115
.Linfo_string80:
	.asciz	"lzma_filter_info"              # string offset=1134
.Linfo_string81:
	.asciz	"lzma_next_end"                 # string offset=1151
.Linfo_string82:
	.asciz	"lzma_free"                     # string offset=1165
.Linfo_string83:
	.asciz	"lzma_delta_coder_init"         # string offset=1175
.Linfo_string84:
	.asciz	"delta_coder_end"               # string offset=1197
.Linfo_string85:
	.asciz	"allocator"                     # string offset=1213
.Linfo_string86:
	.asciz	"filters"                       # string offset=1223
.Linfo_string87:
	.asciz	"pcoder"                        # string offset=1231
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp9
	.quad	.Ltmp21
	.quad	.Lfunc_begin1
	.quad	.Ltmp29
	.quad	.Ltmp31
	.quad	.Lfunc_begin2
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
