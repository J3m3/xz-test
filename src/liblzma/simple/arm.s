	.text
	.file	"arm.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/simple/arm.c" md5 0x47611a29fefd04d98093fdd3fb8f33a6
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.globl	lzma_simple_arm_encoder_init    # -- Begin function lzma_simple_arm_encoder_init
	.p2align	4, 0x90
	.type	lzma_simple_arm_encoder_init,@function
lzma_simple_arm_encoder_init:           # @lzma_simple_arm_encoder_init
.Lfunc_begin0:
	.loc	0 59 0                          # liblzma/simple/arm.c:59:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_arm_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_simple_arm_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_arm_encoder_init:filters <- $rdx
	#DEBUG_VALUE: arm_coder_init:next <- $rdi
	#DEBUG_VALUE: arm_coder_init:allocator <- $rsi
	#DEBUG_VALUE: arm_coder_init:filters <- $rdx
	#DEBUG_VALUE: arm_coder_init:is_encoder <- [DW_OP_stack_value] 1
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp0:
	.loc	0 51 9 prologue_end             # liblzma/simple/arm.c:51:9
	movl	$arm_code, %ecx
	movl	$4, %r9d
	xorl	%r8d, %r8d
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
.Ltmp1:
	#DEBUG_VALUE: lzma_simple_arm_encoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_arm_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_arm_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$16, %rsp
.Ltmp2:
	.cfi_adjust_cfa_offset -16
	.loc	0 60 2 epilogue_begin           # liblzma/simple/arm.c:60:2
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	lzma_simple_arm_encoder_init, .Lfunc_end0-lzma_simple_arm_encoder_init
	.cfi_endproc
	.file	5 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/simple" "simple_private.h" md5 0x2921a659cca72849047c4661dc5d5b7e
                                        # -- End function
	.globl	lzma_simple_arm_decoder_init    # -- Begin function lzma_simple_arm_decoder_init
	.p2align	4, 0x90
	.type	lzma_simple_arm_decoder_init,@function
lzma_simple_arm_decoder_init:           # @lzma_simple_arm_decoder_init
.Lfunc_begin1:
	.loc	0 67 0                          # liblzma/simple/arm.c:67:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_arm_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_simple_arm_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_arm_decoder_init:filters <- $rdx
	#DEBUG_VALUE: arm_coder_init:next <- $rdi
	#DEBUG_VALUE: arm_coder_init:allocator <- $rsi
	#DEBUG_VALUE: arm_coder_init:filters <- $rdx
	#DEBUG_VALUE: arm_coder_init:is_encoder <- [DW_OP_stack_value] 0
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp4:
	.loc	0 51 9 prologue_end             # liblzma/simple/arm.c:51:9
	movl	$arm_code, %ecx
	movl	$4, %r9d
	xorl	%r8d, %r8d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
.Ltmp5:
	#DEBUG_VALUE: lzma_simple_arm_decoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_arm_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_arm_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$16, %rsp
.Ltmp6:
	.cfi_adjust_cfa_offset -16
	.loc	0 68 2 epilogue_begin           # liblzma/simple/arm.c:68:2
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	lzma_simple_arm_decoder_init, .Lfunc_end1-lzma_simple_arm_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function arm_code
	.type	arm_code,@function
arm_code:                               # @arm_code
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
                                        # kill: def $esi killed $esi def $rsi
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 23 20 prologue_end            # liblzma/simple/arm.c:23:20
	cmpq	$4, %r8
.Ltmp8:
	.loc	0 23 2 is_stmt 0                # liblzma/simple/arm.c:23:2
	jae	.LBB2_3
.Ltmp9:
# %bb.1:
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 0 2                           # liblzma/simple/arm.c:0:2
	xorl	%eax, %eax
	.loc	0 43 2 is_stmt 1                # liblzma/simple/arm.c:43:2
	retq
.Ltmp10:
.LBB2_3:                                # %for.body.lr.ph
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
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
	xorl	%edi, %edi
.Ltmp11:
	.loc	0 23 2                          # liblzma/simple/arm.c:23:2
	movq	%r8, %rax
	addq	$-4, %rax
	adcq	$3, %rdi
	shldq	$62, %rax, %rdi
	incq	%rdi
	movl	$4, %r9d
	testb	%dl, %dl
	je	.LBB2_4
.Ltmp12:
# %bb.31:                               # %for.body.us.preheader
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 0 2 is_stmt 0                 # liblzma/simple/arm.c:0:2
	xorl	%edx, %edx
.Ltmp13:
	.loc	0 23 2                          # liblzma/simple/arm.c:23:2
	cmpq	$4, %rdi
	jb	.LBB2_32
.Ltmp14:
# %bb.36:                               # %vector.scevcheck88
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	movq	%r8, %rax
	addq	$-4, %rax
	movl	$0, %r10d
	adcq	$-1, %r10
	shrdq	$2, %r10, %rax
	leaq	2(%rcx), %r11
	leaq	(%rcx,%rax,4), %rbx
	addq	$2, %rbx
	cmpq	%r11, %rbx
	jb	.LBB2_32
.Ltmp15:
# %bb.37:                               # %vector.scevcheck88
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 0 2                           # liblzma/simple/arm.c:0:2
	movabsq	$4611686018427387903, %r11      # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%r11, %rax
	ja	.LBB2_32
.Ltmp16:
# %bb.38:                               # %vector.scevcheck88
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	leaq	1(%rcx), %rbx
	leaq	(%rcx,%rax,4), %r14
	incq	%r14
	cmpq	%rbx, %r14
	jb	.LBB2_32
.Ltmp17:
# %bb.39:                               # %vector.scevcheck88
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	cmpq	%r11, %rax
	ja	.LBB2_32
.Ltmp18:
# %bb.40:                               # %vector.scevcheck88
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	leaq	(%rcx,%rax,4), %rbx
	cmpq	%rcx, %rbx
	jb	.LBB2_32
.Ltmp19:
# %bb.41:                               # %vector.scevcheck88
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	cmpq	%r11, %rax
	ja	.LBB2_32
.Ltmp20:
# %bb.42:                               # %vector.scevcheck88
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	leaq	(,%rax,4), %rbx
	cmpq	$-9, %rbx
	ja	.LBB2_32
.Ltmp21:
# %bb.43:                               # %vector.scevcheck88
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	cmpq	%r11, %rax
	ja	.LBB2_32
