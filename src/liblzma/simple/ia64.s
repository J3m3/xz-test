	.text
	.file	"ia64.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/simple/ia64.c" md5 0x537ce06f7cec90003554685ce664077b
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	3 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	4 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.globl	lzma_simple_ia64_encoder_init   # -- Begin function lzma_simple_ia64_encoder_init
	.p2align	4, 0x90
	.type	lzma_simple_ia64_encoder_init,@function
lzma_simple_ia64_encoder_init:          # @lzma_simple_ia64_encoder_init
.Lfunc_begin0:
	.loc	0 100 0                         # liblzma/simple/ia64.c:100:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_ia64_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_simple_ia64_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_ia64_encoder_init:filters <- $rdx
	#DEBUG_VALUE: ia64_coder_init:next <- $rdi
	#DEBUG_VALUE: ia64_coder_init:allocator <- $rsi
	#DEBUG_VALUE: ia64_coder_init:filters <- $rdx
	#DEBUG_VALUE: ia64_coder_init:is_encoder <- [DW_OP_stack_value] 1
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp0:
	.loc	0 92 9 prologue_end             # liblzma/simple/ia64.c:92:9
	movl	$ia64_code, %ecx
	movl	$16, %r9d
	xorl	%r8d, %r8d
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
.Ltmp1:
	#DEBUG_VALUE: lzma_simple_ia64_encoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_ia64_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_ia64_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$16, %rsp
.Ltmp2:
	.cfi_adjust_cfa_offset -16
	.loc	0 101 2 epilogue_begin          # liblzma/simple/ia64.c:101:2
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	lzma_simple_ia64_encoder_init, .Lfunc_end0-lzma_simple_ia64_encoder_init
	.cfi_endproc
	.file	5 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/simple" "simple_private.h" md5 0x2921a659cca72849047c4661dc5d5b7e
                                        # -- End function
	.globl	lzma_simple_ia64_decoder_init   # -- Begin function lzma_simple_ia64_decoder_init
	.p2align	4, 0x90
	.type	lzma_simple_ia64_decoder_init,@function
lzma_simple_ia64_decoder_init:          # @lzma_simple_ia64_decoder_init
.Lfunc_begin1:
	.loc	0 108 0                         # liblzma/simple/ia64.c:108:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_ia64_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_simple_ia64_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_ia64_decoder_init:filters <- $rdx
	#DEBUG_VALUE: ia64_coder_init:next <- $rdi
	#DEBUG_VALUE: ia64_coder_init:allocator <- $rsi
	#DEBUG_VALUE: ia64_coder_init:filters <- $rdx
	#DEBUG_VALUE: ia64_coder_init:is_encoder <- [DW_OP_stack_value] 0
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp4:
	.loc	0 92 9 prologue_end             # liblzma/simple/ia64.c:92:9
	movl	$ia64_code, %ecx
	movl	$16, %r9d
	xorl	%r8d, %r8d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
.Ltmp5:
	#DEBUG_VALUE: lzma_simple_ia64_decoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_ia64_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_ia64_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$16, %rsp
.Ltmp6:
	.cfi_adjust_cfa_offset -16
	.loc	0 109 2 epilogue_begin          # liblzma/simple/ia64.c:109:2
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	lzma_simple_ia64_decoder_init, .Lfunc_end1-lzma_simple_ia64_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function ia64_code
	.type	ia64_code,@function
ia64_code:                              # @ia64_code
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: ia64_code:now_pos <- $esi
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- 0
	.loc	0 30 21 prologue_end            # liblzma/simple/ia64.c:30:21
	cmpq	$16, %r8
.Ltmp8:
	.loc	0 30 2 is_stmt 0                # liblzma/simple/ia64.c:30:2
	jae	.LBB2_3
.Ltmp9:
# %bb.1:
	#DEBUG_VALUE: ia64_code:now_pos <- $esi
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- 0
	.loc	0 0 2                           # liblzma/simple/ia64.c:0:2
	xorl	%eax, %eax
	.loc	0 84 2 is_stmt 1                # liblzma/simple/ia64.c:84:2
	retq
.Ltmp10:
.LBB2_3:                                # %for.body.preheader
	#DEBUG_VALUE: ia64_code:now_pos <- $esi
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- 0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$3425763327, %eax               # imm = 0xCC30FFFF
.Ltmp11:
	.loc	0 30 2                          # liblzma/simple/ia64.c:30:2
	movl	%esi, %r9d
	negl	%esi
.Ltmp12:
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	.loc	0 0 2 is_stmt 0                 # liblzma/simple/ia64.c:0:2
	xorl	%r10d, %r10d
	leal	855834624(%rax), %r11d
	jmp	.LBB2_4
.Ltmp13:
	.p2align	4, 0x90
.LBB2_13:                               # %for.inc82.2
                                        #   in Loop: Header=BB2_4 Depth=1
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- $r10
	#DEBUG_VALUE: bit_pos <- 87
	#DEBUG_VALUE: slot <- 2
	#DEBUG_VALUE: slot <- 3
	#DEBUG_VALUE: bit_pos <- 128
	#DEBUG_VALUE: ia64_code:i <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $r10
	.loc	0 30 21                         # liblzma/simple/ia64.c:30:21
	leaq	16(%r10), %rax
	addq	$32, %r10
.Ltmp14:
	addl	$-16, %esi
	cmpq	%r8, %r10
	movq	%rax, %r10
.Ltmp15:
	.loc	0 30 2                          # liblzma/simple/ia64.c:30:2
	ja	.LBB2_14
.Ltmp16:
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- $r10
	.loc	0 31 35 is_stmt 1               # liblzma/simple/ia64.c:31:35
	movzbl	(%rcx,%r10), %ebx
	.loc	0 31 45 is_stmt 0               # liblzma/simple/ia64.c:31:45
	movl	%ebx, %r14d
	andl	$31, %r14d
.Ltmp17:
	#DEBUG_VALUE: instr_template <- $r14d
	#DEBUG_VALUE: mask <- undef
	#DEBUG_VALUE: bit_pos <- 5
	#DEBUG_VALUE: slot <- 0
	.loc	0 0 45                          # liblzma/simple/ia64.c:0:45
	leal	(%r9,%r10), %eax
	testb	%dl, %dl
	cmovel	%esi, %eax
	shrl	$4, %eax
	#DEBUG_VALUE: bit_pos <- 5
