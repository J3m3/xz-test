	.text
	.file	"filter_common.c"
	.globl	lzma_filters_copy               # -- Begin function lzma_filters_copy
	.p2align	4, 0x90
	.type	lzma_filters_copy,@function
lzma_filters_copy:                      # @lzma_filters_copy
	.cfi_startproc
# %bb.0:                                # %entry
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testq	%rdi, %rdi
	sete	%al
	testq	%rsi, %rsi
	sete	%cl
	orb	%al, %cl
	movl	$11, %r15d
	jne	.LBB0_81
# %bb.1:                                # %for.cond.preheader
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	(%rdi), %rax
	xorl	%r15d, %r15d
	cmpq	$-1, %rax
	je	.LBB0_2
# %bb.3:                                # %if.end5
	movq	%rdx, %r14
	movq	%rax, (%rbx)
	cmpq	$0, 8(%r12)
	je	.LBB0_7
# %bb.4:                                # %for.cond15.preheader
	movq	(%r12), %rcx
	movl	$8, %r13d
	movb	$1, %sil
	xorl	%ebp, %ebp
	leaq	1(%rcx), %rax
	cmpq	$34, %rax
	ja	.LBB0_5
# %bb.6:                                # %for.cond15.preheader
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_16:                               # %for.end.fold.split126
	movl	$features+216, %eax
	jmp	.LBB0_17
.LBB0_2:
	xorl	%ebp, %ebp
	jmp	.LBB0_80
.LBB0_7:                                # %if.then12
	movq	$0, 8(%rbx)
	movq	16(%r12), %rax
	cmpq	$-1, %rax
	je	.LBB0_25
.LBB0_26:                               # %for.body.1
	movq	%rax, 16(%rbx)
	cmpq	$0, 24(%r12)
	je	.LBB0_42
# %bb.27:                               # %for.cond15.preheader.1
	movq	16(%r12), %rcx
	movl	$8, %r13d
	movl	$1, %ebp
	xorl	%esi, %esi
	leaq	1(%rcx), %rax
	cmpq	$34, %rax
	ja	.LBB0_28
# %bb.29:                               # %for.cond15.preheader.1
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_30:                               # %for.end.fold.split126.1
	movl	$features+216, %eax
	jmp	.LBB0_39
.LBB0_42:                               # %if.then12.1
	movq	$0, 24(%rbx)
	movq	32(%r12), %rax
	cmpq	$-1, %rax
	je	.LBB0_44
.LBB0_45:                               # %for.body.2
	movq	%rax, 32(%rbx)
	cmpq	$0, 40(%r12)
	je	.LBB0_60
# %bb.46:                               # %for.cond15.preheader.2
	movq	32(%r12), %rcx
	movl	$8, %r13d
	movl	$2, %ebp
	xorl	%esi, %esi
	leaq	1(%rcx), %rax
	cmpq	$34, %rax
	ja	.LBB0_47
# %bb.48:                               # %for.cond15.preheader.2
	jmpq	*.LJTI0_2(,%rax,8)
.LBB0_49:                               # %for.end.fold.split126.2
	movl	$features+216, %eax
	jmp	.LBB0_58
.LBB0_5:                                # %for.cond15.preheader
	movl	$features, %eax
	movabsq	$4611686018427387905, %rdx      # imm = 0x4000000000000001
	cmpq	%rdx, %rcx
	je	.LBB0_17
	jmp	.LBB0_19
.LBB0_60:                               # %if.then12.2
	movq	$0, 40(%rbx)
	jmp	.LBB0_61
.LBB0_8:                                # %for.end.fold.split
	movl	$features+24, %eax
	jmp	.LBB0_17
.LBB0_11:                               # %for.end.fold.split121
	movl	$features+96, %eax
	jmp	.LBB0_17
.LBB0_13:                               # %for.end.fold.split123
	movl	$features+144, %eax
	jmp	.LBB0_17
.LBB0_9:                                # %for.end.fold.split119
	movl	$features+48, %eax
	jmp	.LBB0_17
