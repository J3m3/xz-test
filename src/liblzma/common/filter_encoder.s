	.text
	.file	"filter_encoder.c"
	.globl	lzma_filter_encoder_is_supported # -- Begin function lzma_filter_encoder_is_supported
	.p2align	4, 0x90
	.type	lzma_filter_encoder_is_supported,@function
lzma_filter_encoder_is_supported:       # @lzma_filter_encoder_is_supported
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
	.size	lzma_filter_encoder_is_supported, .Lfunc_end0-lzma_filter_encoder_is_supported
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function encoder_find
	.type	encoder_find,@function
encoder_find:                           # @encoder_find
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
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
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
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
	retq
.LBB1_9:                                # %if.then.fold.split14
	movl	$7, %eax
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
	retq
.LBB1_5:                                # %if.then.fold.split10
	movl	$3, %eax
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
	retq
.LBB1_4:                                # %if.then.fold.split9
	movl	$2, %eax
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
	retq
.LBB1_7:                                # %if.then.fold.split12
	movl	$5, %eax
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
	retq
.LBB1_6:                                # %if.then.fold.split11
	movl	$4, %eax
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
	retq
.LBB1_8:                                # %if.then.fold.split13
	movl	$6, %eax
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
	retq
.Lfunc_end1:
	.size	encoder_find, .Lfunc_end1-encoder_find
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
	.globl	lzma_filters_update             # -- Begin function lzma_filters_update
	.p2align	4, 0x90
	.type	lzma_filters_update,@function
lzma_filters_update:                    # @lzma_filters_update
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	56(%rdi), %rax
	cmpq	$0, 56(%rax)
	je	.LBB2_1
# %bb.2:                                # %if.end
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$encoder_find, %edi
	callq	lzma_raw_coder_memusage@PLT
	cmpq	$-1, %rax
	je	.LBB2_3
# %bb.4:                                # %while.cond.preheader
	leaq	-16(%rsp), %rax
	leaq	16(%rbx), %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	incq	%rcx
	addq	$16, %rax
	cmpq	$-1, (%rdx)
	leaq	16(%rdx), %rdx
	jne	.LBB2_5
# %bb.6:                                # %while.end
	testq	%rcx, %rcx
	je	.LBB2_11
# %bb.7:                                # %for.body.preheader
	cmpq	$1, %rcx
	jne	.LBB2_13
# %bb.8:
	xorl	%edx, %edx
	jmp	.LBB2_9
.LBB2_1:
	movl	$11, %eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_3:
	.cfi_def_cfa_offset 112
	movl	$8, %eax
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB2_13:                               # %for.body.preheader.new
	.cfi_def_cfa_offset 112
	leaq	16(%rbx), %rsi
	movq	%rcx, %rdi
	andq	$-2, %rdi
	xorl	%edx, %edx
	movabsq	$1152921504606846974, %r8       # imm = 0xFFFFFFFFFFFFFFE
	movq	%rax, %r9
	.p2align	4, 0x90
.LBB2_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-16(%rsi), %xmm0
	movups	%xmm0, (%r9)
	movq	%rdx, %r10
	xorq	%r8, %r10
	addq	%rcx, %r10
	shlq	$4, %r10
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rsp,%r10)
	addq	$2, %rdx
	addq	$32, %rsi
	addq	$-32, %r9
	cmpq	%rdx, %rdi
	jne	.LBB2_14
.LBB2_9:                                # %for.cond.cleanup.loopexit.unr-lcssa
	testb	$1, %cl
	je	.LBB2_11
# %bb.10:                               # %for.body.epil
	shlq	$4, %rdx
	movq	%rax, %rcx
	subq	%rdx, %rcx
	movups	(%rbx,%rdx), %xmm0
	movups	%xmm0, (%rcx)
.LBB2_11:                               # %for.cond.cleanup
	movq	$-1, 16(%rax)
	movq	48(%r14), %rsi
	movq	56(%r14), %rax
	movq	(%rax), %rdi
	movq	%rsp, %rcx
	movq	%rbx, %rdx
	callq	*56(%rax)
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	lzma_filters_update, .Lfunc_end2-lzma_filters_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_raw_encoder_memusage       # -- Begin function lzma_raw_encoder_memusage
	.p2align	4, 0x90
	.type	lzma_raw_encoder_memusage,@function
lzma_raw_encoder_memusage:              # @lzma_raw_encoder_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rsi
	movl	$encoder_find, %edi
	jmp	lzma_raw_coder_memusage@PLT     # TAILCALL