.Ltmp22:
# %bb.44:                               # %vector.scevcheck88
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	leaq	3(%rcx), %rbx
	leaq	(%rcx,%rax,4), %r14
	addq	$3, %r14
	cmpq	%rbx, %r14
	jb	.LBB2_32
.Ltmp23:
# %bb.45:                               # %vector.scevcheck88
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	cmpq	%r11, %rax
	ja	.LBB2_32
.Ltmp24:
# %bb.46:                               # %vector.scevcheck88
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	cmpq	$3, %r10
	ja	.LBB2_32
.Ltmp25:
# %bb.47:                               # %vector.ph110
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 23 2                          # liblzma/simple/arm.c:23:2
	movq	%rdi, %rax
	andq	$-4, %rax
	leaq	(,%rax,4), %rdx
	leaq	4(,%rax,4), %r9
	movl	%esi, %r10d
	xorl	%r11d, %r11d
	movq	%rax, %rbx
	jmp	.LBB2_48
.Ltmp26:
	.p2align	4, 0x90
.LBB2_56:                               # %pred.store.continue127
                                        #   in Loop: Header=BB2_48 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 0 2                           # liblzma/simple/arm.c:0:2
	addq	$16, %r11
	addq	$-4, %rbx
	je	.LBB2_57
.Ltmp27:
.LBB2_48:                               # %vector.body117
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 24 21 is_stmt 1               # liblzma/simple/arm.c:24:21
	cmpb	$-21, 3(%rcx,%r11)
.Ltmp28:
	.loc	0 23 2                          # liblzma/simple/arm.c:23:2
	je	.LBB2_49
.Ltmp29:
# %bb.50:                               # %pred.store.continue121
                                        #   in Loop: Header=BB2_48 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 7(%rcx,%r11)
.Ltmp30:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	je	.LBB2_51
.Ltmp31:
.LBB2_52:                               # %pred.store.continue123
                                        #   in Loop: Header=BB2_48 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 11(%rcx,%r11)
.Ltmp32:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	je	.LBB2_53
.Ltmp33:
.LBB2_54:                               # %pred.store.continue125
                                        #   in Loop: Header=BB2_48 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 15(%rcx,%r11)
.Ltmp34:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	jne	.LBB2_56
	jmp	.LBB2_55
.Ltmp35:
	.p2align	4, 0x90
.LBB2_49:                               # %pred.store.if120
                                        #   in Loop: Header=BB2_48 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 25 20                         # liblzma/simple/arm.c:25:20
	movzbl	2(%rcx,%r11), %ebp
	.loc	0 26 9                          # liblzma/simple/arm.c:26:9
	movzbl	1(%rcx,%r11), %r14d
	.loc	0 27 9                          # liblzma/simple/arm.c:27:9
	movzbl	(%rcx,%r11), %r15d
	.loc	0 25 34                         # liblzma/simple/arm.c:25:34
	shll	$16, %ebp
	.loc	0 26 23                         # liblzma/simple/arm.c:26:23
	shll	$8, %r14d
	.loc	0 37 26                         # liblzma/simple/arm.c:37:26
	orl	%ebp, %r14d
	orl	%r15d, %r14d
	leal	(%r10,%r11), %r15d
	leal	(%r15,%r14,4), %ebp
	addl	$8, %ebp
	movl	%ebp, %r14d
	shrl	$18, %r14d
	.loc	0 37 18 is_stmt 0               # liblzma/simple/arm.c:37:18
	movb	%r14b, 2(%rcx,%r11)
	.loc	0 38 26 is_stmt 1               # liblzma/simple/arm.c:38:26
	movl	%ebp, %r14d
	shrl	$10, %r14d
	.loc	0 38 18 is_stmt 0               # liblzma/simple/arm.c:38:18
	movb	%r14b, 1(%rcx,%r11)
	.loc	0 36 9 is_stmt 1                # liblzma/simple/arm.c:36:9
	shrl	$2, %ebp
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	movb	%bpl, (%rcx,%r11)
.Ltmp36:
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 7(%rcx,%r11)
.Ltmp37:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	jne	.LBB2_52
.Ltmp38:
.LBB2_51:                               # %pred.store.if122
                                        #   in Loop: Header=BB2_48 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 25 20                         # liblzma/simple/arm.c:25:20
	movzbl	6(%rcx,%r11), %ebp
	.loc	0 26 9                          # liblzma/simple/arm.c:26:9
	movzbl	5(%rcx,%r11), %r14d
	.loc	0 27 9                          # liblzma/simple/arm.c:27:9
	movzbl	4(%rcx,%r11), %r15d
	.loc	0 25 34                         # liblzma/simple/arm.c:25:34
	shll	$16, %ebp
	.loc	0 26 23                         # liblzma/simple/arm.c:26:23
	shll	$8, %r14d
	.loc	0 37 26                         # liblzma/simple/arm.c:37:26
	orl	%ebp, %r14d
	orl	%r15d, %r14d
	leal	(%r10,%r11), %r15d
	leal	(%r15,%r14,4), %ebp
	addl	$12, %ebp
	movl	%ebp, %r14d
	shrl	$18, %r14d
	.loc	0 37 18 is_stmt 0               # liblzma/simple/arm.c:37:18
	movb	%r14b, 6(%rcx,%r11)
	.loc	0 38 26 is_stmt 1               # liblzma/simple/arm.c:38:26
	movl	%ebp, %r14d
	shrl	$10, %r14d
	.loc	0 38 18 is_stmt 0               # liblzma/simple/arm.c:38:18
	movb	%r14b, 5(%rcx,%r11)
	.loc	0 36 9 is_stmt 1                # liblzma/simple/arm.c:36:9
	shrl	$2, %ebp
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	movb	%bpl, 4(%rcx,%r11)
.Ltmp39:
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 11(%rcx,%r11)
.Ltmp40:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	jne	.LBB2_54
.Ltmp41:
.LBB2_53:                               # %pred.store.if124
                                        #   in Loop: Header=BB2_48 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 25 20                         # liblzma/simple/arm.c:25:20
	movzbl	10(%rcx,%r11), %ebp
	.loc	0 26 9                          # liblzma/simple/arm.c:26:9
	movzbl	9(%rcx,%r11), %r14d
	.loc	0 27 9                          # liblzma/simple/arm.c:27:9
	movzbl	8(%rcx,%r11), %r15d
	.loc	0 25 34                         # liblzma/simple/arm.c:25:34
	shll	$16, %ebp
	.loc	0 26 23                         # liblzma/simple/arm.c:26:23
	shll	$8, %r14d
	.loc	0 37 26                         # liblzma/simple/arm.c:37:26
	orl	%ebp, %r14d
	orl	%r15d, %r14d
	leal	(%r10,%r11), %r15d
	leal	(%r15,%r14,4), %ebp
	addl	$16, %ebp
	movl	%ebp, %r14d
	shrl	$18, %r14d
	.loc	0 37 18 is_stmt 0               # liblzma/simple/arm.c:37:18
	movb	%r14b, 10(%rcx,%r11)
	.loc	0 38 26 is_stmt 1               # liblzma/simple/arm.c:38:26
	movl	%ebp, %r14d
	shrl	$10, %r14d
	.loc	0 38 18 is_stmt 0               # liblzma/simple/arm.c:38:18
	movb	%r14b, 9(%rcx,%r11)
	.loc	0 36 9 is_stmt 1                # liblzma/simple/arm.c:36:9
	shrl	$2, %ebp
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	movb	%bpl, 8(%rcx,%r11)
.Ltmp42:
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 15(%rcx,%r11)
.Ltmp43:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	jne	.LBB2_56
.Ltmp44:
.LBB2_55:                               # %pred.store.if126
                                        #   in Loop: Header=BB2_48 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 25 20                         # liblzma/simple/arm.c:25:20
	movzbl	14(%rcx,%r11), %ebp
	.loc	0 26 9                          # liblzma/simple/arm.c:26:9
	movzbl	13(%rcx,%r11), %r14d
	.loc	0 27 9                          # liblzma/simple/arm.c:27:9
	movzbl	12(%rcx,%r11), %r15d
	.loc	0 25 34                         # liblzma/simple/arm.c:25:34
	shll	$16, %ebp
	.loc	0 26 23                         # liblzma/simple/arm.c:26:23
	shll	$8, %r14d
	.loc	0 37 26                         # liblzma/simple/arm.c:37:26
	orl	%ebp, %r14d
	orl	%r15d, %r14d
	leal	(%r10,%r11), %r15d
	leal	(%r15,%r14,4), %ebp
	addl	$20, %ebp
	movl	%ebp, %r14d
	shrl	$18, %r14d
	.loc	0 37 18 is_stmt 0               # liblzma/simple/arm.c:37:18
	movb	%r14b, 14(%rcx,%r11)
	.loc	0 38 26 is_stmt 1               # liblzma/simple/arm.c:38:26
	movl	%ebp, %r14d
	shrl	$10, %r14d
	.loc	0 38 18 is_stmt 0               # liblzma/simple/arm.c:38:18
	movb	%r14b, 13(%rcx,%r11)
	.loc	0 36 9 is_stmt 1                # liblzma/simple/arm.c:36:9
	shrl	$2, %ebp
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	movb	%bpl, 12(%rcx,%r11)
	jmp	.LBB2_56
