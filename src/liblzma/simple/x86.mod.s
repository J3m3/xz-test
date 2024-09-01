	.text
	.file	"x86.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/simple/x86.c" md5 0xd511d504c4e6105d3bb96252bce2f620
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	3 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	4 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	5 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/simple" "simple_private.h" md5 0x2921a659cca72849047c4661dc5d5b7e
	.globl	lzma_simple_x86_encoder_init    # -- Begin function lzma_simple_x86_encoder_init
	.p2align	4, 0x90
	.type	lzma_simple_x86_encoder_init,@function
lzma_simple_x86_encoder_init:           # @lzma_simple_x86_encoder_init
.Lfunc_begin0:
	.loc	0 144 0                         # liblzma/simple/x86.c:144:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:filters <- $rdx
	#DEBUG_VALUE: x86_coder_init:next <- $rdi
	#DEBUG_VALUE: x86_coder_init:allocator <- $rsi
	#DEBUG_VALUE: x86_coder_init:filters <- $rdx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp0:
	#DEBUG_VALUE: x86_coder_init:is_encoder <- [DW_OP_stack_value] 1
	.loc	0 129 23 prologue_end           # liblzma/simple/x86.c:129:23
	movl	$x86_code, %ecx
	movl	$8, %r8d
	movl	$5, %r9d
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
.Ltmp1:
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: x86_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:next <- $rbx
	#DEBUG_VALUE: x86_coder_init:ret <- $eax
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp2:
	.loc	0 132 10                        # liblzma/simple/x86.c:132:10
	testl	%eax, %eax
.Ltmp3:
	.loc	0 132 6 is_stmt 0               # liblzma/simple/x86.c:132:6
	je	.LBB0_1
.Ltmp4:
# %bb.2:                                # %x86_coder_init.exit
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 145 2 epilogue_begin is_stmt 1 # liblzma/simple/x86.c:145:2
	popq	%rbx
.Ltmp5:
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp6:
.LBB0_1:                                # %if.then.i
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: x86_coder_init:next <- $rbx
	#DEBUG_VALUE: x86_coder_init:is_encoder <- [DW_OP_stack_value] 1
	#DEBUG_VALUE: x86_coder_init:ret <- $eax
	.loc	0 133 32                        # liblzma/simple/x86.c:133:32
	movq	(%rbx), %rcx
	.loc	0 133 40 is_stmt 0              # liblzma/simple/x86.c:133:40
	movq	80(%rcx), %rcx
	.loc	0 133 58                        # liblzma/simple/x86.c:133:58
	movl	$0, (%rcx)
	.loc	0 134 32 is_stmt 1              # liblzma/simple/x86.c:134:32
	movq	(%rbx), %rcx
	.loc	0 134 40 is_stmt 0              # liblzma/simple/x86.c:134:40
	movq	80(%rcx), %rcx
	.loc	0 134 57                        # liblzma/simple/x86.c:134:57
	movl	$-5, 4(%rcx)
.Ltmp7:
	.loc	0 145 2 epilogue_begin is_stmt 1 # liblzma/simple/x86.c:145:2
	popq	%rbx
.Ltmp8:
	#DEBUG_VALUE: lzma_simple_x86_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp9:
.Lfunc_end0:
	.size	lzma_simple_x86_encoder_init, .Lfunc_end0-lzma_simple_x86_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_simple_x86_decoder_init    # -- Begin function lzma_simple_x86_decoder_init
	.p2align	4, 0x90
	.type	lzma_simple_x86_decoder_init,@function
lzma_simple_x86_decoder_init:           # @lzma_simple_x86_decoder_init
.Lfunc_begin1:
	.loc	0 152 0                         # liblzma/simple/x86.c:152:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:filters <- $rdx
	#DEBUG_VALUE: x86_coder_init:next <- $rdi
	#DEBUG_VALUE: x86_coder_init:allocator <- $rsi
	#DEBUG_VALUE: x86_coder_init:filters <- $rdx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.Ltmp10:
	#DEBUG_VALUE: x86_coder_init:is_encoder <- [DW_OP_stack_value] 0
	.loc	0 129 23 prologue_end           # liblzma/simple/x86.c:129:23
	movl	$x86_code, %ecx
	movl	$8, %r8d
	movl	$5, %r9d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
.Ltmp11:
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: x86_coder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:next <- $rbx
	#DEBUG_VALUE: x86_coder_init:ret <- $eax
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp12:
	.loc	0 132 10                        # liblzma/simple/x86.c:132:10
	testl	%eax, %eax
.Ltmp13:
	.loc	0 132 6 is_stmt 0               # liblzma/simple/x86.c:132:6
	je	.LBB1_1
.Ltmp14:
# %bb.2:                                # %x86_coder_init.exit
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 153 2 epilogue_begin is_stmt 1 # liblzma/simple/x86.c:153:2
	popq	%rbx
.Ltmp15:
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp16:
.LBB1_1:                                # %if.then.i
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:next <- $rbx
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: x86_coder_init:next <- $rbx
	#DEBUG_VALUE: x86_coder_init:is_encoder <- [DW_OP_stack_value] 0
	#DEBUG_VALUE: x86_coder_init:ret <- $eax
	.loc	0 133 32                        # liblzma/simple/x86.c:133:32
	movq	(%rbx), %rcx
	.loc	0 133 40 is_stmt 0              # liblzma/simple/x86.c:133:40
	movq	80(%rcx), %rcx
	.loc	0 133 58                        # liblzma/simple/x86.c:133:58
	movl	$0, (%rcx)
	.loc	0 134 32 is_stmt 1              # liblzma/simple/x86.c:134:32
	movq	(%rbx), %rcx
	.loc	0 134 40 is_stmt 0              # liblzma/simple/x86.c:134:40
	movq	80(%rcx), %rcx
	.loc	0 134 57                        # liblzma/simple/x86.c:134:57
	movl	$-5, 4(%rcx)
