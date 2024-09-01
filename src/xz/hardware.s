	.text
	.file	"hardware.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "xz/hardware.c" md5 0x5cbf5725e64d60ca855b01ad121851ce
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	3 "xz" "coder.h" md5 0x17fcfb290997745d98f9605d60a11c50
	.file	4 "xz" "main.h" md5 0xf54f82fff34a105635379e91892f4bd0
	.file	5 "xz" "message.h" md5 0x46ce4fae4ea23be71658f9b2e1a5aef3
	.globl	hardware_threadlimit_set        # -- Begin function hardware_threadlimit_set
	.p2align	4, 0x90
	.type	hardware_threadlimit_set,@function
hardware_threadlimit_set:               # @hardware_threadlimit_set
.Lfunc_begin0:
	.loc	0 33 0                          # xz/hardware.c:33:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: hardware_threadlimit_set:new_threadlimit <- $edi
	cmpl	$1, %edi
	adcl	$0, %edi
.Ltmp0:
	#DEBUG_VALUE: hardware_threadlimit_set:new_threadlimit <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	0 0 0 is_stmt 0                 # xz/hardware.c:0:0
	movl	%edi, threadlimit(%rip)
.Ltmp1:
	.loc	0 45 2 prologue_end is_stmt 1   # xz/hardware.c:45:2
	retq
.Ltmp2:
.Lfunc_end0:
	.size	hardware_threadlimit_set, .Lfunc_end0-hardware_threadlimit_set
	.cfi_endproc
                                        # -- End function
	.globl	hardware_threadlimit_get        # -- Begin function hardware_threadlimit_get
	.p2align	4, 0x90
	.type	hardware_threadlimit_get,@function
hardware_threadlimit_get:               # @hardware_threadlimit_get
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 52 9 prologue_end             # xz/hardware.c:52:9
	movl	threadlimit(%rip), %eax
	.loc	0 52 2 is_stmt 0                # xz/hardware.c:52:2
	retq
.Ltmp3:
.Lfunc_end1:
	.size	hardware_threadlimit_get, .Lfunc_end1-hardware_threadlimit_get
	.cfi_endproc
                                        # -- End function
	.globl	hardware_memlimit_set           # -- Begin function hardware_memlimit_set
	.p2align	4, 0x90
	.type	hardware_memlimit_set,@function
hardware_memlimit_set:                  # @hardware_memlimit_set
.Lfunc_begin2:
	.loc	0 59 0 is_stmt 1                # xz/hardware.c:59:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- $rdi
	#DEBUG_VALUE: hardware_memlimit_set:set_compress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: hardware_memlimit_set:set_decompress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: hardware_memlimit_set:is_percentage <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ecx
	movl	%edx, %r8d
.Ltmp4:
	.loc	0 60 6 prologue_end             # xz/hardware.c:60:6
	testl	%ecx, %ecx
	jne	.LBB2_1
.Ltmp5:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- $rdi
	#DEBUG_VALUE: hardware_memlimit_set:set_compress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: hardware_memlimit_set:set_decompress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: hardware_memlimit_set:is_percentage <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ecx
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- $rdi
	.loc	0 66 6                          # xz/hardware.c:66:6
	testb	%sil, %sil
	jne	.LBB2_3
.Ltmp6:
.LBB2_4:                                # %if.end6
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- $rdi
	#DEBUG_VALUE: hardware_memlimit_set:set_compress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: hardware_memlimit_set:set_decompress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	.loc	0 69 6                          # xz/hardware.c:69:6
	testb	%r8b, %r8b
	jne	.LBB2_5
.Ltmp7:
.LBB2_6:                                # %if.end9
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- $rdi
	#DEBUG_VALUE: hardware_memlimit_set:set_compress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: hardware_memlimit_set:set_decompress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	.loc	0 72 2                          # xz/hardware.c:72:2
	retq