.Ltmp45:
.LBB2_4:                                # %for.body.preheader
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 0 18 is_stmt 0                # liblzma/simple/arm.c:0:18
	xorl	%edx, %edx
.Ltmp46:
	.loc	0 23 2 is_stmt 1                # liblzma/simple/arm.c:23:2
	cmpq	$3, %rdi
	jbe	.LBB2_5
.Ltmp47:
# %bb.9:                                # %vector.scevcheck
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	movq	%r8, %rax
	addq	$-4, %rax
	movl	$0, %r10d
	adcq	$-1, %r10
	shrdq	$2, %r10, %rax
	leaq	2(%rcx), %r11
	leaq	(%rcx,%rax,4), %rbx
	addq	$2, %rbx
	cmpq	%r11, %rbx
	jb	.LBB2_5
.Ltmp48:
# %bb.10:                               # %vector.scevcheck
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 0 2 is_stmt 0                 # liblzma/simple/arm.c:0:2
	movabsq	$4611686018427387903, %r11      # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%r11, %rax
	ja	.LBB2_5
.Ltmp49:
# %bb.11:                               # %vector.scevcheck
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	leaq	1(%rcx), %rbx
	leaq	(%rcx,%rax,4), %r14
	incq	%r14
	cmpq	%rbx, %r14
	jb	.LBB2_5
.Ltmp50:
# %bb.12:                               # %vector.scevcheck
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	cmpq	%r11, %rax
	ja	.LBB2_5
.Ltmp51:
# %bb.13:                               # %vector.scevcheck
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	leaq	(%rcx,%rax,4), %rbx
	cmpq	%rcx, %rbx
	jb	.LBB2_5
.Ltmp52:
# %bb.14:                               # %vector.scevcheck
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	cmpq	%r11, %rax
	ja	.LBB2_5
.Ltmp53:
# %bb.15:                               # %vector.scevcheck
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	leaq	(,%rax,4), %rbx
	cmpq	$-9, %rbx
	ja	.LBB2_5
.Ltmp54:
# %bb.16:                               # %vector.scevcheck
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	cmpq	%r11, %rax
	ja	.LBB2_5
.Ltmp55:
# %bb.17:                               # %vector.scevcheck
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	leaq	3(%rcx), %rbx
	leaq	(%rcx,%rax,4), %r14
	addq	$3, %r14
	cmpq	%rbx, %r14
	jb	.LBB2_5
.Ltmp56:
# %bb.18:                               # %vector.scevcheck
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	cmpq	%r11, %rax
	ja	.LBB2_5
.Ltmp57:
# %bb.19:                               # %vector.scevcheck
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	cmpq	$3, %r10
	ja	.LBB2_5
.Ltmp58:
# %bb.20:                               # %vector.ph
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 23 2                          # liblzma/simple/arm.c:23:2
	movq	%rdi, %rax
	andq	$-4, %rax
	leaq	(,%rax,4), %rdx
	leaq	4(,%rax,4), %r9
	movl	$-8, %r10d
	subl	%esi, %r10d
	xorl	%r11d, %r11d
	jmp	.LBB2_21
.Ltmp59:
	.p2align	4, 0x90
.LBB2_29:                               # %pred.store.continue87
                                        #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 0 2                           # liblzma/simple/arm.c:0:2
	addq	$4, %r11
	addl	$-16, %r10d
	cmpq	%r11, %rax
	je	.LBB2_30
.Ltmp60:
.LBB2_21:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 24 21 is_stmt 1               # liblzma/simple/arm.c:24:21
	cmpb	$-21, 3(%rcx,%r11,4)