.Ltmp17:
	.loc	0 153 2 epilogue_begin is_stmt 1 # liblzma/simple/x86.c:153:2
	popq	%rbx
.Ltmp18:
	#DEBUG_VALUE: lzma_simple_x86_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp19:
.Lfunc_end1:
	.size	lzma_simple_x86_decoder_init, .Lfunc_end1-lzma_simple_x86_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x86_code
	.type	x86_code,@function
x86_code:                               # @x86_code
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rcx
	#DEBUG_VALUE: x86_code:size <- $r8
                                        # kill: def $esi killed $esi def $rsi
	.loc	0 39 11 prologue_end            # liblzma/simple/x86.c:39:11
	cmpq	$5, %r8
.Ltmp20:
	.loc	0 39 6 is_stmt 0                # liblzma/simple/x86.c:39:6
	jae	.LBB2_2
.Ltmp21:
# %bb.1:
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rcx
	#DEBUG_VALUE: x86_code:size <- $r8
	.loc	0 0 6                           # liblzma/simple/x86.c:0:6
	xorl	%eax, %eax
	.loc	0 122 1 is_stmt 1               # liblzma/simple/x86.c:122:1
	retq
.Ltmp22:
.LBB2_2:                                # %if.end
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rcx
	#DEBUG_VALUE: x86_code:size <- $r8
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	.loc	0 36 31                         # liblzma/simple/x86.c:36:31
	movl	(%rdi), %ecx
.Ltmp23:
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	.loc	0 37 30                         # liblzma/simple/x86.c:37:30
	movl	4(%rdi), %eax
.Ltmp24:
	#DEBUG_VALUE: x86_code:prev_pos <- $eax
	.loc	0 42 14                         # liblzma/simple/x86.c:42:14
	movl	%esi, %r9d
	subl	%eax, %r9d
	leal	-5(%rsi), %r11d
	.loc	0 42 25 is_stmt 0               # liblzma/simple/x86.c:42:25
	cmpl	$6, %r9d
.Ltmp25:
	.loc	0 42 6                          # liblzma/simple/x86.c:42:6
	cmovbl	%eax, %r11d
.Ltmp26:
	#DEBUG_VALUE: x86_code:prev_pos <- $r11d
	.loc	0 45 28 is_stmt 1               # liblzma/simple/x86.c:45:28
	addq	$-5, %r8
.Ltmp27:
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:limit <- $r8
	.loc	0 0 28 is_stmt 0                # liblzma/simple/x86.c:0:28
	xorl	%eax, %eax
.Ltmp28:
	#DEBUG_VALUE: x86_code:buffer_pos <- 0
	jmp	.LBB2_3
.Ltmp29:
	.p2align	4, 0x90
.LBB2_4:                                # %if.then14
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	#DEBUG_VALUE: x86_code:prev_pos <- $r11d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	.loc	0 51 4 is_stmt 1                # liblzma/simple/x86.c:51:4
	incq	%rax
.Ltmp30:
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: x86_code:prev_pos <- $r11d
	.loc	0 48 20                         # liblzma/simple/x86.c:48:20
	cmpq	%r8, %rax
	.loc	0 48 2 is_stmt 0                # liblzma/simple/x86.c:48:2
	ja	.LBB2_22
.Ltmp31:
.LBB2_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	#DEBUG_VALUE: x86_code:prev_pos <- $r11d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: x86_code:prev_pos <- $r11d
	.loc	0 49 15 is_stmt 1               # liblzma/simple/x86.c:49:15
	movzbl	(%rbp,%rax), %r9d
.Ltmp32:
	#DEBUG_VALUE: b <- $r9b
	.loc	0 50 17                         # liblzma/simple/x86.c:50:17
	addb	$22, %r9b
.Ltmp33:
	cmpb	$-3, %r9b
	jbe	.LBB2_4
.Ltmp34:
# %bb.5:                                # %if.end15
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	#DEBUG_VALUE: x86_code:prev_pos <- $r11d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	.loc	0 55 35                         # liblzma/simple/x86.c:55:35
	leal	(%rax,%rsi), %r10d
	.loc	0 56 5                          # liblzma/simple/x86.c:56:5
	movl	%r10d, %ebx
	subl	%r11d, %ebx
.Ltmp35:
	#DEBUG_VALUE: offset <- $ebx
	.loc	0 0 5 is_stmt 0                 # liblzma/simple/x86.c:0:5
	xorl	%r9d, %r9d
.Ltmp36:
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	.loc	0 59 14 is_stmt 1               # liblzma/simple/x86.c:59:14
	cmpl	$5, %ebx
.Ltmp37:
	.loc	0 59 7 is_stmt 0                # liblzma/simple/x86.c:59:7
	ja	.LBB2_10
.Ltmp38:
# %bb.6:                                # %for.cond.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: offset <- $ebx
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	.loc	0 62 27 is_stmt 1               # liblzma/simple/x86.c:62:27
	cmpl	%r11d, %r10d
.Ltmp39:
	.loc	0 62 4 is_stmt 0                # liblzma/simple/x86.c:62:4
	jne	.LBB2_8