.Ltmp18:
	.loc	0 36 29 is_stmt 1               # liblzma/simple/ia64.c:36:29
	leal	-24(%r14), %r15d
	cmpb	$-2, %r15b
.Ltmp19:
	.loc	0 36 8 is_stmt 0                # liblzma/simple/ia64.c:36:8
	jb	.LBB2_7
.Ltmp20:
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB2_4 Depth=1
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- $r10
	#DEBUG_VALUE: instr_template <- $r14d
	#DEBUG_VALUE: bit_pos <- 5
	#DEBUG_VALUE: slot <- 0
	#DEBUG_VALUE: byte_pos <- 0
	#DEBUG_VALUE: bit_res <- [DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] 5
	#DEBUG_VALUE: instruction <- $ebx
	#DEBUG_VALUE: j <- 1
	.loc	0 45 7 is_stmt 1                # liblzma/simple/ia64.c:45:7
	movzbl	1(%rcx,%r10), %r12d
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	movl	%r12d, %r15d
	shll	$8, %r15d
.Ltmp21:
	#DEBUG_VALUE: j <- 2
	#DEBUG_VALUE: instruction <- undef
	.loc	0 45 7                          # liblzma/simple/ia64.c:45:7
	movzbl	2(%rcx,%r10), %r13d
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	shll	$16, %r13d
	.loc	0 44 17                         # liblzma/simple/ia64.c:44:17
	orl	%r15d, %r13d
	orq	%rbx, %r13
.Ltmp22:
	#DEBUG_VALUE: j <- 3
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	movzbl	3(%rcx,%r10), %ebp
	shll	$24, %ebp
.Ltmp23:
	#DEBUG_VALUE: inst_norm <- undef
	#DEBUG_VALUE: j <- 4
	.loc	0 45 7                          # liblzma/simple/ia64.c:45:7
	movzbl	4(%rcx,%r10), %r15d
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	shlq	$32, %r15
	.loc	0 44 17                         # liblzma/simple/ia64.c:44:17
	orq	%rbp, %r15
	orq	%r13, %r15
.Ltmp24:
	#DEBUG_VALUE: j <- 5
	.loc	0 45 7                          # liblzma/simple/ia64.c:45:7
	movzbl	5(%rcx,%r10), %r13d
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	shlq	$40, %r13
	.loc	0 44 17                         # liblzma/simple/ia64.c:44:17
	orq	%r15, %r13
.Ltmp25:
	#DEBUG_VALUE: j <- 6
	.loc	0 51 6                          # liblzma/simple/ia64.c:51:6
	movq	%r13, %rbp
	movabsq	$65970697781248, %rdi           # imm = 0x3C000001C000
	andq	%rdi, %rbp
	movabsq	$21990232555520, %rdi           # imm = 0x140000000000
	cmpq	%rdi, %rbp
	jne	.LBB2_7
.Ltmp26:
# %bb.6:                                # %if.then32
                                        #   in Loop: Header=BB2_4 Depth=1
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- $r10
	#DEBUG_VALUE: instr_template <- $r14d
	#DEBUG_VALUE: bit_pos <- 5
	#DEBUG_VALUE: slot <- 0
	#DEBUG_VALUE: byte_pos <- 0
	#DEBUG_VALUE: bit_res <- [DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] 5
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 5, DW_OP_shr, DW_OP_stack_value] undef
	.loc	0 55 18                         # liblzma/simple/ia64.c:55:18
	shrq	$18, %r15
	.loc	0 54 20                         # liblzma/simple/ia64.c:54:20
	andl	$1048575, %r15d                 # imm = 0xFFFFF
.Ltmp27:
	#DEBUG_VALUE: src <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 18, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 1048575, DW_OP_and, DW_OP_stack_value] undef
	.loc	0 56 36                         # liblzma/simple/ia64.c:56:36
	movq	%r13, %rbp
	shrq	$21, %rbp
	andl	$1048576, %ebp                  # imm = 0x100000
	.loc	0 56 9 is_stmt 0                # liblzma/simple/ia64.c:56:9
	orl	%r15d, %ebp
.Ltmp28:
	#DEBUG_VALUE: dest <- [DW_OP_LLVM_arg 0, DW_OP_constu 4, DW_OP_shl, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_stack_value] undef
	#DEBUG_VALUE: src <- [DW_OP_constu 4, DW_OP_shl, DW_OP_stack_value] $ebp
	.loc	0 66 10 is_stmt 1               # liblzma/simple/ia64.c:66:10
	addl	%eax, %ebp
.Ltmp29:
	#DEBUG_VALUE: dest <- [DW_OP_constu 268435455, DW_OP_and, DW_OP_stack_value] $ebp
	.loc	0 68 15                         # liblzma/simple/ia64.c:68:15
	movabsq	$235020610584544, %rdi          # imm = 0xD5C000023FE0
	andq	%rdi, %r13
.Ltmp30:
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223325582488649696, DW_OP_and, DW_OP_stack_value] undef
	.loc	0 69 34                         # liblzma/simple/ia64.c:69:34
	movl	%ebp, %r15d
	andl	$1048575, %r15d                 # imm = 0xFFFFF
	.loc	0 69 45 is_stmt 0               # liblzma/simple/ia64.c:69:45
	shlq	$18, %r15
	.loc	0 69 15                         # liblzma/simple/ia64.c:69:15
	orq	%r13, %r15
.Ltmp31:
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223325582488649696, DW_OP_and, DW_OP_or, DW_OP_stack_value] undef
	.loc	0 70 34 is_stmt 1               # liblzma/simple/ia64.c:70:34
	andl	$1048576, %ebp                  # imm = 0x100000
.Ltmp32:
	.loc	0 71 7                          # liblzma/simple/ia64.c:71:7
	shlq	$21, %rbp
.Ltmp33:
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223325582488649696, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_stack_value] undef
	.loc	0 73 17                         # liblzma/simple/ia64.c:73:17
	andl	$31, %ebx
.Ltmp34:
	#DEBUG_VALUE: instruction <- $ebx
	.loc	0 74 17                         # liblzma/simple/ia64.c:74:17
	orq	%rbp, %rbx
.Ltmp35:
	orq	%r15, %rbx
