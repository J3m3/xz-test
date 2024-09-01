	.text
	.file	"filter_decoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/filter_decoder.c" md5 0xadc3b4c5f89841352349a28c6cc96b69
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	3 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	4 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	5 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	6 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	7 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	8 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/common" "filter_common.h" md5 0x2b3d0d0ae4b0d967ddcb9fa677c708ca
	.globl	lzma_filter_decoder_is_supported # -- Begin function lzma_filter_decoder_is_supported
	.p2align	4, 0x90
	.type	lzma_filter_decoder_is_supported,@function
lzma_filter_decoder_is_supported:       # @lzma_filter_decoder_is_supported
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_filter_decoder_is_supported:id <- $rdi
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 124 7 prologue_end            # liblzma/common/filter_decoder.c:124:7
	leaq	-3(%rdi), %rax
	cmpq	$7, %rax
	jae	.LBB0_1
.Ltmp0:
.LBB0_4:                                # %if.then.i
	#DEBUG_VALUE: lzma_filter_decoder_is_supported:id <- $rdi
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_decoder.c:0:7
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	.loc	0 134 2 is_stmt 1               # liblzma/common/filter_decoder.c:134:2
	retq
.Ltmp1:
.LBB0_1:                                # %entry
	#DEBUG_VALUE: lzma_filter_decoder_is_supported:id <- $rdi
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 2 is_stmt 0                 # liblzma/common/filter_decoder.c:0:2
	movabsq	$4611686018427387905, %rax      # imm = 0x4000000000000001
.Ltmp2:
	.loc	0 124 7 is_stmt 1               # liblzma/common/filter_decoder.c:124:7
	cmpq	%rax, %rdi
	je	.LBB0_4
.Ltmp3:
# %bb.2:                                # %entry
	#DEBUG_VALUE: lzma_filter_decoder_is_supported:id <- $rdi
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	cmpq	$33, %rdi
	je	.LBB0_4
.Ltmp4:
# %bb.3:
	#DEBUG_VALUE: lzma_filter_decoder_is_supported:id <- $rdi
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_decoder.c:0:7
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	.loc	0 134 2 is_stmt 1               # liblzma/common/filter_decoder.c:134:2
	retq
.Ltmp5:
.Lfunc_end0:
	.size	lzma_filter_decoder_is_supported, .Lfunc_end0-lzma_filter_decoder_is_supported
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function decoder_find
	.type	decoder_find,@function
decoder_find:                           # @decoder_find
.Lfunc_begin1:
	.loc	0 122 0                         # liblzma/common/filter_decoder.c:122:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: decoder_find:id <- $rdi
	xorl	%eax, %eax
.Ltmp6:
	#DEBUG_VALUE: i <- 0
	.loc	0 124 7 prologue_end            # liblzma/common/filter_decoder.c:124:7
	leaq	-3(%rdi), %rcx
	cmpq	$30, %rcx
	ja	.LBB1_1
.Ltmp7:
# %bb.2:                                # %entry
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	jmpq	*.LJTI1_0(,%rcx,8)
.Ltmp8:
.LBB1_10:                               # %if.then.fold.split15
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_decoder.c:0:7
	movl	$8, %eax
.Ltmp9:
	.loc	0 125 20 is_stmt 1              # liblzma/common/filter_decoder.c:125:20
	shll	$5, %eax
	leaq	decoders(%rax), %rax
.Ltmp10:
	.loc	0 128 1                         # liblzma/common/filter_decoder.c:128:1
	retq
.Ltmp11:
.LBB1_1:                                # %entry
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_decoder.c:0:1
	movabsq	$4611686018427387905, %rcx      # imm = 0x4000000000000001
.Ltmp12:
	.loc	0 124 7 is_stmt 1               # liblzma/common/filter_decoder.c:124:7
	cmpq	%rcx, %rdi
	je	.LBB1_11
.Ltmp13:
.LBB1_12:                               # %cleanup
	#DEBUG_VALUE: decoder_find:id <- $rdi
	.loc	0 128 1                         # liblzma/common/filter_decoder.c:128:1
	retq
.Ltmp14:
.LBB1_3:                                # %if.then.fold.split
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_decoder.c:0:1
	movl	$1, %eax
.Ltmp15:
.LBB1_11:                               # %if.then
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 125 20 is_stmt 1              # liblzma/common/filter_decoder.c:125:20
	shll	$5, %eax
	leaq	decoders(%rax), %rax
.Ltmp16:
	.loc	0 128 1                         # liblzma/common/filter_decoder.c:128:1
	retq
.Ltmp17:
.LBB1_9:                                # %if.then.fold.split14
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_decoder.c:0:1
	movl	$7, %eax
.Ltmp18:
	.loc	0 125 20 is_stmt 1              # liblzma/common/filter_decoder.c:125:20
	shll	$5, %eax
	leaq	decoders(%rax), %rax
.Ltmp19:
	.loc	0 128 1                         # liblzma/common/filter_decoder.c:128:1
	retq
.Ltmp20:
.LBB1_5:                                # %if.then.fold.split10
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_decoder.c:0:1
	movl	$3, %eax
.Ltmp21:
	.loc	0 125 20 is_stmt 1              # liblzma/common/filter_decoder.c:125:20
	shll	$5, %eax
	leaq	decoders(%rax), %rax
.Ltmp22:
	.loc	0 128 1                         # liblzma/common/filter_decoder.c:128:1
	retq
.Ltmp23:
.LBB1_4:                                # %if.then.fold.split9
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_decoder.c:0:1
	movl	$2, %eax
.Ltmp24:
	.loc	0 125 20 is_stmt 1              # liblzma/common/filter_decoder.c:125:20
	shll	$5, %eax
	leaq	decoders(%rax), %rax
.Ltmp25:
	.loc	0 128 1                         # liblzma/common/filter_decoder.c:128:1
	retq
.Ltmp26:
.LBB1_7:                                # %if.then.fold.split12
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_decoder.c:0:1
	movl	$5, %eax
.Ltmp27:
	.loc	0 125 20 is_stmt 1              # liblzma/common/filter_decoder.c:125:20
	shll	$5, %eax
	leaq	decoders(%rax), %rax
.Ltmp28:
	.loc	0 128 1                         # liblzma/common/filter_decoder.c:128:1
	retq
