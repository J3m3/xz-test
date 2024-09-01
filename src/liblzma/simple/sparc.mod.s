	.text
	.file	"sparc.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/simple/sparc.c" md5 0x6066fcc16bf6e42415c178d50b4ec385
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.globl	lzma_simple_sparc_encoder_init  # -- Begin function lzma_simple_sparc_encoder_init
	.p2align	4, 0x90
	.type	lzma_simple_sparc_encoder_init,@function
lzma_simple_sparc_encoder_init:         # @lzma_simple_sparc_encoder_init
.Lfunc_begin0:
	.loc	0 71 0                          # liblzma/simple/sparc.c:71:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_sparc_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_simple_sparc_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_sparc_encoder_init:filters <- $rdx
	#DEBUG_VALUE: sparc_coder_init:next <- $rdi
	#DEBUG_VALUE: sparc_coder_init:allocator <- $rsi
	#DEBUG_VALUE: sparc_coder_init:filters <- $rdx
	#DEBUG_VALUE: sparc_coder_init:is_encoder <- [DW_OP_stack_value] 1
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp0:
	.loc	0 63 9 prologue_end             # liblzma/simple/sparc.c:63:9
	movl	$sparc_code, %ecx
	movl	$4, %r9d
	xorl	%r8d, %r8d
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
.Ltmp1:
	#DEBUG_VALUE: lzma_simple_sparc_encoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_sparc_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_sparc_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$16, %rsp
.Ltmp2:
	.cfi_adjust_cfa_offset -16
	.loc	0 72 2 epilogue_begin           # liblzma/simple/sparc.c:72:2
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	lzma_simple_sparc_encoder_init, .Lfunc_end0-lzma_simple_sparc_encoder_init
	.cfi_endproc
	.file	5 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/simple" "simple_private.h" md5 0x2921a659cca72849047c4661dc5d5b7e
                                        # -- End function
	.globl	lzma_simple_sparc_decoder_init  # -- Begin function lzma_simple_sparc_decoder_init
	.p2align	4, 0x90
	.type	lzma_simple_sparc_decoder_init,@function
lzma_simple_sparc_decoder_init:         # @lzma_simple_sparc_decoder_init
.Lfunc_begin1:
	.loc	0 79 0                          # liblzma/simple/sparc.c:79:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_sparc_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_simple_sparc_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_sparc_decoder_init:filters <- $rdx
	#DEBUG_VALUE: sparc_coder_init:next <- $rdi
	#DEBUG_VALUE: sparc_coder_init:allocator <- $rsi
	#DEBUG_VALUE: sparc_coder_init:filters <- $rdx
	#DEBUG_VALUE: sparc_coder_init:is_encoder <- [DW_OP_stack_value] 0
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp4:
	.loc	0 63 9 prologue_end             # liblzma/simple/sparc.c:63:9
	movl	$sparc_code, %ecx
	movl	$4, %r9d
	xorl	%r8d, %r8d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
.Ltmp5:
	#DEBUG_VALUE: lzma_simple_sparc_decoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_sparc_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_sparc_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$16, %rsp
.Ltmp6:
	.cfi_adjust_cfa_offset -16
	.loc	0 80 2 epilogue_begin           # liblzma/simple/sparc.c:80:2
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	lzma_simple_sparc_decoder_init, .Lfunc_end1-lzma_simple_sparc_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sparc_code
	.type	sparc_code,@function
sparc_code:                             # @sparc_code
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: sparc_code:now_pos <- $esi
	#DEBUG_VALUE: sparc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- 0
	.loc	0 23 20 prologue_end            # liblzma/simple/sparc.c:23:20
	cmpq	$4, %r8
.Ltmp8:
	.loc	0 23 2 is_stmt 0                # liblzma/simple/sparc.c:23:2
	jae	.LBB2_3
.Ltmp9:
# %bb.1:
	#DEBUG_VALUE: sparc_code:now_pos <- $esi
	#DEBUG_VALUE: sparc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- 0
	.loc	0 0 2                           # liblzma/simple/sparc.c:0:2
	xorl	%eax, %eax
	.loc	0 55 2 is_stmt 1                # liblzma/simple/sparc.c:55:2
	retq