.Ltmp8:
.LBB2_1:                                # %if.then
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- $rdi
	#DEBUG_VALUE: hardware_memlimit_set:set_compress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: hardware_memlimit_set:set_decompress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: hardware_memlimit_set:is_percentage <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ecx
	.loc	0 0 2 is_stmt 0                 # xz/hardware.c:0:2
	xorl	%ecx, %ecx
.Ltmp9:
	.loc	0 63 43 is_stmt 1               # xz/hardware.c:63:43
	cmpb	$0, total_ram(%rip)
	movl	$943718400, %eax                # imm = 0x38400000
	cmoveq	%rcx, %rax
	.loc	0 63 18 is_stmt 0               # xz/hardware.c:63:18
	movl	%edi, %ecx
	.loc	0 63 41                         # xz/hardware.c:63:41
	imulq	%rcx, %rax
	movabsq	$2951479051793528259, %rcx      # imm = 0x28F5C28F5C28F5C3
	.loc	0 63 53                         # xz/hardware.c:63:53
	mulq	%rcx
.Ltmp10:
	#DEBUG_VALUE: hardware_memlimit_set:set_decompress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	movq	%rdx, %rdi
.Ltmp11:
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- [DW_OP_LLVM_entry_value 1] $rdi
	shrq	$4, %rdi
.Ltmp12:
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- $rdi
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- $rdi
	.loc	0 66 6 is_stmt 1                # xz/hardware.c:66:6
	testb	%sil, %sil
	je	.LBB2_4
.Ltmp13:
.LBB2_3:                                # %if.then5
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- $rdi
	#DEBUG_VALUE: hardware_memlimit_set:set_compress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: hardware_memlimit_set:set_decompress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	.loc	0 67 21                         # xz/hardware.c:67:21
	movq	%rdi, memlimit_compress(%rip)
.Ltmp14:
	.loc	0 69 6                          # xz/hardware.c:69:6
	testb	%r8b, %r8b
	je	.LBB2_6
.Ltmp15:
.LBB2_5:                                # %if.then8
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- $rdi
	#DEBUG_VALUE: hardware_memlimit_set:set_compress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $esi
	#DEBUG_VALUE: hardware_memlimit_set:set_decompress <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $r8d
	.loc	0 70 23                         # xz/hardware.c:70:23
	movq	%rdi, memlimit_decompress(%rip)
.Ltmp16:
	.loc	0 72 2                          # xz/hardware.c:72:2
	retq
.Ltmp17:
.Lfunc_end2:
	.size	hardware_memlimit_set, .Lfunc_end2-hardware_memlimit_set
	.cfi_endproc
                                        # -- End function
	.globl	hardware_memlimit_get           # -- Begin function hardware_memlimit_get
	.p2align	4, 0x90
	.type	hardware_memlimit_get,@function
hardware_memlimit_get:                  # @hardware_memlimit_get
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: hardware_memlimit_get:mode <- $edi
	.loc	0 88 33 prologue_end            # xz/hardware.c:88:33
	testl	%edi, %edi
	.loc	0 88 28 is_stmt 0               # xz/hardware.c:88:28
	movl	$memlimit_compress, %eax
	movl	$memlimit_decompress, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rcx
.Ltmp18:
	#DEBUG_VALUE: hardware_memlimit_get:memlimit <- $rcx
	.loc	0 90 9 is_stmt 1                # xz/hardware.c:90:9
	xorl	%eax, %eax
	cmpq	$1, %rcx
	sbbq	%rax, %rax
	orq	%rcx, %rax
	.loc	0 90 2 is_stmt 0                # xz/hardware.c:90:2
	retq
.Ltmp19:
.Lfunc_end3:
	.size	hardware_memlimit_get, .Lfunc_end3-hardware_memlimit_get
	.cfi_endproc
                                        # -- End function
	.globl	hardware_memlimit_show          # -- Begin function hardware_memlimit_show
	.p2align	4, 0x90
	.type	hardware_memlimit_show,@function