.Lfunc_end3:
	.size	lzma_raw_encoder_memusage, .Lfunc_end3-lzma_raw_encoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_raw_encoder_init           # -- Begin function lzma_raw_encoder_init
	.p2align	4, 0x90
	.type	lzma_raw_encoder_init,@function
lzma_raw_encoder_init:                  # @lzma_raw_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$encoder_find, %ecx
	movl	$1, %r8d
	jmp	lzma_raw_coder_init@PLT         # TAILCALL
.Lfunc_end4:
	.size	lzma_raw_encoder_init, .Lfunc_end4-lzma_raw_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_raw_encoder                # -- Begin function lzma_raw_encoder
	.p2align	4, 0x90
	.type	lzma_raw_encoder,@function
lzma_raw_encoder:                       # @lzma_raw_encoder
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lzma_strm_init@PLT
	testl	%eax, %eax
	je	.LBB5_1
# %bb.4:                                # %return
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_1:                                # %do.end
	.cfi_def_cfa_offset 32
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movl	$encoder_find, %ecx
	movq	%r14, %rdx
	movl	$1, %r8d
	callq	lzma_raw_coder_init@PLT
	testl	%eax, %eax
	je	.LBB5_3
# %bb.2:                                # %cleanup7
	movq	%rbx, %rdi
	movl	%eax, %ebx
	callq	lzma_end@PLT
	movl	%ebx, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	movq	56(%rbx), %rax
	movb	$1, 80(%rax)
	movq	56(%rbx), %rax
	movb	$1, 81(%rax)
	movq	56(%rbx), %rax
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	lzma_raw_encoder, .Lfunc_end5-lzma_raw_encoder
	.cfi_endproc
                                        # -- End function
	.globl	lzma_properties_size            # -- Begin function lzma_properties_size
	.p2align	4, 0x90
	.type	lzma_properties_size,@function
lzma_properties_size:                   # @lzma_properties_size
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rsi), %rax
	leaq	-3(%rax), %rcx
	cmpq	$30, %rcx
	ja	.LBB6_1
# %bb.3:                                # %entry
	jmpq	*.LJTI6_0(,%rcx,8)