.Ltmp10:
.LBB2_3:                                # %for.body.lr.ph
	#DEBUG_VALUE: sparc_code:now_pos <- $esi
	#DEBUG_VALUE: sparc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- 0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testb	%dl, %dl
	je	.LBB2_4
.Ltmp11:
# %bb.9:                                # %for.body.us.preheader
	#DEBUG_VALUE: sparc_code:now_pos <- $esi
	#DEBUG_VALUE: sparc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- 0
	.loc	0 23 2                          # liblzma/simple/sparc.c:23:2
	movl	%esi, %edx
.Ltmp12:
	shll	$7, %esi
.Ltmp13:
	#DEBUG_VALUE: sparc_code:now_pos <- $edx
	.loc	0 0 2 is_stmt 0                 # liblzma/simple/sparc.c:0:2
	xorl	%edi, %edi
	jmp	.LBB2_10
.Ltmp14:
	.p2align	4, 0x90
.LBB2_16:                               # %if.then.us
                                        #   in Loop: Header=BB2_10 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 29 44 is_stmt 1               # liblzma/simple/sparc.c:29:44
	shll	$24, %r9d
	.loc	0 30 9                          # liblzma/simple/sparc.c:30:9
	movzbl	%r10b, %r10d
	.loc	0 30 33 is_stmt 0               # liblzma/simple/sparc.c:30:33
	shll	$16, %r10d
	.loc	0 42 9 is_stmt 1                # liblzma/simple/sparc.c:42:9
	orl	%r9d, %r10d
	.loc	0 31 19                         # liblzma/simple/sparc.c:31:19
	movzbl	2(%rcx,%rdi), %r9d
	.loc	0 31 33 is_stmt 0               # liblzma/simple/sparc.c:31:33
	shll	$8, %r9d
	.loc	0 42 9 is_stmt 1                # liblzma/simple/sparc.c:42:9
	orl	%r10d, %r9d
	.loc	0 32 19                         # liblzma/simple/sparc.c:32:19
	movzbl	3(%rcx,%rdi), %r10d
.Ltmp15:
	#DEBUG_VALUE: src <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 3, DW_OP_or, DW_OP_LLVM_arg 2, DW_OP_or, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_constu 2, DW_OP_shl, DW_OP_stack_value] undef, undef, undef, undef
	#DEBUG_VALUE: dest <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 5, DW_OP_or, DW_OP_LLVM_arg 4, DW_OP_or, DW_OP_LLVM_arg 3, DW_OP_or, DW_OP_constu 2, DW_OP_shl, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_arg 2, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef, undef, undef, undef, undef, undef
	.loc	0 42 9                          # liblzma/simple/sparc.c:42:9
	orl	%r9d, %r10d
	leal	(%rdx,%rdi), %r9d
	leal	(%r9,%r10,4), %r9d
	movl	%r9d, %r11d
	shrl	$2, %r11d
.Ltmp16:
	#DEBUG_VALUE: dest <- $r11d
	.loc	0 44 38                         # liblzma/simple/sparc.c:44:38
	shll	$9, %r10d
	addl	%esi, %r10d
	sarl	$9, %r10d
	.loc	0 44 45 is_stmt 0               # liblzma/simple/sparc.c:44:45
	andl	$1069547520, %r10d              # imm = 0x3FC00000
	.loc	0 45 14 is_stmt 1               # liblzma/simple/sparc.c:45:14
	movl	%r11d, %ebx
	andl	$4128768, %ebx                  # imm = 0x3F0000
	.loc	0 45 6 is_stmt 0                # liblzma/simple/sparc.c:45:6
	orl	%r10d, %ebx
.Ltmp17:
	#DEBUG_VALUE: dest <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4194303, DW_OP_and, DW_OP_or, DW_OP_constu 1073741824, DW_OP_or, DW_OP_stack_value] $r10d, $r11d
	.loc	0 48 35 is_stmt 1               # liblzma/simple/sparc.c:48:35
	shrl	$24, %r10d