.Ltmp29:
.LBB1_6:                                # %if.then.fold.split11
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_decoder.c:0:1
	movl	$4, %eax
.Ltmp30:
	.loc	0 125 20 is_stmt 1              # liblzma/common/filter_decoder.c:125:20
	shll	$5, %eax
	leaq	decoders(%rax), %rax
.Ltmp31:
	.loc	0 128 1                         # liblzma/common/filter_decoder.c:128:1
	retq
.Ltmp32:
.LBB1_8:                                # %if.then.fold.split13
	#DEBUG_VALUE: decoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_decoder.c:0:1
	movl	$6, %eax
.Ltmp33:
	.loc	0 125 20 is_stmt 1              # liblzma/common/filter_decoder.c:125:20
	shll	$5, %eax
	leaq	decoders(%rax), %rax
.Ltmp34:
	.loc	0 128 1                         # liblzma/common/filter_decoder.c:128:1
	retq
.Ltmp35:
.Lfunc_end1:
	.size	decoder_find, .Lfunc_end1-decoder_find
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_10
	.quad	.LBB1_4
	.quad	.LBB1_5
	.quad	.LBB1_6
	.quad	.LBB1_7
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_3
                                        # -- End function
	.text
	.globl	lzma_raw_decoder_init           # -- Begin function lzma_raw_decoder_init
	.p2align	4, 0x90
	.type	lzma_raw_decoder_init,@function
lzma_raw_decoder_init:                  # @lzma_raw_decoder_init
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_raw_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_decoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_decoder_init:options <- $rdx
	.loc	0 142 9 prologue_end            # liblzma/common/filter_decoder.c:142:9
	movl	$decoder_find, %ecx
	xorl	%r8d, %r8d
.Ltmp36:
	jmp	lzma_raw_coder_init@PLT         # TAILCALL
.Ltmp37:
.Lfunc_end2:
	.size	lzma_raw_decoder_init, .Lfunc_end2-lzma_raw_decoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_raw_decoder                # -- Begin function lzma_raw_decoder
	.p2align	4, 0x90
	.type	lzma_raw_decoder,@function
lzma_raw_decoder:                       # @lzma_raw_decoder
.Lfunc_begin3:
	.loc	0 149 0                         # liblzma/common/filter_decoder.c:149:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_raw_decoder:strm <- $rdi
	#DEBUG_VALUE: lzma_raw_decoder:options <- $rsi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp38:
	.loc	0 150 2 prologue_end            # liblzma/common/filter_decoder.c:150:2
	callq	lzma_strm_init@PLT
.Ltmp39:
	#DEBUG_VALUE: lzma_raw_decoder:options <- $r14
	#DEBUG_VALUE: lzma_raw_decoder:strm <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 150 2 is_stmt 0               # liblzma/common/filter_decoder.c:150:2
	testl	%eax, %eax
	je	.LBB3_1
.Ltmp40:
# %bb.4:                                # %return
	#DEBUG_VALUE: lzma_raw_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_raw_decoder:options <- $r14
	.loc	0 156 1 epilogue_begin is_stmt 1 # liblzma/common/filter_decoder.c:156:1
	popq	%rbx
.Ltmp41:
	#DEBUG_VALUE: lzma_raw_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp42:
	#DEBUG_VALUE: lzma_raw_decoder:options <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp43:
.LBB3_1:                                # %do.end
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_raw_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_raw_decoder:options <- $r14
	.loc	0 150 2                         # liblzma/common/filter_decoder.c:150:2
	movq	48(%rbx), %rsi
.Ltmp44:
	#DEBUG_VALUE: lzma_raw_decoder_init:allocator <- $rsi
	movq	56(%rbx), %rdi
.Ltmp45:
	#DEBUG_VALUE: lzma_raw_decoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_decoder_init:options <- $r14
	.loc	0 142 9                         # liblzma/common/filter_decoder.c:142:9
	movl	$decoder_find, %ecx
	movq	%r14, %rdx
	xorl	%r8d, %r8d
	callq	lzma_raw_coder_init@PLT
.Ltmp46:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 150 2                         # liblzma/common/filter_decoder.c:150:2
	testl	%eax, %eax
.Ltmp47:
	.loc	0 150 2 is_stmt 0               # liblzma/common/filter_decoder.c:150:2
	je	.LBB3_3
.Ltmp48:
# %bb.2:                                # %cleanup7
	#DEBUG_VALUE: lzma_raw_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_raw_decoder:options <- $r14
	#DEBUG_VALUE: ret_ <- $eax
	movl	%eax, %ebp
.Ltmp49:
	.loc	0 150 2                         # liblzma/common/filter_decoder.c:150:2
	movq	%rbx, %rdi
	callq	lzma_end@PLT
.Ltmp50:
	#DEBUG_VALUE: ret_ <- $ebp
	.loc	0 0 2                           # liblzma/common/filter_decoder.c:0:2
	movl	%ebp, %eax
.Ltmp51:
	.loc	0 156 1 epilogue_begin is_stmt 1 # liblzma/common/filter_decoder.c:156:1
	popq	%rbx
.Ltmp52:
	#DEBUG_VALUE: lzma_raw_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp53:
	#DEBUG_VALUE: lzma_raw_decoder:options <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp54:
	#DEBUG_VALUE: ret_ <- $eax
	.cfi_def_cfa_offset 8
	retq
.Ltmp55:
.LBB3_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_raw_decoder:strm <- $rbx
	#DEBUG_VALUE: lzma_raw_decoder:options <- $r14
	.loc	0 152 8                         # liblzma/common/filter_decoder.c:152:8
	movq	56(%rbx), %rax
	.loc	0 152 46 is_stmt 0              # liblzma/common/filter_decoder.c:152:46
	movb	$1, 80(%rax)
	.loc	0 153 8 is_stmt 1               # liblzma/common/filter_decoder.c:153:8
	movq	56(%rbx), %rax
	.loc	0 153 49 is_stmt 0              # liblzma/common/filter_decoder.c:153:49
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	.loc	0 156 1 epilogue_begin is_stmt 1 # liblzma/common/filter_decoder.c:156:1
	popq	%rbx
.Ltmp56:
	#DEBUG_VALUE: lzma_raw_decoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp57:
	#DEBUG_VALUE: lzma_raw_decoder:options <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp58:
