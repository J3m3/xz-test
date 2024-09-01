	.text
	.file	"options.c"
	.globl	options_delta                   # -- Begin function options_delta
	.p2align	4, 0x90
	.type	options_delta,@function
options_delta:                          # @options_delta
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
	movq	%rdi, %rbx
	movl	$40, %esi
	xorl	%edi, %edi
	callq	xrealloc@PLT
	movq	%rax, %r14
	movabsq	$4294967296, %rax               # imm = 0x100000000
	movq	%rax, (%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r14)
	movups	%xmm0, 24(%r14)
	movl	$options_delta.opts, %esi
	movl	$set_delta, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	parse_options
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	options_delta, .Lfunc_end0-options_delta
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function parse_options
	.type	parse_options,@function
parse_options:                          # @parse_options
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	testq	%rdi, %rdi
	je	.LBB1_29
# %bb.1:                                # %lor.lhs.false
	movq	%rdi, %rbx
	cmpb	$0, (%rdi)
	je	.LBB1_29
# %bb.2:                                # %if.end
	movq	%rbx, %rdi
	callq	xstrdup@PLT
	movq	%rax, %rbp
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB1_3
.LBB1_17:                               #   in Loop: Header=BB1_3 Depth=1
	xorl	%ebp, %ebp
.LBB1_21:                               # %if.then72
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$.L.str.22, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
	movq	-24(%r15), %r14
.LBB1_22:                               # %if.end73
                                        #   in Loop: Header=BB1_3 Depth=1
	shlq	$4, %rbp
	movq	8(%r14,%rbp), %rdx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	%r12d, %esi
	movq	%r13, %rcx
	callq	*8(%rsp)                        # 8-byte Folded Reload
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	48(%rsp), %rbp                  # 8-byte Reload
	testq	%rbp, %rbp
	jne	.LBB1_30
	jmp	.LBB1_28
	.p2align	4, 0x90
.LBB1_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_19 Depth 2
	movzbl	(%rbp), %eax
	cmpl	$44, %eax
	je	.LBB1_30
# %bb.4:                                # %while.cond
                                        #   in Loop: Header=BB1_3 Depth=1
	testl	%eax, %eax
	je	.LBB1_28
# %bb.5:                                # %if.end10
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rbp, %rdi
	movl	$44, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB1_7
# %bb.6:                                # %if.then14
                                        #   in Loop: Header=BB1_3 Depth=1
	movb	$0, (%rax)
.LBB1_7:                                # %if.end15
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rbp, %rdi
	movl	$61, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB1_8
# %bb.9:                                # %lor.lhs.false24
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rax, %r13
	incq	%r13
	movb	$0, (%rax)
	cmpb	$0, 1(%rax)
	jne	.LBB1_11
	jmp	.LBB1_10
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=1
	xorl	%r13d, %r13d
.LBB1_10:                               # %if.then29
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$.L.str.20, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.LBB1_11:                               # %if.end30
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$-1, %r12d
	movq	40(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_14:                               # %if.end38
                                        #   in Loop: Header=BB1_12 Depth=2
	movq	%rbp, %rdi
	callq	strcmp@PLT
	incl	%r12d
	addq	$32, %r15
	testl	%eax, %eax
	je	.LBB1_15
.LBB1_12:                               # %while.cond31
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rsi
	testq	%rsi, %rsi
	jne	.LBB1_14
# %bb.13:                               # %if.then37
                                        #   in Loop: Header=BB1_12 Depth=2
	movl	$.L.str.21, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
	movq	(%r15), %rsi
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_15:                               # %while.end
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-24(%r15), %r14
	testq	%r14, %r14
	je	.LBB1_23
# %bb.16:                               # %for.cond.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB1_17
# %bb.18:                               # %for.body.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	leaq	16(%r14), %rbx
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_19:                               # %for.body
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_22
# %bb.20:                               # %for.inc
                                        #   in Loop: Header=BB1_19 Depth=2
	incq	%rbp
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	jne	.LBB1_19
	jmp	.LBB1_21
.LBB1_23:                               # %if.else
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%r15), %rdx
	cmpq	$-1, %rdx
	je	.LBB1_24
# %bb.25:                               # %if.else83
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-8(%r15), %rcx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	str_to_uint64@PLT
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	%r12d, %esi
	movq	%rax, %rdx
	jmp	.LBB1_26
.LBB1_24:                               # %if.then81
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	%r12d, %esi
	xorl	%edx, %edx
.LBB1_26:                               # %if.end90
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%r13, %rcx
	callq	*8(%rsp)                        # 8-byte Folded Reload
	movq	48(%rsp), %rbp                  # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB1_28
	.p2align	4, 0x90
.LBB1_30:                               # %while.cond.backedge
                                        #   in Loop: Header=BB1_3 Depth=1
	incq	%rbp
	jmp	.LBB1_3