.Ltmp18:
	.loc	0 48 20 is_stmt 0               # liblzma/simple/sparc.c:48:20
	orb	$64, %r10b
	.loc	0 48 18                         # liblzma/simple/sparc.c:48:18
	movb	%r10b, (%rcx,%rdi)
	.loc	0 49 35 is_stmt 1               # liblzma/simple/sparc.c:49:35
	shrl	$16, %ebx
	.loc	0 49 18 is_stmt 0               # liblzma/simple/sparc.c:49:18
	movb	%bl, (%rcx,%rax)
	.loc	0 50 35 is_stmt 1               # liblzma/simple/sparc.c:50:35
	shrl	$10, %r9d
	.loc	0 50 18 is_stmt 0               # liblzma/simple/sparc.c:50:18
	movb	%r9b, 2(%rcx,%rdi)
	.loc	0 51 18 is_stmt 1               # liblzma/simple/sparc.c:51:18
	movb	%r11b, 3(%rcx,%rdi)
.Ltmp19:
.LBB2_17:                               # %for.inc.us
                                        #   in Loop: Header=BB2_10 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	#DEBUG_VALUE: sparc_code:i <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	.loc	0 23 20                         # liblzma/simple/sparc.c:23:20
	leaq	4(%rdi), %rax
	addq	$8, %rdi
.Ltmp20:
	addl	$512, %esi                      # imm = 0x200
	cmpq	%r8, %rdi
	movq	%rax, %rdi
.Ltmp21:
	.loc	0 23 2 is_stmt 0                # liblzma/simple/sparc.c:23:2
	ja	.LBB2_22
.Ltmp22:
.LBB2_10:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 25 8 is_stmt 1                # liblzma/simple/sparc.c:25:8
	movzbl	(%rcx,%rdi), %r9d
	cmpl	$64, %r9d
	.loc	0 25 26 is_stmt 0               # liblzma/simple/sparc.c:25:26
	je	.LBB2_14
.Ltmp23:
# %bb.11:                               # %for.body.us
                                        #   in Loop: Header=BB2_10 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	cmpl	$127, %r9d
	jne	.LBB2_17
.Ltmp24:
# %bb.12:                               # %land.lhs.true12.us
                                        #   in Loop: Header=BB2_10 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 27 9 is_stmt 1                # liblzma/simple/sparc.c:27:9
	movzbl	1(%rcx,%rdi), %r10d
	.loc	0 27 31 is_stmt 0               # liblzma/simple/sparc.c:27:31
	cmpb	$-65, %r10b
.Ltmp25:
	.loc	0 25 7 is_stmt 1                # liblzma/simple/sparc.c:25:7
	jbe	.LBB2_17
.Ltmp26:
# %bb.13:                               #   in Loop: Header=BB2_10 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 0 0 is_stmt 0                 # liblzma/simple/sparc.c:0:0
	movq	%rdi, %rax
	orq	$1, %rax
	.loc	0 25 7                          # liblzma/simple/sparc.c:25:7
	jmp	.LBB2_16
.Ltmp27:
	.p2align	4, 0x90
.LBB2_14:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB2_10 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 25 30                         # liblzma/simple/sparc.c:25:30
	movzbl	1(%rcx,%rdi), %r10d
	.loc	0 25 52                         # liblzma/simple/sparc.c:25:52
	cmpb	$63, %r10b
	.loc	0 26 5 is_stmt 1                # liblzma/simple/sparc.c:26:5
	ja	.LBB2_17
.Ltmp28:
# %bb.15:                               #   in Loop: Header=BB2_10 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 0 5 is_stmt 0                 # liblzma/simple/sparc.c:0:5
	leaq	1(%rdi), %rax
	jmp	.LBB2_16
.Ltmp29:
.LBB2_4:                                # %for.body.preheader
	#DEBUG_VALUE: sparc_code:now_pos <- $esi
	#DEBUG_VALUE: sparc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- 0
	.loc	0 23 2 is_stmt 1                # liblzma/simple/sparc.c:23:2
	movl	%esi, %edx
.Ltmp30:
	negl	%edx
	shll	$7, %esi
.Ltmp31:
	#DEBUG_VALUE: sparc_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	negl	%esi
	xorl	%edi, %edi
	jmp	.LBB2_5