.Ltmp61:
	.loc	0 23 2                          # liblzma/simple/arm.c:23:2
	je	.LBB2_22
.Ltmp62:
# %bb.23:                               # %pred.store.continue
                                        #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 7(%rcx,%r11,4)
.Ltmp63:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	je	.LBB2_24
.Ltmp64:
.LBB2_25:                               # %pred.store.continue83
                                        #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 11(%rcx,%r11,4)
.Ltmp65:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	je	.LBB2_26
.Ltmp66:
.LBB2_27:                               # %pred.store.continue85
                                        #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 15(%rcx,%r11,4)
.Ltmp67:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	jne	.LBB2_29
	jmp	.LBB2_28
.Ltmp68:
	.p2align	4, 0x90
.LBB2_22:                               # %pred.store.if
                                        #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 25 20                         # liblzma/simple/arm.c:25:20
	movzbl	2(%rcx,%r11,4), %ebx
	.loc	0 26 9                          # liblzma/simple/arm.c:26:9
	movzbl	1(%rcx,%r11,4), %r14d
	.loc	0 27 9                          # liblzma/simple/arm.c:27:9
	movzbl	(%rcx,%r11,4), %ebp
	.loc	0 25 34                         # liblzma/simple/arm.c:25:34
	shll	$16, %ebx
	.loc	0 26 23                         # liblzma/simple/arm.c:26:23
	shll	$8, %r14d
	.loc	0 37 26                         # liblzma/simple/arm.c:37:26
	orl	%ebx, %r14d
	orl	%ebp, %r14d
	leal	(%r10,%r14,4), %ebx
	movl	%ebx, %ebp
	shrl	$18, %ebp
	.loc	0 37 18 is_stmt 0               # liblzma/simple/arm.c:37:18
	movb	%bpl, 2(%rcx,%r11,4)
	.loc	0 38 26 is_stmt 1               # liblzma/simple/arm.c:38:26
	movl	%ebx, %ebp
	shrl	$10, %ebp
	.loc	0 38 18 is_stmt 0               # liblzma/simple/arm.c:38:18
	movb	%bpl, 1(%rcx,%r11,4)
	.loc	0 36 9 is_stmt 1                # liblzma/simple/arm.c:36:9
	shrl	$2, %ebx
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	movb	%bl, (%rcx,%r11,4)
.Ltmp69:
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 7(%rcx,%r11,4)
.Ltmp70:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	jne	.LBB2_25
.Ltmp71:
.LBB2_24:                               # %pred.store.if82
                                        #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 25 20                         # liblzma/simple/arm.c:25:20
	movzbl	6(%rcx,%r11,4), %ebx
	.loc	0 26 9                          # liblzma/simple/arm.c:26:9
	movzbl	5(%rcx,%r11,4), %r14d
	.loc	0 27 9                          # liblzma/simple/arm.c:27:9
	movzbl	4(%rcx,%r11,4), %ebp
	.loc	0 25 34                         # liblzma/simple/arm.c:25:34
	shll	$16, %ebx
	.loc	0 26 23                         # liblzma/simple/arm.c:26:23
	shll	$8, %r14d
	.loc	0 37 26                         # liblzma/simple/arm.c:37:26
	orl	%ebx, %r14d
	orl	%ebp, %r14d
	leal	(%r10,%r14,4), %ebx
	addl	$-4, %ebx
	movl	%ebx, %ebp
	shrl	$18, %ebp
	.loc	0 37 18 is_stmt 0               # liblzma/simple/arm.c:37:18
	movb	%bpl, 6(%rcx,%r11,4)
	.loc	0 38 26 is_stmt 1               # liblzma/simple/arm.c:38:26
	movl	%ebx, %ebp
	shrl	$10, %ebp
	.loc	0 38 18 is_stmt 0               # liblzma/simple/arm.c:38:18
	movb	%bpl, 5(%rcx,%r11,4)
	.loc	0 36 9 is_stmt 1                # liblzma/simple/arm.c:36:9
	shrl	$2, %ebx
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	movb	%bl, 4(%rcx,%r11,4)
.Ltmp72:
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 11(%rcx,%r11,4)
.Ltmp73:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	jne	.LBB2_27
.Ltmp74:
.LBB2_26:                               # %pred.store.if84
                                        #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 25 20                         # liblzma/simple/arm.c:25:20
	movzbl	10(%rcx,%r11,4), %ebx
	.loc	0 26 9                          # liblzma/simple/arm.c:26:9
	movzbl	9(%rcx,%r11,4), %r14d
	.loc	0 27 9                          # liblzma/simple/arm.c:27:9
	movzbl	8(%rcx,%r11,4), %ebp
	.loc	0 25 34                         # liblzma/simple/arm.c:25:34
	shll	$16, %ebx
	.loc	0 26 23                         # liblzma/simple/arm.c:26:23
	shll	$8, %r14d
	.loc	0 37 26                         # liblzma/simple/arm.c:37:26
	orl	%ebx, %r14d
	orl	%ebp, %r14d
	leal	(%r10,%r14,4), %ebx
	addl	$-8, %ebx
	movl	%ebx, %ebp
	shrl	$18, %ebp
	.loc	0 37 18 is_stmt 0               # liblzma/simple/arm.c:37:18
	movb	%bpl, 10(%rcx,%r11,4)
	.loc	0 38 26 is_stmt 1               # liblzma/simple/arm.c:38:26
	movl	%ebx, %ebp
	shrl	$10, %ebp
	.loc	0 38 18 is_stmt 0               # liblzma/simple/arm.c:38:18
	movb	%bpl, 9(%rcx,%r11,4)
	.loc	0 36 9 is_stmt 1                # liblzma/simple/arm.c:36:9
	shrl	$2, %ebx
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	movb	%bl, 8(%rcx,%r11,4)
.Ltmp75:
	.loc	0 24 21                         # liblzma/simple/arm.c:24:21
	cmpb	$-21, 15(%rcx,%r11,4)