.LBB1_29:                               # %return
	addq	$56, %rsp
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
.LBB1_28:                               # %while.end97
	.cfi_def_cfa_offset 112
	movq	24(%rsp), %rdi                  # 8-byte Reload
	addq	$56, %rsp
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
	jmp	free@PLT                        # TAILCALL
.Lfunc_end1:
	.size	parse_options, .Lfunc_end1-parse_options
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function set_delta
	.type	set_delta,@function
set_delta:                              # @set_delta
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%esi, %esi
	je	.LBB2_1
# %bb.2:                                # %sw.epilog
	retq
.LBB2_1:                                # %sw.bb
	movl	%edx, 4(%rdi)
	retq
.Lfunc_end2:
	.size	set_delta, .Lfunc_end2-set_delta
	.cfi_endproc
                                        # -- End function
	.globl	options_bcj                     # -- Begin function options_bcj
	.p2align	4, 0x90
	.type	options_bcj,@function
options_bcj:                            # @options_bcj
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
	movq	%rdi, %rbx
	movl	$4, %esi
	xorl	%edi, %edi
	callq	xrealloc@PLT
	movq	%rax, %r14
	movl	$0, (%rax)
	movl	$options_bcj.opts, %esi
	movl	$set_bcj, %edx
	movq	%rbx, %rdi
	movq	%rax, %rcx
	callq	parse_options
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	options_bcj, .Lfunc_end3-options_bcj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function set_bcj
	.type	set_bcj,@function
set_bcj:                                # @set_bcj
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%esi, %esi
	je	.LBB4_1
# %bb.2:                                # %sw.epilog
	retq
.LBB4_1:                                # %sw.bb
	movl	%edx, (%rdi)
	retq
.Lfunc_end4:
	.size	set_bcj, .Lfunc_end4-set_bcj
	.cfi_endproc
                                        # -- End function
	.globl	options_lzma                    # -- Begin function options_lzma
	.p2align	4, 0x90
	.type	options_lzma,@function
options_lzma:                           # @options_lzma
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
	movq	%rdi, %r14
	movl	$112, %esi
	xorl	%edi, %edi
	callq	xrealloc@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$6, %esi
	callq	lzma_lzma_preset@PLT
	testb	%al, %al
	je	.LBB5_2
# %bb.1:                                # %if.then
	callq	message_bug@PLT
.LBB5_2:                                # %if.end
	movl	$options_lzma.opts, %esi
	movl	$set_lzma, %edx
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	parse_options
	movl	24(%rbx), %eax
	addl	20(%rbx), %eax
	cmpl	$5, %eax
	jb	.LBB5_4
# %bb.3:                                # %if.then2
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.LBB5_4:                                # %if.end3
	movl	40(%rbx), %esi
	andl	$15, %esi
	cmpl	%esi, 36(%rbx)
	jae	.LBB5_6
# %bb.5:                                # %if.then5
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.LBB5_6:                                # %if.end6
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	options_lzma, .Lfunc_end5-options_lzma
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function set_lzma
	.type	set_lzma,@function
set_lzma:                               # @set_lzma
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpl	$8, %esi
	ja	.LBB6_21
# %bb.1:                                # %entry
	movl	%esi, %eax
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_2:                                # %sw.bb
	movzbl	(%rcx), %eax
	leal	-58(%rax), %edx
	cmpb	$-11, %dl
	movq	%rcx, %r14
	ja	.LBB6_4
# %bb.3:                                # %if.then
	movq	%rdi, %rbx
	movl	$.L.str.23, %edi
	movq	%rcx, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
	movq	%r14, %rcx
	movq	%rbx, %rdi
	movzbl	(%r14), %eax
.LBB6_4:                                # %if.end
	movsbl	%al, %ebx
	addl	$-48, %ebx
	movzbl	1(%rcx), %eax
	testl	%eax, %eax
	je	.LBB6_11
# %bb.5:                                # %if.end
	movq	%rdi, %r15
	cmpl	$101, %eax
	jne	.LBB6_7
# %bb.6:                                # %if.then17
	orl	$-2147483648, %ebx              # imm = 0x80000000
	jmp	.LBB6_8
.LBB6_16:                               # %sw.bb34
	movl	%edx, 28(%rdi)