.Ltmp32:
	.p2align	4, 0x90
.LBB2_20:                               # %if.then
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 29 44                         # liblzma/simple/sparc.c:29:44
	shll	$24, %r9d
	.loc	0 30 9                          # liblzma/simple/sparc.c:30:9
	movzbl	%r10b, %r10d
	.loc	0 30 33 is_stmt 0               # liblzma/simple/sparc.c:30:33
	shll	$16, %r10d
	.loc	0 42 9 is_stmt 1                # liblzma/simple/sparc.c:42:9
	orl	%r9d, %r10d
	.loc	0 31 19                         # liblzma/simple/sparc.c:31:19
	movzbl	2(%rcx,%rdi), %r9d
	.loc	0 31 33 is_stmt 0               # liblzma/simple/sparc.c:31:33
	shll	$8, %r9d
	.loc	0 42 9 is_stmt 1                # liblzma/simple/sparc.c:42:9
	orl	%r10d, %r9d
	.loc	0 32 19                         # liblzma/simple/sparc.c:32:19
	movzbl	3(%rcx,%rdi), %r10d
.Ltmp33:
	#DEBUG_VALUE: src <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 3, DW_OP_or, DW_OP_LLVM_arg 2, DW_OP_or, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_constu 2, DW_OP_shl, DW_OP_stack_value] undef, undef, undef, undef
	#DEBUG_VALUE: dest <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 5, DW_OP_or, DW_OP_LLVM_arg 4, DW_OP_or, DW_OP_LLVM_arg 3, DW_OP_or, DW_OP_constu 2, DW_OP_shl, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_LLVM_arg 2, DW_OP_plus, DW_OP_minus, DW_OP_stack_value] undef, undef, undef, undef, undef, undef
	.loc	0 42 9                          # liblzma/simple/sparc.c:42:9
	orl	%r9d, %r10d
	leal	(%rdx,%r10,4), %r9d
	movl	%r9d, %r11d
	shrl	$2, %r11d
.Ltmp34:
	#DEBUG_VALUE: dest <- $r11d
	.loc	0 44 38                         # liblzma/simple/sparc.c:44:38
	shll	$9, %r10d
	addl	%esi, %r10d
	sarl	$9, %r10d
	.loc	0 44 45 is_stmt 0               # liblzma/simple/sparc.c:44:45
	andl	$1069547520, %r10d              # imm = 0x3FC00000
	.loc	0 45 14 is_stmt 1               # liblzma/simple/sparc.c:45:14
	movl	%r11d, %ebx
	andl	$4128768, %ebx                  # imm = 0x3F0000
	.loc	0 45 6 is_stmt 0                # liblzma/simple/sparc.c:45:6
	orl	%r10d, %ebx
.Ltmp35:
	#DEBUG_VALUE: dest <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4194303, DW_OP_and, DW_OP_or, DW_OP_constu 1073741824, DW_OP_or, DW_OP_stack_value] $r10d, $r11d
	.loc	0 48 35 is_stmt 1               # liblzma/simple/sparc.c:48:35
	shrl	$24, %r10d
.Ltmp36:
	.loc	0 48 20 is_stmt 0               # liblzma/simple/sparc.c:48:20
	orb	$64, %r10b
	.loc	0 48 18                         # liblzma/simple/sparc.c:48:18
	movb	%r10b, (%rcx,%rdi)
	.loc	0 49 35 is_stmt 1               # liblzma/simple/sparc.c:49:35
	shrl	$16, %ebx
	.loc	0 49 18 is_stmt 0               # liblzma/simple/sparc.c:49:18
	movb	%bl, (%rcx,%rax)
	.loc	0 50 35 is_stmt 1               # liblzma/simple/sparc.c:50:35
	shrl	$10, %r9d
	.loc	0 50 18 is_stmt 0               # liblzma/simple/sparc.c:50:18
	movb	%r9b, 2(%rcx,%rdi)
	.loc	0 51 18 is_stmt 1               # liblzma/simple/sparc.c:51:18
	movb	%r11b, 3(%rcx,%rdi)