.Ltmp36:
	#DEBUG_VALUE: instruction <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223325582488649696, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_stack_value] undef
	#DEBUG_VALUE: j <- 0
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%bl, (%rcx,%r10)
.Ltmp37:
	#DEBUG_VALUE: j <- 1
	movb	%r12b, 1(%rcx,%r10)
.Ltmp38:
	#DEBUG_VALUE: j <- 3
	#DEBUG_VALUE: j <- 2
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	movl	%ebx, %ebp
	shrl	$16, %ebp
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%bpl, 2(%rcx,%r10)
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	movl	%ebx, %ebp
	shrl	$24, %ebp
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%bpl, 3(%rcx,%r10)
.Ltmp39:
	#DEBUG_VALUE: j <- 4
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	movq	%rbx, %r15
	shrq	$32, %r15
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%r15b, 4(%rcx,%r10)
.Ltmp40:
	#DEBUG_VALUE: j <- 5
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	shrq	$40, %rbx
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%bl, 5(%rcx,%r10)
.Ltmp41:
	#DEBUG_VALUE: j <- 6
.LBB2_7:                                # %for.inc82
                                        #   in Loop: Header=BB2_4 Depth=1
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- $r10
	#DEBUG_VALUE: instr_template <- $r14d
	#DEBUG_VALUE: bit_pos <- 5
	#DEBUG_VALUE: slot <- 0
	#DEBUG_VALUE: slot <- 1
	#DEBUG_VALUE: bit_pos <- 46
	.loc	0 36 8                          # liblzma/simple/ia64.c:36:8
	btl	%r14d, %r11d
	jb	.LBB2_10
.Ltmp42:
# %bb.8:                                # %if.end.1
                                        #   in Loop: Header=BB2_4 Depth=1
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- $r10
	#DEBUG_VALUE: instr_template <- $r14d
	#DEBUG_VALUE: bit_pos <- 46
	#DEBUG_VALUE: slot <- 1
	#DEBUG_VALUE: byte_pos <- 5
	#DEBUG_VALUE: bit_res <- [DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] 46
	#DEBUG_VALUE: j <- 0
	#DEBUG_VALUE: instruction <- 0
	.loc	0 45 7                          # liblzma/simple/ia64.c:45:7
	movzbl	5(%rcx,%r10), %ebx
.Ltmp43:
	#DEBUG_VALUE: instruction <- $ebx
	#DEBUG_VALUE: j <- 1
	movzbl	6(%rcx,%r10), %r12d
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	movl	%r12d, %ebp
	shll	$8, %ebp
.Ltmp44:
	#DEBUG_VALUE: j <- 2
	#DEBUG_VALUE: instruction <- undef
	.loc	0 45 7                          # liblzma/simple/ia64.c:45:7
	movzbl	7(%rcx,%r10), %r13d
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	shll	$16, %r13d
	.loc	0 44 17                         # liblzma/simple/ia64.c:44:17
	orl	%ebp, %r13d
	orq	%rbx, %r13
.Ltmp45:
	#DEBUG_VALUE: j <- 3
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	movzbl	8(%rcx,%r10), %ebp
	shll	$24, %ebp
.Ltmp46:
	#DEBUG_VALUE: inst_norm <- undef
	#DEBUG_VALUE: j <- 4
	.loc	0 45 7                          # liblzma/simple/ia64.c:45:7
	movzbl	9(%rcx,%r10), %r15d
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	shlq	$32, %r15
	.loc	0 44 17                         # liblzma/simple/ia64.c:44:17
	orq	%rbp, %r15
	orq	%r13, %r15
.Ltmp47:
	#DEBUG_VALUE: j <- 5
	.loc	0 45 7                          # liblzma/simple/ia64.c:45:7
	movzbl	10(%rcx,%r10), %r13d
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	shlq	$40, %r13
	.loc	0 44 17                         # liblzma/simple/ia64.c:44:17
	orq	%r15, %r13
.Ltmp48:
	#DEBUG_VALUE: j <- 6
	.loc	0 51 6                          # liblzma/simple/ia64.c:51:6
	movq	%r13, %rbp
	movabsq	$131941395562496, %rdi          # imm = 0x780000038000
	andq	%rdi, %rbp
	movl	%r11d, %edi
	movq	%r9, %r11
	movabsq	$43980465111040, %r9            # imm = 0x280000000000
.Ltmp49:
	#DEBUG_VALUE: ia64_code:now_pos <- $r11d
	cmpq	%r9, %rbp
	movq	%r11, %r9
	movl	%edi, %r11d
.Ltmp50:
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	jne	.LBB2_10
.Ltmp51:
# %bb.9:                                # %if.then32.1
                                        #   in Loop: Header=BB2_4 Depth=1
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- $r10
	#DEBUG_VALUE: instr_template <- $r14d
	#DEBUG_VALUE: bit_pos <- 46
	#DEBUG_VALUE: slot <- 1
	#DEBUG_VALUE: byte_pos <- 5
	#DEBUG_VALUE: bit_res <- [DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] 46
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 6, DW_OP_shr, DW_OP_stack_value] undef
	.loc	0 55 18                         # liblzma/simple/ia64.c:55:18
	shrq	$19, %r15
	.loc	0 54 20                         # liblzma/simple/ia64.c:54:20
	andl	$1048575, %r15d                 # imm = 0xFFFFF
.Ltmp52:
	#DEBUG_VALUE: src <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 19, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 1048575, DW_OP_and, DW_OP_stack_value] undef
	.loc	0 56 36                         # liblzma/simple/ia64.c:56:36
	movq	%r13, %rbp
	shrq	$22, %rbp
	andl	$1048576, %ebp                  # imm = 0x100000
	.loc	0 56 9 is_stmt 0                # liblzma/simple/ia64.c:56:9
	orl	%r15d, %ebp
.Ltmp53:
	#DEBUG_VALUE: dest <- [DW_OP_LLVM_arg 0, DW_OP_constu 4, DW_OP_shl, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_stack_value] undef
	#DEBUG_VALUE: src <- [DW_OP_constu 4, DW_OP_shl, DW_OP_stack_value] $ebp
	.loc	0 66 10 is_stmt 1               # liblzma/simple/ia64.c:66:10
	addl	%eax, %ebp
.Ltmp54:
	#DEBUG_VALUE: dest <- [DW_OP_constu 268435455, DW_OP_and, DW_OP_stack_value] $ebp
	.loc	0 68 15                         # liblzma/simple/ia64.c:68:15
	movabsq	$188566244458432, %rdi          # imm = 0xAB8000047FC0
	andq	%rdi, %r13