hardware_memlimit_show:                 # @hardware_memlimit_show
.Lfunc_begin4:
	.loc	0 116 0 is_stmt 1               # xz/hardware.c:116:0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp20:
	.loc	0 132 34 prologue_end           # xz/hardware.c:132:34
	callq	message_verbosity_get@PLT
.Ltmp21:
	.loc	0 132 58 is_stmt 0              # xz/hardware.c:132:58
	xorl	%edx, %edx
	testl	%eax, %eax
	setne	%dl
	.loc	0 132 2                         # xz/hardware.c:132:2
	xorl	%edi, %edi
	movl	$1, %esi
	.loc	0 132 2 epilogue_begin          # xz/hardware.c:132:2
	popq	%rax
	.cfi_def_cfa_offset 8
.Ltmp22:
	jmp	tuklib_exit@PLT                 # TAILCALL
.Ltmp23:
.Lfunc_end4:
	.size	hardware_memlimit_show, .Lfunc_end4-hardware_memlimit_show
	.cfi_endproc
	.file	6 "common" "tuklib_exit.h" md5 0x09538a5ffe493e3e268cd00199828e96
                                        # -- End function
	.globl	hardware_init                   # -- Begin function hardware_init
	.p2align	4, 0x90
	.type	hardware_init,@function
hardware_init:                          # @hardware_init
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 145 13 prologue_end is_stmt 1 # xz/hardware.c:145:13
	movb	$1, total_ram(%rip)
.Ltmp24:
	#DEBUG_VALUE: hardware_memlimit_set:set_compress <- [DW_OP_stack_value] 1
	#DEBUG_VALUE: hardware_memlimit_set:set_decompress <- [DW_OP_stack_value] 1
	#DEBUG_VALUE: hardware_memlimit_set:is_percentage <- [DW_OP_stack_value] 0
	#DEBUG_VALUE: hardware_memlimit_set:new_memlimit <- 0
	.loc	0 67 21                         # xz/hardware.c:67:21
	movq	$0, memlimit_compress(%rip)
.Ltmp25:
	.loc	0 70 23                         # xz/hardware.c:70:23
	movq	$0, memlimit_decompress(%rip)
.Ltmp26:
	#DEBUG_VALUE: hardware_threadlimit_set:new_threadlimit <- 0
	.loc	0 0 0 is_stmt 0                 # xz/hardware.c:0:0
	movl	$1, threadlimit(%rip)
.Ltmp27:
	.loc	0 150 2 is_stmt 1               # xz/hardware.c:150:2
	retq