.Ltmp37:
.LBB2_21:                               # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	#DEBUG_VALUE: sparc_code:i <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rdi
	.loc	0 23 20                         # liblzma/simple/sparc.c:23:20
	leaq	4(%rdi), %rax
	addq	$8, %rdi
.Ltmp38:
	addl	$-4, %edx
	addl	$-512, %esi                     # imm = 0xFE00
	cmpq	%r8, %rdi
	movq	%rax, %rdi
.Ltmp39:
	.loc	0 23 2 is_stmt 0                # liblzma/simple/sparc.c:23:2
	ja	.LBB2_22
.Ltmp40:
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 25 8 is_stmt 1                # liblzma/simple/sparc.c:25:8
	movzbl	(%rcx,%rdi), %r9d
	cmpl	$127, %r9d
	.loc	0 25 26 is_stmt 0               # liblzma/simple/sparc.c:25:26
	je	.LBB2_18
.Ltmp41:
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	cmpl	$64, %r9d
	jne	.LBB2_21
.Ltmp42:
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 25 30                         # liblzma/simple/sparc.c:25:30
	movzbl	1(%rcx,%rdi), %r10d
	.loc	0 25 52                         # liblzma/simple/sparc.c:25:52
	cmpb	$64, %r10b
	.loc	0 26 5 is_stmt 1                # liblzma/simple/sparc.c:26:5
	jae	.LBB2_21
.Ltmp43:
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 0 0 is_stmt 0                 # liblzma/simple/sparc.c:0:0
	movq	%rdi, %rax
	orq	$1, %rax
	.loc	0 26 5                          # liblzma/simple/sparc.c:26:5
	jmp	.LBB2_20
.Ltmp44:
	.p2align	4, 0x90
.LBB2_18:                               # %land.lhs.true12
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 27 9 is_stmt 1                # liblzma/simple/sparc.c:27:9
	movzbl	1(%rcx,%rdi), %r10d
	.loc	0 27 31 is_stmt 0               # liblzma/simple/sparc.c:27:31
	cmpb	$-64, %r10b
.Ltmp45:
	.loc	0 25 7 is_stmt 1                # liblzma/simple/sparc.c:25:7
	jb	.LBB2_21
.Ltmp46:
# %bb.19:                               #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: sparc_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	#DEBUG_VALUE: sparc_code:i <- $rdi
	.loc	0 0 7 is_stmt 0                 # liblzma/simple/sparc.c:0:7
	leaq	1(%rdi), %rax
	jmp	.LBB2_20
.Ltmp47:
.LBB2_22:
	#DEBUG_VALUE: sparc_code:now_pos <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sparc_code:buffer <- $rcx
	#DEBUG_VALUE: sparc_code:size <- $r8
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.loc	0 55 2 is_stmt 1                # liblzma/simple/sparc.c:55:2
	retq