.Ltmp76:
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	jne	.LBB2_29
.Ltmp77:
.LBB2_28:                               # %pred.store.if86
                                        #   in Loop: Header=BB2_21 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 25 20                         # liblzma/simple/arm.c:25:20
	movzbl	14(%rcx,%r11,4), %ebx
	.loc	0 26 9                          # liblzma/simple/arm.c:26:9
	movzbl	13(%rcx,%r11,4), %r14d
	.loc	0 27 9                          # liblzma/simple/arm.c:27:9
	movzbl	12(%rcx,%r11,4), %ebp
	.loc	0 25 34                         # liblzma/simple/arm.c:25:34
	shll	$16, %ebx
	.loc	0 26 23                         # liblzma/simple/arm.c:26:23
	shll	$8, %r14d
	.loc	0 37 26                         # liblzma/simple/arm.c:37:26
	orl	%ebx, %r14d
	orl	%ebp, %r14d
	leal	(%r10,%r14,4), %ebx
	addl	$-12, %ebx
	movl	%ebx, %ebp
	shrl	$18, %ebp
	.loc	0 37 18 is_stmt 0               # liblzma/simple/arm.c:37:18
	movb	%bpl, 14(%rcx,%r11,4)
	.loc	0 38 26 is_stmt 1               # liblzma/simple/arm.c:38:26
	movl	%ebx, %ebp
	shrl	$10, %ebp
	.loc	0 38 18 is_stmt 0               # liblzma/simple/arm.c:38:18
	movb	%bpl, 13(%rcx,%r11,4)
	.loc	0 36 9 is_stmt 1                # liblzma/simple/arm.c:36:9
	shrl	$2, %ebx
	.loc	0 39 18                         # liblzma/simple/arm.c:39:18
	movb	%bl, 12(%rcx,%r11,4)
	jmp	.LBB2_29
.Ltmp78:
.LBB2_57:                               # %middle.block107
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 23 2                          # liblzma/simple/arm.c:23:2
	cmpq	%rax, %rdi
	je	.LBB2_58
.Ltmp79:
.LBB2_32:                               # %for.body.us.preheader132
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 0 2 is_stmt 0                 # liblzma/simple/arm.c:0:2
	addl	$8, %esi
.Ltmp80:
	#DEBUG_VALUE: arm_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	jmp	.LBB2_33
.Ltmp81:
	.p2align	4, 0x90
.LBB2_35:                               # %for.inc.us
                                        #   in Loop: Header=BB2_33 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- $rdx
	#DEBUG_VALUE: arm_code:i <- $rax
	.loc	0 23 16                         # liblzma/simple/arm.c:23:16
	leaq	4(%rax), %r9
	movq	%rax, %rdx
	.loc	0 23 20                         # liblzma/simple/arm.c:23:20
	cmpq	%r8, %r9
.Ltmp82:
	.loc	0 23 2                          # liblzma/simple/arm.c:23:2
	ja	.LBB2_8
.Ltmp83:
.LBB2_33:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	.loc	0 0 2                           # liblzma/simple/arm.c:0:2
	movq	%r9, %rax
.Ltmp84:
	#DEBUG_VALUE: arm_code:i <- $rdx
	.loc	0 24 21 is_stmt 1               # liblzma/simple/arm.c:24:21
	cmpb	$-21, 3(%rcx,%rdx)
.Ltmp85:
	.loc	0 24 7 is_stmt 0                # liblzma/simple/arm.c:24:7
	jne	.LBB2_35
.Ltmp86:
# %bb.34:                               # %if.then.us
                                        #   in Loop: Header=BB2_33 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- $rdx
	.loc	0 25 20 is_stmt 1               # liblzma/simple/arm.c:25:20
	movzbl	2(%rcx,%rdx), %edi
	.loc	0 25 34 is_stmt 0               # liblzma/simple/arm.c:25:34
	shll	$16, %edi
	.loc	0 26 9 is_stmt 1                # liblzma/simple/arm.c:26:9
	movzbl	1(%rcx,%rdx), %r9d
	.loc	0 26 23 is_stmt 0               # liblzma/simple/arm.c:26:23
	shll	$8, %r9d
	.loc	0 26 6                          # liblzma/simple/arm.c:26:6
	orl	%edi, %r9d
	.loc	0 27 9 is_stmt 1                # liblzma/simple/arm.c:27:9
	movzbl	(%rcx,%rdx), %edi
	.loc	0 27 6 is_stmt 0                # liblzma/simple/arm.c:27:6
	orl	%r9d, %edi
.Ltmp87:
	#DEBUG_VALUE: src <- $edi
	#DEBUG_VALUE: src <- undef
	.loc	0 32 36 is_stmt 1               # liblzma/simple/arm.c:32:36
	leal	(%rsi,%rdx), %r9d
	.loc	0 32 40 is_stmt 0               # liblzma/simple/arm.c:32:40
	leal	(%r9,%rdi,4), %edi
.Ltmp88:
	#DEBUG_VALUE: dest <- undef
	.loc	0 36 9 is_stmt 1                # liblzma/simple/arm.c:36:9
	movl	%edi, %r9d
	shrl	$2, %r9d
.Ltmp89:
	#DEBUG_VALUE: dest <- $r9d
	.loc	0 37 26                         # liblzma/simple/arm.c:37:26
	movl	%edi, %r10d
	shrl	$18, %r10d
	.loc	0 37 18 is_stmt 0               # liblzma/simple/arm.c:37:18
	movb	%r10b, 2(%rcx,%rdx)
	.loc	0 38 26 is_stmt 1               # liblzma/simple/arm.c:38:26
	shrl	$10, %edi
	.loc	0 38 18 is_stmt 0               # liblzma/simple/arm.c:38:18
	movb	%dil, 1(%rcx,%rdx)
	.loc	0 39 18 is_stmt 1               # liblzma/simple/arm.c:39:18
	movb	%r9b, (%rcx,%rdx)
	jmp	.LBB2_35
.Ltmp90:
.LBB2_30:                               # %middle.block
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	.loc	0 23 2                          # liblzma/simple/arm.c:23:2
	cmpq	%rax, %rdi
	jne	.LBB2_5
.Ltmp91:
.LBB2_58:
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- 0
	shlq	$2, %rax
	jmp	.LBB2_59
.Ltmp92:
	.p2align	4, 0x90
.LBB2_7:                                # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- $rdx
	#DEBUG_VALUE: arm_code:i <- $rax
	.loc	0 23 16 is_stmt 0               # liblzma/simple/arm.c:23:16
	leaq	4(%rax), %r9
	movq	%rax, %rdx
	.loc	0 23 20                         # liblzma/simple/arm.c:23:20
	cmpq	%r8, %r9
.Ltmp93:
	.loc	0 23 2                          # liblzma/simple/arm.c:23:2
	ja	.LBB2_8
