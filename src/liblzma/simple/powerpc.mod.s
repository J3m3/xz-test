	.text
	.file	"powerpc.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/simple/powerpc.c" md5 0x78baf9835d3948fbb68e389980bc0142
	.file	1 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	2 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.globl	lzma_simple_powerpc_encoder_init # -- Begin function lzma_simple_powerpc_encoder_init
	.p2align	4, 0x90
	.type	lzma_simple_powerpc_encoder_init,@function
lzma_simple_powerpc_encoder_init:       # @lzma_simple_powerpc_encoder_init
.Lfunc_begin0:
	.loc	0 63 0                          # liblzma/simple/powerpc.c:63:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_powerpc_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_simple_powerpc_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_powerpc_encoder_init:filters <- $rdx
	#DEBUG_VALUE: powerpc_coder_init:next <- $rdi
	#DEBUG_VALUE: powerpc_coder_init:allocator <- $rsi
	#DEBUG_VALUE: powerpc_coder_init:filters <- $rdx
	#DEBUG_VALUE: powerpc_coder_init:is_encoder <- [DW_OP_stack_value] 1
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp0:
	.loc	0 55 9 prologue_end             # liblzma/simple/powerpc.c:55:9
	movl	$powerpc_code, %ecx
	movl	$4, %r9d
	xorl	%r8d, %r8d
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
.Ltmp1:
	#DEBUG_VALUE: lzma_simple_powerpc_encoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_powerpc_encoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_powerpc_encoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$16, %rsp
.Ltmp2:
	.cfi_adjust_cfa_offset -16
	.loc	0 64 2 epilogue_begin           # liblzma/simple/powerpc.c:64:2
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	lzma_simple_powerpc_encoder_init, .Lfunc_end0-lzma_simple_powerpc_encoder_init
	.cfi_endproc
	.file	5 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	6 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	7 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	8 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/simple" "simple_private.h" md5 0x2921a659cca72849047c4661dc5d5b7e
                                        # -- End function
	.globl	lzma_simple_powerpc_decoder_init # -- Begin function lzma_simple_powerpc_decoder_init
	.p2align	4, 0x90
	.type	lzma_simple_powerpc_decoder_init,@function
lzma_simple_powerpc_decoder_init:       # @lzma_simple_powerpc_decoder_init
.Lfunc_begin1:
	.loc	0 71 0                          # liblzma/simple/powerpc.c:71:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_simple_powerpc_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_simple_powerpc_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_simple_powerpc_decoder_init:filters <- $rdx
	#DEBUG_VALUE: powerpc_coder_init:next <- $rdi
	#DEBUG_VALUE: powerpc_coder_init:allocator <- $rsi
	#DEBUG_VALUE: powerpc_coder_init:filters <- $rdx
	#DEBUG_VALUE: powerpc_coder_init:is_encoder <- [DW_OP_stack_value] 0
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp4:
	.loc	0 55 9 prologue_end             # liblzma/simple/powerpc.c:55:9
	movl	$powerpc_code, %ecx
	movl	$4, %r9d
	xorl	%r8d, %r8d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	lzma_simple_coder_init@PLT
.Ltmp5:
	#DEBUG_VALUE: lzma_simple_powerpc_decoder_init:filters <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: lzma_simple_powerpc_decoder_init:allocator <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: lzma_simple_powerpc_decoder_init:next <- [DW_OP_LLVM_entry_value 1] $rdi
	addq	$16, %rsp
.Ltmp6:
	.cfi_adjust_cfa_offset -16
	.loc	0 72 2 epilogue_begin           # liblzma/simple/powerpc.c:72:2
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	lzma_simple_powerpc_decoder_init, .Lfunc_end1-lzma_simple_powerpc_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function powerpc_code
	.type	powerpc_code,@function
powerpc_code:                           # @powerpc_code
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: powerpc_code:now_pos <- $esi
	#DEBUG_VALUE: powerpc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- $r8
                                        # kill: def $esi killed $esi def $rsi
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 23 20 prologue_end            # liblzma/simple/powerpc.c:23:20
	cmpq	$4, %r8
.Ltmp8:
	.loc	0 23 2 is_stmt 0                # liblzma/simple/powerpc.c:23:2
	jae	.LBB2_3
.Ltmp9:
# %bb.1:
	#DEBUG_VALUE: powerpc_code:now_pos <- $esi
	#DEBUG_VALUE: powerpc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- $r8
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 0 2                           # liblzma/simple/powerpc.c:0:2
	xorl	%eax, %eax
	.loc	0 47 2 is_stmt 1                # liblzma/simple/powerpc.c:47:2
	retq
.Ltmp10:
.LBB2_3:                                # %for.body.lr.ph
	#DEBUG_VALUE: powerpc_code:now_pos <- $esi
	#DEBUG_VALUE: powerpc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- $r8
	#DEBUG_VALUE: powerpc_code:i <- 0
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
	movq	%r8, %r10
	xorl	%ebx, %ebx
.Ltmp11:
	.loc	0 23 2                          # liblzma/simple/powerpc.c:23:2
	movq	%r8, %rax
	addq	$-4, %rax
	adcq	$3, %rbx
	shldq	$62, %rax, %rbx
	incq	%rbx
	testb	%dl, %dl
	movq	%r8, -40(%rsp)                  # 8-byte Spill
.Ltmp12:
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	.loc	0 0 2 is_stmt 0                 # liblzma/simple/powerpc.c:0:2
	movq	%rsi, -48(%rsp)                 # 8-byte Spill
.Ltmp13:
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	movl	$4, %r9d
	je	.LBB2_4
.Ltmp14:
# %bb.41:                               # %for.body.us.preheader
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	xorl	%edi, %edi
	.loc	0 23 2                          # liblzma/simple/powerpc.c:23:2
	cmpq	$4, %rbx
	jb	.LBB2_52
.Ltmp15:
# %bb.42:                               # %vector.scevcheck122
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movq	%r10, %rax
	addq	$-4, %rax
	movl	$0, %r11d
	adcq	$-1, %r11
	shrdq	$2, %r11, %rax
	leaq	(%rcx,%rax,4), %rdx
.Ltmp16:
	cmpq	%rcx, %rdx
	jb	.LBB2_52
.Ltmp17:
# %bb.43:                               # %vector.scevcheck122
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 0 2                           # liblzma/simple/powerpc.c:0:2
	movabsq	$4611686018427387903, %rdx      # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rdx, %rax
	ja	.LBB2_52