.Ltmp48:
.Lfunc_end2:
	.size	sparc_code, .Lfunc_end2-sparc_code
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	16                              # Offset entry count
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
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
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
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
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
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
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
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	117                             # DW_OP_breg5
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	33                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4194303
	.byte	255                             # 
	.byte	255                             # 
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	33                              # DW_OP_or
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1073741824
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	4                               # 
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          #   ending offset
	.byte	33                              # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	123                             # DW_OP_breg11
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4194303
	.byte	255                             # 
	.byte	255                             # 
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	33                              # DW_OP_or
	.byte	16                              # DW_OP_constu
	.byte	128                             # 1073741824
	.byte	128                             # 
	.byte	128                             # 
	.byte	128                             # 
	.byte	4                               # 
	.byte	33                              # DW_OP_or
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
	.byte	34                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x4a9 DW_TAG_compile_unit
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
	.byte	5                               # Abbrev [5] 0x9e:0x8 DW_TAG_typedef
	.long	166                             # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xa6:0x8 DW_TAG_typedef
	.long	174                             # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0xae:0x4 DW_TAG_base_type
	.byte	26                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xb2:0x29 DW_TAG_subprogram
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	219                             # DW_AT_type
                                        # DW_AT_inline
	.byte	7                               # Abbrev [7] 0xba:0x8 DW_TAG_formal_parameter
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	227                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xc2:0x8 DW_TAG_formal_parameter
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	427                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xca:0x8 DW_TAG_formal_parameter
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	740                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xd2:0x8 DW_TAG_formal_parameter
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	825                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xdb:0x8 DW_TAG_typedef
	.long	51                              # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xe3:0x5 DW_TAG_pointer_type
	.long	232                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xe8:0x8 DW_TAG_typedef
	.long	240                             # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xf0:0x4e DW_TAG_structure_type
	.byte	57                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xf5:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	318                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xfe:0x9 DW_TAG_member
	.byte	34                              # DW_AT_name
	.long	327                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x107:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	355                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x110:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	363                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x119:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	573                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x122:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	598                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x12b:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	632                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x134:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	668                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x13e:0x5 DW_TAG_pointer_type
	.long	323                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x143:0x4 DW_TAG_typedef
	.byte	33                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x147:0x8 DW_TAG_typedef
	.long	335                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x14f:0x8 DW_TAG_typedef
	.long	343                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x157:0x8 DW_TAG_typedef
	.long	351                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x15f:0x4 DW_TAG_base_type
	.byte	35                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x163:0x8 DW_TAG_typedef
	.long	351                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x16b:0x8 DW_TAG_typedef
	.long	371                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x173:0x5 DW_TAG_pointer_type
	.long	376                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x178:0x33 DW_TAG_subroutine_type
	.long	219                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x17d:0x5 DW_TAG_formal_parameter
	.long	318                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x182:0x5 DW_TAG_formal_parameter
	.long	427                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x187:0x5 DW_TAG_formal_parameter
	.long	529                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x18c:0x5 DW_TAG_formal_parameter
	.long	544                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x191:0x5 DW_TAG_formal_parameter
	.long	504                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x196:0x5 DW_TAG_formal_parameter
	.long	554                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x19b:0x5 DW_TAG_formal_parameter
	.long	544                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1a0:0x5 DW_TAG_formal_parameter
	.long	504                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1a5:0x5 DW_TAG_formal_parameter
	.long	564                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1ab:0x5 DW_TAG_pointer_type
	.long	432                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1b0:0x9 DW_TAG_typedef
	.long	441                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1b9:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x1be:0xa DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	477                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x1c8:0xa DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	512                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x1d2:0xa DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	503                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1dd:0x5 DW_TAG_pointer_type
	.long	482                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1e2:0x15 DW_TAG_subroutine_type
	.long	503                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x1e7:0x5 DW_TAG_formal_parameter
	.long	503                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1ec:0x5 DW_TAG_formal_parameter
	.long	504                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1f1:0x5 DW_TAG_formal_parameter
	.long	504                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x1f7:0x1 DW_TAG_pointer_type
	.byte	5                               # Abbrev [5] 0x1f8:0x8 DW_TAG_typedef
	.long	351                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x200:0x5 DW_TAG_pointer_type
	.long	517                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x205:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x206:0x5 DW_TAG_formal_parameter
	.long	503                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x20b:0x5 DW_TAG_formal_parameter
	.long	503                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x211:0x5 DW_TAG_restrict_type
	.long	534                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x216:0x5 DW_TAG_pointer_type
	.long	539                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x21b:0x5 DW_TAG_const_type
	.long	158                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x220:0x5 DW_TAG_restrict_type
	.long	549                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x225:0x5 DW_TAG_pointer_type
	.long	504                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x22a:0x5 DW_TAG_restrict_type
	.long	559                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x22f:0x5 DW_TAG_pointer_type
	.long	158                             # DW_AT_type
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
	.long	318                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x250:0x5 DW_TAG_formal_parameter
	.long	427                             # DW_AT_type
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
	.long	323                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x278:0x5 DW_TAG_pointer_type
	.long	637                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x27d:0x1a DW_TAG_subroutine_type
	.long	219                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x282:0x5 DW_TAG_formal_parameter
	.long	318                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x287:0x5 DW_TAG_formal_parameter
	.long	663                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x28c:0x5 DW_TAG_formal_parameter
	.long	663                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x291:0x5 DW_TAG_formal_parameter
	.long	335                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x297:0x5 DW_TAG_pointer_type
	.long	335                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x29c:0x5 DW_TAG_pointer_type
	.long	673                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2a1:0x1a DW_TAG_subroutine_type
	.long	219                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x2a6:0x5 DW_TAG_formal_parameter
	.long	318                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x2ab:0x5 DW_TAG_formal_parameter
	.long	427                             # DW_AT_type
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
	.byte	34                              # DW_AT_name
	.long	327                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2da:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	503                             # DW_AT_type
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
	.byte	34                              # DW_AT_name
	.long	327                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x304:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	791                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x30d:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	503                             # DW_AT_type
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
	.long	219                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	13                              # Abbrev [13] 0x329:0x5 DW_TAG_formal_parameter
	.long	227                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x32e:0x5 DW_TAG_formal_parameter
	.long	427                             # DW_AT_type
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
	.byte	69                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	219                             # DW_AT_type
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x34f:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	227                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x358:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	427                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x361:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	740                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x36a:0x28 DW_TAG_inlined_subroutine
	.long	178                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp0                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	72                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	25                              # Abbrev [25] 0x377:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.long	186                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x37d:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.long	194                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x383:0x6 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.long	202                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x389:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	49
	.byte	159
	.long	210                             # DW_AT_abstract_origin
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
	.long	219                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x3a1:0x5 DW_TAG_formal_parameter
	.long	227                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3a6:0x5 DW_TAG_formal_parameter
	.long	427                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3ab:0x5 DW_TAG_formal_parameter
	.long	740                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3b0:0x5 DW_TAG_formal_parameter
	.long	970                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3b5:0x5 DW_TAG_formal_parameter
	.long	504                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3ba:0x5 DW_TAG_formal_parameter
	.long	504                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3bf:0x5 DW_TAG_formal_parameter
	.long	142                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x3c4:0x5 DW_TAG_formal_parameter
	.long	825                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3ca:0x5 DW_TAG_pointer_type
	.long	975                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3cf:0x1f DW_TAG_subroutine_type
	.long	504                             # DW_AT_type
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
	.long	504                             # DW_AT_type
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
	.byte	77                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	219                             # DW_AT_type
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x40f:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	31                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	227                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x418:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	427                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x421:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	740                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x42a:0x28 DW_TAG_inlined_subroutine
	.long	178                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp4                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	80                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	25                              # Abbrev [25] 0x437:0x6 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.long	186                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x43d:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	194                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x443:0x6 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.long	202                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x449:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	48
	.byte	159
	.long	210                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x452:0x6 DW_TAG_call_site
	.long	921                             # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x459:0x5b DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	504                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x468:0x8 DW_TAG_formal_parameter
	.byte	79                              # DW_AT_name
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
	.long	504                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x496:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	504                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x49f:0x14 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	32                              # Abbrev [32] 0x4a1:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	142                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4aa:0x8 DW_TAG_variable
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
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
	.uleb128 .Ltmp14-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
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
	.asciz	"liblzma/simple/sparc.c"        # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=128
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=160
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=173
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=181
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=197
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=211
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=234
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=249
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=264
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=284
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=302
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=321
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=337
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=352
.Linfo_string16:
	.asciz	"LZMA_RUN"                      # string offset=368