.Ltmp28:
.Lfunc_end5:
	.size	hardware_init, .Lfunc_end5-hardware_init
	.cfi_endproc
                                        # -- End function
	.type	threadlimit,@object             # @threadlimit
	.local	threadlimit
	.comm	threadlimit,4,4
	.type	total_ram,@object               # @total_ram
	.local	total_ram
	.comm	total_ram,1,8
	.type	memlimit_compress,@object       # @memlimit_compress
	.local	memlimit_compress
	.comm	memlimit_compress,8,8
	.type	memlimit_decompress,@object     # @memlimit_decompress
	.local	memlimit_decompress
	.comm	memlimit_decompress,8,8
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
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	20                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	20                              # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	20                              # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	20                              # Loc expr size
	.byte	120                             # DW_OP_breg8
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	20                              # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	20                              # Loc expr size
	.byte	114                             # DW_OP_breg2
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
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
	.byte	5                               # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	6                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
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
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	10                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x203 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0x4 DW_TAG_base_type
	.byte	40                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	39                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x2f:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	58                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x3a:0x8 DW_TAG_typedef
	.long	66                              # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x42:0x8 DW_TAG_typedef
	.long	74                              # DW_AT_type
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x4a:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x4e:0xb DW_TAG_variable
	.byte	7                               # DW_AT_name
	.long	89                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	4                               # Abbrev [4] 0x59:0x8 DW_TAG_typedef
	.long	97                              # DW_AT_type
	.byte	10                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x61:0x8 DW_TAG_typedef
	.long	105                             # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x69:0x4 DW_TAG_base_type
	.byte	8                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x6d:0xb DW_TAG_variable
	.byte	11                              # DW_AT_name
	.long	89                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               # Abbrev [3] 0x78:0x17 DW_TAG_variable
	.byte	12                              # DW_AT_name
	.long	89                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	14                              # DW_AT_location
	.byte	161
	.byte	3
	.byte	148
	.byte	1
	.byte	16
	.ascii	"\200\200\200\302\003"
	.byte	30
	.byte	48
	.byte	34
	.byte	159
	.byte	5                               # Abbrev [5] 0x8f:0x16 DW_TAG_enumeration_type
	.long	74                              # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x98:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0x9b:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0x9e:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0xa1:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa5:0x13 DW_TAG_enumeration_type
	.long	74                              # DW_AT_type
	.byte	21                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xae:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0xb1:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0xb4:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xb8:0x19 DW_TAG_enumeration_type
	.long	74                              # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xc1:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0xc4:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0xc7:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0xca:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0xcd:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xd1:0x13 DW_TAG_subprogram
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	432                             # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0xdd:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	436                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xe4:0xf DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	58                              # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xf3:0x39 DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	391                             # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0xff:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	395                             # DW_AT_abstract_origin
	.byte	10                              # Abbrev [10] 0x105:0x1a DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	116
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	168
	.asciz	"\247\200\200"
	.byte	168
	.asciz	"\253\200\200"
	.byte	159
	.long	403                             # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x11f:0x6 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.long	411                             # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x125:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.long	419                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x12c:0x23 DW_TAG_subprogram
	.byte	7                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	42                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	89                              # DW_AT_type
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x13b:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	143                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x145:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.long	521                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x14f:0x18 DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	43                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x15a:0x6 DW_TAG_call_site
	.long	359                             # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	16                              # Abbrev [16] 0x160:0x6 DW_TAG_call_site
	.long	367                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	10                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x167:0x8 DW_TAG_subprogram
	.byte	28                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	184                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0x16f:0x14 DW_TAG_subprogram
	.byte	29                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x173:0x5 DW_TAG_formal_parameter
	.long	387                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x178:0x5 DW_TAG_formal_parameter
	.long	387                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x17d:0x5 DW_TAG_formal_parameter
	.long	387                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x183:0x4 DW_TAG_base_type
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0x187:0x25 DW_TAG_subprogram
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x18b:0x8 DW_TAG_formal_parameter
	.byte	32                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	89                              # DW_AT_type
	.byte	21                              # Abbrev [21] 0x193:0x8 DW_TAG_formal_parameter
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	428                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x19b:0x8 DW_TAG_formal_parameter
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	428                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1a3:0x8 DW_TAG_formal_parameter
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	428                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1ac:0x4 DW_TAG_base_type
	.byte	34                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0x1b0:0xd DW_TAG_subprogram
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x1b4:0x8 DW_TAG_formal_parameter
	.byte	38                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	58                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1bd:0x4c DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	44                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x1c8:0x2c DW_TAG_inlined_subroutine
	.long	391                             # DW_AT_abstract_origin
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp26-.Ltmp24                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	148                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	23                              # Abbrev [23] 0x1d5:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	395                             # DW_AT_abstract_origin
	.byte	10                              # Abbrev [10] 0x1db:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	49
	.byte	159
	.long	403                             # DW_AT_abstract_origin
	.byte	10                              # Abbrev [10] 0x1e3:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	49
	.byte	159
	.long	411                             # DW_AT_abstract_origin
	.byte	10                              # Abbrev [10] 0x1eb:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	48
	.byte	159
	.long	419                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x1f4:0x14 DW_TAG_inlined_subroutine
	.long	432                             # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp27-.Ltmp26                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	149                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	23                              # Abbrev [23] 0x201:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	436                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x209:0x5 DW_TAG_const_type
	.long	89                              # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	192                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"xz/hardware.c"                 # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=119
.Linfo_string3:
	.asciz	"threadlimit"                   # string offset=151