.LBB6_10:                               # %if.then.fold.split15.i
	movl	$8, %eax
	imulq	$56, %rax, %rcx
	movq	encoders+32(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB6_14
	jmp	.LBB6_13
.LBB6_1:                                # %entry
	movabsq	$4611686018427387905, %rcx      # imm = 0x4000000000000001
	cmpq	%rcx, %rax
	jne	.LBB6_15
# %bb.2:
	xorl	%eax, %eax
	imulq	$56, %rax, %rcx
	movq	encoders+32(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB6_14
	jmp	.LBB6_13
.LBB6_15:                               # %if.then
	shrq	$63, %rax
	leal	(%rax,%rax,2), %eax
	addl	$8, %eax
	retq
.LBB6_11:                               # %if.then.fold.split.i
	movl	$1, %eax
	imulq	$56, %rax, %rcx
	movq	encoders+32(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB6_14
	jmp	.LBB6_13
.LBB6_9:                                # %if.then.fold.split14.i
	movl	$7, %eax
	imulq	$56, %rax, %rcx
	movq	encoders+32(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB6_14
	jmp	.LBB6_13
.LBB6_5:                                # %if.then.fold.split10.i
	movl	$3, %eax
	imulq	$56, %rax, %rcx
	movq	encoders+32(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB6_14
	jmp	.LBB6_13
.LBB6_4:                                # %if.then.fold.split9.i
	movl	$2, %eax
	imulq	$56, %rax, %rcx
	movq	encoders+32(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB6_14
	jmp	.LBB6_13
.LBB6_7:                                # %if.then.fold.split12.i
	movl	$5, %eax
	imulq	$56, %rax, %rcx
	movq	encoders+32(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB6_14
	jmp	.LBB6_13
.LBB6_6:                                # %if.then.fold.split11.i
	movl	$4, %eax
	imulq	$56, %rax, %rcx
	movq	encoders+32(%rcx), %rax
	testq	%rax, %rax
	je	.LBB6_13
.LBB6_14:                               # %if.end5
	movq	8(%rsi), %rsi
	jmpq	*%rax                           # TAILCALL
.LBB6_8:                                # %if.then.fold.split13.i
	movl	$6, %eax
	imulq	$56, %rax, %rcx
	movq	encoders+32(%rcx), %rax
	testq	%rax, %rax
	jne	.LBB6_14
.LBB6_13:                               # %if.then4
	leaq	encoders(%rcx), %rax
	movl	40(%rax), %eax
	movl	%eax, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	lzma_properties_size, .Lfunc_end6-lzma_properties_size
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI6_0:
	.quad	.LBB6_10
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6
	.quad	.LBB6_7
	.quad	.LBB6_8
	.quad	.LBB6_9
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_11
                                        # -- End function
	.text
	.globl	lzma_properties_encode          # -- Begin function lzma_properties_encode
	.p2align	4, 0x90
	.type	lzma_properties_encode,@function
lzma_properties_encode:                 # @lzma_properties_encode
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rcx
	movl	$11, %eax
	leaq	-3(%rcx), %rdx
	cmpq	$30, %rdx
	ja	.LBB7_1
# %bb.3:                                # %entry
	jmpq	*.LJTI7_0(,%rdx,8)
.LBB7_11:                               # %if.then.fold.split15.i
	movl	$8, %eax
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	testq	%rax, %rax
	jne	.LBB7_15
	jmp	.LBB7_13
.LBB7_1:                                # %entry
	movabsq	$4611686018427387905, %rdx      # imm = 0x4000000000000001
	cmpq	%rdx, %rcx
	jne	.LBB7_14
# %bb.2:
	xorl	%eax, %eax
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	testq	%rax, %rax
	jne	.LBB7_15
	jmp	.LBB7_13
.LBB7_4:                                # %if.then.fold.split.i
	movl	$1, %eax
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	testq	%rax, %rax
	jne	.LBB7_15
	jmp	.LBB7_13
.LBB7_10:                               # %if.then.fold.split14.i
	movl	$7, %eax
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	testq	%rax, %rax
	jne	.LBB7_15
	jmp	.LBB7_13
.LBB7_6:                                # %if.then.fold.split10.i
	movl	$3, %eax
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	testq	%rax, %rax
	jne	.LBB7_15
	jmp	.LBB7_13
.LBB7_5:                                # %if.then.fold.split9.i
	movl	$2, %eax
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	testq	%rax, %rax
	jne	.LBB7_15
	jmp	.LBB7_13
.LBB7_8:                                # %if.then.fold.split12.i
	movl	$5, %eax
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	testq	%rax, %rax
	jne	.LBB7_15
	jmp	.LBB7_13
.LBB7_7:                                # %if.then.fold.split11.i
	movl	$4, %eax
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	testq	%rax, %rax
	je	.LBB7_13
.LBB7_15:                               # %if.end3
	movq	8(%rdi), %rdi
	jmpq	*%rax                           # TAILCALL
.LBB7_9:                                # %if.then.fold.split13.i
	movl	$6, %eax
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	testq	%rax, %rax
	jne	.LBB7_15
.LBB7_13:
	xorl	%eax, %eax
.LBB7_14:                               # %cleanup
	retq
.Lfunc_end7:
	.size	lzma_properties_encode, .Lfunc_end7-lzma_properties_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI7_0:
	.quad	.LBB7_11
	.quad	.LBB7_5
	.quad	.LBB7_6
	.quad	.LBB7_7
	.quad	.LBB7_8
	.quad	.LBB7_9
	.quad	.LBB7_10
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_4
                                        # -- End function
	.type	encoders,@object                # @encoders
	.p2align	4, 0x0
encoders:
	.quad	4611686018427387905             # 0x4000000000000001
	.quad	lzma_lzma_encoder_init
	.quad	lzma_lzma_encoder_memusage
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	4
	.quad	lzma_lzma_props_encode
	.quad	33                              # 0x21
	.quad	lzma_lzma2_encoder_init
	.quad	lzma_lzma2_encoder_memusage
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	4
	.quad	lzma_lzma2_props_encode
	.quad	4                               # 0x4
	.quad	lzma_simple_x86_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	5                               # 0x5
	.quad	lzma_simple_powerpc_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	6                               # 0x6
	.quad	lzma_simple_ia64_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	7                               # 0x7
	.quad	lzma_simple_arm_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	8                               # 0x8
	.quad	lzma_simple_armthumb_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	9                               # 0x9
	.quad	lzma_simple_sparc_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	3                               # 0x3
	.quad	lzma_delta_encoder_init
	.quad	lzma_delta_coder_memusage
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	4
	.quad	lzma_delta_props_encode
	.size	encoders, 504

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