.Lfunc_end3:
	.size	lzma_raw_decoder, .Lfunc_end3-lzma_raw_decoder
	.cfi_endproc
                                        # -- End function
	.globl	lzma_raw_decoder_memusage       # -- Begin function lzma_raw_decoder_memusage
	.p2align	4, 0x90
	.type	lzma_raw_decoder_memusage,@function
lzma_raw_decoder_memusage:              # @lzma_raw_decoder_memusage
.Lfunc_begin4:
	.loc	0 161 0                         # liblzma/common/filter_decoder.c:161:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_raw_decoder_memusage:filters <- $rdi
	movq	%rdi, %rsi
.Ltmp59:
	.loc	0 162 9 prologue_end            # liblzma/common/filter_decoder.c:162:9
	movl	$decoder_find, %edi
.Ltmp60:
	#DEBUG_VALUE: lzma_raw_decoder_memusage:filters <- $rsi
	jmp	lzma_raw_coder_memusage@PLT     # TAILCALL
.Ltmp61:
.Lfunc_end4:
	.size	lzma_raw_decoder_memusage, .Lfunc_end4-lzma_raw_decoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_properties_decode          # -- Begin function lzma_properties_decode
	.p2align	4, 0x90
	.type	lzma_properties_decode,@function
lzma_properties_decode:                 # @lzma_properties_decode
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 172 18 prologue_end           # liblzma/common/filter_decoder.c:172:18
	movq	$0, 8(%rdi)
	.loc	0 174 61                        # liblzma/common/filter_decoder.c:174:61
	movq	(%rdi), %r8
.Ltmp62:
	#DEBUG_VALUE: decoder_find:id <- $r8
	.loc	0 0 61 is_stmt 0                # liblzma/common/filter_decoder.c:0:61
	movl	$8, %eax
.Ltmp63:
	#DEBUG_VALUE: i <- 0
	.loc	0 124 7 is_stmt 1               # liblzma/common/filter_decoder.c:124:7
	leaq	-3(%r8), %r9
	cmpq	$30, %r9
	ja	.LBB5_1
.Ltmp64:
# %bb.3:                                # %entry
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	#DEBUG_VALUE: decoder_find:id <- $r8
	#DEBUG_VALUE: i <- 0
	jmpq	*.LJTI5_0(,%r9,8)
.Ltmp65:
.LBB5_11:                               # %if.then.fold.split15.i
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_decoder.c:0:7
	movl	$8, %eax
.Ltmp66:
	#DEBUG_VALUE: lzma_properties_decode:fd <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 178 10 is_stmt 1              # liblzma/common/filter_decoder.c:178:10
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	.loc	0 178 23 is_stmt 0              # liblzma/common/filter_decoder.c:178:23
	testq	%rax, %rax
.Ltmp67:
	.loc	0 178 6                         # liblzma/common/filter_decoder.c:178:6
	jne	.LBB5_15
	jmp	.LBB5_13
.Ltmp68:
.LBB5_1:                                # %entry
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	#DEBUG_VALUE: decoder_find:id <- $r8
	#DEBUG_VALUE: i <- 0
	.loc	0 0 6                           # liblzma/common/filter_decoder.c:0:6
	movabsq	$4611686018427387905, %r9       # imm = 0x4000000000000001
.Ltmp69:
	.loc	0 124 7 is_stmt 1               # liblzma/common/filter_decoder.c:124:7
	cmpq	%r9, %r8
	jne	.LBB5_14
.Ltmp70:
# %bb.2:
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_decoder.c:0:7
	xorl	%eax, %eax
.Ltmp71:
	#DEBUG_VALUE: lzma_properties_decode:fd <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 178 10 is_stmt 1              # liblzma/common/filter_decoder.c:178:10
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	.loc	0 178 23 is_stmt 0              # liblzma/common/filter_decoder.c:178:23
	testq	%rax, %rax
.Ltmp72:
	.loc	0 178 6                         # liblzma/common/filter_decoder.c:178:6
	jne	.LBB5_15
	jmp	.LBB5_13
.Ltmp73:
.LBB5_4:                                # %if.then.fold.split.i
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 0 6                           # liblzma/common/filter_decoder.c:0:6
	movl	$1, %eax
.Ltmp74:
	#DEBUG_VALUE: lzma_properties_decode:fd <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 178 10                        # liblzma/common/filter_decoder.c:178:10
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	.loc	0 178 23                        # liblzma/common/filter_decoder.c:178:23
	testq	%rax, %rax
.Ltmp75:
	.loc	0 178 6                         # liblzma/common/filter_decoder.c:178:6
	jne	.LBB5_15
	jmp	.LBB5_13
.Ltmp76:
.LBB5_10:                               # %if.then.fold.split14.i
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 0 6                           # liblzma/common/filter_decoder.c:0:6
	movl	$7, %eax
.Ltmp77:
	#DEBUG_VALUE: lzma_properties_decode:fd <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 178 10                        # liblzma/common/filter_decoder.c:178:10
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	.loc	0 178 23                        # liblzma/common/filter_decoder.c:178:23
	testq	%rax, %rax
.Ltmp78:
	.loc	0 178 6                         # liblzma/common/filter_decoder.c:178:6
	jne	.LBB5_15
	jmp	.LBB5_13
.Ltmp79:
.LBB5_6:                                # %if.then.fold.split10.i
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 0 6                           # liblzma/common/filter_decoder.c:0:6
	movl	$3, %eax
.Ltmp80:
	#DEBUG_VALUE: lzma_properties_decode:fd <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 178 10                        # liblzma/common/filter_decoder.c:178:10
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	.loc	0 178 23                        # liblzma/common/filter_decoder.c:178:23
	testq	%rax, %rax
.Ltmp81:
	.loc	0 178 6                         # liblzma/common/filter_decoder.c:178:6
	jne	.LBB5_15
	jmp	.LBB5_13
.Ltmp82:
.LBB5_5:                                # %if.then.fold.split9.i
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 0 6                           # liblzma/common/filter_decoder.c:0:6
	movl	$2, %eax
.Ltmp83:
	#DEBUG_VALUE: lzma_properties_decode:fd <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 178 10                        # liblzma/common/filter_decoder.c:178:10
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	.loc	0 178 23                        # liblzma/common/filter_decoder.c:178:23
	testq	%rax, %rax