.LBB0_10:                               # %for.end.fold.split120
	movl	$features+72, %eax
	jmp	.LBB0_17
.LBB0_15:                               # %for.end.fold.split125
	movl	$features+192, %eax
	jmp	.LBB0_17
.LBB0_12:                               # %for.end.fold.split122
	movl	$features+120, %eax
	jmp	.LBB0_17
.LBB0_14:                               # %for.end.fold.split124
	movl	$features+168, %eax
.LBB0_17:                               # %for.end
	movq	8(%rax), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB0_18
# %bb.23:                               # %cleanup
	movq	8(%r12), %rsi
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	16(%r12), %rax
	cmpq	$-1, %rax
	jne	.LBB0_26
.LBB0_25:
	movl	$1, %ebp
	jmp	.LBB0_80
.LBB0_18:
	movl	$5, %r13d
	xorl	%ebp, %ebp
	movb	$1, %sil
	jmp	.LBB0_19
.LBB0_28:                               # %for.cond15.preheader.1
	movl	$features, %eax
	movabsq	$4611686018427387905, %rdx      # imm = 0x4000000000000001
	cmpq	%rdx, %rcx
	je	.LBB0_39
	jmp	.LBB0_19
.LBB0_38:                               # %for.end.fold.split.1
	movl	$features+24, %eax
	jmp	.LBB0_39
.LBB0_35:                               # %for.end.fold.split121.1
	movl	$features+96, %eax
	jmp	.LBB0_39
.LBB0_33:                               # %for.end.fold.split123.1
	movl	$features+144, %eax
	jmp	.LBB0_39
.LBB0_37:                               # %for.end.fold.split119.1
	movl	$features+48, %eax
	jmp	.LBB0_39
.LBB0_36:                               # %for.end.fold.split120.1
	movl	$features+72, %eax
	jmp	.LBB0_39
.LBB0_31:                               # %for.end.fold.split125.1
	movl	$features+192, %eax
	jmp	.LBB0_39
.LBB0_34:                               # %for.end.fold.split122.1
	movl	$features+120, %eax
	jmp	.LBB0_39
.LBB0_32:                               # %for.end.fold.split124.1
	movl	$features+168, %eax
.LBB0_39:                               # %for.end.1
	movq	8(%rax), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.LBB0_40
# %bb.41:                               # %cleanup.1
	movq	24(%r12), %rsi
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	32(%r12), %rax
	cmpq	$-1, %rax
	jne	.LBB0_45
.LBB0_44:
	movl	$2, %ebp
	jmp	.LBB0_80
.LBB0_47:                               # %for.cond15.preheader.2
	movl	$features, %eax
	movabsq	$4611686018427387905, %rdx      # imm = 0x4000000000000001
	cmpq	%rdx, %rcx
	je	.LBB0_58
	jmp	.LBB0_19
.LBB0_57:                               # %for.end.fold.split.2
	movl	$features+24, %eax
	jmp	.LBB0_58
.LBB0_54:                               # %for.end.fold.split121.2
	movl	$features+96, %eax
	jmp	.LBB0_58
.LBB0_52:                               # %for.end.fold.split123.2
	movl	$features+144, %eax
	jmp	.LBB0_58
.LBB0_56:                               # %for.end.fold.split119.2
	movl	$features+48, %eax
	jmp	.LBB0_58
.LBB0_55:                               # %for.end.fold.split120.2
	movl	$features+72, %eax
	jmp	.LBB0_58
.LBB0_50:                               # %for.end.fold.split125.2
	movl	$features+192, %eax
	jmp	.LBB0_58
.LBB0_53:                               # %for.end.fold.split122.2
	movl	$features+120, %eax
	jmp	.LBB0_58
.LBB0_51:                               # %for.end.fold.split124.2
	movl	$features+168, %eax
.LBB0_58:                               # %for.end.2
	movq	8(%rax), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, 40(%rbx)
	testq	%rax, %rax
	je	.LBB0_40