.Ltmp55:
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223279128122523584, DW_OP_and, DW_OP_stack_value] undef
	.loc	0 69 34                         # liblzma/simple/ia64.c:69:34
	movl	%ebp, %r15d
	andl	$1048575, %r15d                 # imm = 0xFFFFF
	.loc	0 69 45 is_stmt 0               # liblzma/simple/ia64.c:69:45
	shlq	$19, %r15
	.loc	0 69 15                         # liblzma/simple/ia64.c:69:15
	orq	%r13, %r15
.Ltmp56:
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223279128122523584, DW_OP_and, DW_OP_or, DW_OP_stack_value] undef
	.loc	0 70 34 is_stmt 1               # liblzma/simple/ia64.c:70:34
	andl	$1048576, %ebp                  # imm = 0x100000
.Ltmp57:
	.loc	0 71 7                          # liblzma/simple/ia64.c:71:7
	shlq	$22, %rbp
.Ltmp58:
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223279128122523584, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_stack_value] undef
	.loc	0 73 17                         # liblzma/simple/ia64.c:73:17
	andl	$63, %ebx
.Ltmp59:
	#DEBUG_VALUE: instruction <- $ebx
	.loc	0 74 17                         # liblzma/simple/ia64.c:74:17
	orq	%rbp, %rbx
.Ltmp60:
	orq	%r15, %rbx
.Ltmp61:
	#DEBUG_VALUE: instruction <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223279128122523584, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_stack_value] undef
	#DEBUG_VALUE: j <- 0
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%bl, 5(%rcx,%r10)
.Ltmp62:
	#DEBUG_VALUE: j <- 1
	movb	%r12b, 6(%rcx,%r10)
.Ltmp63:
	#DEBUG_VALUE: j <- 3
	#DEBUG_VALUE: j <- 2
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	movl	%ebx, %ebp
	shrl	$16, %ebp
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%bpl, 7(%rcx,%r10)
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	movl	%ebx, %ebp
	shrl	$24, %ebp
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%bpl, 8(%rcx,%r10)
.Ltmp64:
	#DEBUG_VALUE: j <- 4
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	movq	%rbx, %r15
	shrq	$32, %r15
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%r15b, 9(%rcx,%r10)
.Ltmp65:
	#DEBUG_VALUE: j <- 5
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	shrq	$40, %rbx
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%bl, 10(%rcx,%r10)
.Ltmp66:
	#DEBUG_VALUE: j <- 6
.LBB2_10:                               # %for.inc82.1
                                        #   in Loop: Header=BB2_4 Depth=1
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- $r10
	#DEBUG_VALUE: instr_template <- $r14d
	#DEBUG_VALUE: bit_pos <- 46
	#DEBUG_VALUE: slot <- 1
	#DEBUG_VALUE: slot <- 2
	#DEBUG_VALUE: bit_pos <- 87
	.loc	0 36 8                          # liblzma/simple/ia64.c:36:8
	movl	$3425763327, %edi               # imm = 0xCC30FFFF
	btl	%r14d, %edi
	jb	.LBB2_13
.Ltmp67:
# %bb.11:                               # %if.end.2
                                        #   in Loop: Header=BB2_4 Depth=1
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- $r10
	#DEBUG_VALUE: instr_template <- $r14d
	#DEBUG_VALUE: bit_pos <- 87
	#DEBUG_VALUE: slot <- 2
	#DEBUG_VALUE: byte_pos <- 10
	#DEBUG_VALUE: bit_res <- [DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] 87
	#DEBUG_VALUE: j <- 0
	#DEBUG_VALUE: instruction <- 0
	.loc	0 45 7                          # liblzma/simple/ia64.c:45:7
	movzbl	10(%rcx,%r10), %ebx
.Ltmp68:
	#DEBUG_VALUE: instruction <- $ebx
	#DEBUG_VALUE: j <- 1
	movzbl	11(%rcx,%r10), %r14d
.Ltmp69:
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	movl	%r14d, %ebp
	shll	$8, %ebp
.Ltmp70:
	#DEBUG_VALUE: j <- 2
	#DEBUG_VALUE: instruction <- undef
	.loc	0 45 7                          # liblzma/simple/ia64.c:45:7
	movzbl	12(%rcx,%r10), %r12d
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	shll	$16, %r12d
	.loc	0 44 17                         # liblzma/simple/ia64.c:44:17
	orl	%ebp, %r12d
	orq	%rbx, %r12
.Ltmp71:
	#DEBUG_VALUE: j <- 3
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	movzbl	13(%rcx,%r10), %r13d
	shll	$24, %r13d
.Ltmp72:
	#DEBUG_VALUE: inst_norm <- undef
	#DEBUG_VALUE: j <- 4
	.loc	0 45 7                          # liblzma/simple/ia64.c:45:7
	movzbl	14(%rcx,%r10), %r15d
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	shlq	$32, %r15
	.loc	0 44 17                         # liblzma/simple/ia64.c:44:17
	orq	%r13, %r15
	orq	%r12, %r15
.Ltmp73:
	#DEBUG_VALUE: j <- 5
	.loc	0 45 7                          # liblzma/simple/ia64.c:45:7
	movzbl	15(%rcx,%r10), %r12d
	.loc	0 46 7                          # liblzma/simple/ia64.c:46:7
	shlq	$40, %r12
	.loc	0 44 17                         # liblzma/simple/ia64.c:44:17
	orq	%r15, %r12
.Ltmp74:
	#DEBUG_VALUE: j <- 6
	.loc	0 51 6                          # liblzma/simple/ia64.c:51:6
	movq	%r12, %r13
	movabsq	$263882791124992, %rdi          # imm = 0xF00000070000
	andq	%rdi, %r13
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	cmpq	%rdi, %r13
	jne	.LBB2_13
.Ltmp75:
# %bb.12:                               # %if.then32.2
                                        #   in Loop: Header=BB2_4 Depth=1
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	#DEBUG_VALUE: ia64_code:i <- $r10
	#DEBUG_VALUE: bit_pos <- 87
	#DEBUG_VALUE: slot <- 2
	#DEBUG_VALUE: byte_pos <- 10
	#DEBUG_VALUE: bit_res <- [DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] 87
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 7, DW_OP_shr, DW_OP_stack_value] undef
	.loc	0 55 18                         # liblzma/simple/ia64.c:55:18
	shrq	$20, %r15