.Ltmp94:
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	.loc	0 0 2                           # liblzma/simple/arm.c:0:2
	movq	%r9, %rax
.Ltmp95:
	#DEBUG_VALUE: arm_code:i <- $rdx
	.loc	0 24 21 is_stmt 1               # liblzma/simple/arm.c:24:21
	cmpb	$-21, 3(%rcx,%rdx)
.Ltmp96:
	.loc	0 24 7 is_stmt 0                # liblzma/simple/arm.c:24:7
	jne	.LBB2_7
.Ltmp97:
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: arm_code:now_pos <- $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- $rdx
	.loc	0 25 20 is_stmt 1               # liblzma/simple/arm.c:25:20
	movzbl	2(%rcx,%rdx), %edi
	.loc	0 25 34 is_stmt 0               # liblzma/simple/arm.c:25:34
	shll	$16, %edi
	.loc	0 26 9 is_stmt 1                # liblzma/simple/arm.c:26:9
	movzbl	1(%rcx,%rdx), %r9d
	.loc	0 26 23 is_stmt 0               # liblzma/simple/arm.c:26:23
	shll	$8, %r9d
	.loc	0 26 6                          # liblzma/simple/arm.c:26:6
	orl	%edi, %r9d
	.loc	0 27 9 is_stmt 1                # liblzma/simple/arm.c:27:9
	movzbl	(%rcx,%rdx), %edi
	.loc	0 27 6 is_stmt 0                # liblzma/simple/arm.c:27:6
	orl	%r9d, %edi
.Ltmp98:
	#DEBUG_VALUE: src <- $edi
	.loc	0 28 8 is_stmt 1                # liblzma/simple/arm.c:28:8
	shll	$2, %edi
.Ltmp99:
	#DEBUG_VALUE: src <- $edi
	.loc	0 34 16                         # liblzma/simple/arm.c:34:16
	subl	%edx, %edi
.Ltmp100:
	subl	%esi, %edi
	addl	$-8, %edi
.Ltmp101:
	#DEBUG_VALUE: dest <- $edi
	.loc	0 36 9                          # liblzma/simple/arm.c:36:9
	movl	%edi, %r9d
	shrl	$2, %r9d
.Ltmp102:
	#DEBUG_VALUE: dest <- $r9d
	.loc	0 37 26                         # liblzma/simple/arm.c:37:26
	movl	%edi, %r10d
	shrl	$18, %r10d
	.loc	0 37 18 is_stmt 0               # liblzma/simple/arm.c:37:18
	movb	%r10b, 2(%rcx,%rdx)
	.loc	0 38 26 is_stmt 1               # liblzma/simple/arm.c:38:26
	shrl	$10, %edi
	.loc	0 38 18 is_stmt 0               # liblzma/simple/arm.c:38:18
	movb	%dil, 1(%rcx,%rdx)
	.loc	0 39 18 is_stmt 1               # liblzma/simple/arm.c:39:18
	movb	%r9b, (%rcx,%rdx)
	jmp	.LBB2_7
.Ltmp103:
.LBB2_8:                                # %for.end.loopexit1
	#DEBUG_VALUE: arm_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	#DEBUG_VALUE: arm_code:i <- $rax
	.loc	0 43 2                          # liblzma/simple/arm.c:43:2
	addq	$-4, %r9
	movq	%r9, %rax
.Ltmp104:
.LBB2_59:
	#DEBUG_VALUE: arm_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: arm_code:buffer <- $rcx
	#DEBUG_VALUE: arm_code:size <- $r8
	.loc	0 0 2 is_stmt 0                 # liblzma/simple/arm.c:0:2
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	.loc	0 43 2                          # liblzma/simple/arm.c:43:2
	retq