# %bb.59:                               # %cleanup.2
	movq	40(%r12), %rsi
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
.LBB0_61:                               # %for.inc42.2
	movq	48(%r12), %rax
	cmpq	$-1, %rax
	je	.LBB0_62
# %bb.63:                               # %for.body.3
	movq	%rax, 48(%rbx)
	cmpq	$0, 56(%r12)
	je	.LBB0_78
# %bb.64:                               # %for.cond15.preheader.3
	movq	48(%r12), %rcx
	movl	$8, %r13d
	movl	$3, %ebp
	xorl	%esi, %esi
	leaq	1(%rcx), %rax
	cmpq	$34, %rax
	ja	.LBB0_65
# %bb.66:                               # %for.cond15.preheader.3
	jmpq	*.LJTI0_3(,%rax,8)
.LBB0_67:                               # %for.end.fold.split126.3
	movl	$features+216, %eax
	jmp	.LBB0_76
.LBB0_62:
	movl	$3, %ebp
	jmp	.LBB0_80
.LBB0_78:                               # %if.then12.3
	movq	$0, 56(%rbx)
	jmp	.LBB0_79
.LBB0_65:                               # %for.cond15.preheader.3
	movl	$features, %eax
	movabsq	$4611686018427387905, %rdx      # imm = 0x4000000000000001
	cmpq	%rdx, %rcx
	je	.LBB0_76
	jmp	.LBB0_19
.LBB0_75:                               # %for.end.fold.split.3
	movl	$features+24, %eax
	jmp	.LBB0_76
.LBB0_72:                               # %for.end.fold.split121.3
	movl	$features+96, %eax
	jmp	.LBB0_76
.LBB0_70:                               # %for.end.fold.split123.3
	movl	$features+144, %eax
	jmp	.LBB0_76
.LBB0_74:                               # %for.end.fold.split119.3
	movl	$features+48, %eax
	jmp	.LBB0_76
.LBB0_73:                               # %for.end.fold.split120.3
	movl	$features+72, %eax
	jmp	.LBB0_76
.LBB0_68:                               # %for.end.fold.split125.3
	movl	$features+192, %eax
	jmp	.LBB0_76
.LBB0_71:                               # %for.end.fold.split122.3
	movl	$features+120, %eax
	jmp	.LBB0_76
.LBB0_69:                               # %for.end.fold.split124.3
	movl	$features+168, %eax
.LBB0_76:                               # %for.end.3
	movq	8(%rax), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	lzma_alloc@PLT
	movq	%rax, 56(%rbx)
	testq	%rax, %rax
	je	.LBB0_40
# %bb.77:                               # %cleanup.3
	movq	56(%r12), %rsi
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	memcpy@PLT
.LBB0_79:                               # %for.inc42.3
	movl	$8, %r13d
	movl	$4, %ebp
	cmpq	$-1, 64(%r12)
	jne	.LBB0_20
.LBB0_80:                               # %for.end44
	shll	$4, %ebp
	movq	$-1, (%rbx,%rbp)
	movq	$0, 8(%rbx,%rbp)
	jmp	.LBB0_81
.LBB0_40:
	movl	$5, %r13d
	xorl	%esi, %esi
.LBB0_19:                               # %error
	movl	%r13d, %r15d
	testb	%sil, %sil
	jne	.LBB0_81
.LBB0_20:                               # %while.body.preheader
	movl	%ebp, %eax
	shll	$4, %eax
	addq	%rax, %rbx
	addq	$-8, %rbx
	.p2align	4, 0x90
.LBB0_21:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
	movq	$0, (%rbx)
	addq	$-16, %rbx
	decq	%rbp
	jne	.LBB0_21
# %bb.22:
	movl	%r13d, %r15d
.LBB0_81:                               # %return
	movl	%r15d, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
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
	retq