.Ltmp76:
	#DEBUG_VALUE: src <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 20, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 1048575, DW_OP_and, DW_OP_stack_value] undef
	.loc	0 56 36                         # liblzma/simple/ia64.c:56:36
	movq	%r12, %r13
	shrq	$23, %r13
	andl	$1048576, %r13d                 # imm = 0x100000
	.loc	0 56 9 is_stmt 0                # liblzma/simple/ia64.c:56:9
	orl	%r13d, %r15d
.Ltmp77:
	#DEBUG_VALUE: dest <- [DW_OP_LLVM_arg 0, DW_OP_constu 4, DW_OP_shl, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_stack_value] undef
	#DEBUG_VALUE: src <- [DW_OP_constu 4, DW_OP_shl, DW_OP_stack_value] $r15d
	.loc	0 66 10 is_stmt 1               # liblzma/simple/ia64.c:66:10
	addl	%r15d, %eax
.Ltmp78:
	#DEBUG_VALUE: dest <- [DW_OP_constu 268435455, DW_OP_and, DW_OP_stack_value] $eax
	.loc	0 68 15                         # liblzma/simple/ia64.c:68:15
	movabsq	$95657512206208, %rdi           # imm = 0x57000008FF80
	andq	%rdi, %r12
.Ltmp79:
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223186219390271360, DW_OP_and, DW_OP_stack_value] undef
	.loc	0 69 34                         # liblzma/simple/ia64.c:69:34
	movl	%eax, %r15d
.Ltmp80:
	andl	$1048575, %r15d                 # imm = 0xFFFFF
	.loc	0 69 45 is_stmt 0               # liblzma/simple/ia64.c:69:45
	shlq	$20, %r15
	.loc	0 69 15                         # liblzma/simple/ia64.c:69:15
	orq	%r12, %r15
.Ltmp81:
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223186219390271360, DW_OP_and, DW_OP_or, DW_OP_stack_value] undef
	.loc	0 70 34 is_stmt 1               # liblzma/simple/ia64.c:70:34
	andl	$1048576, %eax                  # imm = 0x100000
.Ltmp82:
	.loc	0 71 7                          # liblzma/simple/ia64.c:71:7
	shlq	$23, %rax
.Ltmp83:
	#DEBUG_VALUE: inst_norm <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223186219390271360, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_stack_value] undef
	.loc	0 73 17                         # liblzma/simple/ia64.c:73:17
	andl	$127, %ebx
.Ltmp84:
	#DEBUG_VALUE: instruction <- $ebx
	.loc	0 74 17                         # liblzma/simple/ia64.c:74:17
	orq	%rax, %rbx
.Ltmp85:
	orq	%r15, %rbx
.Ltmp86:
	#DEBUG_VALUE: instruction <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_or, DW_OP_or, DW_OP_constu 9223186219390271360, DW_OP_and, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_LLVM_arg 0, DW_OP_or, DW_OP_stack_value] undef
	#DEBUG_VALUE: j <- 0
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%bl, 10(%rcx,%r10)
.Ltmp87:
	#DEBUG_VALUE: j <- 1
	movb	%r14b, 11(%rcx,%r10)
.Ltmp88:
	#DEBUG_VALUE: j <- 3
	#DEBUG_VALUE: j <- 2
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	movl	%ebx, %eax
	shrl	$16, %eax
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%al, 12(%rcx,%r10)
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	movl	%ebx, %eax
	shrl	$24, %eax
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%al, 13(%rcx,%r10)
.Ltmp89:
	#DEBUG_VALUE: j <- 4
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	movq	%rbx, %rax
	shrq	$32, %rax
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%al, 14(%rcx,%r10)
.Ltmp90:
	#DEBUG_VALUE: j <- 5
	.loc	0 79 8                          # liblzma/simple/ia64.c:79:8
	shrq	$40, %rbx
	.loc	0 77 31                         # liblzma/simple/ia64.c:77:31
	movb	%bl, 15(%rcx,%r10)
.Ltmp91:
	#DEBUG_VALUE: j <- 6
	.loc	0 0 31 is_stmt 0                # liblzma/simple/ia64.c:0:31
	jmp	.LBB2_13
.Ltmp92:
.LBB2_14:
	#DEBUG_VALUE: ia64_code:now_pos <- $r9d
	#DEBUG_VALUE: ia64_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: ia64_code:buffer <- $rcx
	#DEBUG_VALUE: ia64_code:size <- $r8
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	.loc	0 84 2 is_stmt 1                # liblzma/simple/ia64.c:84:2
	retq