.LBB6_21:                               # %sw.epilog
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_14:                               # %sw.bb30
	.cfi_def_cfa_offset 32
	movl	%edx, 20(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_15:                               # %sw.bb32
	.cfi_def_cfa_offset 32
	movl	%edx, 24(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_19:                               # %sw.bb40
	.cfi_def_cfa_offset 32
	movl	%edx, 40(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_13:                               # %sw.bb28
	.cfi_def_cfa_offset 32
	movl	%edx, (%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_17:                               # %sw.bb36
	.cfi_def_cfa_offset 32
	movl	%edx, 32(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_18:                               # %sw.bb38
	.cfi_def_cfa_offset 32
	movl	%edx, 36(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_20:                               # %sw.bb42
	.cfi_def_cfa_offset 32
	movl	%edx, 44(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_7:                                # %if.else
	.cfi_def_cfa_offset 32
	movl	$.L.str.23, %edi
	movq	%rcx, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
	movq	%r14, %rcx
.LBB6_8:                                # %if.end18
	cmpb	$0, 2(%rcx)
	je	.LBB6_10
# %bb.9:                                # %if.then23
	movl	$.L.str.23, %edi
	movq	%rcx, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.LBB6_10:                               # %if.end25
	movq	%r15, %rdi
.LBB6_11:                               # %if.end25
	movl	%ebx, %esi
	callq	lzma_lzma_preset@PLT
	testb	%al, %al
	je	.LBB6_21
# %bb.12:                               # %if.then26
	movq	%r14, %rsi
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	message_fatal@PLT               # TAILCALL
.Lfunc_end6:
	.size	set_lzma, .Lfunc_end6-set_lzma
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI6_0:
	.quad	.LBB6_2
	.quad	.LBB6_13
	.quad	.LBB6_14
	.quad	.LBB6_15
	.quad	.LBB6_16
	.quad	.LBB6_17
	.quad	.LBB6_18
	.quad	.LBB6_19
	.quad	.LBB6_20
                                        # -- End function
	.type	options_delta.opts,@object      # @options_delta.opts
	.p2align	4, 0x0
options_delta.opts:
	.quad	.L.str
	.quad	0
	.quad	1                               # 0x1
	.quad	256                             # 0x100
	.zero	32
	.size	options_delta.opts, 64

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dist"
	.size	.L.str, 5

	.type	options_bcj.opts,@object        # @options_bcj.opts
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
options_bcj.opts:
	.quad	.L.str.1
	.quad	0
	.quad	0                               # 0x0
	.quad	4294967295                      # 0xffffffff
	.zero	32
	.size	options_bcj.opts, 64

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"start"
	.size	.L.str.1, 6

	.type	options_lzma.modes,@object      # @options_lzma.modes
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
options_lzma.modes:
	.quad	.L.str.2
	.quad	1                               # 0x1
	.quad	.L.str.3
	.quad	2                               # 0x2
	.zero	16
	.size	options_lzma.modes, 48

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"fast"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"normal"
	.size	.L.str.3, 7

	.type	options_lzma.mfs,@object        # @options_lzma.mfs
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
options_lzma.mfs:
	.quad	.L.str.4
	.quad	3                               # 0x3
	.quad	.L.str.5
	.quad	4                               # 0x4
	.quad	.L.str.6
	.quad	18                              # 0x12
	.quad	.L.str.7
	.quad	19                              # 0x13
	.quad	.L.str.8
	.quad	20                              # 0x14
	.zero	16
	.size	options_lzma.mfs, 96

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"hc3"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"hc4"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"bt2"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"bt3"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"bt4"
	.size	.L.str.8, 4

	.type	options_lzma.opts,@object       # @options_lzma.opts
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
options_lzma.opts:
	.quad	.L.str.9
	.quad	0
	.quad	-1                              # 0xffffffffffffffff
	.quad	0                               # 0x0
	.quad	.L.str.10
	.quad	0
	.quad	4096                            # 0x1000
	.quad	1610612736                      # 0x60000000
	.quad	.L.str.11
	.quad	0
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	.L.str.12
	.quad	0
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	.L.str.13
	.quad	0
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	.L.str.14
	.quad	options_lzma.modes
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	.L.str.15
	.quad	0
	.quad	2                               # 0x2
	.quad	273                             # 0x111
	.quad	.L.str.16
	.quad	options_lzma.mfs
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	.L.str.17
	.quad	0
	.quad	0                               # 0x0
	.quad	4294967295                      # 0xffffffff
	.zero	32
	.size	options_lzma.opts, 320

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"preset"
	.size	.L.str.9, 7

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"dict"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"lc"
	.size	.L.str.11, 3

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"lp"
	.size	.L.str.12, 3

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"pb"
	.size	.L.str.13, 3

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"mode"
	.size	.L.str.14, 5

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"nice"
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"mf"
	.size	.L.str.16, 3

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"depth"
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"The sum of lc and lp must not exceed 4"
	.size	.L.str.18, 39

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"The selected match finder requires at least nice=%u"
	.size	.L.str.19, 52

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"%s: Options must be `name=value' pairs separated with commas"
	.size	.L.str.20, 61

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%s: Invalid option name"
	.size	.L.str.21, 24

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%s: Invalid option value"
	.size	.L.str.22, 25

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Unsupported LZMA1/LZMA2 preset: %s"
	.size	.L.str.23, 35

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
