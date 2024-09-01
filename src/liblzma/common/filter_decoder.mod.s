	.text
	.file	"filter_decoder.c"
	.globl	lzma_filter_decoder_is_supported # -- Begin function lzma_filter_decoder_is_supported
	.p2align	4, 0x90
	.type	lzma_filter_decoder_is_supported,@function
lzma_filter_decoder_is_supported:       # @lzma_filter_decoder_is_supported
	.cfi_startproc
# %bb.0:                                # %entry
	leaq	-3(%rdi), %rax
	cmpq	$7, %rax
	jae	.LBB0_1
.LBB0_4:                                # %if.then.i
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	retq
.LBB0_1:                                # %entry
	movabsq	$4611686018427387905, %rax      # imm = 0x4000000000000001
	cmpq	%rax, %rdi
	je	.LBB0_4
# %bb.2:                                # %entry
	cmpq	$33, %rdi
	je	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	lzma_filter_decoder_is_supported, .Lfunc_end0-lzma_filter_decoder_is_supported
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function decoder_find
	.type	decoder_find,@function
decoder_find:                           # @decoder_find
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	leaq	-3(%rdi), %rcx
	cmpq	$30, %rcx
	ja	.LBB1_1
# %bb.2:                                # %entry
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_10:                               # %if.then.fold.split15
	movl	$8, %eax
	shll	$5, %eax
	leaq	decoders(%rax), %rax
	retq
.LBB1_1:                                # %entry
	movabsq	$4611686018427387905, %rcx      # imm = 0x4000000000000001
	cmpq	%rcx, %rdi
	je	.LBB1_11
.LBB1_12:                               # %cleanup
	retq
.LBB1_3:                                # %if.then.fold.split
	movl	$1, %eax
.LBB1_11:                               # %if.then
	shll	$5, %eax
	leaq	decoders(%rax), %rax
	retq
.LBB1_9:                                # %if.then.fold.split14
	movl	$7, %eax
	shll	$5, %eax
	leaq	decoders(%rax), %rax
	retq
.LBB1_5:                                # %if.then.fold.split10
	movl	$3, %eax
	shll	$5, %eax
	leaq	decoders(%rax), %rax
	retq
.LBB1_4:                                # %if.then.fold.split9
	movl	$2, %eax
	shll	$5, %eax
	leaq	decoders(%rax), %rax
	retq
.LBB1_7:                                # %if.then.fold.split12
	movl	$5, %eax
	shll	$5, %eax
	leaq	decoders(%rax), %rax
	retq
.LBB1_6:                                # %if.then.fold.split11
	movl	$4, %eax
	shll	$5, %eax
	leaq	decoders(%rax), %rax
	retq
.LBB1_8:                                # %if.then.fold.split13
	movl	$6, %eax
	shll	$5, %eax
	leaq	decoders(%rax), %rax
	retq
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
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$decoder_find, %ecx
	xorl	%r8d, %r8d
	jmp	lzma_raw_coder_init@PLT         # TAILCALL
.Lfunc_end2:
	.size	lzma_raw_decoder_init, .Lfunc_end2-lzma_raw_decoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_raw_decoder                # -- Begin function lzma_raw_decoder
	.p2align	4, 0x90
	.type	lzma_raw_decoder,@function
lzma_raw_decoder:                       # @lzma_raw_decoder
	.cfi_startproc
# %bb.0:                                # %entry
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
	callq	lzma_strm_init@PLT
	testl	%eax, %eax
	je	.LBB3_1
# %bb.4:                                # %return
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB3_1:                                # %do.end
	.cfi_def_cfa_offset 32
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movl	$decoder_find, %ecx
	movq	%r14, %rdx
	xorl	%r8d, %r8d
	callq	lzma_raw_coder_init@PLT
	testl	%eax, %eax
	je	.LBB3_3
# %bb.2:                                # %cleanup7
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	lzma_end@PLT
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB3_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	movq	56(%rbx), %rax
	movb	$1, 80(%rax)
	movq	56(%rbx), %rax
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	lzma_raw_decoder, .Lfunc_end3-lzma_raw_decoder
	.cfi_endproc
                                        # -- End function
	.globl	lzma_raw_decoder_memusage       # -- Begin function lzma_raw_decoder_memusage
	.p2align	4, 0x90
	.type	lzma_raw_decoder_memusage,@function
lzma_raw_decoder_memusage:              # @lzma_raw_decoder_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rsi
	movl	$decoder_find, %edi
	jmp	lzma_raw_coder_memusage@PLT     # TAILCALL
.Lfunc_end4:
	.size	lzma_raw_decoder_memusage, .Lfunc_end4-lzma_raw_decoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_properties_decode          # -- Begin function lzma_properties_decode
	.p2align	4, 0x90
	.type	lzma_properties_decode,@function
lzma_properties_decode:                 # @lzma_properties_decode
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$0, 8(%rdi)
	movq	(%rdi), %r8
	movl	$8, %eax
	leaq	-3(%r8), %r9
	cmpq	$30, %r9
	ja	.LBB5_1
# %bb.3:                                # %entry
	jmpq	*.LJTI5_0(,%r9,8)
.LBB5_11:                               # %if.then.fold.split15.i
	movl	$8, %eax
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	testq	%rax, %rax
	jne	.LBB5_15
	jmp	.LBB5_13
.LBB5_1:                                # %entry
	movabsq	$4611686018427387905, %r9       # imm = 0x4000000000000001
	cmpq	%r9, %r8
	jne	.LBB5_14
# %bb.2:
	xorl	%eax, %eax
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	testq	%rax, %rax
	jne	.LBB5_15
	jmp	.LBB5_13
.LBB5_4:                                # %if.then.fold.split.i
	movl	$1, %eax
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	testq	%rax, %rax
	jne	.LBB5_15
	jmp	.LBB5_13
.LBB5_10:                               # %if.then.fold.split14.i
	movl	$7, %eax
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	testq	%rax, %rax
	jne	.LBB5_15
	jmp	.LBB5_13
.LBB5_6:                                # %if.then.fold.split10.i
	movl	$3, %eax
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	testq	%rax, %rax
	jne	.LBB5_15
	jmp	.LBB5_13
.LBB5_5:                                # %if.then.fold.split9.i
	movl	$2, %eax
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	testq	%rax, %rax
	jne	.LBB5_15
	jmp	.LBB5_13
.LBB5_8:                                # %if.then.fold.split12.i
	movl	$5, %eax
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	testq	%rax, %rax
	jne	.LBB5_15
	jmp	.LBB5_13
.LBB5_7:                                # %if.then.fold.split11.i
	movl	$4, %eax
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	testq	%rax, %rax
	je	.LBB5_13
.LBB5_15:                               # %if.end4
	addq	$8, %rdi
	jmpq	*%rax                           # TAILCALL
.LBB5_9:                                # %if.then.fold.split13.i
	movl	$6, %eax
	shll	$5, %eax
	movq	decoders+24(%rax), %rax
	testq	%rax, %rax
	jne	.LBB5_15
.LBB5_13:                               # %if.then2
	xorl	%eax, %eax
	testq	%rcx, %rcx
	setne	%al
	shll	$3, %eax
.LBB5_14:                               # %cleanup
	retq
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

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