.Ltmp18:
# %bb.44:                               # %vector.scevcheck122
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	leaq	1(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	incq	%r8
	cmpq	%rdi, %r8
	jb	.LBB2_51
.Ltmp19:
# %bb.45:                               # %vector.scevcheck122
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	cmpq	%rdx, %rax
	ja	.LBB2_51
.Ltmp20:
# %bb.46:                               # %vector.scevcheck122
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	leaq	2(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	addq	$2, %r8
	cmpq	%rdi, %r8
	jb	.LBB2_51
.Ltmp21:
# %bb.47:                               # %vector.scevcheck122
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	cmpq	%rdx, %rax
	ja	.LBB2_51
.Ltmp22:
# %bb.48:                               # %vector.scevcheck122
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	leaq	(,%rax,4), %rdi
	cmpq	$-9, %rdi
	ja	.LBB2_51
.Ltmp23:
# %bb.49:                               # %vector.scevcheck122
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	cmpq	%rdx, %rax
	ja	.LBB2_51
.Ltmp24:
# %bb.50:                               # %vector.scevcheck122
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	leaq	3(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	addq	$3, %r8
	cmpq	%rdi, %r8
	jb	.LBB2_51
.Ltmp25:
# %bb.56:                               # %vector.scevcheck122
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	cmpq	%rdx, %rax
	movl	$0, %edi
	ja	.LBB2_52
.Ltmp26:
# %bb.57:                               # %vector.scevcheck122
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	cmpq	$3, %r11
	ja	.LBB2_52
.Ltmp27:
# %bb.58:                               # %vector.ph144
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movq	%rbx, -72(%rsp)                 # 8-byte Spill
	.loc	0 23 2                          # liblzma/simple/powerpc.c:23:2
	movq	%rbx, %rax
	andq	$-4, %rax
	leaq	(,%rax,4), %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	leaq	4(,%rax,4), %r9
	movl	%esi, %r15d
	xorl	%ebx, %ebx
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	jmp	.LBB2_59
.Ltmp28:
	.p2align	4, 0x90
.LBB2_76:                               # %pred.store.continue169
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 0 2                           # liblzma/simple/powerpc.c:0:2
	addq	$16, %rbx
	addq	$-4, %r11
	je	.LBB2_77
.Ltmp29:
.LBB2_59:                               # %vector.body151
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movq	%r11, -56(%rsp)                 # 8-byte Spill
.Ltmp30:
	.loc	0 25 8 is_stmt 1                # liblzma/simple/powerpc.c:25:8
	movzbl	(%rcx,%rbx), %r10d
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	movl	%r10d, %r8d
	andl	$-4, %r8d
                                        # implicit-def: $al
                                        # kill: killed $al
	cmpl	$72, %r8d
.Ltmp31:
	.loc	0 23 2 is_stmt 1                # liblzma/simple/powerpc.c:23:2
	jne	.LBB2_61
.Ltmp32:
# %bb.60:                               # %pred.load.if154
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 26 10                         # liblzma/simple/powerpc.c:26:10
	movzbl	3(%rcx,%rbx), %eax
	movb	%al, -97(%rsp)                  # 1-byte Spill
.Ltmp33:
.LBB2_61:                               # %pred.load.continue155
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 25 0                          # liblzma/simple/powerpc.c:25:0
	movzbl	4(%rcx,%rbx), %edi
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	movl	%edi, %esi
	andl	$-4, %esi
                                        # implicit-def: $al
	cmpl	$72, %esi
	.loc	0 26 10 is_stmt 1               # liblzma/simple/powerpc.c:26:10
	jne	.LBB2_63
.Ltmp34:
# %bb.62:                               # %pred.load.if156
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movzbl	7(%rcx,%rbx), %eax
.Ltmp35:
.LBB2_63:                               # %pred.load.continue157
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 25 0                          # liblzma/simple/powerpc.c:25:0
	movzbl	8(%rcx,%rbx), %r12d
	movl	%r12d, -96(%rsp)                # 4-byte Spill
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	andl	$-4, %r12d
                                        # implicit-def: $dl
	cmpl	$72, %r12d
	.loc	0 26 10 is_stmt 1               # liblzma/simple/powerpc.c:26:10
	jne	.LBB2_65
.Ltmp36:
# %bb.64:                               # %pred.load.if158
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movzbl	11(%rcx,%rbx), %edx
.Ltmp37:
.LBB2_65:                               # %pred.load.continue159
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 0 10 is_stmt 0                # liblzma/simple/powerpc.c:0:10
	movq	%r15, %rbp
	.loc	0 25 0 is_stmt 1                # liblzma/simple/powerpc.c:25:0
	movzbl	12(%rcx,%rbx), %r14d
	movl	%r14d, -88(%rsp)                # 4-byte Spill
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	andl	$-4, %r14d
                                        # implicit-def: $r13b
	cmpl	$72, %r14d
	.loc	0 26 10 is_stmt 1               # liblzma/simple/powerpc.c:26:10
	jne	.LBB2_67
.Ltmp38:
# %bb.66:                               # %pred.load.if160
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movzbl	15(%rcx,%rbx), %r13d
.Ltmp39:
.LBB2_67:                               # %pred.load.continue161
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 25 24                         # liblzma/simple/powerpc.c:25:24
	xorl	$72, %r14d
	xorl	$72, %r12d
	xorl	$72, %esi
	.loc	0 26 10                         # liblzma/simple/powerpc.c:26:10
	movzbl	%al, %eax
	movzbl	%dl, %r15d
	movzbl	%r13b, %r11d
	.loc	0 26 24 is_stmt 0               # liblzma/simple/powerpc.c:26:24
	movl	%eax, %edx
	andl	$3, %edx
	movl	%r15d, -92(%rsp)                # 4-byte Spill
	andl	$3, %r15d
	movl	%r11d, -84(%rsp)                # 4-byte Spill
	andl	$3, %r11d
	.loc	0 26 29                         # liblzma/simple/powerpc.c:26:29
	xorl	$1, %edx
	xorl	$1, %r15d
	xorl	$1, %r11d
.Ltmp40:
	.loc	0 25 7 is_stmt 1                # liblzma/simple/powerpc.c:25:7
	orl	%esi, %edx
	sete	%r13b
	orl	%r12d, %r15d
	sete	%sil
	orl	%r14d, %r11d
	sete	%r12b
.Ltmp41:
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	cmpl	$72, %r8d
	movq	%rbp, %r15
	.loc	0 26 10 is_stmt 1               # liblzma/simple/powerpc.c:26:10
	jne	.LBB2_70
.Ltmp42:
# %bb.68:                               # %pred.load.continue161
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 26 0 is_stmt 0                # liblzma/simple/powerpc.c:26:0
	movzbl	-97(%rsp), %r8d                 # 1-byte Folded Reload
	movl	%r8d, %edx
	andl	$3, %edx
	.loc	0 26 10                         # liblzma/simple/powerpc.c:26:10
	cmpl	$1, %edx
	jne	.LBB2_70
.Ltmp43:
# %bb.69:                               # %pred.store.if162
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 29 9 is_stmt 1                # liblzma/simple/powerpc.c:29:9
	movzbl	1(%rcx,%rbx), %r11d
	.loc	0 30 9                          # liblzma/simple/powerpc.c:30:9
	movzbl	2(%rcx,%rbx), %edx
	.loc	0 28 46                         # liblzma/simple/powerpc.c:28:46
	andl	$3, %r10d
	shll	$24, %r10d
	.loc	0 31 23                         # liblzma/simple/powerpc.c:31:23
	movl	%r8d, %r14d
	andl	$-4, %r14d
	.loc	0 29 23                         # liblzma/simple/powerpc.c:29:23
	shll	$16, %r11d
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%r10d, %r11d
	.loc	0 30 23                         # liblzma/simple/powerpc.c:30:23
	shll	$8, %edx
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%r11d, %edx
	orl	%r14d, %edx
	leal	(%r15,%rbx), %r10d
	addl	%r10d, %edx
	movl	%edx, %r11d
	shrl	$24, %r11d
	.loc	0 39 20 is_stmt 0               # liblzma/simple/powerpc.c:39:20
	andb	$3, %r11b
	orb	$72, %r11b
	.loc	0 39 18                         # liblzma/simple/powerpc.c:39:18
	movb	%r11b, (%rcx,%rbx)
	.loc	0 40 26 is_stmt 1               # liblzma/simple/powerpc.c:40:26
	movl	%edx, %r11d
	shrl	$16, %r11d
	.loc	0 40 18 is_stmt 0               # liblzma/simple/powerpc.c:40:18
	movb	%r11b, 1(%rcx,%rbx)
	.loc	0 41 18 is_stmt 1               # liblzma/simple/powerpc.c:41:18
	movb	%dh, 2(%rcx,%rbx)
	.loc	0 42 18                         # liblzma/simple/powerpc.c:42:18
	movl	%r8d, %edx
	andl	$252, %edx
	addl	%r10d, %edx
	andb	$3, %r8b
	.loc	0 43 18                         # liblzma/simple/powerpc.c:43:18
	orb	%r8b, %dl
	movb	%dl, 3(%rcx,%rbx)
.Ltmp44:
.LBB2_70:                               # %pred.store.continue163
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	testb	%r13b, %r13b
	jne	.LBB2_71
.Ltmp45:
# %bb.72:                               # %pred.store.continue165
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	testb	%sil, %sil
	movq	-40(%rsp), %r10                 # 8-byte Reload
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	jne	.LBB2_73
.Ltmp46:
.LBB2_74:                               # %pred.store.continue167
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	testb	%r12b, %r12b
	movq	-56(%rsp), %r11                 # 8-byte Reload
	je	.LBB2_76
	jmp	.LBB2_75
.Ltmp47:
	.p2align	4, 0x90
.LBB2_71:                               # %pred.store.if164
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 29 9                          # liblzma/simple/powerpc.c:29:9
	movzbl	5(%rcx,%rbx), %edx
	.loc	0 30 9                          # liblzma/simple/powerpc.c:30:9
	movzbl	6(%rcx,%rbx), %r8d
	.loc	0 28 46                         # liblzma/simple/powerpc.c:28:46
	andl	$3, %edi
	shll	$24, %edi
	.loc	0 31 23                         # liblzma/simple/powerpc.c:31:23
	movl	%eax, %r10d
	andl	$-4, %r10d
	.loc	0 29 23                         # liblzma/simple/powerpc.c:29:23
	shll	$16, %edx
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%edi, %edx
	.loc	0 30 23                         # liblzma/simple/powerpc.c:30:23
	shll	$8, %r8d
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%edx, %r8d
	orl	%r10d, %r8d
	leal	(%r15,%rbx), %edi
	leal	(%rdi,%r8), %edx
	addl	$4, %edx
	movl	%edx, %r8d
	shrl	$24, %r8d
	.loc	0 39 20 is_stmt 0               # liblzma/simple/powerpc.c:39:20
	andb	$3, %r8b
	orb	$72, %r8b
	.loc	0 39 18                         # liblzma/simple/powerpc.c:39:18
	movb	%r8b, 4(%rcx,%rbx)
	.loc	0 40 26 is_stmt 1               # liblzma/simple/powerpc.c:40:26
	movl	%edx, %r8d
	shrl	$16, %r8d
	.loc	0 40 18 is_stmt 0               # liblzma/simple/powerpc.c:40:18
	movb	%r8b, 5(%rcx,%rbx)
	.loc	0 41 18 is_stmt 1               # liblzma/simple/powerpc.c:41:18
	movb	%dh, 6(%rcx,%rbx)
	.loc	0 42 18                         # liblzma/simple/powerpc.c:42:18
	movl	%eax, %edx
	andl	$252, %edx
	addl	%edi, %edx
	andb	$3, %al
	addb	$4, %dl
	.loc	0 43 18                         # liblzma/simple/powerpc.c:43:18
	orb	%al, %dl
	movb	%dl, 7(%rcx,%rbx)
	testb	%sil, %sil
	movq	-40(%rsp), %r10                 # 8-byte Reload
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	je	.LBB2_74
.Ltmp48:
.LBB2_73:                               # %pred.store.if166
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 29 9                          # liblzma/simple/powerpc.c:29:9
	movzbl	9(%rcx,%rbx), %eax
	.loc	0 30 9                          # liblzma/simple/powerpc.c:30:9
	movzbl	10(%rcx,%rbx), %edx
	movl	-96(%rsp), %r11d                # 4-byte Reload
	.loc	0 28 46                         # liblzma/simple/powerpc.c:28:46
	andl	$3, %r11d
	shll	$24, %r11d
	movl	-92(%rsp), %r8d                 # 4-byte Reload
	.loc	0 31 23                         # liblzma/simple/powerpc.c:31:23
	movl	%r8d, %edi
	andl	$-4, %edi
	.loc	0 29 23                         # liblzma/simple/powerpc.c:29:23
	shll	$16, %eax
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%r11d, %eax
	.loc	0 30 23                         # liblzma/simple/powerpc.c:30:23
	shll	$8, %edx
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%eax, %edx
	orl	%edi, %edx
	leal	(%r15,%rbx), %edi
	leal	(%rdi,%rdx), %eax
	addl	$8, %eax
	movl	%eax, %edx
	shrl	$24, %edx
	.loc	0 39 20 is_stmt 0               # liblzma/simple/powerpc.c:39:20
	andb	$3, %dl
	orb	$72, %dl
	.loc	0 39 18                         # liblzma/simple/powerpc.c:39:18
	movb	%dl, 8(%rcx,%rbx)
	.loc	0 40 26 is_stmt 1               # liblzma/simple/powerpc.c:40:26
	movl	%eax, %edx
	shrl	$16, %edx
	.loc	0 40 18 is_stmt 0               # liblzma/simple/powerpc.c:40:18
	movb	%dl, 9(%rcx,%rbx)
	.loc	0 41 18 is_stmt 1               # liblzma/simple/powerpc.c:41:18
	movb	%ah, 10(%rcx,%rbx)
	.loc	0 42 18                         # liblzma/simple/powerpc.c:42:18
	movl	%r8d, %eax
	andl	$252, %eax
	addl	%edi, %eax
	andb	$3, %r8b
	addb	$8, %al
	.loc	0 43 18                         # liblzma/simple/powerpc.c:43:18
	orb	%r8b, %al
	movb	%al, 11(%rcx,%rbx)
	testb	%r12b, %r12b
	movq	-56(%rsp), %r11                 # 8-byte Reload
	je	.LBB2_76
.Ltmp49:
.LBB2_75:                               # %pred.store.if168
                                        #   in Loop: Header=BB2_59 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 29 9                          # liblzma/simple/powerpc.c:29:9
	movzbl	13(%rcx,%rbx), %edx
	.loc	0 30 9                          # liblzma/simple/powerpc.c:30:9
	movzbl	14(%rcx,%rbx), %r8d
	movl	-88(%rsp), %edi                 # 4-byte Reload
	.loc	0 28 46                         # liblzma/simple/powerpc.c:28:46
	andl	$3, %edi
	shll	$24, %edi
	movl	-84(%rsp), %ebp                 # 4-byte Reload
	.loc	0 31 23                         # liblzma/simple/powerpc.c:31:23
	movl	%ebp, %eax
	andl	$-4, %eax
	.loc	0 29 23                         # liblzma/simple/powerpc.c:29:23
	shll	$16, %edx
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%edi, %edx
	.loc	0 30 23                         # liblzma/simple/powerpc.c:30:23
	shll	$8, %r8d
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%edx, %r8d
	orl	%eax, %r8d
	leal	(%r15,%rbx), %edi
	leal	(%rdi,%r8), %edx
	addl	$12, %edx
	movl	%edx, %r8d
	shrl	$24, %r8d
	.loc	0 39 20 is_stmt 0               # liblzma/simple/powerpc.c:39:20
	andb	$3, %r8b
	orb	$72, %r8b
	.loc	0 39 18                         # liblzma/simple/powerpc.c:39:18
	movb	%r8b, 12(%rcx,%rbx)
	.loc	0 40 26 is_stmt 1               # liblzma/simple/powerpc.c:40:26
	movl	%edx, %r8d
	shrl	$16, %r8d
	.loc	0 40 18 is_stmt 0               # liblzma/simple/powerpc.c:40:18
	movb	%r8b, 13(%rcx,%rbx)
	.loc	0 41 18 is_stmt 1               # liblzma/simple/powerpc.c:41:18
	movb	%dh, 14(%rcx,%rbx)
	.loc	0 42 18                         # liblzma/simple/powerpc.c:42:18
	addl	%edi, %eax
	andb	$3, %bpl
	addb	$12, %al
	.loc	0 43 18                         # liblzma/simple/powerpc.c:43:18
	orb	%bpl, %al
	movb	%al, 15(%rcx,%rbx)
	jmp	.LBB2_76
.Ltmp50:
.LBB2_4:                                # %for.body.preheader
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 0 18 is_stmt 0                # liblzma/simple/powerpc.c:0:18
	xorl	%r14d, %r14d
	.loc	0 23 2 is_stmt 1                # liblzma/simple/powerpc.c:23:2
	cmpq	$3, %rbx
	jbe	.LBB2_5
.Ltmp51:
# %bb.10:                               # %vector.scevcheck
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:is_encoder <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $edx
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movq	%r10, %rax
	addq	$-4, %rax
	movl	$0, %r11d
	adcq	$-1, %r11
	shrdq	$2, %r11, %rax
	leaq	(%rcx,%rax,4), %rdx
.Ltmp52:
	cmpq	%rcx, %rdx
	jb	.LBB2_5
.Ltmp53:
# %bb.11:                               # %vector.scevcheck
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 0 2 is_stmt 0                 # liblzma/simple/powerpc.c:0:2
	movabsq	$4611686018427387903, %rdx      # imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rdx, %rax
	ja	.LBB2_5
.Ltmp54:
# %bb.12:                               # %vector.scevcheck
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	leaq	1(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	incq	%r8
	cmpq	%rdi, %r8
	jb	.LBB2_5
.Ltmp55:
# %bb.13:                               # %vector.scevcheck
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	cmpq	%rdx, %rax
	ja	.LBB2_5
.Ltmp56:
# %bb.14:                               # %vector.scevcheck
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	leaq	2(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	addq	$2, %r8
	cmpq	%rdi, %r8
	jb	.LBB2_5
.Ltmp57:
# %bb.15:                               # %vector.scevcheck
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	cmpq	%rdx, %rax
	ja	.LBB2_5
.Ltmp58:
# %bb.16:                               # %vector.scevcheck
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	leaq	(,%rax,4), %rdi
	cmpq	$-9, %rdi
	ja	.LBB2_5
.Ltmp59:
# %bb.17:                               # %vector.scevcheck
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	cmpq	%rdx, %rax
	ja	.LBB2_5
.Ltmp60:
# %bb.18:                               # %vector.scevcheck
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	leaq	3(%rcx), %rdi
	leaq	(%rcx,%rax,4), %r8
	addq	$3, %r8
	cmpq	%rdi, %r8
	jb	.LBB2_5
.Ltmp61:
# %bb.19:                               # %vector.scevcheck
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	cmpq	%rdx, %rax
	ja	.LBB2_5
.Ltmp62:
# %bb.20:                               # %vector.scevcheck
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	cmpq	$3, %r11
	ja	.LBB2_5
.Ltmp63:
# %bb.21:                               # %vector.ph
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movq	%rbx, -72(%rsp)                 # 8-byte Spill
	.loc	0 23 2                          # liblzma/simple/powerpc.c:23:2
	movq	%rbx, %rdx
	andq	$-4, %rdx
	leaq	(,%rdx,4), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	leaq	4(,%rdx,4), %r9
	leaq	15(%rcx), %rbx
	movl	%esi, %eax
	negb	%al
	movzbl	%al, %r15d
	movl	%esi, %eax
	negl	%eax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movl	$-12, %eax
	subl	%esi, %eax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movl	$-8, %eax
	subl	%esi, %eax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movl	$-4, %eax
	subl	%esi, %eax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	xorl	%r13d, %r13d
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rdx, %rdi
	jmp	.LBB2_22
.Ltmp64:
	.p2align	4, 0x90
.LBB2_39:                               # %pred.store.continue121
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 0 2                           # liblzma/simple/powerpc.c:0:2
	addq	$16, %rbx
	addl	$-16, %r13d
	addq	$-4, %rdi
	je	.LBB2_40
.Ltmp65:
.LBB2_22:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movq	%rdi, -56(%rsp)                 # 8-byte Spill
.Ltmp66:
	.loc	0 25 8 is_stmt 1                # liblzma/simple/powerpc.c:25:8
	movzbl	-15(%rbx), %r8d
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	movl	%r8d, %edi
	andl	$-4, %edi
                                        # implicit-def: $al
                                        # kill: killed $al
	cmpl	$72, %edi
.Ltmp67:
	.loc	0 23 2 is_stmt 1                # liblzma/simple/powerpc.c:23:2
	jne	.LBB2_24
.Ltmp68:
# %bb.23:                               # %pred.load.if
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 26 10                         # liblzma/simple/powerpc.c:26:10
	movzbl	-12(%rbx), %eax
	movb	%al, -97(%rsp)                  # 1-byte Spill
.Ltmp69:
.LBB2_24:                               # %pred.load.continue
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 25 0                          # liblzma/simple/powerpc.c:25:0
	movzbl	-11(%rbx), %eax
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	movl	%eax, %r10d
	andl	$-4, %r10d
                                        # implicit-def: $sil
	cmpl	$72, %r10d
	.loc	0 26 10 is_stmt 1               # liblzma/simple/powerpc.c:26:10
	jne	.LBB2_26
.Ltmp70:
# %bb.25:                               # %pred.load.if110
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movzbl	-8(%rbx), %esi
.Ltmp71:
.LBB2_26:                               # %pred.load.continue111
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 0 10 is_stmt 0                # liblzma/simple/powerpc.c:0:10
	movq	%r15, %r14
	.loc	0 25 0 is_stmt 1                # liblzma/simple/powerpc.c:25:0
	movzbl	-7(%rbx), %r12d
	movl	%r12d, -96(%rsp)                # 4-byte Spill
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	andl	$-4, %r12d
                                        # implicit-def: $dl
	cmpl	$72, %r12d
	.loc	0 26 10 is_stmt 1               # liblzma/simple/powerpc.c:26:10
	jne	.LBB2_28
.Ltmp72:
# %bb.27:                               # %pred.load.if112
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movzbl	-4(%rbx), %edx
.Ltmp73:
.LBB2_28:                               # %pred.load.continue113
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 25 0                          # liblzma/simple/powerpc.c:25:0
	movzbl	-3(%rbx), %r11d
	movl	%r11d, -88(%rsp)                # 4-byte Spill
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	andl	$-4, %r11d
                                        # implicit-def: $bpl
	cmpl	$72, %r11d
	.loc	0 26 10 is_stmt 1               # liblzma/simple/powerpc.c:26:10
	jne	.LBB2_30
.Ltmp74:
# %bb.29:                               # %pred.load.if114
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	movzbl	(%rbx), %ebp
.Ltmp75:
.LBB2_30:                               # %pred.load.continue115
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 25 24                         # liblzma/simple/powerpc.c:25:24
	xorl	$72, %r11d
	xorl	$72, %r12d
	xorl	$72, %r10d
	.loc	0 26 10                         # liblzma/simple/powerpc.c:26:10
	movzbl	%sil, %esi
	movzbl	%dl, %r15d
	movzbl	%bpl, %ebp
	.loc	0 26 24 is_stmt 0               # liblzma/simple/powerpc.c:26:24
	movl	%esi, %edx
	andl	$3, %edx
	movl	%r15d, -92(%rsp)                # 4-byte Spill
	andl	$3, %r15d
	movl	%ebp, -84(%rsp)                 # 4-byte Spill
	andl	$3, %ebp
	.loc	0 26 29                         # liblzma/simple/powerpc.c:26:29
	xorl	$1, %edx
	xorl	$1, %r15d
	xorl	$1, %ebp
.Ltmp76:
	.loc	0 25 7 is_stmt 1                # liblzma/simple/powerpc.c:25:7
	orl	%r10d, %edx
	sete	%r10b
	orl	%r12d, %r15d
	sete	%r12b
	orl	%r11d, %ebp
	sete	%bpl
.Ltmp77:
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	cmpl	$72, %edi
	movq	%r14, %r15
	.loc	0 26 10 is_stmt 1               # liblzma/simple/powerpc.c:26:10
	jne	.LBB2_33
.Ltmp78:
# %bb.31:                               # %pred.load.continue115
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 26 0 is_stmt 0                # liblzma/simple/powerpc.c:26:0
	movzbl	-97(%rsp), %edi                 # 1-byte Folded Reload
	movl	%edi, %edx
	andl	$3, %edx
	.loc	0 26 10                         # liblzma/simple/powerpc.c:26:10
	cmpl	$1, %edx
	jne	.LBB2_33
.Ltmp79:
# %bb.32:                               # %pred.store.if
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 29 9 is_stmt 1                # liblzma/simple/powerpc.c:29:9
	movzbl	-14(%rbx), %r11d
	.loc	0 30 9                          # liblzma/simple/powerpc.c:30:9
	movzbl	-13(%rbx), %edx
	.loc	0 28 46                         # liblzma/simple/powerpc.c:28:46
	andl	$3, %r8d
	shll	$24, %r8d
	movl	%r12d, %r14d
	.loc	0 31 23                         # liblzma/simple/powerpc.c:31:23
	movl	%edi, %r12d
	andl	$-4, %r12d
	.loc	0 29 23                         # liblzma/simple/powerpc.c:29:23
	shll	$16, %r11d
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%r8d, %r11d
	.loc	0 30 23                         # liblzma/simple/powerpc.c:30:23
	shll	$8, %edx
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%r11d, %edx
	orl	%r12d, %edx
	movq	-64(%rsp), %r8                  # 8-byte Reload
	addl	%r13d, %r8d
	addl	%r8d, %edx
	movl	%edx, %r8d
	shrl	$24, %r8d
	.loc	0 39 20 is_stmt 0               # liblzma/simple/powerpc.c:39:20
	andb	$3, %r8b
	orb	$72, %r8b
	.loc	0 39 18                         # liblzma/simple/powerpc.c:39:18
	movb	%r8b, -15(%rbx)
	.loc	0 40 26 is_stmt 1               # liblzma/simple/powerpc.c:40:26
	movl	%edx, %r8d
	shrl	$16, %r8d
	.loc	0 40 18 is_stmt 0               # liblzma/simple/powerpc.c:40:18
	movb	%r8b, -14(%rbx)
	.loc	0 41 18 is_stmt 1               # liblzma/simple/powerpc.c:41:18
	movb	%dh, -13(%rbx)
	.loc	0 42 18                         # liblzma/simple/powerpc.c:42:18
	addl	%r15d, %r12d
	addl	%r13d, %r12d
	andb	$3, %dil
	.loc	0 43 18                         # liblzma/simple/powerpc.c:43:18
	orb	%dil, %r12b
	movb	%r12b, -12(%rbx)
	movl	%r14d, %r12d
.Ltmp80:
.LBB2_33:                               # %pred.store.continue
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	testb	%r10b, %r10b
	jne	.LBB2_34
.Ltmp81:
# %bb.35:                               # %pred.store.continue117
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	testb	%r12b, %r12b
	jne	.LBB2_36
.Ltmp82:
.LBB2_37:                               # %pred.store.continue119
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	testb	%bpl, %bpl
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	je	.LBB2_39
	jmp	.LBB2_38
.Ltmp83:
	.p2align	4, 0x90
.LBB2_34:                               # %pred.store.if116
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 29 9                          # liblzma/simple/powerpc.c:29:9
	movzbl	-10(%rbx), %r8d
	.loc	0 30 9                          # liblzma/simple/powerpc.c:30:9
	movzbl	-9(%rbx), %edx
	.loc	0 28 46                         # liblzma/simple/powerpc.c:28:46
	andl	$3, %eax
	shll	$24, %eax
	.loc	0 31 23                         # liblzma/simple/powerpc.c:31:23
	movl	%esi, %edi
	andl	$-4, %edi
	.loc	0 29 23                         # liblzma/simple/powerpc.c:29:23
	shll	$16, %r8d
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%eax, %r8d
	.loc	0 30 23                         # liblzma/simple/powerpc.c:30:23
	shll	$8, %edx
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%r8d, %edx
	orl	%edi, %edx
	movq	-24(%rsp), %rax                 # 8-byte Reload
	addl	%r13d, %eax
	addl	%eax, %edx
	movl	%edx, %eax
	shrl	$24, %eax
	.loc	0 39 20 is_stmt 0               # liblzma/simple/powerpc.c:39:20
	andb	$3, %al
	orb	$72, %al
	.loc	0 39 18                         # liblzma/simple/powerpc.c:39:18
	movb	%al, -11(%rbx)
	.loc	0 40 26 is_stmt 1               # liblzma/simple/powerpc.c:40:26
	movl	%edx, %eax
	shrl	$16, %eax
	.loc	0 40 18 is_stmt 0               # liblzma/simple/powerpc.c:40:18
	movb	%al, -10(%rbx)
	.loc	0 41 18 is_stmt 1               # liblzma/simple/powerpc.c:41:18
	movb	%dh, -9(%rbx)
	.loc	0 42 18                         # liblzma/simple/powerpc.c:42:18
	addl	%r15d, %edi
	addl	%r13d, %edi
	andb	$3, %sil
	addb	$-4, %dil
	.loc	0 43 18                         # liblzma/simple/powerpc.c:43:18
	orb	%sil, %dil
	movb	%dil, -8(%rbx)
	testb	%r12b, %r12b
	je	.LBB2_37
.Ltmp84:
.LBB2_36:                               # %pred.store.if118
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 29 9                          # liblzma/simple/powerpc.c:29:9
	movzbl	-6(%rbx), %esi
	.loc	0 30 9                          # liblzma/simple/powerpc.c:30:9
	movzbl	-5(%rbx), %edx
	movl	-96(%rsp), %r8d                 # 4-byte Reload
	.loc	0 28 46                         # liblzma/simple/powerpc.c:28:46
	andl	$3, %r8d
	shll	$24, %r8d
	movl	-92(%rsp), %edi                 # 4-byte Reload
	.loc	0 31 23                         # liblzma/simple/powerpc.c:31:23
	movl	%edi, %eax
	andl	$-4, %eax
	.loc	0 29 23                         # liblzma/simple/powerpc.c:29:23
	shll	$16, %esi
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%r8d, %esi
	.loc	0 30 23                         # liblzma/simple/powerpc.c:30:23
	shll	$8, %edx
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%esi, %edx
	orl	%eax, %edx
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	addl	%r13d, %esi
	addl	%esi, %edx
	movl	%edx, %esi
	shrl	$24, %esi
	.loc	0 39 20 is_stmt 0               # liblzma/simple/powerpc.c:39:20
	andb	$3, %sil
	orb	$72, %sil
	.loc	0 39 18                         # liblzma/simple/powerpc.c:39:18
	movb	%sil, -7(%rbx)
	.loc	0 40 26 is_stmt 1               # liblzma/simple/powerpc.c:40:26
	movl	%edx, %esi
	shrl	$16, %esi
	.loc	0 40 18 is_stmt 0               # liblzma/simple/powerpc.c:40:18
	movb	%sil, -6(%rbx)
	.loc	0 41 18 is_stmt 1               # liblzma/simple/powerpc.c:41:18
	movb	%dh, -5(%rbx)
	.loc	0 42 18                         # liblzma/simple/powerpc.c:42:18
	addl	%r15d, %eax
	addl	%r13d, %eax
	andb	$3, %dil
	addb	$-8, %al
	.loc	0 43 18                         # liblzma/simple/powerpc.c:43:18
	orb	%dil, %al
	movb	%al, -4(%rbx)
	testb	%bpl, %bpl
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	je	.LBB2_39
.Ltmp85:
.LBB2_38:                               # %pred.store.if120
                                        #   in Loop: Header=BB2_22 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 29 9                          # liblzma/simple/powerpc.c:29:9
	movzbl	-2(%rbx), %esi
	.loc	0 30 9                          # liblzma/simple/powerpc.c:30:9
	movzbl	-1(%rbx), %edx
	movl	-88(%rsp), %r10d                # 4-byte Reload
	.loc	0 28 46                         # liblzma/simple/powerpc.c:28:46
	andl	$3, %r10d
	shll	$24, %r10d
	movl	-84(%rsp), %r8d                 # 4-byte Reload
	.loc	0 31 23                         # liblzma/simple/powerpc.c:31:23
	movl	%r8d, %eax
	andl	$-4, %eax
	.loc	0 29 23                         # liblzma/simple/powerpc.c:29:23
	shll	$16, %esi
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%r10d, %esi
	.loc	0 30 23                         # liblzma/simple/powerpc.c:30:23
	shll	$8, %edx
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	orl	%esi, %edx
	orl	%eax, %edx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	addl	%r13d, %esi
	addl	%esi, %edx
	movl	%edx, %esi
	shrl	$24, %esi
	.loc	0 39 20 is_stmt 0               # liblzma/simple/powerpc.c:39:20
	andb	$3, %sil
	orb	$72, %sil
	.loc	0 39 18                         # liblzma/simple/powerpc.c:39:18
	movb	%sil, -3(%rbx)
	.loc	0 40 26 is_stmt 1               # liblzma/simple/powerpc.c:40:26
	movl	%edx, %esi
	shrl	$16, %esi
	.loc	0 40 18 is_stmt 0               # liblzma/simple/powerpc.c:40:18
	movb	%sil, -2(%rbx)
	.loc	0 41 18 is_stmt 1               # liblzma/simple/powerpc.c:41:18
	movb	%dh, -1(%rbx)
	.loc	0 42 18                         # liblzma/simple/powerpc.c:42:18
	addl	%r15d, %eax
	addl	%r13d, %eax
	andb	$3, %r8b
	addb	$-12, %al
	.loc	0 43 18                         # liblzma/simple/powerpc.c:43:18
	orb	%r8b, %al
	movb	%al, (%rbx)
	jmp	.LBB2_39
.Ltmp86:
.LBB2_77:                               # %middle.block141
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 0 18 is_stmt 0                # liblzma/simple/powerpc.c:0:18
	movq	-80(%rsp), %rax                 # 8-byte Reload
	.loc	0 23 2 is_stmt 1                # liblzma/simple/powerpc.c:23:2
	cmpq	%rax, -72(%rsp)                 # 8-byte Folded Reload
	movq	-64(%rsp), %rdi                 # 8-byte Reload
	jne	.LBB2_52
	jmp	.LBB2_78
.Ltmp87:
.LBB2_40:                               # %middle.block
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 0 2 is_stmt 0                 # liblzma/simple/powerpc.c:0:2
	movq	-80(%rsp), %rax                 # 8-byte Reload
	.loc	0 23 2                          # liblzma/simple/powerpc.c:23:2
	cmpq	%rax, -72(%rsp)                 # 8-byte Folded Reload
	movq	-40(%rsp), %r10                 # 8-byte Reload
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	-32(%rsp), %r14                 # 8-byte Reload
	jne	.LBB2_5
.Ltmp88:
.LBB2_78:
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	shlq	$2, %rax
	jmp	.LBB2_79
.Ltmp89:
	.p2align	4, 0x90
.LBB2_8:                                # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- $rbp
	#DEBUG_VALUE: powerpc_code:i <- $r14
	.loc	0 23 16                         # liblzma/simple/powerpc.c:23:16
	leaq	4(%r14), %r9
	.loc	0 23 20                         # liblzma/simple/powerpc.c:23:20
	cmpq	%r10, %r9
.Ltmp90:
	.loc	0 23 2                          # liblzma/simple/powerpc.c:23:2
	ja	.LBB2_9
.Ltmp91:
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	.loc	0 0 2                           # liblzma/simple/powerpc.c:0:2
	movq	%r14, %rbp
	movq	%r9, %r14
.Ltmp92:
	#DEBUG_VALUE: powerpc_code:i <- $rbp
	.loc	0 25 8 is_stmt 1                # liblzma/simple/powerpc.c:25:8
	movzbl	(%rcx,%rbp), %eax
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	movl	%eax, %edx
	andl	$-4, %edx
	cmpl	$72, %edx
	.loc	0 26 5 is_stmt 1                # liblzma/simple/powerpc.c:26:5
	jne	.LBB2_8
.Ltmp93:
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- $rbp
	.loc	0 26 10 is_stmt 0               # liblzma/simple/powerpc.c:26:10
	movzbl	3(%rcx,%rbp), %edi
	.loc	0 26 24                         # liblzma/simple/powerpc.c:26:24
	movl	%edi, %edx
	andl	$3, %edx
	.loc	0 26 29                         # liblzma/simple/powerpc.c:26:29
	cmpl	$1, %edx
.Ltmp94:
	.loc	0 25 7 is_stmt 1                # liblzma/simple/powerpc.c:25:7
	jne	.LBB2_8
.Ltmp95:
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- $rbp
	.loc	0 0 7 is_stmt 0                 # liblzma/simple/powerpc.c:0:7
	movq	%rbp, %rbx
	orq	$3, %rbx
.Ltmp96:
	.loc	0 28 46 is_stmt 1               # liblzma/simple/powerpc.c:28:46
	andl	$3, %eax
	shll	$24, %eax
	.loc	0 29 9                          # liblzma/simple/powerpc.c:29:9
	movzbl	1(%rcx,%rbp), %r8d
	.loc	0 29 23 is_stmt 0               # liblzma/simple/powerpc.c:29:23
	shll	$16, %r8d
	.loc	0 30 9 is_stmt 1                # liblzma/simple/powerpc.c:30:9
	movzbl	2(%rcx,%rbp), %edx
	.loc	0 30 23 is_stmt 0               # liblzma/simple/powerpc.c:30:23
	shll	$8, %edx
	.loc	0 30 6                          # liblzma/simple/powerpc.c:30:6
	addl	%r8d, %edx
	.loc	0 31 23 is_stmt 1               # liblzma/simple/powerpc.c:31:23
	movl	%edi, %r8d
	andl	$-4, %r8d
.Ltmp97:
	#DEBUG_VALUE: src <- undef
	.loc	0 31 6 is_stmt 0                # liblzma/simple/powerpc.c:31:6
	subl	%ebp, %eax
	subl	%esi, %eax
	.loc	0 29 6 is_stmt 1                # liblzma/simple/powerpc.c:29:6
	addl	%r8d, %eax
	.loc	0 34 8                          # liblzma/simple/powerpc.c:34:8
	addl	%eax, %edx
.Ltmp98:
	#DEBUG_VALUE: dest <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 2, DW_OP_plus, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] undef, undef, undef
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	movl	%edx, %r8d
	shrl	$24, %r8d
	.loc	0 39 20 is_stmt 0               # liblzma/simple/powerpc.c:39:20
	andb	$3, %r8b
	orb	$72, %r8b
	.loc	0 39 18                         # liblzma/simple/powerpc.c:39:18
	movb	%r8b, (%rcx,%rbp)
	.loc	0 40 26 is_stmt 1               # liblzma/simple/powerpc.c:40:26
	movl	%edx, %r8d
	shrl	$16, %r8d
	.loc	0 40 18 is_stmt 0               # liblzma/simple/powerpc.c:40:18
	movb	%r8b, 1(%rcx,%rbp)
	.loc	0 41 18 is_stmt 1               # liblzma/simple/powerpc.c:41:18
	movb	%dh, 2(%rcx,%rbp)
	.loc	0 42 18                         # liblzma/simple/powerpc.c:42:18
	andb	$3, %dil
	.loc	0 43 18                         # liblzma/simple/powerpc.c:43:18
	orb	%dil, %al
	movb	%al, (%rcx,%rbx)
	jmp	.LBB2_8
.Ltmp99:
.LBB2_51:
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- 0
	.loc	0 0 18 is_stmt 0                # liblzma/simple/powerpc.c:0:18
	xorl	%edi, %edi
	jmp	.LBB2_52
.Ltmp100:
	.p2align	4, 0x90
.LBB2_55:                               # %for.inc.us
                                        #   in Loop: Header=BB2_52 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- $rax
	#DEBUG_VALUE: powerpc_code:i <- $r9
	.loc	0 23 16 is_stmt 1               # liblzma/simple/powerpc.c:23:16
	leaq	4(%rdi), %r9
.Ltmp101:
	#DEBUG_VALUE: powerpc_code:i <- $rdi
	.loc	0 23 20 is_stmt 0               # liblzma/simple/powerpc.c:23:20
	cmpq	%r10, %r9
.Ltmp102:
	.loc	0 23 2                          # liblzma/simple/powerpc.c:23:2
	ja	.LBB2_9
.Ltmp103:
.LBB2_52:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	.loc	0 0 2                           # liblzma/simple/powerpc.c:0:2
	movq	%rdi, %rax
	movq	%r9, %rdi
.Ltmp104:
	#DEBUG_VALUE: powerpc_code:i <- $rax
	.loc	0 25 8 is_stmt 1                # liblzma/simple/powerpc.c:25:8
	movzbl	(%rcx,%rax), %r8d
	.loc	0 25 24 is_stmt 0               # liblzma/simple/powerpc.c:25:24
	movl	%r8d, %edx
	andl	$-4, %edx
	cmpl	$72, %edx
	.loc	0 26 5 is_stmt 1                # liblzma/simple/powerpc.c:26:5
	jne	.LBB2_55
.Ltmp105:
# %bb.53:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB2_52 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- $rax
	.loc	0 26 10 is_stmt 0               # liblzma/simple/powerpc.c:26:10
	movzbl	3(%rcx,%rax), %r11d
	.loc	0 26 24                         # liblzma/simple/powerpc.c:26:24
	movl	%r11d, %edx
	andl	$3, %edx
	.loc	0 26 29                         # liblzma/simple/powerpc.c:26:29
	cmpl	$1, %edx
.Ltmp106:
	.loc	0 25 7 is_stmt 1                # liblzma/simple/powerpc.c:25:7
	jne	.LBB2_55
.Ltmp107:
# %bb.54:                               # %if.then.us
                                        #   in Loop: Header=BB2_52 Depth=1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:i <- $rax
	.loc	0 0 7 is_stmt 0                 # liblzma/simple/powerpc.c:0:7
	movq	%rdi, %r14
	movq	%rax, %rdi
	orq	$3, %rdi
.Ltmp108:
	.loc	0 28 46 is_stmt 1               # liblzma/simple/powerpc.c:28:46
	andl	$3, %r8d
	shll	$24, %r8d
	.loc	0 29 9                          # liblzma/simple/powerpc.c:29:9
	movzbl	1(%rcx,%rax), %edx
	.loc	0 29 23 is_stmt 0               # liblzma/simple/powerpc.c:29:23
	shll	$16, %edx
	.loc	0 30 9 is_stmt 1                # liblzma/simple/powerpc.c:30:9
	movzbl	2(%rcx,%rax), %ebx
	.loc	0 30 23 is_stmt 0               # liblzma/simple/powerpc.c:30:23
	shll	$8, %ebx
	.loc	0 30 6                          # liblzma/simple/powerpc.c:30:6
	addl	%edx, %ebx
	.loc	0 31 23 is_stmt 1               # liblzma/simple/powerpc.c:31:23
	movl	%r11d, %edx
	andl	$-4, %edx
.Ltmp109:
	#DEBUG_VALUE: src <- undef
	.loc	0 31 6 is_stmt 0                # liblzma/simple/powerpc.c:31:6
	addl	%eax, %edx
	addl	%esi, %edx
	.loc	0 29 6 is_stmt 1                # liblzma/simple/powerpc.c:29:6
	addl	%r8d, %edx
	.loc	0 34 8                          # liblzma/simple/powerpc.c:34:8
	addl	%edx, %ebx
.Ltmp110:
	#DEBUG_VALUE: dest <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 2, DW_OP_plus, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] undef, undef, undef
	.loc	0 39 34                         # liblzma/simple/powerpc.c:39:34
	movl	%ebx, %r8d
	shrl	$24, %r8d
	.loc	0 39 20 is_stmt 0               # liblzma/simple/powerpc.c:39:20
	andb	$3, %r8b
	orb	$72, %r8b
	.loc	0 39 18                         # liblzma/simple/powerpc.c:39:18
	movb	%r8b, (%rcx,%rax)
	.loc	0 40 26 is_stmt 1               # liblzma/simple/powerpc.c:40:26
	movl	%ebx, %r8d
	shrl	$16, %r8d
	.loc	0 40 18 is_stmt 0               # liblzma/simple/powerpc.c:40:18
	movb	%r8b, 1(%rcx,%rax)
	.loc	0 41 18 is_stmt 1               # liblzma/simple/powerpc.c:41:18
	movb	%bh, 2(%rcx,%rax)
	.loc	0 42 18                         # liblzma/simple/powerpc.c:42:18
	andb	$3, %r11b
	.loc	0 43 18                         # liblzma/simple/powerpc.c:43:18
	orb	%r11b, %dl
	movb	%dl, (%rcx,%rdi)
	movq	%r14, %rdi
	jmp	.LBB2_55
.Ltmp111:
.LBB2_9:                                # %for.end.loopexit1
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	.loc	0 47 2                          # liblzma/simple/powerpc.c:47:2
	addq	$-4, %r9
	movq	%r9, %rax
.Ltmp112:
.LBB2_79:
	#DEBUG_VALUE: powerpc_code:now_pos <- [DW_OP_constu 48, DW_OP_minus] [$rsp+0]
	#DEBUG_VALUE: powerpc_code:buffer <- $rcx
	#DEBUG_VALUE: powerpc_code:size <- [DW_OP_constu 40, DW_OP_minus] [$rsp+0]
	.loc	0 0 2 is_stmt 0                 # liblzma/simple/powerpc.c:0:2
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
	.loc	0 47 2                          # liblzma/simple/powerpc.c:47:2
	retq
.Ltmp113:
.Lfunc_end2:
	.size	powerpc_code, .Lfunc_end2-powerpc_code
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
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	80                              # -48
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
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
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
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
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	88                              # -40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
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
	.byte	1                               # Abbrev [1] 0xc:0x4ac DW_TAG_compile_unit
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
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	199                             # DW_AT_type
                                        # DW_AT_inline
	.byte	7                               # Abbrev [7] 0xa6:0x8 DW_TAG_formal_parameter
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	207                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xae:0x8 DW_TAG_formal_parameter
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	407                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xb6:0x8 DW_TAG_formal_parameter
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	740                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xbe:0x8 DW_TAG_formal_parameter
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
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
	.byte	61                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	199                             # DW_AT_type
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x34f:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	207                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x358:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	407                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x361:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	740                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x36a:0x28 DW_TAG_inlined_subroutine
	.long	158                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp0                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	64                              # DW_AT_call_line
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
	.byte	69                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	199                             # DW_AT_type
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x40f:0x9 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	207                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x418:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	407                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x421:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	60                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	740                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x42a:0x28 DW_TAG_inlined_subroutine
	.long	158                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp4                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	72                              # DW_AT_call_line
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
	.byte	30                              # Abbrev [30] 0x459:0x59 DW_TAG_subprogram
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
	.byte	78                              # DW_AT_name
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
	.byte	23                              # Abbrev [23] 0x48c:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	484                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x495:0x9 DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	484                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x49e:0x13 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x4a0:0x8 DW_TAG_variable
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	1202                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4a8:0x8 DW_TAG_variable
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	142                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x4b2:0x5 DW_TAG_const_type
	.long	142                             # DW_AT_type
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
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
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
	.asciz	"liblzma/simple/powerpc.c"      # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=130
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=162
.Linfo_string4:
	.asciz	"LZMA_OK"                       # string offset=175
.Linfo_string5:
	.asciz	"LZMA_STREAM_END"               # string offset=183
.Linfo_string6:
	.asciz	"LZMA_NO_CHECK"                 # string offset=199
.Linfo_string7:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=213
.Linfo_string8:
	.asciz	"LZMA_GET_CHECK"                # string offset=236
.Linfo_string9:
	.asciz	"LZMA_MEM_ERROR"                # string offset=251
.Linfo_string10:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=266
.Linfo_string11:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=286
.Linfo_string12:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=304
.Linfo_string13:
	.asciz	"LZMA_DATA_ERROR"               # string offset=323
.Linfo_string14:
	.asciz	"LZMA_BUF_ERROR"                # string offset=339
.Linfo_string15:
	.asciz	"LZMA_PROG_ERROR"               # string offset=354
.Linfo_string16:
	.asciz	"LZMA_RUN"                      # string offset=370
.Linfo_string17:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=379
.Linfo_string18:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=395
.Linfo_string19:
	.asciz	"LZMA_FINISH"                   # string offset=411
.Linfo_string20:
	.asciz	"LZMA_CHECK_NONE"               # string offset=423
.Linfo_string21:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=439
.Linfo_string22:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=456
.Linfo_string23:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=473
.Linfo_string24:
	.asciz	"__uint32_t"                    # string offset=491
.Linfo_string25:
	.asciz	"uint32_t"                      # string offset=502
.Linfo_string26:
	.asciz	"powerpc_coder_init"            # string offset=511
.Linfo_string27:
	.asciz	"lzma_ret"                      # string offset=530
.Linfo_string28:
	.asciz	"next"                          # string offset=539
.Linfo_string29:
	.asciz	"coder"                         # string offset=544
.Linfo_string30:
	.asciz	"lzma_coder"                    # string offset=550
.Linfo_string31:
	.asciz	"id"                            # string offset=561
.Linfo_string32:
	.asciz	"unsigned long"                 # string offset=564
.Linfo_string33:
	.asciz	"__uint64_t"                    # string offset=578
.Linfo_string34:
	.asciz	"uint64_t"                      # string offset=589
.Linfo_string35:
	.asciz	"lzma_vli"                      # string offset=598
.Linfo_string36:
	.asciz	"init"                          # string offset=607
.Linfo_string37:
	.asciz	"uintptr_t"                     # string offset=612
.Linfo_string38:
	.asciz	"code"                          # string offset=622
.Linfo_string39:
	.asciz	"alloc"                         # string offset=627
.Linfo_string40:
	.asciz	"size_t"                        # string offset=633
.Linfo_string41:
	.asciz	"free"                          # string offset=640
.Linfo_string42:
	.asciz	"opaque"                        # string offset=645
.Linfo_string43:
	.asciz	"lzma_allocator"                # string offset=652
.Linfo_string44:
	.asciz	"unsigned char"                 # string offset=667
.Linfo_string45:
	.asciz	"__uint8_t"                     # string offset=681
.Linfo_string46:
	.asciz	"uint8_t"                       # string offset=691
.Linfo_string47:
	.asciz	"lzma_action"                   # string offset=699
.Linfo_string48:
	.asciz	"lzma_code_function"            # string offset=711
.Linfo_string49:
	.asciz	"end"                           # string offset=730
.Linfo_string50:
	.asciz	"lzma_end_function"             # string offset=734
.Linfo_string51:
	.asciz	"get_check"                     # string offset=752
.Linfo_string52:
	.asciz	"lzma_check"                    # string offset=762
.Linfo_string53:
	.asciz	"memconfig"                     # string offset=773
.Linfo_string54:
	.asciz	"update"                        # string offset=783
.Linfo_string55:
	.asciz	"options"                       # string offset=790
.Linfo_string56:
	.asciz	"lzma_filter"                   # string offset=798
.Linfo_string57:
	.asciz	"lzma_next_coder_s"             # string offset=810
.Linfo_string58:
	.asciz	"lzma_next_coder"               # string offset=828
.Linfo_string59:
	.asciz	"allocator"                     # string offset=844
.Linfo_string60:
	.asciz	"filters"                       # string offset=854
.Linfo_string61:
	.asciz	"lzma_init_function"            # string offset=862
.Linfo_string62:
	.asciz	"lzma_filter_info_s"            # string offset=881
.Linfo_string63:
	.asciz	"lzma_filter_info"              # string offset=900
.Linfo_string64:
	.asciz	"is_encoder"                    # string offset=917
.Linfo_string65:
	.asciz	"_Bool"                         # string offset=928
.Linfo_string66:
	.asciz	"lzma_simple_coder_init"        # string offset=934
.Linfo_string67:
	.asciz	"lzma_simple_s"                 # string offset=957
.Linfo_string68:
	.asciz	"lzma_simple"                   # string offset=971
.Linfo_string69:
	.asciz	"DW_ATE_unsigned_8"             # string offset=983
.Linfo_string70:
	.asciz	"DW_ATE_unsigned_1"             # string offset=1001
.Linfo_string71:
	.asciz	"lzma_simple_powerpc_encoder_init" # string offset=1019
.Linfo_string72:
	.asciz	"lzma_simple_powerpc_decoder_init" # string offset=1052
.Linfo_string73:
	.asciz	"powerpc_code"                  # string offset=1085
.Linfo_string74:
	.asciz	"now_pos"                       # string offset=1098
.Linfo_string75:
	.asciz	"buffer"                        # string offset=1106
.Linfo_string76:
	.asciz	"size"                          # string offset=1113
.Linfo_string77:
	.asciz	"i"                             # string offset=1118
.Linfo_string78:
	.asciz	"simple"                        # string offset=1120
.Linfo_string79:
	.asciz	"src"                           # string offset=1127
.Linfo_string80:
	.asciz	"dest"                          # string offset=1131
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