.Ltmp40:
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: offset <- $ebx
	#DEBUG_VALUE: i <- 0
	.loc	0 0 4                           # liblzma/simple/x86.c:0:4
	movl	%ecx, %r9d
	.loc	0 62 4                          # liblzma/simple/x86.c:62:4
	jmp	.LBB2_10
.Ltmp41:
.LBB2_8:                                # %for.body.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: offset <- $ebx
	#DEBUG_VALUE: i <- 0
	cmpl	$1, %ebx
	adcl	$0, %ebx
.Ltmp42:
	.loc	0 0 4                           # liblzma/simple/x86.c:0:4
	movl	%ecx, %r9d
.Ltmp43:
	.p2align	4, 0x90
.LBB2_9:                                # %for.body.epil
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $r9d
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: i <- undef
	#DEBUG_VALUE: x86_code:prev_mask <- [DW_OP_constu 119, DW_OP_and, DW_OP_stack_value] $r9d
	.loc	0 64 15 is_stmt 1               # liblzma/simple/x86.c:64:15
	andl	$119, %r9d
.Ltmp44:
	addl	%r9d, %r9d
.Ltmp45:
	#DEBUG_VALUE: x86_code:prev_mask <- $r9d
	.loc	0 62 4                          # liblzma/simple/x86.c:62:4
	decl	%ebx
	jne	.LBB2_9
.Ltmp46:
.LBB2_10:                               # %if.end26
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: x86_code:prev_mask <- $r9d
	.loc	0 68 7                          # liblzma/simple/x86.c:68:7
	movzbl	4(%rbp,%rax), %r11d
.Ltmp47:
	#DEBUG_VALUE: b <- $r11b
	.loc	0 70 7                          # liblzma/simple/x86.c:70:7
	leal	1(%r11), %ebx
	movl	$1, %ecx
	cmpb	$1, %bl
	ja	.LBB2_19
.Ltmp48:
# %bb.11:                               # %land.lhs.true35
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $r9d
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: b <- $r11b
	.loc	0 71 41                         # liblzma/simple/x86.c:71:41
	movl	%r9d, %r14d
	shrl	%r14d
	.loc	0 71 47 is_stmt 0               # liblzma/simple/x86.c:71:47
	movl	%r14d, %ebx
	andl	$7, %ebx
	movl	$17, %ecx
	.loc	0 72 5 is_stmt 1                # liblzma/simple/x86.c:72:5
	cmpb	$1, x86_code.MASK_TO_ALLOWED_STATUS(%rbx)
	jne	.LBB2_19
.Ltmp49:
# %bb.12:                               # %land.lhs.true35
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $r9d
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: b <- $r11b
	cmpl	$31, %r9d
	ja	.LBB2_19
.Ltmp50:
# %bb.13:                               # %if.then43
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $r9d
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: b <- $r11b
	.loc	0 74 34                         # liblzma/simple/x86.c:74:34
	shll	$24, %r11d
.Ltmp51:
	.loc	0 75 19                         # liblzma/simple/x86.c:75:19
	movzbl	3(%rbp,%rax), %ecx
	.loc	0 75 43 is_stmt 0               # liblzma/simple/x86.c:75:43
	shll	$16, %ecx
	.loc	0 75 5                          # liblzma/simple/x86.c:75:5
	orl	%r11d, %ecx
	.loc	0 76 19 is_stmt 1               # liblzma/simple/x86.c:76:19
	movzbl	2(%rbp,%rax), %r11d
	.loc	0 76 43 is_stmt 0               # liblzma/simple/x86.c:76:43
	shll	$8, %r11d
	.loc	0 76 5                          # liblzma/simple/x86.c:76:5
	orl	%ecx, %r11d
	.loc	0 77 8 is_stmt 1                # liblzma/simple/x86.c:77:8
	movzbl	1(%rbp,%rax), %ebx
	.loc	0 77 5 is_stmt 0                # liblzma/simple/x86.c:77:5
	orl	%r11d, %ebx
.Ltmp52:
	#DEBUG_VALUE: src <- $ebx
	.loc	0 0 5                           # liblzma/simple/x86.c:0:5
	leal	5(%r10), %ecx
	movl	$-5, %r11d
	subl	%r10d, %r11d
	testb	%dl, %dl
	cmovnel	%ecx, %r11d
.Ltmp53:
	.loc	0 81 9 is_stmt 1                # liblzma/simple/x86.c:81:9
	addl	%r11d, %ebx
.Ltmp54:
	.loc	0 0 9 is_stmt 0                 # liblzma/simple/x86.c:0:9
	testl	%r9d, %r9d
	.loc	0 88 9 is_stmt 1                # liblzma/simple/x86.c:88:9
	je	.LBB2_18
.Ltmp55:
# %bb.14:                               # %if.end76.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $r9d
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	.loc	0 0 9 is_stmt 0                 # liblzma/simple/x86.c:0:9
	movl	%r14d, %ecx
	movl	x86_code.MASK_TO_BIT_NUMBER(,%rcx,4), %ecx
	shll	$3, %ecx
	movl	$24, %r9d
.Ltmp56:
	subl	%ecx, %r9d
	negb	%cl
	movl	$-1, %r14d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r14d
	jmp	.LBB2_15
.Ltmp57:
	.p2align	4, 0x90
.LBB2_17:                               # %cleanup
                                        #   in Loop: Header=BB2_15 Depth=2
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: b <- $r15d
	.loc	0 99 16 is_stmt 1               # liblzma/simple/x86.c:99:16
	xorl	%r14d, %ebx
	notl	%ebx
.Ltmp58:
	#DEBUG_VALUE: src <- $ebx
	.loc	0 81 9                          # liblzma/simple/x86.c:81:9
	addl	%r11d, %ebx