.Ltmp105:
.Lfunc_end2:
	.size	arm_code, .Lfunc_end2-arm_code
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	17                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
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
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
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
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
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
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
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
	.byte	4                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	1                               # Abbrev [1] 0xc:0x4aa DW_TAG_compile_unit
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
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	70                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	69                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0x2d DW_TAG_enumeration_type
	.long	96                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x3b:0x3 DW_TAG_enumerator
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x3e:0x3 DW_TAG_enumerator
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x41:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x44:0x3 DW_TAG_enumerator
	.byte	7                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x47:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x4a:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x4d:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x50:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x53:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x56:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x59:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x5c:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x60:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x64:0x15 DW_TAG_enumeration_type
	.long	96                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x6c:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x6f:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x72:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x75:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x79:0x15 DW_TAG_enumeration_type
	.long	96                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x81:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x84:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x87:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	4                               # Abbrev [4] 0x8a:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x8e:0x8 DW_TAG_typedef
	.long	150                             # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x96:0x8 DW_TAG_typedef
	.long	96                              # DW_AT_type
	.byte	24                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x9e:0x29 DW_TAG_subprogram
	.byte	26                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	199                             # DW_AT_type
                                        # DW_AT_inline
	.byte	7                               # Abbrev [7] 0xa6:0x8 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	207                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xae:0x8 DW_TAG_formal_parameter
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	407                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xb6:0x8 DW_TAG_formal_parameter
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	740                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xbe:0x8 DW_TAG_formal_parameter
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	825                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xc7:0x8 DW_TAG_typedef
	.long	51                              # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xcf:0x5 DW_TAG_pointer_type
	.long	212                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd4:0x8 DW_TAG_typedef
	.long	220                             # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xdc:0x4e DW_TAG_structure_type
	.byte	57                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xe1:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	298                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xea:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xf3:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	335                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xfc:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	343                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x105:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	573                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x10e:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	598                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x117:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	632                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x120:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	668                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x12a:0x5 DW_TAG_pointer_type
	.long	303                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x12f:0x4 DW_TAG_typedef
	.byte	30                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x133:0x8 DW_TAG_typedef
	.long	315                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x13b:0x8 DW_TAG_typedef
	.long	323                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x143:0x8 DW_TAG_typedef
	.long	331                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x14b:0x4 DW_TAG_base_type
	.byte	32                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x14f:0x8 DW_TAG_typedef
	.long	331                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x157:0x8 DW_TAG_typedef
	.long	351                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x15f:0x5 DW_TAG_pointer_type
	.long	356                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x164:0x33 DW_TAG_subroutine_type
	.long	199                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x169:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x16e:0x5 DW_TAG_formal_parameter
	.long	407                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x173:0x5 DW_TAG_formal_parameter
	.long	509                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x178:0x5 DW_TAG_formal_parameter
	.long	544                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x17d:0x5 DW_TAG_formal_parameter
	.long	484                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x182:0x5 DW_TAG_formal_parameter
	.long	554                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x187:0x5 DW_TAG_formal_parameter
	.long	544                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x18c:0x5 DW_TAG_formal_parameter
	.long	484                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x191:0x5 DW_TAG_formal_parameter
	.long	564                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x197:0x5 DW_TAG_pointer_type
	.long	412                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x19c:0x9 DW_TAG_typedef
	.long	421                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1a5:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x1aa:0xa DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	457                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x1b4:0xa DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	492                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x1be:0xa DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	483                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1c9:0x5 DW_TAG_pointer_type
	.long	462                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1ce:0x15 DW_TAG_subroutine_type
	.long	483                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x1d3:0x5 DW_TAG_formal_parameter
	.long	483                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1d8:0x5 DW_TAG_formal_parameter
	.long	484                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1dd:0x5 DW_TAG_formal_parameter
	.long	484                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x1e3:0x1 DW_TAG_pointer_type
	.byte	5                               # Abbrev [5] 0x1e4:0x8 DW_TAG_typedef
	.long	331                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1ec:0x5 DW_TAG_pointer_type
	.long	497                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1f1:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x1f2:0x5 DW_TAG_formal_parameter
	.long	483                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1f7:0x5 DW_TAG_formal_parameter
	.long	483                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x1fd:0x5 DW_TAG_restrict_type
	.long	514                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x202:0x5 DW_TAG_pointer_type
	.long	519                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x207:0x5 DW_TAG_const_type
	.long	524                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x20c:0x8 DW_TAG_typedef
	.long	532                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x214:0x8 DW_TAG_typedef
	.long	540                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x21c:0x4 DW_TAG_base_type
	.byte	44                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0x220:0x5 DW_TAG_restrict_type
	.long	549                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x225:0x5 DW_TAG_pointer_type
	.long	484                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x22a:0x5 DW_TAG_restrict_type
	.long	559                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x22f:0x5 DW_TAG_pointer_type
	.long	524                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x234:0x9 DW_TAG_typedef
	.long	100                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x23d:0x8 DW_TAG_typedef
	.long	581                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x245:0x5 DW_TAG_pointer_type
	.long	586                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x24a:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x24b:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x250:0x5 DW_TAG_formal_parameter
	.long	407                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x256:0x5 DW_TAG_pointer_type
	.long	603                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x25b:0xb DW_TAG_subroutine_type
	.long	614                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x260:0x5 DW_TAG_formal_parameter
	.long	622                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x266:0x8 DW_TAG_typedef
	.long	121                             # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x26e:0x5 DW_TAG_pointer_type
	.long	627                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x273:0x5 DW_TAG_const_type
	.long	303                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x278:0x5 DW_TAG_pointer_type
	.long	637                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x27d:0x1a DW_TAG_subroutine_type
	.long	199                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x282:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x287:0x5 DW_TAG_formal_parameter
	.long	663                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x28c:0x5 DW_TAG_formal_parameter
	.long	663                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x291:0x5 DW_TAG_formal_parameter
	.long	315                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x297:0x5 DW_TAG_pointer_type
	.long	315                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x29c:0x5 DW_TAG_pointer_type
	.long	673                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2a1:0x1a DW_TAG_subroutine_type
	.long	199                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x2a6:0x5 DW_TAG_formal_parameter
	.long	298                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2ab:0x5 DW_TAG_formal_parameter
	.long	407                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2b0:0x5 DW_TAG_formal_parameter
	.long	699                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2b5:0x5 DW_TAG_formal_parameter
	.long	699                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2bb:0x5 DW_TAG_pointer_type
	.long	704                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x2c0:0x5 DW_TAG_const_type
	.long	709                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2c5:0x8 DW_TAG_typedef
	.long	717                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x2cd:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2d1:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2da:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	483                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2e4:0x5 DW_TAG_pointer_type
	.long	745                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x2e9:0x5 DW_TAG_const_type
	.long	750                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2ee:0x8 DW_TAG_typedef
	.long	758                             # DW_AT_type
	.byte	63                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2f6:0x21 DW_TAG_structure_type
	.byte	62                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2fb:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	307                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x304:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	791                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x30d:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	483                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x317:0x8 DW_TAG_typedef
	.long	799                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x31f:0x5 DW_TAG_pointer_type
	.long	804                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x324:0x15 DW_TAG_subroutine_type
	.long	199                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x329:0x5 DW_TAG_formal_parameter
	.long	207                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x32e:0x5 DW_TAG_formal_parameter
	.long	407                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x333:0x5 DW_TAG_formal_parameter
	.long	740                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x339:0x4 DW_TAG_base_type
	.byte	65                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x33d:0x5c DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	4                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.byte	112
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	199                             # DW_AT_type
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x34f:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	207                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x358:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	407                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x361:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	740                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x36a:0x28 DW_TAG_inlined_subroutine
	.long	158                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp0                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	60                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	25                              # Abbrev [25] 0x377:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.long	166                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x37d:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.long	174                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x383:0x6 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.long	182                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x389:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	49
	.byte	159
	.long	190                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x392:0x6 DW_TAG_call_site
	.long	921                             # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x399:0x31 DW_TAG_subprogram
	.byte	66                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	199                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x3a1:0x5 DW_TAG_formal_parameter
	.long	207                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3a6:0x5 DW_TAG_formal_parameter
	.long	407                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3ab:0x5 DW_TAG_formal_parameter
	.long	740                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3b0:0x5 DW_TAG_formal_parameter
	.long	970                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3b5:0x5 DW_TAG_formal_parameter
	.long	484                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3ba:0x5 DW_TAG_formal_parameter
	.long	484                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3bf:0x5 DW_TAG_formal_parameter
	.long	142                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3c4:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3ca:0x5 DW_TAG_pointer_type
	.long	975                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3cf:0x1f DW_TAG_subroutine_type
	.long	484                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x3d4:0x5 DW_TAG_formal_parameter
	.long	1006                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3d9:0x5 DW_TAG_formal_parameter
	.long	142                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3de:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3e3:0x5 DW_TAG_formal_parameter
	.long	559                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3e8:0x5 DW_TAG_formal_parameter
	.long	484                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3ee:0x5 DW_TAG_pointer_type
	.long	1011                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x3f3:0x8 DW_TAG_typedef
	.long	1019                            # DW_AT_type
	.byte	68                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	29                              # Abbrev [29] 0x3fb:0x2 DW_TAG_structure_type
	.byte	67                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	22                              # Abbrev [22] 0x3fd:0x5c DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	4                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.byte	112
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	199                             # DW_AT_type
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x40f:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	207                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x418:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	407                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x421:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.long	740                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x42a:0x28 DW_TAG_inlined_subroutine
	.long	158                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp4                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	68                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	25                              # Abbrev [25] 0x437:0x6 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.long	166                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x43d:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	174                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x443:0x6 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.long	182                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x449:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	48
	.byte	159
	.long	190                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x452:0x6 DW_TAG_call_site
	.long	921                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x459:0x5c DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	484                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x468:0x8 DW_TAG_formal_parameter
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	1006                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x470:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	142                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x479:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	825                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x482:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	559                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x48c:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	484                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x496:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	484                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x49f:0x15 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	32                              # Abbrev [32] 0x4a1:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	142                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x4aa:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	142                             # DW_AT_type
	.byte	0                               # End Of Children Mark
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
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	328                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/simple/arm.c"          # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=126
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=158
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=171
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=179
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=195
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=209
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=232
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=247
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=262
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=282
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=300
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=319
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=335
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=350
.Linfo_string16:
	.asciz	"LZMA_RUN"                      # string offset=366