.Linfo_string17:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=377
.Linfo_string18:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=393
.Linfo_string19:
	.asciz	"LZMA_FINISH"                   # string offset=409
.Linfo_string20:
	.asciz	"LZMA_CHECK_NONE"               # string offset=421
.Linfo_string21:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=437
.Linfo_string22:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=454
.Linfo_string23:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=471
.Linfo_string24:
	.asciz	"__uint32_t"                    # string offset=489
.Linfo_string25:
	.asciz	"uint32_t"                      # string offset=500
.Linfo_string26:
	.asciz	"unsigned char"                 # string offset=509
.Linfo_string27:
	.asciz	"__uint8_t"                     # string offset=523
.Linfo_string28:
	.asciz	"uint8_t"                       # string offset=533
.Linfo_string29:
	.asciz	"sparc_coder_init"              # string offset=541
.Linfo_string30:
	.asciz	"lzma_ret"                      # string offset=558
.Linfo_string31:
	.asciz	"next"                          # string offset=567
.Linfo_string32:
	.asciz	"coder"                         # string offset=572
.Linfo_string33:
	.asciz	"lzma_coder"                    # string offset=578
.Linfo_string34:
	.asciz	"id"                            # string offset=589
.Linfo_string35:
	.asciz	"unsigned long"                 # string offset=592