.Ltmp93:
.Lfunc_end2:
	.size	ia64_code, .Lfunc_end2-ia64_code
	.cfi_endproc
                                        # -- End function
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	24                              # Offset entry count
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
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	91                              # super-register DW_OP_reg11
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	122                             # DW_OP_breg10
	.byte	16                              # 16
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	90                              # DW_OP_reg10
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	46                              # 46
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	87                              # 87
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp69-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	58                              # DW_OP_lit10
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	55                              # DW_OP_lit7
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	46                              # 46
	.byte	55                              # DW_OP_lit7
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	16                              # DW_OP_constu
	.byte	87                              # 87
	.byte	55                              # DW_OP_lit7
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	51                              # DW_OP_lit3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp72-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	52                              # DW_OP_lit4
	.byte	36                              # DW_OP_shl
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	52                              # DW_OP_lit4
	.byte	36                              # DW_OP_shl
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	12                              # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	52                              # DW_OP_lit4
	.byte	36                              # DW_OP_shl
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	16                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	16                              # DW_OP_constu
	.byte	255                             # 268435455
	.byte	255                             # 
	.byte	255                             # 
	.byte	127                             # 
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	16                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	16                              # DW_OP_constu
	.byte	255                             # 268435455
	.byte	255                             # 
	.byte	255                             # 
	.byte	127                             # 
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	16                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	16                              # DW_OP_constu
	.byte	255                             # 268435455
	.byte	255                             # 
	.byte	255                             # 
	.byte	127                             # 
	.byte	26                              # DW_OP_and
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	49                              # DW_OP_lit1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	50                              # DW_OP_lit2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	52                              # DW_OP_lit4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	53                              # DW_OP_lit5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	54                              # DW_OP_lit6
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
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
	.byte	1                               # Abbrev [1] 0xc:0x553 DW_TAG_compile_unit
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
	.byte	72                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	71                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0xeb DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	760                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x42:0x8 DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	286                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x4a:0x8 DW_TAG_formal_parameter
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	1262                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x52:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	303                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5b:0x1d DW_TAG_formal_parameter
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
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	1081                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x78:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	815                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x82:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	88
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	760                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x8c:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	760                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x95:0x88 DW_TAG_lexical_block
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp92-.Ltmp16                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0x9b:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	303                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xa4:0x9 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xad:0x8 DW_TAG_variable
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb5:0x67 DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp92-.Ltmp18                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0xbb:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	760                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xc4:0x57 DW_TAG_lexical_block
	.byte	8                               # DW_AT_low_pc
	.long	.Ltmp92-.Ltmp18                 # DW_AT_high_pc
	.byte	8                               # Abbrev [8] 0xca:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	1369                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0xd3:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	298                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xdc:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	414                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xe5:0x8 DW_TAG_variable
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	414                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xed:0xc DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	8                               # Abbrev [8] 0xef:0x9 DW_TAG_variable
	.byte	20                              # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	760                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xf9:0x21 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	8                               # Abbrev [8] 0xfb:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	303                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x104:0x9 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	303                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x10d:0xc DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	8                               # Abbrev [8] 0x10f:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	760                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x11e:0xc DW_TAG_array_type
	.long	298                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x123:0x6 DW_TAG_subrange_type
	.long	323                             # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x12a:0x5 DW_TAG_const_type
	.long	303                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x12f:0x8 DW_TAG_typedef
	.long	311                             # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x137:0x8 DW_TAG_typedef
	.long	319                             # DW_AT_type
	.byte	5                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x13f:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0x143:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	17                              # Abbrev [17] 0x147:0x2d DW_TAG_enumeration_type
	.long	319                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x14f:0x3 DW_TAG_enumerator
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x152:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x155:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x158:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x15b:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x15e:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x161:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x164:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x167:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x16a:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x16d:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x170:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x174:0x15 DW_TAG_enumeration_type
	.long	319                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x17c:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x17f:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x182:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x185:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x189:0x15 DW_TAG_enumeration_type
	.long	319                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x191:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x194:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x197:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	18                              # Abbrev [18] 0x19a:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x19e:0x8 DW_TAG_typedef
	.long	422                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1a6:0x8 DW_TAG_typedef
	.long	430                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x1ae:0x4 DW_TAG_base_type
	.byte	28                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x1b2:0x8 DW_TAG_typedef
	.long	442                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1ba:0x8 DW_TAG_typedef
	.long	450                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x1c2:0x4 DW_TAG_base_type
	.byte	31                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0x1c6:0x29 DW_TAG_subprogram
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	495                             # DW_AT_type
                                        # DW_AT_inline
	.byte	5                               # Abbrev [5] 0x1ce:0x8 DW_TAG_formal_parameter
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	503                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1d6:0x8 DW_TAG_formal_parameter
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	683                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1de:0x8 DW_TAG_formal_parameter
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	996                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1e6:0x8 DW_TAG_formal_parameter
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	1081                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1ef:0x8 DW_TAG_typedef
	.long	327                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x1f7:0x5 DW_TAG_pointer_type
	.long	508                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1fc:0x8 DW_TAG_typedef
	.long	516                             # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x204:0x4e DW_TAG_structure_type
	.byte	59                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x209:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x212:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	603                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x21b:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	611                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x224:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	619                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x22d:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	829                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x236:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	854                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x23f:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	888                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x248:0x9 DW_TAG_member
	.byte	56                              # DW_AT_name
	.long	924                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x252:0x5 DW_TAG_pointer_type
	.long	599                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x257:0x4 DW_TAG_typedef
	.byte	38                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x25b:0x8 DW_TAG_typedef
	.long	414                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x263:0x8 DW_TAG_typedef
	.long	430                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x26b:0x8 DW_TAG_typedef
	.long	627                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x273:0x5 DW_TAG_pointer_type
	.long	632                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x278:0x33 DW_TAG_subroutine_type
	.long	495                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x27d:0x5 DW_TAG_formal_parameter
	.long	594                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x282:0x5 DW_TAG_formal_parameter
	.long	683                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x287:0x5 DW_TAG_formal_parameter
	.long	785                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x28c:0x5 DW_TAG_formal_parameter
	.long	800                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x291:0x5 DW_TAG_formal_parameter
	.long	760                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x296:0x5 DW_TAG_formal_parameter
	.long	810                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x29b:0x5 DW_TAG_formal_parameter
	.long	800                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2a0:0x5 DW_TAG_formal_parameter
	.long	760                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2a5:0x5 DW_TAG_formal_parameter
	.long	820                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x2ab:0x5 DW_TAG_pointer_type
	.long	688                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x2b0:0x9 DW_TAG_typedef
	.long	697                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x2b9:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	28                              # Abbrev [28] 0x2be:0xa DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	733                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	28                              # Abbrev [28] 0x2c8:0xa DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	768                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	28                              # Abbrev [28] 0x2d2:0xa DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	759                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x2dd:0x5 DW_TAG_pointer_type
	.long	738                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x2e2:0x15 DW_TAG_subroutine_type
	.long	759                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x2e7:0x5 DW_TAG_formal_parameter
	.long	759                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2ec:0x5 DW_TAG_formal_parameter
	.long	760                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2f1:0x5 DW_TAG_formal_parameter
	.long	760                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x2f7:0x1 DW_TAG_pointer_type
	.byte	15                              # Abbrev [15] 0x2f8:0x8 DW_TAG_typedef
	.long	430                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x300:0x5 DW_TAG_pointer_type
	.long	773                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x305:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x306:0x5 DW_TAG_formal_parameter
	.long	759                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x30b:0x5 DW_TAG_formal_parameter
	.long	759                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x311:0x5 DW_TAG_restrict_type
	.long	790                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x316:0x5 DW_TAG_pointer_type
	.long	795                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x31b:0x5 DW_TAG_const_type
	.long	434                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x320:0x5 DW_TAG_restrict_type
	.long	805                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x325:0x5 DW_TAG_pointer_type
	.long	760                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x32a:0x5 DW_TAG_restrict_type
	.long	815                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x32f:0x5 DW_TAG_pointer_type
	.long	434                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x334:0x9 DW_TAG_typedef
	.long	372                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x33d:0x8 DW_TAG_typedef
	.long	837                             # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x345:0x5 DW_TAG_pointer_type
	.long	842                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x34a:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x34b:0x5 DW_TAG_formal_parameter
	.long	594                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x350:0x5 DW_TAG_formal_parameter
	.long	683                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x356:0x5 DW_TAG_pointer_type
	.long	859                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x35b:0xb DW_TAG_subroutine_type
	.long	870                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x360:0x5 DW_TAG_formal_parameter
	.long	878                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x366:0x8 DW_TAG_typedef
	.long	393                             # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x36e:0x5 DW_TAG_pointer_type
	.long	883                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x373:0x5 DW_TAG_const_type
	.long	599                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x378:0x5 DW_TAG_pointer_type
	.long	893                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x37d:0x1a DW_TAG_subroutine_type
	.long	495                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x382:0x5 DW_TAG_formal_parameter
	.long	594                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x387:0x5 DW_TAG_formal_parameter
	.long	919                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x38c:0x5 DW_TAG_formal_parameter
	.long	919                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x391:0x5 DW_TAG_formal_parameter
	.long	414                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x397:0x5 DW_TAG_pointer_type
	.long	414                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x39c:0x5 DW_TAG_pointer_type
	.long	929                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3a1:0x1a DW_TAG_subroutine_type
	.long	495                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x3a6:0x5 DW_TAG_formal_parameter
	.long	594                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x3ab:0x5 DW_TAG_formal_parameter
	.long	683                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x3b0:0x5 DW_TAG_formal_parameter
	.long	955                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x3b5:0x5 DW_TAG_formal_parameter
	.long	955                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x3bb:0x5 DW_TAG_pointer_type
	.long	960                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x3c0:0x5 DW_TAG_const_type
	.long	965                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x3c5:0x8 DW_TAG_typedef
	.long	973                             # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	32                              # Abbrev [32] 0x3cd:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x3d1:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	603                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x3da:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	759                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x3e4:0x5 DW_TAG_pointer_type
	.long	1001                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x3e9:0x5 DW_TAG_const_type
	.long	1006                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x3ee:0x8 DW_TAG_typedef
	.long	1014                            # DW_AT_type
	.byte	65                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x3f6:0x21 DW_TAG_structure_type
	.byte	64                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x3fb:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	603                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x404:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	1047                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x40d:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	759                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x417:0x8 DW_TAG_typedef
	.long	1055                            # DW_AT_type
	.byte	63                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x41f:0x5 DW_TAG_pointer_type
	.long	1060                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x424:0x15 DW_TAG_subroutine_type
	.long	495                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x429:0x5 DW_TAG_formal_parameter
	.long	503                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x42e:0x5 DW_TAG_formal_parameter
	.long	683                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x433:0x5 DW_TAG_formal_parameter
	.long	996                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x439:0x4 DW_TAG_base_type
	.byte	67                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	33                              # Abbrev [33] 0x43d:0x5c DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	4                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.byte	112
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	495                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x44f:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.long	503                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x458:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.long	683                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x461:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.long	996                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x46a:0x28 DW_TAG_inlined_subroutine
	.long	454                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp0                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	101                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x477:0x6 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.long	462                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x47d:0x6 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.long	470                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x483:0x6 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.long	478                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x489:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	49
	.byte	159
	.long	486                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x492:0x6 DW_TAG_call_site
	.long	1177                            # DW_AT_call_origin
	.byte	2                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x499:0x31 DW_TAG_subprogram
	.byte	68                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	495                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x4a1:0x5 DW_TAG_formal_parameter
	.long	503                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4a6:0x5 DW_TAG_formal_parameter
	.long	683                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4ab:0x5 DW_TAG_formal_parameter
	.long	996                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4b0:0x5 DW_TAG_formal_parameter
	.long	1226                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4b5:0x5 DW_TAG_formal_parameter
	.long	760                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4ba:0x5 DW_TAG_formal_parameter
	.long	760                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4bf:0x5 DW_TAG_formal_parameter
	.long	303                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4c4:0x5 DW_TAG_formal_parameter
	.long	1081                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x4ca:0x5 DW_TAG_pointer_type
	.long	1231                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4cf:0x1f DW_TAG_subroutine_type
	.long	760                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	25                              # Abbrev [25] 0x4d4:0x5 DW_TAG_formal_parameter
	.long	1262                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4d9:0x5 DW_TAG_formal_parameter
	.long	303                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4de:0x5 DW_TAG_formal_parameter
	.long	1081                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4e3:0x5 DW_TAG_formal_parameter
	.long	815                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x4e8:0x5 DW_TAG_formal_parameter
	.long	760                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x4ee:0x5 DW_TAG_pointer_type
	.long	1267                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x4f3:0x8 DW_TAG_typedef
	.long	1275                            # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	39                              # Abbrev [39] 0x4fb:0x2 DW_TAG_structure_type
	.byte	69                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x4fd:0x5c DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	4                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.byte	112
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	495                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x50f:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	503                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x518:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	683                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x521:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	996                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x52a:0x28 DW_TAG_inlined_subroutine
	.long	454                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp4                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	109                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x537:0x6 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.long	462                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x53d:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	470                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x543:0x6 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.long	478                             # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x549:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	48
	.byte	159
	.long	486                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x552:0x6 DW_TAG_call_site
	.long	1177                            # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x559:0x5 DW_TAG_const_type
	.long	760                             # DW_AT_type
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
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp67-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	372                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/simple/ia64.c"         # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=127
.Linfo_string3:
	.asciz	"BRANCH_TABLE"                  # string offset=159