.Ltmp84:
	.loc	0 178 6                         # liblzma/common/filter_decoder.c:178:6
	jne	.LBB5_15
	jmp	.LBB5_13
.Ltmp85:
.LBB5_8:                                # %if.then.fold.split12.i
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 0 6                           # liblzma/common/filter_decoder.c:0:6
	movl	$5, %eax
.Ltmp86:
	#DEBUG_VALUE: lzma_properties_decode:fd <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 178 10                        # liblzma/common/filter_decoder.c:178:10
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	.loc	0 178 23                        # liblzma/common/filter_decoder.c:178:23
	testq	%rax, %rax
.Ltmp87:
	.loc	0 178 6                         # liblzma/common/filter_decoder.c:178:6
	jne	.LBB5_15
	jmp	.LBB5_13
.Ltmp88:
.LBB5_7:                                # %if.then.fold.split11.i
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 0 6                           # liblzma/common/filter_decoder.c:0:6
	movl	$4, %eax
.Ltmp89:
	#DEBUG_VALUE: lzma_properties_decode:fd <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 178 10                        # liblzma/common/filter_decoder.c:178:10
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	.loc	0 178 23                        # liblzma/common/filter_decoder.c:178:23
	testq	%rax, %rax
.Ltmp90:
	.loc	0 178 6                         # liblzma/common/filter_decoder.c:178:6
	je	.LBB5_13
.Ltmp91:
.LBB5_15:                               # %if.end4
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 0 0                           # liblzma/common/filter_decoder.c:0:0
	addq	$8, %rdi
.Ltmp92:
	#DEBUG_VALUE: lzma_properties_decode:filter <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 181 9 is_stmt 1               # liblzma/common/filter_decoder.c:181:9
	jmpq	*%rax                           # TAILCALL
.Ltmp93:
.LBB5_9:                                # %if.then.fold.split13.i
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 0 9 is_stmt 0                 # liblzma/common/filter_decoder.c:0:9
	movl	$6, %eax
.Ltmp94:
	#DEBUG_VALUE: lzma_properties_decode:fd <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 178 10 is_stmt 1              # liblzma/common/filter_decoder.c:178:10
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	.loc	0 178 23 is_stmt 0              # liblzma/common/filter_decoder.c:178:23
	testq	%rax, %rax
.Ltmp95:
	.loc	0 178 6                         # liblzma/common/filter_decoder.c:178:6
	jne	.LBB5_15
.Ltmp96:
.LBB5_13:                               # %if.then2
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 179 21 is_stmt 1              # liblzma/common/filter_decoder.c:179:21
	xorl	%eax, %eax
	testq	%rcx, %rcx
	setne	%al
	.loc	0 179 10 is_stmt 0              # liblzma/common/filter_decoder.c:179:10
	shll	$3, %eax
.Ltmp97:
.LBB5_14:                               # %cleanup
	#DEBUG_VALUE: lzma_properties_decode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_decode:allocator <- $rsi
	#DEBUG_VALUE: lzma_properties_decode:props <- $rdx
	#DEBUG_VALUE: lzma_properties_decode:props_size <- $rcx
	.loc	0 183 1 is_stmt 1               # liblzma/common/filter_decoder.c:183:1
	retq
.Ltmp98:
.Lfunc_end5:
	.size	lzma_properties_decode, .Lfunc_end5-lzma_properties_decode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI5_0:
	.quad	.LBB5_11
	.quad	.LBB5_5
	.quad	.LBB5_6
	.quad	.LBB5_7
	.quad	.LBB5_8
	.quad	.LBB5_9
	.quad	.LBB5_10
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_4
                                        # -- End function
	.type	decoders,@object                # @decoders
	.p2align	4, 0x0