.Ltmp59:
	#DEBUG_VALUE: dest <- $ebx
.LBB2_15:                               # %if.end76
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	.loc	0 94 24                         # liblzma/simple/x86.c:94:24
	movl	%ebx, %r15d
	movl	%r9d, %ecx
	shrl	%cl, %r15d
.Ltmp60:
	#DEBUG_VALUE: b <- $r15d
	.loc	0 96 10                         # liblzma/simple/x86.c:96:10
	cmpb	$-1, %r15b
.Ltmp61:
	#DEBUG_VALUE: i <- undef
	je	.LBB2_17
.Ltmp62:
# %bb.16:                               # %if.end76
                                        #   in Loop: Header=BB2_15 Depth=2
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: b <- $r15d
	movzbl	%r15b, %ecx
	testl	%ecx, %ecx
	je	.LBB2_17
.Ltmp63:
.LBB2_18:                               # %while.end
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	.loc	0 103 34                        # liblzma/simple/x86.c:103:34
	movl	%ebx, %ecx
	shll	$7, %ecx
	sarl	$31, %ecx
	.loc	0 103 6 is_stmt 0               # liblzma/simple/x86.c:103:6
	movb	%cl, 4(%rbp,%rax)
	.loc	0 104 44 is_stmt 1              # liblzma/simple/x86.c:104:44
	movl	%ebx, %ecx
	shrl	$16, %ecx
	.loc	0 104 27 is_stmt 0              # liblzma/simple/x86.c:104:27
	movb	%cl, 3(%rbp,%rax)
	.loc	0 105 27 is_stmt 1              # liblzma/simple/x86.c:105:27
	movb	%bh, 2(%rbp,%rax)
	.loc	0 106 27                        # liblzma/simple/x86.c:106:27
	movb	%bl, 1(%rbp,%rax)
	.loc	0 107 15                        # liblzma/simple/x86.c:107:15
	addq	$5, %rax
.Ltmp64:
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	.loc	0 0 15 is_stmt 0                # liblzma/simple/x86.c:0:15
	xorl	%ecx, %ecx
.Ltmp65:
	#DEBUG_VALUE: x86_code:prev_mask <- 0
	movl	%r10d, %r11d
.Ltmp66:
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: x86_code:prev_pos <- $r11d
	.loc	0 48 20 is_stmt 1               # liblzma/simple/x86.c:48:20
	cmpq	%r8, %rax
	.loc	0 48 2 is_stmt 0                # liblzma/simple/x86.c:48:2
	jbe	.LBB2_3
	jmp	.LBB2_22
.Ltmp67:
	.p2align	4, 0x90
.LBB2_19:                               # %if.else115
                                        #   in Loop: Header=BB2_3 Depth=1
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $r9d
	#DEBUG_VALUE: x86_code:prev_pos <- $r10d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: b <- $r11b
	.loc	0 111 4 is_stmt 1               # liblzma/simple/x86.c:111:4
	incq	%rax
.Ltmp68:
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: x86_code:prev_mask <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $r9d
	.loc	0 113 8                         # liblzma/simple/x86.c:113:8
	orl	%r9d, %ecx
	movl	%r10d, %r11d
.Ltmp69:
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	#DEBUG_VALUE: x86_code:prev_pos <- $r11d
	.loc	0 48 20                         # liblzma/simple/x86.c:48:20
	cmpq	%r8, %rax
	.loc	0 48 2 is_stmt 0                # liblzma/simple/x86.c:48:2
	jbe	.LBB2_3