.Linfo_string4:
	.asciz	"unsigned int"                  # string offset=172
.Linfo_string5:
	.asciz	"__uint32_t"                    # string offset=185
.Linfo_string6:
	.asciz	"uint32_t"                      # string offset=196
.Linfo_string7:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=205
.Linfo_string8:
	.asciz	"LZMA_OK"                       # string offset=225
.Linfo_string9:
	.asciz	"LZMA_STREAM_END"               # string offset=233
.Linfo_string10:
	.asciz	"LZMA_NO_CHECK"                 # string offset=249
.Linfo_string11:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=263
.Linfo_string12:
	.asciz	"LZMA_GET_CHECK"                # string offset=286
.Linfo_string13:
	.asciz	"LZMA_MEM_ERROR"                # string offset=301
.Linfo_string14:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=316
.Linfo_string15:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=336
.Linfo_string16:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=354
.Linfo_string17:
	.asciz	"LZMA_DATA_ERROR"               # string offset=373
.Linfo_string18:
	.asciz	"LZMA_BUF_ERROR"                # string offset=389
.Linfo_string19:
	.asciz	"LZMA_PROG_ERROR"               # string offset=404
.Linfo_string20:
	.asciz	"LZMA_RUN"                      # string offset=420
.Linfo_string21:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=429
.Linfo_string22:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=445
.Linfo_string23:
	.asciz	"LZMA_FINISH"                   # string offset=461