.Linfo_string17:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=375
.Linfo_string18:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=391
.Linfo_string19:
	.asciz	"LZMA_FINISH"                   # string offset=407
.Linfo_string20:
	.asciz	"LZMA_CHECK_NONE"               # string offset=419
.Linfo_string21:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=435
.Linfo_string22:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=452
.Linfo_string23:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=469
.Linfo_string24:
	.asciz	"__uint32_t"                    # string offset=487
.Linfo_string25:
	.asciz	"uint32_t"                      # string offset=498
.Linfo_string26:
	.asciz	"arm_coder_init"                # string offset=507
.Linfo_string27:
	.asciz	"lzma_ret"                      # string offset=522
.Linfo_string28:
	.asciz	"next"                          # string offset=531
.Linfo_string29:
	.asciz	"coder"                         # string offset=536
.Linfo_string30:
	.asciz	"lzma_coder"                    # string offset=542
.Linfo_string31:
	.asciz	"id"                            # string offset=553
.Linfo_string32:
	.asciz	"unsigned long"                 # string offset=556
.Linfo_string33:
	.asciz	"__uint64_t"                    # string offset=570
.Linfo_string34:
	.asciz	"uint64_t"                      # string offset=581
.Linfo_string35:
	.asciz	"lzma_vli"                      # string offset=590
.Linfo_string36:
	.asciz	"init"                          # string offset=599
.Linfo_string37:
	.asciz	"uintptr_t"                     # string offset=604
.Linfo_string38:
	.asciz	"code"                          # string offset=614
.Linfo_string39:
	.asciz	"alloc"                         # string offset=619
.Linfo_string40:
	.asciz	"size_t"                        # string offset=625
.Linfo_string41:
	.asciz	"free"                          # string offset=632
.Linfo_string42:
	.asciz	"opaque"                        # string offset=637
.Linfo_string43:
	.asciz	"lzma_allocator"                # string offset=644
.Linfo_string44:
	.asciz	"unsigned char"                 # string offset=659
.Linfo_string45:
	.asciz	"__uint8_t"                     # string offset=673
.Linfo_string46:
	.asciz	"uint8_t"                       # string offset=683
.Linfo_string47:
	.asciz	"lzma_action"                   # string offset=691
.Linfo_string48:
	.asciz	"lzma_code_function"            # string offset=703
.Linfo_string49:
	.asciz	"end"                           # string offset=722
.Linfo_string50:
	.asciz	"lzma_end_function"             # string offset=726
.Linfo_string51:
	.asciz	"get_check"                     # string offset=744
.Linfo_string52:
	.asciz	"lzma_check"                    # string offset=754
.Linfo_string53:
	.asciz	"memconfig"                     # string offset=765
.Linfo_string54:
	.asciz	"update"                        # string offset=775
.Linfo_string55:
	.asciz	"options"                       # string offset=782
.Linfo_string56:
	.asciz	"lzma_filter"                   # string offset=790
.Linfo_string57:
	.asciz	"lzma_next_coder_s"             # string offset=802
.Linfo_string58:
	.asciz	"lzma_next_coder"               # string offset=820
.Linfo_string59:
	.asciz	"allocator"                     # string offset=836
.Linfo_string60:
	.asciz	"filters"                       # string offset=846
.Linfo_string61:
	.asciz	"lzma_init_function"            # string offset=854
.Linfo_string62:
	.asciz	"lzma_filter_info_s"            # string offset=873
.Linfo_string63:
	.asciz	"lzma_filter_info"              # string offset=892
.Linfo_string64:
	.asciz	"is_encoder"                    # string offset=909
.Linfo_string65:
	.asciz	"_Bool"                         # string offset=920
.Linfo_string66:
	.asciz	"lzma_simple_coder_init"        # string offset=926
.Linfo_string67:
	.asciz	"lzma_simple_s"                 # string offset=949
.Linfo_string68:
	.asciz	"lzma_simple"                   # string offset=963
.Linfo_string69:
	.asciz	"DW_ATE_unsigned_8"             # string offset=975
.Linfo_string70:
	.asciz	"DW_ATE_unsigned_1"             # string offset=993
.Linfo_string71:
	.asciz	"lzma_simple_arm_encoder_init"  # string offset=1011
.Linfo_string72:
	.asciz	"lzma_simple_arm_decoder_init"  # string offset=1040
.Linfo_string73:
	.asciz	"arm_code"                      # string offset=1069
.Linfo_string74:
	.asciz	"now_pos"                       # string offset=1078
.Linfo_string75:
	.asciz	"buffer"                        # string offset=1086
.Linfo_string76:
	.asciz	"size"                          # string offset=1093
.Linfo_string77:
	.asciz	"i"                             # string offset=1098
.Linfo_string78:
	.asciz	"src"                           # string offset=1100
.Linfo_string79:
	.asciz	"dest"                          # string offset=1104
.Linfo_string80:
	.asciz	"simple"                        # string offset=1109
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Ltmp1
	.quad	.Lfunc_begin1
	.quad	.Ltmp4
	.quad	.Ltmp5
	.quad	.Lfunc_begin2
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