.Lfunc_end0:
	.size	lzma_filters_copy, .Lfunc_end0-lzma_filters_copy
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_16
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_15
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_12
	.quad	.LBB0_13
	.quad	.LBB0_14
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_8
.LJTI0_1:
	.quad	.LBB0_30
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_31
	.quad	.LBB0_37
	.quad	.LBB0_36
	.quad	.LBB0_35
	.quad	.LBB0_34
	.quad	.LBB0_33
	.quad	.LBB0_32
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_38
.LJTI0_2:
	.quad	.LBB0_49
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_50
	.quad	.LBB0_56
	.quad	.LBB0_55
	.quad	.LBB0_54
	.quad	.LBB0_53
	.quad	.LBB0_52
	.quad	.LBB0_51
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_57
.LJTI0_3:
	.quad	.LBB0_67
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_68
	.quad	.LBB0_74
	.quad	.LBB0_73
	.quad	.LBB0_72
	.quad	.LBB0_71
	.quad	.LBB0_70
	.quad	.LBB0_69
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_75
                                        # -- End function
	.text
	.globl	lzma_raw_coder_init             # -- Begin function lzma_raw_coder_init
	.p2align	4, 0x90
	.type	lzma_raw_coder_init,@function
lzma_raw_coder_init:                    # @lzma_raw_coder_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$11, %eax
	testq	%rdx, %rdx
	je	.LBB1_33
# %bb.1:                                # %lor.lhs.false.i
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	(%rdx), %r12
	cmpq	$-1, %r12
	je	.LBB1_32
# %bb.2:                                # %do.body.i.preheader
	movq	%rcx, %rbx
	leaq	32(%rsp), %r15
	leaq	8(%rsp), %r13
	leaq	16(%r14), %rdx
	movb	$1, %r9b
	xorl	%ecx, %ecx
	movabsq	$4611686018427387905, %r10      # imm = 0x4000000000000001
	xorl	%ebp, %ebp
	movl	$8, %eax
	.p2align	4, 0x90
.LBB1_3:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	-3(%r12), %r11
	cmpq	$30, %r11
	ja	.LBB1_4
# %bb.5:                                # %do.body.i
                                        #   in Loop: Header=BB1_3 Depth=1
	jmpq	*.LJTI1_0(,%r11,8)
.LBB1_13:                               # %for.end.fold.split71.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$features+192, %r11d
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.LBB1_4:                                # %do.body.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$features, %r11d
	cmpq	%r10, %r12
	je	.LBB1_14
	jmp	.LBB1_32
.LBB1_12:                               # %for.end.fold.split70.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$features+168, %r11d
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.LBB1_11:                               # %for.end.fold.split69.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$features+144, %r11d
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.LBB1_7:                                # %for.end.fold.split65.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$features+48, %r11d
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.LBB1_8:                                # %for.end.fold.split66.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$features+72, %r11d
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.LBB1_9:                                # %for.end.fold.split67.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$features+96, %r11d
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.LBB1_10:                               # %for.end.fold.split68.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$features+120, %r11d
	.p2align	4, 0x90
.LBB1_14:                               # %for.end.i
                                        #   in Loop: Header=BB1_3 Depth=1
	testb	$1, %r9b
	je	.LBB1_32
.LBB1_15:                               # %do.cond.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movzbl	16(%r11), %r9d
	movzbl	18(%r11), %r12d
	addq	%r12, %rcx
	incq	%rbp
	movq	(%rdx), %r12
	addq	$24, %r13
	addq	$16, %rdx
	cmpq	$-1, %r12
	jne	.LBB1_3
	jmp	.LBB1_16
.LBB1_6:                                # %for.end.fold.split.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$features+24, %r11d
	testb	$1, %r9b
	jne	.LBB1_15
	jmp	.LBB1_32
.LBB1_16:                               # %do.end.i
	cmpq	$4, %rbp
	ja	.LBB1_32
# %bb.17:                               # %do.end.i
	cmpb	$0, 17(%r11)
	je	.LBB1_32
# %bb.18:                               # %do.end.i
	cmpq	$3, %rcx
	ja	.LBB1_32