.Linfo_string24:
	.asciz	"LZMA_CHECK_NONE"               # string offset=473
.Linfo_string25:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=489
.Linfo_string26:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=506
.Linfo_string27:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=523
.Linfo_string28:
	.asciz	"unsigned long"                 # string offset=541
.Linfo_string29:
	.asciz	"__uint64_t"                    # string offset=555
.Linfo_string30:
	.asciz	"uint64_t"                      # string offset=566
.Linfo_string31:
	.asciz	"unsigned char"                 # string offset=575
.Linfo_string32:
	.asciz	"__uint8_t"                     # string offset=589
.Linfo_string33:
	.asciz	"uint8_t"                       # string offset=599
.Linfo_string34:
	.asciz	"ia64_coder_init"               # string offset=607
.Linfo_string35:
	.asciz	"lzma_ret"                      # string offset=623
.Linfo_string36:
	.asciz	"next"                          # string offset=632
.Linfo_string37:
	.asciz	"coder"                         # string offset=637
.Linfo_string38:
	.asciz	"lzma_coder"                    # string offset=643
.Linfo_string39:
	.asciz	"id"                            # string offset=654
.Linfo_string40:
	.asciz	"lzma_vli"                      # string offset=657
.Linfo_string41:
	.asciz	"init"                          # string offset=666
.Linfo_string42:
	.asciz	"uintptr_t"                     # string offset=671
.Linfo_string43:
	.asciz	"code"                          # string offset=681
.Linfo_string44:
	.asciz	"alloc"                         # string offset=686
.Linfo_string45:
	.asciz	"size_t"                        # string offset=692
.Linfo_string46:
	.asciz	"free"                          # string offset=699
.Linfo_string47:
	.asciz	"opaque"                        # string offset=704
.Linfo_string48:
	.asciz	"lzma_allocator"                # string offset=711
.Linfo_string49:
	.asciz	"lzma_action"                   # string offset=726
.Linfo_string50:
	.asciz	"lzma_code_function"            # string offset=738
.Linfo_string51:
	.asciz	"end"                           # string offset=757
.Linfo_string52:
	.asciz	"lzma_end_function"             # string offset=761
.Linfo_string53:
	.asciz	"get_check"                     # string offset=779
.Linfo_string54:
	.asciz	"lzma_check"                    # string offset=789
.Linfo_string55:
	.asciz	"memconfig"                     # string offset=800
.Linfo_string56:
	.asciz	"update"                        # string offset=810
.Linfo_string57:
	.asciz	"options"                       # string offset=817
.Linfo_string58:
	.asciz	"lzma_filter"                   # string offset=825
.Linfo_string59:
	.asciz	"lzma_next_coder_s"             # string offset=837
.Linfo_string60:
	.asciz	"lzma_next_coder"               # string offset=855
.Linfo_string61:
	.asciz	"allocator"                     # string offset=871
.Linfo_string62:
	.asciz	"filters"                       # string offset=881
.Linfo_string63:
	.asciz	"lzma_init_function"            # string offset=889
.Linfo_string64:
	.asciz	"lzma_filter_info_s"            # string offset=908
.Linfo_string65:
	.asciz	"lzma_filter_info"              # string offset=927
.Linfo_string66:
	.asciz	"is_encoder"                    # string offset=944
.Linfo_string67:
	.asciz	"_Bool"                         # string offset=955
.Linfo_string68:
	.asciz	"lzma_simple_coder_init"        # string offset=961
.Linfo_string69:
	.asciz	"lzma_simple_s"                 # string offset=984
.Linfo_string70:
	.asciz	"lzma_simple"                   # string offset=998
.Linfo_string71:
	.asciz	"DW_ATE_unsigned_8"             # string offset=1010
.Linfo_string72:
	.asciz	"DW_ATE_unsigned_1"             # string offset=1028
.Linfo_string73:
	.asciz	"lzma_simple_ia64_encoder_init" # string offset=1046
.Linfo_string74:
	.asciz	"lzma_simple_ia64_decoder_init" # string offset=1076
.Linfo_string75:
	.asciz	"ia64_code"                     # string offset=1106
.Linfo_string76:
	.asciz	"now_pos"                       # string offset=1116
.Linfo_string77:
	.asciz	"buffer"                        # string offset=1124
.Linfo_string78:
	.asciz	"size"                          # string offset=1131
.Linfo_string79:
	.asciz	"i"                             # string offset=1136
.Linfo_string80:
	.asciz	"bit_pos"                       # string offset=1138
.Linfo_string81:
	.asciz	"slot"                          # string offset=1146
.Linfo_string82:
	.asciz	"instr_template"                # string offset=1151
.Linfo_string83:
	.asciz	"byte_pos"                      # string offset=1166
.Linfo_string84:
	.asciz	"bit_res"                       # string offset=1175
.Linfo_string85:
	.asciz	"instruction"                   # string offset=1183
.Linfo_string86:
	.asciz	"j"                             # string offset=1195
.Linfo_string87:
	.asciz	"src"                           # string offset=1197
.Linfo_string88:
	.asciz	"dest"                          # string offset=1201
.Linfo_string89:
	.asciz	"simple"                        # string offset=1206
.Linfo_string90:
	.asciz	"mask"                          # string offset=1213
.Linfo_string91:
	.asciz	"inst_norm"                     # string offset=1218
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
	.quad	.Ltmp0
	.quad	.Ltmp1
	.quad	.Lfunc_begin1
	.quad	.Ltmp4
	.quad	.Ltmp5
	.quad	.Lfunc_begin2
	.quad	.Ltmp16
	.quad	.Ltmp18
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