.Linfo_string36:
	.asciz	"__uint64_t"                    # string offset=606
.Linfo_string37:
	.asciz	"uint64_t"                      # string offset=617
.Linfo_string38:
	.asciz	"lzma_vli"                      # string offset=626
.Linfo_string39:
	.asciz	"init"                          # string offset=635
.Linfo_string40:
	.asciz	"uintptr_t"                     # string offset=640
.Linfo_string41:
	.asciz	"code"                          # string offset=650
.Linfo_string42:
	.asciz	"alloc"                         # string offset=655
.Linfo_string43:
	.asciz	"size_t"                        # string offset=661
.Linfo_string44:
	.asciz	"free"                          # string offset=668
.Linfo_string45:
	.asciz	"opaque"                        # string offset=673
.Linfo_string46:
	.asciz	"lzma_allocator"                # string offset=680
.Linfo_string47:
	.asciz	"lzma_action"                   # string offset=695
.Linfo_string48:
	.asciz	"lzma_code_function"            # string offset=707
.Linfo_string49:
	.asciz	"end"                           # string offset=726
.Linfo_string50:
	.asciz	"lzma_end_function"             # string offset=730
.Linfo_string51:
	.asciz	"get_check"                     # string offset=748
.Linfo_string52:
	.asciz	"lzma_check"                    # string offset=758
.Linfo_string53:
	.asciz	"memconfig"                     # string offset=769
.Linfo_string54:
	.asciz	"update"                        # string offset=779
.Linfo_string55:
	.asciz	"options"                       # string offset=786
.Linfo_string56:
	.asciz	"lzma_filter"                   # string offset=794
.Linfo_string57:
	.asciz	"lzma_next_coder_s"             # string offset=806
.Linfo_string58:
	.asciz	"lzma_next_coder"               # string offset=824
.Linfo_string59:
	.asciz	"allocator"                     # string offset=840
.Linfo_string60:
	.asciz	"filters"                       # string offset=850
.Linfo_string61:
	.asciz	"lzma_init_function"            # string offset=858
.Linfo_string62:
	.asciz	"lzma_filter_info_s"            # string offset=877
.Linfo_string63:
	.asciz	"lzma_filter_info"              # string offset=896
.Linfo_string64:
	.asciz	"is_encoder"                    # string offset=913
.Linfo_string65:
	.asciz	"_Bool"                         # string offset=924
.Linfo_string66:
	.asciz	"lzma_simple_coder_init"        # string offset=930
.Linfo_string67:
	.asciz	"lzma_simple_s"                 # string offset=953
.Linfo_string68:
	.asciz	"lzma_simple"                   # string offset=967
.Linfo_string69:
	.asciz	"DW_ATE_unsigned_8"             # string offset=979
.Linfo_string70:
	.asciz	"DW_ATE_unsigned_1"             # string offset=997
.Linfo_string71:
	.asciz	"lzma_simple_sparc_encoder_init" # string offset=1015
.Linfo_string72:
	.asciz	"lzma_simple_sparc_decoder_init" # string offset=1046
.Linfo_string73:
	.asciz	"sparc_code"                    # string offset=1077
.Linfo_string74:
	.asciz	"now_pos"                       # string offset=1088
.Linfo_string75:
	.asciz	"buffer"                        # string offset=1096
.Linfo_string76:
	.asciz	"size"                          # string offset=1103
.Linfo_string77:
	.asciz	"i"                             # string offset=1108
.Linfo_string78:
	.asciz	"dest"                          # string offset=1110
.Linfo_string79:
	.asciz	"simple"                        # string offset=1115
.Linfo_string80:
	.asciz	"src"                           # string offset=1122
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