# %bb.19:                               # %do.end
	movq	%rdi, %r12
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	testb	%r8b, %r8b
	je	.LBB1_20
# %bb.24:                               # %for.cond.preheader
	testq	%rbp, %rbp
	je	.LBB1_29
# %bb.25:                               # %for.body.preheader
	movq	%r13, %r15
	.p2align	4, 0x90
.LBB1_26:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	callq	*%rbx
	movq	%rax, %rcx
	movl	$8, %eax
	testq	%rcx, %rcx
	je	.LBB1_32
# %bb.27:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_26 Depth=1
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB1_32
# %bb.28:                               # %for.inc
                                        #   in Loop: Header=BB1_26 Depth=1
	movq	(%r14), %rax
	movq	%rax, -16(%r15)
	movq	%rcx, -8(%r15)
	movq	8(%r14), %rax
	movq	%rax, (%r15)
	addq	$16, %r14
	addq	$-24, %r15
	decq	%rbp
	jne	.LBB1_26
	jmp	.LBB1_29
.LBB1_20:                               # %for.cond27.preheader
	testq	%rbp, %rbp
	je	.LBB1_29
	.p2align	4, 0x90
.LBB1_21:                               # %for.body30
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	callq	*%rbx
	movq	%rax, %rcx
	movl	$8, %eax
	testq	%rcx, %rcx
	je	.LBB1_32
# %bb.22:                               # %lor.lhs.false36
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB1_32
# %bb.23:                               # %for.inc55
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	(%r14), %rax
	movq	%rax, -16(%r15)
	movq	%rcx, -8(%r15)
	movq	8(%r14), %rax
	movq	%rax, (%r15)
	addq	$24, %r15
	addq	$16, %r14
	decq	%rbp
	jne	.LBB1_21
.LBB1_29:                               # %if.end60
	movq	$-1, 8(%r13)
	movq	$0, 16(%r13)
	leaq	16(%rsp), %rdx
	movq	%r12, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	lzma_next_filter_init@PLT
	testl	%eax, %eax
	je	.LBB1_30
# %bb.31:                               # %if.then67
	movq	%r12, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	%eax, %ebx
	callq	lzma_next_end@PLT
	movl	%ebx, %eax
	jmp	.LBB1_32
.LBB1_30:
	xorl	%eax, %eax
.LBB1_32:
	addq	$136, %rsp
	.cfi_def_cfa_offset 56
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
.LBB1_33:                               # %cleanup71
	retq
.Lfunc_end1:
	.size	lzma_raw_coder_init, .Lfunc_end1-lzma_raw_coder_init
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_13
	.quad	.LBB1_7
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_10
	.quad	.LBB1_11
	.quad	.LBB1_12
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_6
                                        # -- End function
	.text
	.globl	lzma_raw_coder_memusage         # -- Begin function lzma_raw_coder_memusage
	.p2align	4, 0x90
	.type	lzma_raw_coder_memusage,@function
lzma_raw_coder_memusage:                # @lzma_raw_coder_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$-1, %rax
	testq	%rsi, %rsi
	je	.LBB2_29
# %bb.1:                                # %lor.lhs.false.i
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rsi), %rdi
	cmpq	$-1, %rdi
	je	.LBB2_28
# %bb.2:                                # %do.body.i.preheader
	leaq	16(%rbx), %rdx
	movb	$1, %sil
	xorl	%ecx, %ecx
	movabsq	$4611686018427387905, %r8       # imm = 0x4000000000000001
	movq	%rdi, %r11
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_3:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	-3(%r11), %r10
	cmpq	$30, %r10
	ja	.LBB2_6
# %bb.4:                                # %do.body.i
                                        #   in Loop: Header=BB2_3 Depth=1
	jmpq	*.LJTI2_0(,%r10,8)
.LBB2_5:                                # %for.end.fold.split71.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$features+192, %r10d
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.LBB2_6:                                # %do.body.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$features, %r10d
	cmpq	%r8, %r11
	je	.LBB2_13
	jmp	.LBB2_28