.Ltmp70:
.LBB2_22:                               # %while.end132
	#DEBUG_VALUE: x86_code:simple <- $rdi
	#DEBUG_VALUE: x86_code:now_pos <- $esi
	#DEBUG_VALUE: x86_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: x86_code:buffer <- $rbp
	#DEBUG_VALUE: x86_code:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: x86_code:prev_mask <- $ecx
	#DEBUG_VALUE: x86_code:prev_pos <- $r11d
	#DEBUG_VALUE: x86_code:limit <- $r8
	#DEBUG_VALUE: x86_code:buffer_pos <- $rax
	.loc	0 118 20 is_stmt 1              # liblzma/simple/x86.c:118:20
	movl	%ecx, (%rdi)
	.loc	0 119 19                        # liblzma/simple/x86.c:119:19
	movl	%r11d, 4(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp71:
	#DEBUG_VALUE: x86_code:buffer <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	.loc	0 122 1                         # liblzma/simple/x86.c:122:1
	retq
.Ltmp72:
.Lfunc_end2:
	.size	x86_code, .Lfunc_end2-x86_code
	.cfi_endproc
                                        # -- End function
	.type	x86_code.MASK_TO_ALLOWED_STATUS,@object # @x86_code.MASK_TO_ALLOWED_STATUS
	.section	.rodata.cst8,"aM",@progbits,8
x86_code.MASK_TO_ALLOWED_STATUS:
	.asciz	"\001\001\001\000\001\000\000"
	.size	x86_code.MASK_TO_ALLOWED_STATUS, 8

	.type	x86_code.MASK_TO_BIT_NUMBER,@object # @x86_code.MASK_TO_BIT_NUMBER
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
x86_code.MASK_TO_BIT_NUMBER:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	3                               # 0x3
	.long	3                               # 0x3
	.long	3                               # 0x3
	.size	x86_code.MASK_TO_BIT_NUMBER, 32

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	26                              # Offset entry count
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
	.long	.Ldebug_loc9-.Lloclists_table_base0
	.long	.Ldebug_loc10-.Lloclists_table_base0
	.long	.Ldebug_loc11-.Lloclists_table_base0
	.long	.Ldebug_loc12-.Lloclists_table_base0
	.long	.Ldebug_loc13-.Lloclists_table_base0
	.long	.Ldebug_loc14-.Lloclists_table_base0
	.long	.Ldebug_loc15-.Lloclists_table_base0
	.long	.Ldebug_loc16-.Lloclists_table_base0
	.long	.Ldebug_loc17-.Lloclists_table_base0
	.long	.Ldebug_loc18-.Lloclists_table_base0
	.long	.Ldebug_loc19-.Lloclists_table_base0
	.long	.Ldebug_loc20-.Lloclists_table_base0
	.long	.Ldebug_loc21-.Lloclists_table_base0
	.long	.Ldebug_loc22-.Lloclists_table_base0
	.long	.Ldebug_loc23-.Lloclists_table_base0
	.long	.Ldebug_loc24-.Lloclists_table_base0
	.long	.Ldebug_loc25-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
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
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
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
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
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
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	121                             # DW_OP_breg9
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	16                              # DW_OP_constu
	.byte	119                             # 119
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	121                             # DW_OP_breg9
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # super-register DW_OP_reg10
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
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
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
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
	.byte	22                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
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
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xc:0x5ee DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	86                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	85                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0xd9 DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	807                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x42:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	268                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x4d:0xb DW_TAG_variable
	.byte	6                               # DW_AT_name
	.long	293                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	5                               # Abbrev [5] 0x58:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	1099                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x62:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	310                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x6c:0x1d DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	113
	.byte	0
	.byte	16
	.ascii	"\377\377\377\377\017"
	.byte	26
	.byte	168
	.asciz	"\253\200\200"
	.byte	168
	.asciz	"\257\200\200"
	.byte	159
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	285                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x89:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	882                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x92:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	807                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x9b:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	310                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xa4:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	310                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xad:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	1524                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0xb6:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	807                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xbf:0x4c DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	7                               # Abbrev [7] 0xc1:0x9 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	847                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xca:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	305                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xd3:0x10 DW_TAG_lexical_block
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp46-.Ltmp38                 # DW_AT_high_pc
	.byte	7                               # Abbrev [7] 0xd9:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	310                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xe3:0x27 DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp66-.Ltmp50                 # DW_AT_high_pc
	.byte	7                               # Abbrev [7] 0xe9:0x9 DW_TAG_variable
	.byte	25                              # DW_AT_location
	.byte	95                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	310                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xf2:0x8 DW_TAG_variable
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	310                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xfa:0xf DW_TAG_lexical_block
	.byte	9                               # DW_AT_low_pc
	.long	.Ltmp63-.Ltmp53                 # DW_AT_high_pc
	.byte	10                              # Abbrev [10] 0x100:0x8 DW_TAG_variable
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	305                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x10c:0xc DW_TAG_array_type
	.long	280                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x111:0x6 DW_TAG_subrange_type
	.long	289                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x118:0x5 DW_TAG_const_type
	.long	285                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0x11d:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0x121:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	11                              # Abbrev [11] 0x125:0xc DW_TAG_array_type
	.long	305                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x12a:0x6 DW_TAG_subrange_type
	.long	289                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x131:0x5 DW_TAG_const_type
	.long	310                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x136:0x8 DW_TAG_typedef
	.long	318                             # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x13e:0x8 DW_TAG_typedef
	.long	326                             # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x146:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0x14a:0x2d DW_TAG_enumeration_type
	.long	326                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x152:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x155:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x158:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x15b:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x15e:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x161:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x164:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x167:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x16a:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x16d:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x170:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x173:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x177:0x15 DW_TAG_enumeration_type
	.long	326                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x17f:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x182:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x185:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x188:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x18c:0x15 DW_TAG_enumeration_type
	.long	326                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x194:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x197:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x19a:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	17                              # Abbrev [17] 0x19d:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x1a1:0x5 DW_TAG_pointer_type
	.long	422                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x1a6:0x69 DW_TAG_structure_type
	.byte	76                              # DW_AT_name
	.byte	128                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x1ab:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	527                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1b4:0x9 DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	285                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1bd:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	285                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	65                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1c6:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	1063                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1cf:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	1099                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1d8:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	310                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1e1:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	807                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1ea:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	807                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1f3:0x9 DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	807                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x1fc:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	807                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x205:0x9 DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	1136                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x20f:0x8 DW_TAG_typedef
	.long	535                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x217:0x4e DW_TAG_structure_type
	.byte	60                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x21c:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	613                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x225:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	622                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x22e:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	650                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x237:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	658                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x240:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	896                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x249:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	921                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x252:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	955                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x25b:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	991                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x265:0x5 DW_TAG_pointer_type
	.long	618                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x26a:0x4 DW_TAG_typedef
	.byte	32                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x26e:0x8 DW_TAG_typedef
	.long	630                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x276:0x8 DW_TAG_typedef
	.long	638                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x27e:0x8 DW_TAG_typedef
	.long	646                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x286:0x4 DW_TAG_base_type
	.byte	34                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x28a:0x8 DW_TAG_typedef
	.long	646                             # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x292:0x8 DW_TAG_typedef
	.long	666                             # DW_AT_type
	.byte	51                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x29a:0x5 DW_TAG_pointer_type
	.long	671                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x29f:0x33 DW_TAG_subroutine_type
	.long	722                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x2a4:0x5 DW_TAG_formal_parameter
	.long	613                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x2a9:0x5 DW_TAG_formal_parameter
	.long	730                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x2ae:0x5 DW_TAG_formal_parameter
	.long	832                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x2b3:0x5 DW_TAG_formal_parameter
	.long	867                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x2b8:0x5 DW_TAG_formal_parameter
	.long	807                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x2bd:0x5 DW_TAG_formal_parameter
	.long	877                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x2c2:0x5 DW_TAG_formal_parameter
	.long	867                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x2c7:0x5 DW_TAG_formal_parameter
	.long	807                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x2cc:0x5 DW_TAG_formal_parameter
	.long	887                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x2d2:0x8 DW_TAG_typedef
	.long	330                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x2da:0x5 DW_TAG_pointer_type
	.long	735                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x2df:0x9 DW_TAG_typedef
	.long	744                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	25                              # Abbrev [25] 0x2e8:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x2ed:0xa DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	780                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x2f7:0xa DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	815                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	26                              # Abbrev [26] 0x301:0xa DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	806                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x30c:0x5 DW_TAG_pointer_type
	.long	785                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x311:0x15 DW_TAG_subroutine_type
	.long	806                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x316:0x5 DW_TAG_formal_parameter
	.long	806                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x31b:0x5 DW_TAG_formal_parameter
	.long	807                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x320:0x5 DW_TAG_formal_parameter
	.long	807                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x326:0x1 DW_TAG_pointer_type
	.byte	15                              # Abbrev [15] 0x327:0x8 DW_TAG_typedef
	.long	646                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x32f:0x5 DW_TAG_pointer_type
	.long	820                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x334:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x335:0x5 DW_TAG_formal_parameter
	.long	806                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x33a:0x5 DW_TAG_formal_parameter
	.long	806                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x340:0x5 DW_TAG_restrict_type
	.long	837                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x345:0x5 DW_TAG_pointer_type
	.long	842                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x34a:0x5 DW_TAG_const_type
	.long	847                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x34f:0x8 DW_TAG_typedef
	.long	855                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x357:0x8 DW_TAG_typedef
	.long	863                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x35f:0x4 DW_TAG_base_type
	.byte	47                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	29                              # Abbrev [29] 0x363:0x5 DW_TAG_restrict_type
	.long	872                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x368:0x5 DW_TAG_pointer_type
	.long	807                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x36d:0x5 DW_TAG_restrict_type
	.long	882                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x372:0x5 DW_TAG_pointer_type
	.long	847                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x377:0x9 DW_TAG_typedef
	.long	375                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x380:0x8 DW_TAG_typedef
	.long	904                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x388:0x5 DW_TAG_pointer_type
	.long	909                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x38d:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x38e:0x5 DW_TAG_formal_parameter
	.long	613                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x393:0x5 DW_TAG_formal_parameter
	.long	730                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x399:0x5 DW_TAG_pointer_type
	.long	926                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x39e:0xb DW_TAG_subroutine_type
	.long	937                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x3a3:0x5 DW_TAG_formal_parameter
	.long	945                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x3a9:0x8 DW_TAG_typedef
	.long	396                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x3b1:0x5 DW_TAG_pointer_type
	.long	950                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3b6:0x5 DW_TAG_const_type
	.long	618                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x3bb:0x5 DW_TAG_pointer_type
	.long	960                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3c0:0x1a DW_TAG_subroutine_type
	.long	722                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x3c5:0x5 DW_TAG_formal_parameter
	.long	613                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x3ca:0x5 DW_TAG_formal_parameter
	.long	986                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x3cf:0x5 DW_TAG_formal_parameter
	.long	986                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x3d4:0x5 DW_TAG_formal_parameter
	.long	630                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x3da:0x5 DW_TAG_pointer_type
	.long	630                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x3df:0x5 DW_TAG_pointer_type
	.long	996                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3e4:0x1a DW_TAG_subroutine_type
	.long	722                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x3e9:0x5 DW_TAG_formal_parameter
	.long	613                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x3ee:0x5 DW_TAG_formal_parameter
	.long	730                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x3f3:0x5 DW_TAG_formal_parameter
	.long	1022                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x3f8:0x5 DW_TAG_formal_parameter
	.long	1022                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x3fe:0x5 DW_TAG_pointer_type
	.long	1027                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x403:0x5 DW_TAG_const_type
	.long	1032                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x408:0x8 DW_TAG_typedef
	.long	1040                            # DW_AT_type
	.byte	59                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	30                              # Abbrev [30] 0x410:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x414:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	622                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x41d:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	806                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x427:0x5 DW_TAG_pointer_type
	.long	1068                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x42c:0x1f DW_TAG_subroutine_type
	.long	807                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x431:0x5 DW_TAG_formal_parameter
	.long	1099                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x436:0x5 DW_TAG_formal_parameter
	.long	310                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x43b:0x5 DW_TAG_formal_parameter
	.long	285                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x440:0x5 DW_TAG_formal_parameter
	.long	882                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x445:0x5 DW_TAG_formal_parameter
	.long	807                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x44b:0x5 DW_TAG_pointer_type
	.long	1104                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x450:0x8 DW_TAG_typedef
	.long	1112                            # DW_AT_type
	.byte	68                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x458:0x18 DW_TAG_structure_type
	.byte	67                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x45d:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	310                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x466:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	310                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x470:0xb DW_TAG_array_type
	.long	847                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x475:0x5 DW_TAG_subrange_type
	.long	289                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x47b:0x31 DW_TAG_subprogram
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	722                             # DW_AT_type
                                        # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x483:0x8 DW_TAG_formal_parameter
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	1196                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x48b:0x8 DW_TAG_formal_parameter
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	730                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x493:0x8 DW_TAG_formal_parameter
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	1201                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x49b:0x8 DW_TAG_formal_parameter
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	285                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4a3:0x8 DW_TAG_variable
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.long	1286                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x4ac:0x5 DW_TAG_pointer_type
	.long	527                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x4b1:0x5 DW_TAG_pointer_type
	.long	1206                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x4b6:0x5 DW_TAG_const_type
	.long	1211                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x4bb:0x8 DW_TAG_typedef
	.long	1219                            # DW_AT_type
	.byte	82                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x4c3:0x21 DW_TAG_structure_type
	.byte	81                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x4c8:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	622                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x4d1:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	1252                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x4da:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	806                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x4e4:0x8 DW_TAG_typedef
	.long	1260                            # DW_AT_type
	.byte	80                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x4ec:0x5 DW_TAG_pointer_type
	.long	1265                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x4f1:0x15 DW_TAG_subroutine_type
	.long	722                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x4f6:0x5 DW_TAG_formal_parameter
	.long	1196                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x4fb:0x5 DW_TAG_formal_parameter
	.long	730                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x500:0x5 DW_TAG_formal_parameter
	.long	1201                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x506:0x5 DW_TAG_const_type
	.long	722                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x50b:0x5c DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	4                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.byte	112
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	722                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x51d:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	1196                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x526:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	730                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x52f:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.long	1201                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x538:0x28 DW_TAG_inlined_subroutine
	.long	1147                            # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	145                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	36                              # Abbrev [36] 0x541:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.long	1155                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x547:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.long	1163                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x54d:0x6 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.long	1171                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x553:0x6 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.long	1179                            # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x559:0x6 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.long	1187                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x560:0x6 DW_TAG_call_site
	.long	1383                            # DW_AT_call_origin
	.byte	3                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x567:0x31 DW_TAG_subprogram
	.byte	84                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	722                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x56f:0x5 DW_TAG_formal_parameter
	.long	1196                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x574:0x5 DW_TAG_formal_parameter
	.long	730                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x579:0x5 DW_TAG_formal_parameter
	.long	1201                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x57e:0x5 DW_TAG_formal_parameter
	.long	1063                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x583:0x5 DW_TAG_formal_parameter
	.long	807                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x588:0x5 DW_TAG_formal_parameter
	.long	807                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x58d:0x5 DW_TAG_formal_parameter
	.long	310                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x592:0x5 DW_TAG_formal_parameter
	.long	285                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x598:0x5c DW_TAG_subprogram
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	4                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.byte	112
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	722                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x5aa:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	1196                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x5b3:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	730                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x5bc:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	1201                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x5c5:0x28 DW_TAG_inlined_subroutine
	.long	1147                            # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	153                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	36                              # Abbrev [36] 0x5ce:0x6 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.long	1155                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x5d4:0x6 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.long	1163                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x5da:0x6 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.long	1171                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x5e0:0x6 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.long	1179                            # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x5e6:0x6 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.long	1187                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x5ed:0x6 DW_TAG_call_site
	.long	1383                            # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x5f4:0x5 DW_TAG_const_type
	.long	807                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	3                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	392                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/simple/x86.c"          # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=126
.Linfo_string3:
	.asciz	"MASK_TO_ALLOWED_STATUS"        # string offset=158
.Linfo_string4:
	.asciz	"_Bool"                         # string offset=181
.Linfo_string5:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=187
.Linfo_string6:
	.asciz	"MASK_TO_BIT_NUMBER"            # string offset=207
.Linfo_string7:
	.asciz	"unsigned int"                  # string offset=226
.Linfo_string8:
	.asciz	"__uint32_t"                    # string offset=239
.Linfo_string9:
	.asciz	"uint32_t"                      # string offset=250
.Linfo_string10:
	.asciz	"LZMA_OK"                       # string offset=259
.Linfo_string11:
	.asciz	"LZMA_STREAM_END"               # string offset=267
.Linfo_string12:
	.asciz	"LZMA_NO_CHECK"                 # string offset=283
.Linfo_string13:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=297
.Linfo_string14:
	.asciz	"LZMA_GET_CHECK"                # string offset=320
.Linfo_string15:
	.asciz	"LZMA_MEM_ERROR"                # string offset=335
.Linfo_string16:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=350
.Linfo_string17:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=370
.Linfo_string18:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=388
.Linfo_string19:
	.asciz	"LZMA_DATA_ERROR"               # string offset=407
.Linfo_string20:
	.asciz	"LZMA_BUF_ERROR"                # string offset=423
.Linfo_string21:
	.asciz	"LZMA_PROG_ERROR"               # string offset=438
.Linfo_string22:
	.asciz	"LZMA_RUN"                      # string offset=454
.Linfo_string23:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=463
.Linfo_string24:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=479
.Linfo_string25:
	.asciz	"LZMA_FINISH"                   # string offset=495
.Linfo_string26:
	.asciz	"LZMA_CHECK_NONE"               # string offset=507
.Linfo_string27:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=523
.Linfo_string28:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=540
.Linfo_string29:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=557
.Linfo_string30:
	.asciz	"next"                          # string offset=575
.Linfo_string31:
	.asciz	"coder"                         # string offset=580
.Linfo_string32:
	.asciz	"lzma_coder"                    # string offset=586
.Linfo_string33:
	.asciz	"id"                            # string offset=597
.Linfo_string34:
	.asciz	"unsigned long"                 # string offset=600
.Linfo_string35:
	.asciz	"__uint64_t"                    # string offset=614
.Linfo_string36:
	.asciz	"uint64_t"                      # string offset=625
.Linfo_string37:
	.asciz	"lzma_vli"                      # string offset=634
.Linfo_string38:
	.asciz	"init"                          # string offset=643
.Linfo_string39:
	.asciz	"uintptr_t"                     # string offset=648
.Linfo_string40:
	.asciz	"code"                          # string offset=658
.Linfo_string41:
	.asciz	"lzma_ret"                      # string offset=663
.Linfo_string42:
	.asciz	"alloc"                         # string offset=672
.Linfo_string43:
	.asciz	"size_t"                        # string offset=678
.Linfo_string44:
	.asciz	"free"                          # string offset=685
.Linfo_string45:
	.asciz	"opaque"                        # string offset=690
.Linfo_string46:
	.asciz	"lzma_allocator"                # string offset=697
.Linfo_string47:
	.asciz	"unsigned char"                 # string offset=712
.Linfo_string48:
	.asciz	"__uint8_t"                     # string offset=726
.Linfo_string49:
	.asciz	"uint8_t"                       # string offset=736
.Linfo_string50:
	.asciz	"lzma_action"                   # string offset=744
.Linfo_string51:
	.asciz	"lzma_code_function"            # string offset=756
.Linfo_string52:
	.asciz	"end"                           # string offset=775
.Linfo_string53:
	.asciz	"lzma_end_function"             # string offset=779
.Linfo_string54:
	.asciz	"get_check"                     # string offset=797
.Linfo_string55:
	.asciz	"lzma_check"                    # string offset=807
.Linfo_string56:
	.asciz	"memconfig"                     # string offset=818
.Linfo_string57:
	.asciz	"update"                        # string offset=828
.Linfo_string58:
	.asciz	"options"                       # string offset=835
.Linfo_string59:
	.asciz	"lzma_filter"                   # string offset=843
.Linfo_string60:
	.asciz	"lzma_next_coder_s"             # string offset=855
.Linfo_string61:
	.asciz	"lzma_next_coder"               # string offset=873
.Linfo_string62:
	.asciz	"end_was_reached"               # string offset=889
.Linfo_string63:
	.asciz	"is_encoder"                    # string offset=905
.Linfo_string64:
	.asciz	"filter"                        # string offset=916
.Linfo_string65:
	.asciz	"prev_mask"                     # string offset=923
.Linfo_string66:
	.asciz	"prev_pos"                      # string offset=933
.Linfo_string67:
	.asciz	"lzma_simple_s"                 # string offset=942
.Linfo_string68:
	.asciz	"lzma_simple"                   # string offset=956
.Linfo_string69:
	.asciz	"simple"                        # string offset=968
.Linfo_string70:
	.asciz	"now_pos"                       # string offset=975
.Linfo_string71:
	.asciz	"allocated"                     # string offset=983
.Linfo_string72:
	.asciz	"pos"                           # string offset=993
.Linfo_string73:
	.asciz	"filtered"                      # string offset=997
.Linfo_string74:
	.asciz	"size"                          # string offset=1006
.Linfo_string75:
	.asciz	"buffer"                        # string offset=1011
.Linfo_string76:
	.asciz	"lzma_coder_s"                  # string offset=1018
.Linfo_string77:
	.asciz	"x86_coder_init"                # string offset=1031
.Linfo_string78:
	.asciz	"allocator"                     # string offset=1046
.Linfo_string79:
	.asciz	"filters"                       # string offset=1056
.Linfo_string80:
	.asciz	"lzma_init_function"            # string offset=1064
.Linfo_string81:
	.asciz	"lzma_filter_info_s"            # string offset=1083
.Linfo_string82:
	.asciz	"lzma_filter_info"              # string offset=1102
.Linfo_string83:
	.asciz	"ret"                           # string offset=1119
.Linfo_string84:
	.asciz	"lzma_simple_coder_init"        # string offset=1123
.Linfo_string85:
	.asciz	"DW_ATE_unsigned_8"             # string offset=1146
.Linfo_string86:
	.asciz	"DW_ATE_unsigned_1"             # string offset=1164
.Linfo_string87:
	.asciz	"lzma_simple_x86_encoder_init"  # string offset=1182
.Linfo_string88:
	.asciz	"lzma_simple_x86_decoder_init"  # string offset=1211
.Linfo_string89:
	.asciz	"x86_code"                      # string offset=1240
.Linfo_string90:
	.asciz	"limit"                         # string offset=1249
.Linfo_string91:
	.asciz	"buffer_pos"                    # string offset=1255
.Linfo_string92:
	.asciz	"b"                             # string offset=1266
.Linfo_string93:
	.asciz	"offset"                        # string offset=1268
.Linfo_string94:
	.asciz	"i"                             # string offset=1275
.Linfo_string95:
	.asciz	"src"                           # string offset=1277
.Linfo_string96:
	.asciz	"dest"                          # string offset=1281
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
	.long	.Linfo_string92
	.long	.Linfo_string93
	.long	.Linfo_string94
	.long	.Linfo_string95
	.long	.Linfo_string96
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	x86_code.MASK_TO_ALLOWED_STATUS
	.quad	x86_code.MASK_TO_BIT_NUMBER
	.quad	.Lfunc_begin0
	.quad	.Ltmp1
	.quad	.Lfunc_begin1
	.quad	.Ltmp11
	.quad	.Lfunc_begin2
	.quad	.Ltmp38
	.quad	.Ltmp50
	.quad	.Ltmp53
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