decoders:
	.quad	4611686018427387905             # 0x4000000000000001
	.quad	lzma_lzma_decoder_init
	.quad	lzma_lzma_decoder_memusage
	.quad	lzma_lzma_props_decode
	.quad	33                              # 0x21
	.quad	lzma_lzma2_decoder_init
	.quad	lzma_lzma2_decoder_memusage
	.quad	lzma_lzma2_props_decode
	.quad	4                               # 0x4
	.quad	lzma_simple_x86_decoder_init
	.quad	0
	.quad	lzma_simple_props_decode
	.quad	5                               # 0x5
	.quad	lzma_simple_powerpc_decoder_init
	.quad	0
	.quad	lzma_simple_props_decode
	.quad	6                               # 0x6
	.quad	lzma_simple_ia64_decoder_init
	.quad	0
	.quad	lzma_simple_props_decode
	.quad	7                               # 0x7
	.quad	lzma_simple_arm_decoder_init
	.quad	0
	.quad	lzma_simple_props_decode
	.quad	8                               # 0x8
	.quad	lzma_simple_armthumb_decoder_init
	.quad	0
	.quad	lzma_simple_props_decode
	.quad	9                               # 0x9
	.quad	lzma_simple_sparc_decoder_init
	.quad	0
	.quad	lzma_simple_props_decode
	.quad	3                               # 0x3
	.quad	lzma_delta_decoder_init
	.quad	lzma_delta_coder_memusage
	.quad	lzma_delta_props_decode
	.size	decoders, 288

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	11                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp61-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
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
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
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
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
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
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
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
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
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
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	46                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
	.byte	27                              # DW_FORM_addrx
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
	.byte	1                               # Abbrev [1] 0xc:0x716 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	54                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x36:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3b:0x6 DW_TAG_subrange_type
	.long	895                             # DW_AT_type
	.byte	9                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x42:0x5 DW_TAG_const_type
	.long	71                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x47:0x8 DW_TAG_typedef
	.long	79                              # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x4f:0x29 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x53:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	120                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x5c:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	148                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x65:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	837                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x6e:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	859                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x78:0x8 DW_TAG_typedef
	.long	128                             # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x80:0x8 DW_TAG_typedef
	.long	136                             # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x88:0x8 DW_TAG_typedef
	.long	144                             # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x90:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x94:0x8 DW_TAG_typedef
	.long	156                             # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9c:0x5 DW_TAG_pointer_type
	.long	161                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xa1:0x15 DW_TAG_subroutine_type
	.long	182                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0xa6:0x5 DW_TAG_formal_parameter
	.long	239                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xab:0x5 DW_TAG_formal_parameter
	.long	411                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xb0:0x5 DW_TAG_formal_parameter
	.long	786                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xb6:0x8 DW_TAG_typedef
	.long	190                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xbe:0x2d DW_TAG_enumeration_type
	.long	235                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xc6:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xc9:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xcc:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xcf:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xd2:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xd5:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xd8:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xdb:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xde:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xe1:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xe4:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xe7:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xeb:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xef:0x5 DW_TAG_pointer_type
	.long	244                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xf4:0x8 DW_TAG_typedef
	.long	252                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0xfc:0x4e DW_TAG_structure_type
	.byte	54                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x101:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x10a:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	120                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x113:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	339                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x11c:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	347                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x125:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	598                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x12e:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	623                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x137:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	678                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x140:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	714                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x14a:0x5 DW_TAG_pointer_type
	.long	335                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x14f:0x4 DW_TAG_typedef
	.byte	25                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x153:0x8 DW_TAG_typedef
	.long	144                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x15b:0x8 DW_TAG_typedef
	.long	355                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x163:0x5 DW_TAG_pointer_type
	.long	360                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x168:0x33 DW_TAG_subroutine_type
	.long	182                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x16d:0x5 DW_TAG_formal_parameter
	.long	330                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x172:0x5 DW_TAG_formal_parameter
	.long	411                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x177:0x5 DW_TAG_formal_parameter
	.long	513                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x17c:0x5 DW_TAG_formal_parameter
	.long	548                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x181:0x5 DW_TAG_formal_parameter
	.long	488                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x186:0x5 DW_TAG_formal_parameter
	.long	558                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x18b:0x5 DW_TAG_formal_parameter
	.long	548                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x190:0x5 DW_TAG_formal_parameter
	.long	488                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x195:0x5 DW_TAG_formal_parameter
	.long	568                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x19b:0x5 DW_TAG_pointer_type
	.long	416                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1a0:0x9 DW_TAG_typedef
	.long	425                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x1a9:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x1ae:0xa DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	461                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x1b8:0xa DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	496                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x1c2:0xa DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1cd:0x5 DW_TAG_pointer_type
	.long	466                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1d2:0x15 DW_TAG_subroutine_type
	.long	487                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x1d7:0x5 DW_TAG_formal_parameter
	.long	487                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1dc:0x5 DW_TAG_formal_parameter
	.long	488                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1e1:0x5 DW_TAG_formal_parameter
	.long	488                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x1e7:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x1e8:0x8 DW_TAG_typedef
	.long	144                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1f0:0x5 DW_TAG_pointer_type
	.long	501                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1f5:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x1f6:0x5 DW_TAG_formal_parameter
	.long	487                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1fb:0x5 DW_TAG_formal_parameter
	.long	487                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x201:0x5 DW_TAG_restrict_type
	.long	518                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x206:0x5 DW_TAG_pointer_type
	.long	523                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x20b:0x5 DW_TAG_const_type
	.long	528                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x210:0x8 DW_TAG_typedef
	.long	536                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x218:0x8 DW_TAG_typedef
	.long	544                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x220:0x4 DW_TAG_base_type
	.byte	33                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x224:0x5 DW_TAG_restrict_type
	.long	553                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x229:0x5 DW_TAG_pointer_type
	.long	488                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x22e:0x5 DW_TAG_restrict_type
	.long	563                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x233:0x5 DW_TAG_pointer_type
	.long	528                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x238:0x9 DW_TAG_typedef
	.long	577                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x241:0x15 DW_TAG_enumeration_type
	.long	235                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x249:0x3 DW_TAG_enumerator
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x24c:0x3 DW_TAG_enumerator
	.byte	37                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x24f:0x3 DW_TAG_enumerator
	.byte	38                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x252:0x3 DW_TAG_enumerator
	.byte	39                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x256:0x8 DW_TAG_typedef
	.long	606                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x25e:0x5 DW_TAG_pointer_type
	.long	611                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x263:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x264:0x5 DW_TAG_formal_parameter
	.long	330                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x269:0x5 DW_TAG_formal_parameter
	.long	411                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x26f:0x5 DW_TAG_pointer_type
	.long	628                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x274:0xb DW_TAG_subroutine_type
	.long	639                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x279:0x5 DW_TAG_formal_parameter
	.long	668                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x27f:0x8 DW_TAG_typedef
	.long	647                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x287:0x15 DW_TAG_enumeration_type
	.long	235                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x28f:0x3 DW_TAG_enumerator
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x292:0x3 DW_TAG_enumerator
	.byte	46                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x295:0x3 DW_TAG_enumerator
	.byte	47                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x298:0x3 DW_TAG_enumerator
	.byte	48                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x29c:0x5 DW_TAG_pointer_type
	.long	673                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2a1:0x5 DW_TAG_const_type
	.long	335                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2a6:0x5 DW_TAG_pointer_type
	.long	683                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2ab:0x1a DW_TAG_subroutine_type
	.long	182                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x2b0:0x5 DW_TAG_formal_parameter
	.long	330                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2b5:0x5 DW_TAG_formal_parameter
	.long	709                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2ba:0x5 DW_TAG_formal_parameter
	.long	709                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2bf:0x5 DW_TAG_formal_parameter
	.long	128                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2c5:0x5 DW_TAG_pointer_type
	.long	128                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2ca:0x5 DW_TAG_pointer_type
	.long	719                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2cf:0x1a DW_TAG_subroutine_type
	.long	182                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x2d4:0x5 DW_TAG_formal_parameter
	.long	330                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2d9:0x5 DW_TAG_formal_parameter
	.long	411                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2de:0x5 DW_TAG_formal_parameter
	.long	745                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2e3:0x5 DW_TAG_formal_parameter
	.long	745                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2e9:0x5 DW_TAG_pointer_type
	.long	750                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2ee:0x5 DW_TAG_const_type
	.long	755                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2f3:0x8 DW_TAG_typedef
	.long	763                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x2fb:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2ff:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	120                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x308:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x312:0x5 DW_TAG_pointer_type
	.long	791                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x317:0x5 DW_TAG_const_type
	.long	796                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x31c:0x8 DW_TAG_typedef
	.long	804                             # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x324:0x21 DW_TAG_structure_type
	.byte	56                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x329:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	120                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x332:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	148                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x33b:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x345:0x5 DW_TAG_pointer_type
	.long	842                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x34a:0xb DW_TAG_subroutine_type
	.long	128                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x34f:0x5 DW_TAG_formal_parameter
	.long	853                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x355:0x5 DW_TAG_pointer_type
	.long	858                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x35a:0x1 DW_TAG_const_type
	.byte	10                              # Abbrev [10] 0x35b:0x5 DW_TAG_pointer_type
	.long	864                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x360:0x1a DW_TAG_subroutine_type
	.long	182                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x365:0x5 DW_TAG_formal_parameter
	.long	890                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x36a:0x5 DW_TAG_formal_parameter
	.long	411                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x36f:0x5 DW_TAG_formal_parameter
	.long	518                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x374:0x5 DW_TAG_formal_parameter
	.long	488                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x37a:0x5 DW_TAG_pointer_type
	.long	487                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x37f:0x4 DW_TAG_base_type
	.byte	62                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	15                              # Abbrev [15] 0x383:0x4e DW_TAG_structure_type
	.byte	75                              # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x388:0x9 DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	244                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x391:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	922                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x39a:0x1b DW_TAG_enumeration_type
	.long	235                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x3a2:0x3 DW_TAG_enumerator
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x3a5:0x3 DW_TAG_enumerator
	.byte	66                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x3a8:0x3 DW_TAG_enumerator
	.byte	67                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x3ab:0x3 DW_TAG_enumerator
	.byte	68                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x3ae:0x3 DW_TAG_enumerator
	.byte	69                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x3b1:0x3 DW_TAG_enumerator
	.byte	70                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3b5:0x9 DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3be:0x9 DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	977                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3c7:0x9 DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	989                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x3d1:0xc DW_TAG_array_type
	.long	989                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3d6:0x6 DW_TAG_subrange_type
	.long	895                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3dd:0x4 DW_TAG_base_type
	.byte	73                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x3e1:0xc DW_TAG_enumeration_type
	.long	235                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x3e9:0x3 DW_TAG_enumerator
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3ed:0x8 DW_TAG_typedef
	.long	1013                            # DW_AT_type
	.byte	78                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3f5:0x5 DW_TAG_pointer_type
	.long	1018                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3fa:0xb DW_TAG_subroutine_type
	.long	1029                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x3ff:0x5 DW_TAG_formal_parameter
	.long	120                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x405:0x5 DW_TAG_pointer_type
	.long	1034                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x40a:0x5 DW_TAG_const_type
	.long	1039                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x40f:0x8 DW_TAG_typedef
	.long	1047                            # DW_AT_type
	.byte	77                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x417:0x20 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x41b:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	120                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x424:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	148                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x42d:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	837                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x437:0x1b DW_TAG_subprogram
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1106                            # DW_AT_type
                                        # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x43f:0x8 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.long	120                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x447:0xa DW_TAG_lexical_block
	.byte	28                              # Abbrev [28] 0x448:0x8 DW_TAG_variable
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.long	488                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x452:0x5 DW_TAG_pointer_type
	.long	66                              # DW_AT_type
	.byte	29                              # Abbrev [29] 0x457:0x33 DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1802                            # DW_AT_type
                                        # DW_AT_external
	.byte	30                              # Abbrev [30] 0x466:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.long	120                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x470:0x19 DW_TAG_inlined_subroutine
	.long	1079                            # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	134                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x479:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	1087                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x47f:0x9 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x481:0x6 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.long	1096                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x48a:0x1d DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1079                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x496:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1087                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x49d:0x9 DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x49f:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.long	1096                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x4a7:0x28 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1265                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x4b3:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1273                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x4ba:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	1281                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x4c1:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.long	1289                            # DW_AT_abstract_origin
	.byte	37                              # Abbrev [37] 0x4c8:0x6 DW_TAG_call_site
	.long	1231                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	4                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x4cf:0x22 DW_TAG_subprogram
	.byte	81                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	182                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x4d7:0x5 DW_TAG_formal_parameter
	.long	239                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4dc:0x5 DW_TAG_formal_parameter
	.long	411                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4e1:0x5 DW_TAG_formal_parameter
	.long	745                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4e6:0x5 DW_TAG_formal_parameter
	.long	1005                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4eb:0x5 DW_TAG_formal_parameter
	.long	989                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x4f1:0x21 DW_TAG_subprogram
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	182                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x4f9:0x8 DW_TAG_formal_parameter
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.long	239                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x501:0x8 DW_TAG_formal_parameter
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.long	411                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x509:0x8 DW_TAG_formal_parameter
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.long	745                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x512:0x73 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	182                             # DW_AT_type
                                        # DW_AT_external
	.byte	40                              # Abbrev [40] 0x521:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	111                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	1427                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x52a:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	745                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x533:0x3f DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	41                              # Abbrev [41] 0x535:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	1810                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x53e:0x10 DW_TAG_lexical_block
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp40-.Ltmp38                 # DW_AT_high_pc
	.byte	41                              # Abbrev [41] 0x544:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	1810                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x54e:0x23 DW_TAG_inlined_subroutine
	.long	1265                            # DW_AT_abstract_origin
	.byte	7                               # DW_AT_low_pc
	.long	.Ltmp46-.Ltmp45                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	150                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	36                              # Abbrev [36] 0x55b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1273                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x562:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.long	1281                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x569:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1289                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x572:0x6 DW_TAG_call_site
	.long	1413                            # DW_AT_call_origin
	.byte	8                               # DW_AT_call_return_pc
	.byte	44                              # Abbrev [44] 0x578:0x6 DW_TAG_call_site
	.long	1231                            # DW_AT_call_origin
	.byte	9                               # DW_AT_call_return_pc
	.byte	44                              # Abbrev [44] 0x57e:0x6 DW_TAG_call_site
	.long	1649                            # DW_AT_call_origin
	.byte	10                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x585:0xe DW_TAG_subprogram
	.byte	84                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	182                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x58d:0x5 DW_TAG_formal_parameter
	.long	1427                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x593:0x5 DW_TAG_pointer_type
	.long	1432                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x598:0x9 DW_TAG_typedef
	.long	1441                            # DW_AT_type
	.byte	103                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x5a1:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x5a6:0xa DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	518                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x5b0:0xa DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x5ba:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	128                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x5c4:0xa DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	563                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x5ce:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x5d8:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	128                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x5e2:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	411                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x5ec:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	1627                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x5f6:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x600:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x60a:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x614:0xa DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	487                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x61e:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	128                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x628:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	128                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x632:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x63c:0xa DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x646:0xa DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	1641                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x650:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	1641                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x65b:0x5 DW_TAG_pointer_type
	.long	1632                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x660:0x9 DW_TAG_typedef
	.long	899                             # DW_AT_type
	.byte	91                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x669:0x8 DW_TAG_typedef
	.long	993                             # DW_AT_type
	.byte	101                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	45                              # Abbrev [45] 0x671:0xb DW_TAG_subprogram
	.byte	104                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x676:0x5 DW_TAG_formal_parameter
	.long	1427                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x67c:0x1f DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	128                             # DW_AT_type
                                        # DW_AT_external
	.byte	40                              # Abbrev [40] 0x68b:0x9 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	113                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.long	745                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x694:0x6 DW_TAG_call_site
	.long	1691                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	12                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x69b:0x13 DW_TAG_subprogram
	.byte	105                             # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	128                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x6a3:0x5 DW_TAG_formal_parameter
	.long	1005                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x6a8:0x5 DW_TAG_formal_parameter
	.long	745                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x6ae:0x5c DW_TAG_subprogram
	.byte	13                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	182                             # DW_AT_type
                                        # DW_AT_external
	.byte	40                              # Abbrev [40] 0x6bd:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.long	1815                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6c6:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.long	411                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6d0:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.long	518                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x6da:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	82
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.long	488                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x6e4:0x8 DW_TAG_variable
	.byte	117                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.long	1820                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x6ec:0x19 DW_TAG_inlined_subroutine
	.long	1079                            # DW_AT_abstract_origin
	.byte	4                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	174                             # DW_AT_call_line
	.byte	40                              # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x6f5:0x6 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.long	1087                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x6fb:0x9 DW_TAG_lexical_block
	.byte	5                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x6fd:0x6 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.long	1096                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x705:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	14                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x70a:0x8 DW_TAG_typedef
	.long	544                             # DW_AT_type
	.byte	107                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x712:0x5 DW_TAG_const_type
	.long	182                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x717:0x5 DW_TAG_pointer_type
	.long	755                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x71c:0x5 DW_TAG_const_type
	.long	1106                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	6                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
	.long	.Ldebug_ranges4-.Lrnglists_table_base0
	.long	.Ldebug_ranges5-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp69-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp70-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	476                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/filter_decoder.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=137