.LBB2_7:                                # %for.end.fold.split70.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$features+168, %r10d
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.LBB2_8:                                # %for.end.fold.split69.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$features+144, %r10d
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.LBB2_9:                                # %for.end.fold.split65.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$features+48, %r10d
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.LBB2_10:                               # %for.end.fold.split66.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$features+72, %r10d
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.LBB2_11:                               # %for.end.fold.split67.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$features+96, %r10d
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.LBB2_12:                               # %for.end.fold.split68.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$features+120, %r10d
	.p2align	4, 0x90
.LBB2_13:                               # %for.end.i
                                        #   in Loop: Header=BB2_3 Depth=1
	testb	$1, %sil
	je	.LBB2_28
.LBB2_14:                               # %do.cond.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movzbl	16(%r10), %esi
	movzbl	18(%r10), %r11d
	addq	%r11, %rcx
	incq	%r9
	movq	(%rdx), %r11
	addq	$16, %rdx
	cmpq	$-1, %r11
	jne	.LBB2_3
	jmp	.LBB2_16
.LBB2_15:                               # %for.end.fold.split.i
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$features+24, %r10d
	testb	$1, %sil
	jne	.LBB2_14
	jmp	.LBB2_28
.LBB2_16:                               # %do.end.i
	cmpq	$4, %r9
	ja	.LBB2_28
# %bb.17:                               # %do.end.i
	cmpb	$0, 17(%r10)
	je	.LBB2_28
# %bb.18:                               # %do.end.i
	cmpq	$3, %rcx
	ja	.LBB2_28
# %bb.19:                               # %do.body.preheader
	addq	$16, %rbx
	xorl	%r15d, %r15d
	jmp	.LBB2_21
	.p2align	4, 0x90
.LBB2_20:                               # %cleanup18.thread
                                        #   in Loop: Header=BB2_21 Depth=1
	addq	$1024, %r15                     # imm = 0x400
	movq	(%rbx), %rdi
	addq	$16, %rbx
	cmpq	$-1, %rdi
	je	.LBB2_25
.LBB2_21:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	callq	*%r14
	testq	%rax, %rax
	je	.LBB2_27
# %bb.22:                               # %if.end4
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_20
# %bb.23:                               # %cleanup18
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	-8(%rbx), %rdi
	callq	*%rax
	movl	$0, %ecx
	cmpq	$-1, %rax
	cmovneq	%rax, %rcx
	je	.LBB2_27
# %bb.24:                               #   in Loop: Header=BB2_21 Depth=1
	addq	%rcx, %r15
	movq	(%rbx), %rdi
	addq	$16, %rbx
	cmpq	$-1, %rdi
	jne	.LBB2_21
.LBB2_25:                               # %do.end
	addq	$32768, %r15                    # imm = 0x8000
	movq	%r15, %rax
	jmp	.LBB2_28
.LBB2_27:
	movq	$-1, %rax
.LBB2_28:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB2_29:                               # %return
	retq
.Lfunc_end2:
	.size	lzma_raw_coder_memusage, .Lfunc_end2-lzma_raw_coder_memusage
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI2_0:
	.quad	.LBB2_5
	.quad	.LBB2_9
	.quad	.LBB2_10
	.quad	.LBB2_11
	.quad	.LBB2_12
	.quad	.LBB2_8
	.quad	.LBB2_7
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_28
	.quad	.LBB2_15
                                        # -- End function
	.type	features,@object                # @features
	.p2align	4, 0x0
features:
	.quad	4611686018427387905             # 0x4000000000000001
	.quad	112                             # 0x70
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	5
	.quad	33                              # 0x21
	.quad	112                             # 0x70
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	5
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	5                               # 0x5
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	6                               # 0x6
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	7                               # 0x7
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	8                               # 0x8
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	9                               # 0x9
	.quad	4                               # 0x4
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	3                               # 0x3
	.quad	40                              # 0x28
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.quad	-1                              # 0xffffffffffffffff
	.quad	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.zero	5
	.size	features, 240

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