.Linfo_string4:
	.asciz	"unsigned int"                  # string offset=163
.Linfo_string5:
	.asciz	"__uint32_t"                    # string offset=176
.Linfo_string6:
	.asciz	"uint32_t"                      # string offset=187
.Linfo_string7:
	.asciz	"memlimit_compress"             # string offset=196
.Linfo_string8:
	.asciz	"unsigned long"                 # string offset=214
.Linfo_string9:
	.asciz	"__uint64_t"                    # string offset=228
.Linfo_string10:
	.asciz	"uint64_t"                      # string offset=239
.Linfo_string11:
	.asciz	"memlimit_decompress"           # string offset=248
.Linfo_string12:
	.asciz	"total_ram"                     # string offset=268
.Linfo_string13:
	.asciz	"MODE_COMPRESS"                 # string offset=278
.Linfo_string14:
	.asciz	"MODE_DECOMPRESS"               # string offset=292
.Linfo_string15:
	.asciz	"MODE_TEST"                     # string offset=308
.Linfo_string16:
	.asciz	"MODE_LIST"                     # string offset=318
.Linfo_string17:
	.asciz	"operation_mode"                # string offset=328
.Linfo_string18:
	.asciz	"E_SUCCESS"                     # string offset=343
.Linfo_string19:
	.asciz	"E_ERROR"                       # string offset=353
.Linfo_string20:
	.asciz	"E_WARNING"                     # string offset=361
.Linfo_string21:
	.asciz	"exit_status_type"              # string offset=371
.Linfo_string22:
	.asciz	"V_SILENT"                      # string offset=388
.Linfo_string23:
	.asciz	"V_ERROR"                       # string offset=397
.Linfo_string24:
	.asciz	"V_WARNING"                     # string offset=405
.Linfo_string25:
	.asciz	"V_VERBOSE"                     # string offset=415
.Linfo_string26:
	.asciz	"V_DEBUG"                       # string offset=425
.Linfo_string27:
	.asciz	"message_verbosity"             # string offset=433
.Linfo_string28:
	.asciz	"message_verbosity_get"         # string offset=451
.Linfo_string29:
	.asciz	"tuklib_exit"                   # string offset=473
.Linfo_string30:
	.asciz	"int"                           # string offset=485
.Linfo_string31:
	.asciz	"hardware_memlimit_set"         # string offset=489
.Linfo_string32:
	.asciz	"new_memlimit"                  # string offset=511
.Linfo_string33:
	.asciz	"set_compress"                  # string offset=524
.Linfo_string34:
	.asciz	"_Bool"                         # string offset=537
.Linfo_string35:
	.asciz	"set_decompress"                # string offset=543
.Linfo_string36:
	.asciz	"is_percentage"                 # string offset=558
.Linfo_string37:
	.asciz	"hardware_threadlimit_set"      # string offset=572
.Linfo_string38:
	.asciz	"new_threadlimit"               # string offset=597
.Linfo_string39:
	.asciz	"DW_ATE_unsigned_8"             # string offset=613
.Linfo_string40:
	.asciz	"DW_ATE_unsigned_1"             # string offset=631
.Linfo_string41:
	.asciz	"hardware_threadlimit_get"      # string offset=649
.Linfo_string42:
	.asciz	"hardware_memlimit_get"         # string offset=674
.Linfo_string43:
	.asciz	"hardware_memlimit_show"        # string offset=696
.Linfo_string44:
	.asciz	"hardware_init"                 # string offset=719
.Linfo_string45:
	.asciz	"mode"                          # string offset=733
.Linfo_string46:
	.asciz	"memlimit"                      # string offset=738
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	threadlimit
	.quad	memlimit_compress
	.quad	memlimit_decompress
	.quad	total_ram
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Lfunc_begin3
	.quad	.Lfunc_begin4
	.quad	.Ltmp21
	.quad	.Ltmp22
	.quad	.Lfunc_begin5
	.quad	.Ltmp24
	.quad	.Ltmp26
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