.Linfo_string3:
	.asciz	"decoders"                      # string offset=169
.Linfo_string4:
	.asciz	"id"                            # string offset=178
.Linfo_string5:
	.asciz	"unsigned long"                 # string offset=181
.Linfo_string6:
	.asciz	"__uint64_t"                    # string offset=195
.Linfo_string7:
	.asciz	"uint64_t"                      # string offset=206
.Linfo_string8:
	.asciz	"lzma_vli"                      # string offset=215
.Linfo_string9:
	.asciz	"init"                          # string offset=224
.Linfo_string10:
	.asciz	"unsigned int"                  # string offset=229
.Linfo_string11:
	.asciz	"LZMA_OK"                       # string offset=242
.Linfo_string12:
	.asciz	"LZMA_STREAM_END"               # string offset=250
.Linfo_string13:
	.asciz	"LZMA_NO_CHECK"                 # string offset=266
.Linfo_string14:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=280
.Linfo_string15:
	.asciz	"LZMA_GET_CHECK"                # string offset=303
.Linfo_string16:
	.asciz	"LZMA_MEM_ERROR"                # string offset=318
.Linfo_string17:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=333
.Linfo_string18:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=353
.Linfo_string19:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=371
.Linfo_string20:
	.asciz	"LZMA_DATA_ERROR"               # string offset=390
.Linfo_string21:
	.asciz	"LZMA_BUF_ERROR"                # string offset=406
.Linfo_string22:
	.asciz	"LZMA_PROG_ERROR"               # string offset=421
.Linfo_string23:
	.asciz	"lzma_ret"                      # string offset=437
.Linfo_string24:
	.asciz	"coder"                         # string offset=446
.Linfo_string25:
	.asciz	"lzma_coder"                    # string offset=452
.Linfo_string26:
	.asciz	"uintptr_t"                     # string offset=463
.Linfo_string27:
	.asciz	"code"                          # string offset=473
.Linfo_string28:
	.asciz	"alloc"                         # string offset=478
.Linfo_string29:
	.asciz	"size_t"                        # string offset=484
.Linfo_string30:
	.asciz	"free"                          # string offset=491
.Linfo_string31:
	.asciz	"opaque"                        # string offset=496
.Linfo_string32:
	.asciz	"lzma_allocator"                # string offset=503
.Linfo_string33:
	.asciz	"unsigned char"                 # string offset=518
.Linfo_string34:
	.asciz	"__uint8_t"                     # string offset=532
.Linfo_string35:
	.asciz	"uint8_t"                       # string offset=542
.Linfo_string36:
	.asciz	"LZMA_RUN"                      # string offset=550
.Linfo_string37:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=559
.Linfo_string38:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=575
.Linfo_string39:
	.asciz	"LZMA_FINISH"                   # string offset=591
.Linfo_string40:
	.asciz	"lzma_action"                   # string offset=603
.Linfo_string41:
	.asciz	"lzma_code_function"            # string offset=615
.Linfo_string42:
	.asciz	"end"                           # string offset=634
.Linfo_string43:
	.asciz	"lzma_end_function"             # string offset=638
.Linfo_string44:
	.asciz	"get_check"                     # string offset=656
.Linfo_string45:
	.asciz	"LZMA_CHECK_NONE"               # string offset=666
.Linfo_string46:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=682
.Linfo_string47:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=699
.Linfo_string48:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=716
.Linfo_string49:
	.asciz	"lzma_check"                    # string offset=734
.Linfo_string50:
	.asciz	"memconfig"                     # string offset=745
.Linfo_string51:
	.asciz	"update"                        # string offset=755
.Linfo_string52:
	.asciz	"options"                       # string offset=762
.Linfo_string53:
	.asciz	"lzma_filter"                   # string offset=770
.Linfo_string54:
	.asciz	"lzma_next_coder_s"             # string offset=782
.Linfo_string55:
	.asciz	"lzma_next_coder"               # string offset=800
.Linfo_string56:
	.asciz	"lzma_filter_info_s"            # string offset=816
.Linfo_string57:
	.asciz	"lzma_filter_info"              # string offset=835
.Linfo_string58:
	.asciz	"lzma_init_function"            # string offset=852
.Linfo_string59:
	.asciz	"memusage"                      # string offset=871
.Linfo_string60:
	.asciz	"props_decode"                  # string offset=880
.Linfo_string61:
	.asciz	"lzma_filter_decoder"           # string offset=893
.Linfo_string62:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=913
.Linfo_string63:
	.asciz	"next"                          # string offset=933
.Linfo_string64:
	.asciz	"sequence"                      # string offset=938
.Linfo_string65:
	.asciz	"ISEQ_RUN"                      # string offset=947
.Linfo_string66:
	.asciz	"ISEQ_SYNC_FLUSH"               # string offset=956
.Linfo_string67:
	.asciz	"ISEQ_FULL_FLUSH"               # string offset=972
.Linfo_string68:
	.asciz	"ISEQ_FINISH"                   # string offset=988
.Linfo_string69:
	.asciz	"ISEQ_END"                      # string offset=1000
.Linfo_string70:
	.asciz	"ISEQ_ERROR"                    # string offset=1009
.Linfo_string71:
	.asciz	"avail_in"                      # string offset=1020
.Linfo_string72:
	.asciz	"supported_actions"             # string offset=1029
.Linfo_string73:
	.asciz	"_Bool"                         # string offset=1047
.Linfo_string74:
	.asciz	"allow_buf_error"               # string offset=1053
.Linfo_string75:
	.asciz	"lzma_internal_s"               # string offset=1069
.Linfo_string76:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=1085
.Linfo_string77:
	.asciz	"lzma_filter_coder"             # string offset=1104
.Linfo_string78:
	.asciz	"lzma_filter_find"              # string offset=1122
.Linfo_string79:
	.asciz	"decoder_find"                  # string offset=1139
.Linfo_string80:
	.asciz	"i"                             # string offset=1152
.Linfo_string81:
	.asciz	"lzma_raw_coder_init"           # string offset=1154
.Linfo_string82:
	.asciz	"lzma_raw_decoder_init"         # string offset=1174
.Linfo_string83:
	.asciz	"allocator"                     # string offset=1196
.Linfo_string84:
	.asciz	"lzma_strm_init"                # string offset=1206
.Linfo_string85:
	.asciz	"next_in"                       # string offset=1221
.Linfo_string86:
	.asciz	"total_in"                      # string offset=1229
.Linfo_string87:
	.asciz	"next_out"                      # string offset=1238
.Linfo_string88:
	.asciz	"avail_out"                     # string offset=1247
.Linfo_string89:
	.asciz	"total_out"                     # string offset=1257
.Linfo_string90:
	.asciz	"internal"                      # string offset=1267
.Linfo_string91:
	.asciz	"lzma_internal"                 # string offset=1276
.Linfo_string92:
	.asciz	"reserved_ptr1"                 # string offset=1290
.Linfo_string93:
	.asciz	"reserved_ptr2"                 # string offset=1304
.Linfo_string94:
	.asciz	"reserved_ptr3"                 # string offset=1318
.Linfo_string95:
	.asciz	"reserved_ptr4"                 # string offset=1332
.Linfo_string96:
	.asciz	"reserved_int1"                 # string offset=1346
.Linfo_string97:
	.asciz	"reserved_int2"                 # string offset=1360
.Linfo_string98:
	.asciz	"reserved_int3"                 # string offset=1374
.Linfo_string99:
	.asciz	"reserved_int4"                 # string offset=1388
.Linfo_string100:
	.asciz	"reserved_enum1"                # string offset=1402
.Linfo_string101:
	.asciz	"lzma_reserved_enum"            # string offset=1417
.Linfo_string102:
	.asciz	"reserved_enum2"                # string offset=1436
.Linfo_string103:
	.asciz	"lzma_stream"                   # string offset=1451
.Linfo_string104:
	.asciz	"lzma_end"                      # string offset=1463
.Linfo_string105:
	.asciz	"lzma_raw_coder_memusage"       # string offset=1472
.Linfo_string106:
	.asciz	"lzma_filter_decoder_is_supported" # string offset=1496
.Linfo_string107:
	.asciz	"lzma_bool"                     # string offset=1529
.Linfo_string108:
	.asciz	"lzma_raw_decoder"              # string offset=1539
.Linfo_string109:
	.asciz	"lzma_raw_decoder_memusage"     # string offset=1556
.Linfo_string110:
	.asciz	"lzma_properties_decode"        # string offset=1582
.Linfo_string111:
	.asciz	"strm"                          # string offset=1605
.Linfo_string112:
	.asciz	"ret_"                          # string offset=1610
.Linfo_string113:
	.asciz	"filters"                       # string offset=1615
.Linfo_string114:
	.asciz	"filter"                        # string offset=1623
.Linfo_string115:
	.asciz	"props"                         # string offset=1630
.Linfo_string116:
	.asciz	"props_size"                    # string offset=1636
.Linfo_string117:
	.asciz	"fd"                            # string offset=1647
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
	.long	.Linfo_string97
	.long	.Linfo_string98
	.long	.Linfo_string99
	.long	.Linfo_string100
	.long	.Linfo_string101
	.long	.Linfo_string102
	.long	.Linfo_string103
	.long	.Linfo_string104
	.long	.Linfo_string105
	.long	.Linfo_string106
	.long	.Linfo_string107
	.long	.Linfo_string108
	.long	.Linfo_string109
	.long	.Linfo_string110
	.long	.Linfo_string111
	.long	.Linfo_string112
	.long	.Linfo_string113
	.long	.Linfo_string114
	.long	.Linfo_string115
	.long	.Linfo_string116
	.long	.Linfo_string117
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	decoders
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Ltmp36
	.quad	.Lfunc_begin3
	.quad	.Ltmp38
	.quad	.Ltmp45
	.quad	.Ltmp39
	.quad	.Ltmp46
	.quad	.Ltmp50
	.quad	.Lfunc_begin4
	.quad	.Ltmp60
	.quad	.Lfunc_begin5
	.quad	.Ltmp92
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
