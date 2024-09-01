	.text
	.file	"spec_mem_io.c"
	.globl	spec_mem_init                   # -- Begin function spec_mem_init
	.p2align	4, 0x90
	.type	spec_mem_init,@function
spec_mem_init:                          # @spec_mem_init
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
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %r13
	cmpl	$5, dbglvl(%rip)
	jl	.LBB0_2
# %bb.1:                                # %if.then
	cmpq	%r13, spec_fd(%rip)
	movl	$0, %esi
	cmovneq	%r13, %rsi
	movl	$.L.str, %edi
	movl	%ebp, %edx
	movl	%r14d, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB0_2:                                # %if.end
	testl	%ebp, %ebp
	je	.LBB0_20
# %bb.3:                                # %for.body.lr.ph
	testl	%r14d, %r14d
	je	.LBB0_7
# %bb.4:                                # %for.body.preheader
	xorl	%r14d, %r14d
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_19:                               # %if.end46.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	incl	%r14d
	cmpl	%ebp, %r14d
	je	.LBB0_20
.LBB0_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
	movl	%r14d, %eax
	leaq	(%rax,%rax,4), %rax
	movq	(%r13,%rax,8), %r15
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r13,%rax,8)
	movups	%xmm0, 24(%r13,%rax,8)
	testq	%r15, %r15
	js	.LBB0_6
# %bb.13:                               # %if.end15
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	(,%rax,8), %rbx
	addq	%r13, %rbx
	leaq	1048576(%r15), %r12
	movq	%r12, %rdi
	callq	malloc@PLT
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	je	.LBB0_21
# %bb.14:                               # %if.end27
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpl	$5, dbglvl(%rip)
	jl	.LBB0_16
# %bb.15:                               # %if.then29
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.3, %edi
	movl	%r14d, %esi
	movq	%r15, %rdx
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB0_16:                               # %if.end36
                                        #   in Loop: Header=BB0_5 Depth=1
	testq	%r15, %r15
	je	.LBB0_19
# %bb.17:                               # %for.body40.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_18:                               # %for.body40
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%rbx), %rcx
	movb	$0, (%rcx,%rax)
	addq	$1024, %rax                     # imm = 0x400
	cmpq	%r15, %rax
	jl	.LBB0_18
	jmp	.LBB0_19
.LBB0_7:                                # %for.body.us.preheader
	movq	%r13, %rbx
	xorl	%r14d, %r14d
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_12:                               # %if.end36.us
                                        #   in Loop: Header=BB0_8 Depth=1
	incl	%r14d
	addq	$40, %rbx
	cmpl	%r14d, %ebp
	je	.LBB0_20
.LBB0_8:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r15
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rbx)
	movups	%xmm0, 24(%rbx)
	testq	%r15, %r15
	js	.LBB0_6
# %bb.9:                                # %if.end15.us
                                        #   in Loop: Header=BB0_8 Depth=1
	leaq	1048576(%r15), %r12
	movq	%r12, %rdi
	callq	malloc@PLT
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	je	.LBB0_21
# %bb.10:                               # %if.end27.us
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpl	$5, dbglvl(%rip)
	jl	.LBB0_12
# %bb.11:                               # %if.then29.us
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	$.L.str.3, %edi
	movl	%r14d, %esi
	movq	%r15, %rdx
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	jmp	.LBB0_12
.LBB0_20:                               # %for.end48
	xorl	%eax, %eax
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
.LBB0_6:                                # %if.then13
	.cfi_def_cfa_offset 64
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	addq	$1048576, %r15                  # imm = 0x100000
	movl	$.L.str.1, %esi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_21:                               # %if.then24
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.2, %esi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	movq	%r13, %r8
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	spec_mem_init, .Lfunc_end0-spec_mem_init
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_sum                    # -- Begin function spec_mem_sum
	.p2align	4, 0x90
	.type	spec_mem_sum,@function
spec_mem_sum:                           # @spec_mem_sum
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$208, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpl	$512, %edx                      # imm = 0x200
	jne	.LBB1_7
# %bb.1:                                # %if.end
	movq	%rsi, %rbx
	testq	%rsi, %rsi
	je	.LBB1_6
# %bb.2:                                # %if.then2
	movq	%rdi, %r14
	movq	%rsp, %rdi
	callq	sha_init@PLT
	movq	8(%r14), %rax
	testq	%rax, %rax
	jle	.LBB1_5
# %bb.3:                                # %for.body.lr.ph
	movl	$2147483647, %r15d              # imm = 0x7FFFFFFF
	xorl	%r13d, %r13d
	movq	%rsp, %r12
	.p2align	4, 0x90
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	subq	%r13, %rax
	cmpq	%r15, %rax
	cmovlq	%rax, %r15
	movq	32(%r14), %rsi
	addq	%r13, %rsi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	sha_process@PLT
	addq	%r15, %r13
	movq	8(%r14), %rax
	cmpq	%rax, %r13
	jl	.LBB1_4
.LBB1_5:                                # %for.end
	movq	%rsp, %rdi
	movq	%rbx, %rsi
	callq	sha_done@PLT
.LBB1_6:                                # %if.end10
	movq	%rbx, %rax
	addq	$208, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_7:                                # %if.then
	.cfi_def_cfa_offset 256
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.4, %edi
	movl	$40, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end1:
	.size	spec_mem_sum, .Lfunc_end1-spec_mem_sum
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function spec_mem_load
.LCPI2_0:
	.zero	16
	.text
	.globl	spec_mem_load
	.p2align	4, 0x90
	.type	spec_mem_load,@function
spec_mem_load:                          # @spec_mem_load
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%rcx, %r13
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %r14
	movslq	312(%rsp), %rdi
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	shrq	$3, %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB2_52
# %bb.1:                                # %if.end
	testl	%ebp, %ebp
	js	.LBB2_3
# %bb.2:                                # %if.end
	cmpl	%r12d, %ebp
	jae	.LBB2_3
# %bb.5:                                # %if.end10
	movl	%ebp, 4(%rsp)                   # 4-byte Spill
	movl	%r15d, %ebp
	testl	%r15d, %r15d
	js	.LBB2_7
# %bb.6:                                # %if.end10
	cmpl	%r12d, %ebp
	jae	.LBB2_7
# %bb.8:                                # %if.end18
	movq	%rax, %rbx
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open@PLT
	testl	%eax, %eax
	js	.LBB2_53
# %bb.9:                                # %if.end26
	movl	%eax, %r12d
	movl	4(%rsp), %eax                   # 4-byte Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	(%rax,%rax,4), %r15
	leaq	(%r14,%r15,8), %r13
	addq	$8, %r13
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r14,%r15,8)
	movl	$0, 24(%r14,%r15,8)
	movq	32(%r14,%r15,8), %rsi
	movl	$266338304, %edx                # imm = 0xFE00000
	movl	%r12d, %edi
	callq	read@PLT
	testq	%rax, %rax
	jle	.LBB2_15
# %bb.10:                               # %while.body.preheader
	leaq	(%r14,%r15,8), %r15
	jmp	.LBB2_11
	.p2align	4, 0x90
.LBB2_14:                               # %if.end55
                                        #   in Loop: Header=BB2_11 Depth=1
	addq	32(%r15), %rsi
	movl	$266338304, %edx                # imm = 0xFE00000
	movl	%r12d, %edi
	callq	read@PLT
	testq	%rax, %rax
	jle	.LBB2_15
.LBB2_11:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rsi
	addq	%rax, %rsi
	movq	%rsi, (%r13)
	cmpq	$266338304, %rax                # imm = 0xFE00000
	jb	.LBB2_16
# %bb.12:                               # %if.end45
                                        #   in Loop: Header=BB2_11 Depth=1
	leaq	266338304(%rsi), %rax
	cmpq	(%r15), %rax
	jle	.LBB2_14
# %bb.13:                               # %if.then54
                                        #   in Loop: Header=BB2_11 Depth=1
	movl	$.L.str.9, %edx
	movq	%r14, %rdi
	movl	4(%rsp), %esi                   # 4-byte Reload
	callq	fd_grow
	movq	(%r13), %rsi
	jmp	.LBB2_14
.LBB2_15:                               # %while.end
	testq	%rax, %rax
	js	.LBB2_54
.LBB2_16:                               # %if.end62
	movl	%r12d, %edi
	callq	close@PLT
	movl	%ebp, %eax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %r15
	leaq	(%r14,%r15), %rax
	addq	$8, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r14,%r15)
	movq	spec_fd(%rip), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %r12
	movl	%ebp, %esi
	movl	24(%rax,%r12), %ebp
	movl	24(%rax,%r15), %ecx
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movl	$1, 24(%rax,%r15)
	movq	spec_fd(%rip), %rax
	movl	$1, 24(%rax,%r12)
	movl	4(%rsp), %edi                   # 4-byte Reload
	callq	uncompressStream@PLT
	movq	spec_fd(%rip), %rax
	movl	%ebp, 24(%rax,%r12)
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movq	spec_fd(%rip), %rax
	movl	16(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, 24(%rax,%r15)
	cmpl	$2, dbglvl(%rip)
	jl	.LBB2_18
# %bb.17:                               # %if.then72
	movq	(%r13), %rsi
	movq	(%rbp), %rdx
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB2_18:                               # %if.end81
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r13)
	cmpl	$512, 24(%rsp)                  # 4-byte Folded Reload
                                        # imm = 0x200
	jne	.LBB2_55
# %bb.19:                               # %if.then2.i
	movq	304(%rsp), %r12
	addq	%r15, %r14
	leaq	40(%rsp), %rdi
	callq	sha_init@PLT
	movq	(%rbp), %rax
	testq	%rax, %rax
	jle	.LBB2_24
# %bb.20:                               # %for.body.lr.ph.i
	movl	$2147483647, %r13d              # imm = 0x7FFFFFFF
	xorl	%r15d, %r15d
	leaq	40(%rsp), %rbp
	.p2align	4, 0x90
.LBB2_21:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	subq	%r15, %rax
	cmpq	%r13, %rax
	cmovlq	%rax, %r13
	movq	32(%r14), %rsi
	addq	%r15, %rsi
	movq	%rbp, %rdi
	movl	%r13d, %edx
	callq	sha_process@PLT
	addq	%r13, %r15
	movq	8(%r14), %rax
	cmpq	%rax, %r15
	jl	.LBB2_21
# %bb.22:                               # %spec_mem_sum.exit
	leaq	40(%rsp), %rdi
	movq	%rbx, %rsi
	callq	sha_done@PLT
	testq	%r12, %r12
	movq	8(%rsp), %rbp                   # 8-byte Reload
	jne	.LBB2_25
	jmp	.LBB2_23
.LBB2_24:                               # %spec_mem_sum.exit.thread
	leaq	40(%rsp), %rdi
	movq	%rbx, %rsi
	callq	sha_done@PLT
	testq	%r12, %r12
	je	.LBB2_23
.LBB2_25:                               # %for.body.i267.preheader
	movl	$3, %edx
	movq	32(%rsp), %r13                  # 8-byte Reload
	.p2align	4, 0x90
.LBB2_26:                               # %for.body.i267
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-3(%r12,%rdx), %eax
	movzbl	-3(%rbx,%rdx), %ecx
	cmpb	%cl, %al
	jne	.LBB2_27
# %bb.31:                               # %for.inc.i
                                        #   in Loop: Header=BB2_26 Depth=1
	movzbl	-2(%r12,%rdx), %eax
	movzbl	-2(%rbx,%rdx), %ecx
	cmpb	%cl, %al
	jne	.LBB2_28
# %bb.32:                               # %for.inc.i.1
                                        #   in Loop: Header=BB2_26 Depth=1
	movzbl	-1(%r12,%rdx), %eax
	movzbl	-1(%rbx,%rdx), %ecx
	cmpb	%cl, %al
	jne	.LBB2_29
# %bb.33:                               # %for.inc.i.2
                                        #   in Loop: Header=BB2_26 Depth=1
	movzbl	(%r12,%rdx), %eax
	movzbl	(%rbx,%rdx), %ecx
	cmpb	%cl, %al
	jne	.LBB2_30
# %bb.34:                               # %for.inc.i.3
                                        #   in Loop: Header=BB2_26 Depth=1
	addq	$4, %rdx
	cmpq	$67, %rdx
	jne	.LBB2_26
# %bb.35:                               # %if.end96
	cmpl	$2, dbglvl(%rip)
	jl	.LBB2_37
# %bb.36:                               # %if.then99
	movl	$.L.str.16, %edi
	movl	$512, %esi                      # imm = 0x200
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB2_37:                               # %if.end102
	movq	(%rbp), %rdi
	cmpq	%r13, %rdi
	jle	.LBB2_41
# %bb.38:                               # %if.then108
	cmpl	$2, dbglvl(%rip)
	jl	.LBB2_40
# %bb.39:                               # %if.then111
	movl	$.L.str.17, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB2_40:                               # %if.end118.thread
	movq	%r13, 8(%r14)
	movq	$0, 16(%r14)
	jmp	.LBB2_46
.LBB2_41:                               # %if.end118
	movq	$0, 16(%r14)
	jge	.LBB2_46
# %bb.42:                               # %while.body128.lr.ph
	movq	stdout@GOTPCREL(%rip), %r15
	jmp	.LBB2_43
	.p2align	4, 0x90
.LBB2_45:                               # %if.end147
                                        #   in Loop: Header=BB2_43 Depth=1
	movq	32(%r14), %rsi
	addq	%rsi, %rdi
	movq	%r12, %rdx
	callq	memcpy@PLT
	addq	8(%r14), %r12
	movq	%r12, 8(%r14)
	movq	%r12, %rdi
	cmpq	%r13, %r12
	jge	.LBB2_46
.LBB2_43:                               # %while.body128
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %r12
	subq	%rdi, %r12
	cmpq	%rdi, %r12
	cmovgeq	%rdi, %r12
	cmpl	$4, dbglvl(%rip)
	jl	.LBB2_45
# %bb.44:                               # %if.then144
                                        #   in Loop: Header=BB2_43 Depth=1
	movl	$.L.str.18, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	(%r15), %rdi
	callq	fflush@PLT
	movq	(%rbp), %rdi
	jmp	.LBB2_45
.LBB2_46:                               # %if.then2.i274
	leaq	40(%rsp), %rdi
	callq	sha_init@PLT
	movq	(%rbp), %rax
	testq	%rax, %rax
	jle	.LBB2_49
# %bb.47:                               # %for.body.lr.ph.i278
	movl	$2147483647, %r15d              # imm = 0x7FFFFFFF
	xorl	%r13d, %r13d
	leaq	40(%rsp), %r12
	.p2align	4, 0x90
.LBB2_48:                               # %for.body.i280
                                        # =>This Inner Loop Header: Depth=1
	subq	%r13, %rax
	cmpq	%r15, %rax
	cmovlq	%rax, %r15
	movq	32(%r14), %rsi
	addq	%r13, %rsi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	sha_process@PLT
	addq	%r15, %r13
	movq	8(%r14), %rax
	cmpq	%rax, %r13
	jl	.LBB2_48
.LBB2_49:                               # %spec_mem_sum.exit289
	leaq	40(%rsp), %rdi
	movq	%rbx, %rsi
	callq	sha_done@PLT
	movl	$.L.str.19, %edi
	movl	$512, %esi                      # imm = 0x200
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB2_50:                               # %for.body.i293
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%r15), %edx
	movl	$.L.str.74, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	fprintf@PLT
	incq	%r15
	cmpq	$64, %r15
	jne	.LBB2_50
# %bb.51:                               # %print_sum.exit
	movl	$10, %edi
	callq	putchar@PLT
	movq	%rbx, %rax
	addq	$248, %rsp
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
.LBB2_27:                               # %if.then8.isplitsplitsplit
	.cfi_def_cfa_offset 304
	addq	$-3, %rdx
	jmp	.LBB2_30
.LBB2_28:                               # %for.inc.i.if.then8.isplitsplit_crit_edge
	addq	$-2, %rdx
	jmp	.LBB2_30
.LBB2_29:                               # %for.inc.i.1.if.then8.isplit_crit_edge
	decq	%rdx
.LBB2_30:                               # %if.then8.i
	movzbl	%cl, %r8d
	movzbl	%al, %ecx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.76, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
.LBB2_23:                               # %if.then91
	movq	stderr@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	movl	$.L.str.12, %esi
	movl	$512, %edx                      # imm = 0x200
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	(%r14), %rcx
	movl	$.L.str.13, %edi
	movl	$13, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	movl	$512, %edx                      # imm = 0x200
	callq	print_sum
	movq	(%r14), %rcx
	movl	$.L.str.14, %edi
	movl	$14, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%r14), %rdi
	movq	%r12, %rsi
	movl	$512, %edx                      # imm = 0x200
	callq	print_sum
	movq	(%r14), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB2_52:                               # %if.then
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leal	7(%rcx), %edx
	testl	%ecx, %ecx
	cmovnsl	%ecx, %edx
	sarl	$3, %edx
	movl	$.L.str.5, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB2_3:                                # %if.then8
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.6, %esi
	jmp	.LBB2_4
.LBB2_7:                                # %if.then16
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.7, %esi
.LBB2_4:                                # %if.then8
	movl	%ebp, %edx
	movq	%r14, %rcx
	movl	%r12d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB2_53:                               # %if.then22
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB2_55:                               # %if.then.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.4, %edi
	movl	$40, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB2_54:                               # %if.then58
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end2:
	.size	spec_mem_load, .Lfunc_end2-spec_mem_load
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function fd_grow
	.type	fd_grow,@function
fd_grow:                                # @fd_grow
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	%esi, %eax
	leaq	(%rax,%rax,4), %r15
	movq	(%rdi,%r15,8), %rsi
	movq	32(%rdi,%r15,8), %rdi
	addq	%rsi, %rsi
	movq	%rsi, (%rbx,%r15,8)
	callq	realloc@PLT
	movq	%rax, 32(%rbx,%r15,8)
	testq	%rax, %rax
	je	.LBB3_3
# %bb.1:                                # %if.end
	cmpl	$6, dbglvl(%rip)
	jl	.LBB3_2
# %bb.4:                                # %if.then16
	leaq	(%rbx,%r15,8), %rax
	movq	(%rax), %rcx
	movl	$.L.str.86, %edi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	fflush@PLT                      # TAILCALL
.LBB3_2:                                # %if.end22
	.cfi_def_cfa_offset 48
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB3_3:                                # %if.then
	.cfi_def_cfa_offset 48
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %r15
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	$.L.str.85, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	movq	%rbx, %r8
	movq	%rax, %r9
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end3:
	.size	fd_grow, .Lfunc_end3-fd_grow
	.cfi_endproc
                                        # -- End function
	.globl	spec_uncompress                 # -- Begin function spec_uncompress
	.p2align	4, 0x90
	.type	spec_uncompress,@function
spec_uncompress:                        # @spec_uncompress
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	spec_fd(%rip), %rax
	movslq	%edi, %rdi
	leaq	(,%rdi,8), %rcx
	leaq	(%rcx,%rcx,4), %rbx
	movl	24(%rax,%rbx), %ebp
	movslq	%esi, %rsi
	leaq	(,%rsi,8), %rcx
	leaq	(%rcx,%rcx,4), %r14
	movl	24(%rax,%r14), %r15d
	movl	$1, 24(%rax,%r14)
	movq	spec_fd(%rip), %rax
	movl	$1, 24(%rax,%rbx)
                                        # kill: def $edi killed $edi killed $rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	uncompressStream@PLT
	movq	spec_fd(%rip), %rax
	movl	%ebp, 24(%rax,%rbx)
	movq	spec_fd(%rip), %rax
	movl	%r15d, 24(%rax,%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	spec_uncompress, .Lfunc_end4-spec_uncompress
	.cfi_endproc
                                        # -- End function
	.globl	compare_sum                     # -- Begin function compare_sum
	.p2align	4, 0x90
	.type	compare_sum,@function
compare_sum:                            # @compare_sum
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edx killed $edx def $rdx
	testq	%rdi, %rdi
	sete	%al
	testq	%rsi, %rsi
	sete	%cl
	orb	%al, %cl
	movl	$-1, %eax
	jne	.LBB5_3
# %bb.1:                                # %for.cond.preheader
	cmpl	$8, %edx
	jl	.LBB5_2
# %bb.4:                                # %for.body.preheader
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	shrl	$3, %edx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB5_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rbx), %ecx
	movzbl	(%rsi,%rbx), %r8d
	cmpb	%r8b, %cl
	jne	.LBB5_6
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=1
	incq	%rbx
	cmpq	%rbx, %rdx
	jne	.LBB5_5
# %bb.8:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	retq
.LBB5_2:
	xorl	%eax, %eax
.LBB5_3:                                # %return
	retq
.LBB5_6:                                # %if.then8
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rsi, %r14
	movl	$.L.str.76, %esi
	movq	%rdi, %r15
	movq	%rax, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	xorl	%eax, %eax
	movzbl	(%r15,%rbx), %ecx
	cmpb	(%r14,%rbx), %cl
	sbbl	%eax, %eax
	orl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	retq
.Lfunc_end5:
	.size	compare_sum, .Lfunc_end5-compare_sum
	.cfi_endproc
                                        # -- End function
	.globl	print_sum                       # -- Begin function print_sum
	.p2align	4, 0x90
	.type	print_sum,@function
print_sum:                              # @print_sum
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$8, %edx
	jl	.LBB6_4
# %bb.1:                                # %for.body.preheader
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	shrl	$3, %ebx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%r12), %edx
	movl	$.L.str.74, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	fprintf@PLT
	incq	%r12
	cmpq	%r12, %rbx
	jne	.LBB6_2
# %bb.3:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
.LBB6_4:                                # %for.cond.cleanup
	retq
.Lfunc_end6:
	.size	print_sum, .Lfunc_end6-print_sum
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_read                   # -- Begin function spec_mem_read
	.p2align	4, 0x90
	.type	spec_mem_read,@function
spec_mem_read:                          # @spec_mem_read
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
	movq	%r8, %r15
	movq	%rcx, %r12
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r14
	cmpl	$6, dbglvl(%rip)
	jl	.LBB7_2
# %bb.1:                                # %if.then
	movl	$.L.str.20, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB7_2:                                # %if.end
	testl	%ebx, %ebx
	js	.LBB7_15
# %bb.3:                                # %if.end
	cmpl	%ebp, %ebx
	jae	.LBB7_15
# %bb.4:                                # %if.end6
	movl	%ebx, %eax
	leaq	(%rax,%rax,4), %rax
	cmpl	$1, 24(%r14,%rax,8)
	jne	.LBB7_5
# %bb.6:                                # %if.end11
	leaq	(%r14,%rax,8), %rbp
	movq	8(%rbp), %rdx
	movq	16(%rbp), %rsi
	movq	%rdx, %r13
	subq	%rsi, %r13
	jle	.LBB7_7
# %bb.10:                               # %if.end29
	leaq	(%rsi,%r15), %rax
	cmpq	%rdx, %rax
	cmovlq	%r15, %r13
	addq	32(%rbp), %rsi
	movslq	%r13d, %r15
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	%r15, 16(%rbp)
	cmpl	$6, dbglvl(%rip)
	jl	.LBB7_14
# %bb.11:                               # %if.end64
	movl	$.L.str.24, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %r12
	movq	(%r12), %rdi
	callq	fflush@PLT
	cmpl	$6, dbglvl(%rip)
	jl	.LBB7_14
# %bb.12:                               # %if.then67
	movq	16(%rbp), %rcx
	movl	$.L.str.25, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	(%r12), %rdi
	jmp	.LBB7_13
.LBB7_7:                                # %if.then17
	cmpl	$5, dbglvl(%rip)
	jl	.LBB7_8
# %bb.9:                                # %if.then19
	xorl	%r15d, %r15d
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
.LBB7_13:                               # %cleanup
	callq	fflush@PLT
	jmp	.LBB7_14
.LBB7_8:
	xorl	%r15d, %r15d
.LBB7_14:                               # %cleanup
	movq	%r15, %rax
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
.LBB7_5:                                # %if.then8
	.cfi_def_cfa_offset 64
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%r15, (%rsp)
	movl	$.L.str.22, %esi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	movq	%r12, %r9
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	__errno_location@PLT
	movl	$9, (%rax)
	movq	$-1, %r15
	jmp	.LBB7_14
.LBB7_15:                               # %if.then4
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.21, %esi
	movl	%ebx, %edx
	movq	%r14, %rcx
	movl	%ebp, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end7:
	.size	spec_mem_read, .Lfunc_end7-spec_mem_read
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_fread                  # -- Begin function spec_mem_fread
	.p2align	4, 0x90
	.type	spec_mem_fread,@function
spec_mem_fread:                         # @spec_mem_fread
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
	movl	%r9d, %ebx
	movl	%r8d, %ebp
	movq	%rcx, %r13
	movq	%rdx, %r8
	movl	%esi, %r12d
	movq	%rdi, %r14
	cmpl	$6, dbglvl(%rip)
	jl	.LBB8_2
# %bb.1:                                # %if.then
	movl	%ebx, (%rsp)
	movl	$.L.str.26, %edi
	movq	%r14, %rsi
	movl	%r12d, %edx
	movq	%r8, %rcx
	movq	%r8, %r15
	movq	%r13, %r8
	movl	%ebp, %r9d
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	movq	%r15, %r8
.LBB8_2:                                # %if.end
	testl	%ebx, %ebx
	js	.LBB8_19
# %bb.3:                                # %if.end
	cmpl	%r12d, %ebx
	jae	.LBB8_19
# %bb.4:                                # %if.end6
	movl	%ebx, %eax
	leaq	(%rax,%rax,4), %rax
	cmpl	$1, 24(%r14,%rax,8)
	jne	.LBB8_20
# %bb.5:                                # %if.end10
	leaq	(%r14,%rax,8), %r15
	movq	8(%r15), %rcx
	movq	16(%r15), %rsi
	movq	%rcx, %rax
	subq	%rsi, %rax
	jle	.LBB8_6
# %bb.9:                                # %if.end22
	movslq	%ebp, %r12
	movq	%r12, %rbp
	imulq	%r13, %rbp
	leaq	(%rsi,%rbp), %rdx
	cmpq	%rcx, %rdx
	jl	.LBB8_14
# %bb.10:                               # %if.then31
	movq	%rax, %rcx
	orq	%r13, %rcx
	shrq	$32, %rcx
	je	.LBB8_11
# %bb.12:
	cqto
	idivq	%r13
	movq	%rax, %r12
	jmp	.LBB8_13
.LBB8_6:                                # %if.then16
	cmpl	$6, dbglvl(%rip)
	jl	.LBB8_7
# %bb.8:                                # %if.then18
	movl	$.Lstr.87, %edi
	callq	puts@PLT
	xorl	%r12d, %r12d
	jmp	.LBB8_17
.LBB8_7:
	xorl	%r12d, %r12d
	jmp	.LBB8_18
.LBB8_11:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r13d
	movl	%eax, %r12d
.LBB8_13:
	imulq	%r12, %r13
	movq	%r13, %rbp
.LBB8_14:                               # %if.end39
	addq	32(%r15), %rsi
	movq	%r8, %rdi
	movq	%r12, %rdx
	callq	memcpy@PLT
	addq	%rbp, 16(%r15)
	cmpl	$6, dbglvl(%rip)
	jl	.LBB8_18
# %bb.15:                               # %if.end58
	movl	$.L.str.30, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	cmpl	$6, dbglvl(%rip)
	jl	.LBB8_18
# %bb.16:                               # %if.then61
	movq	16(%r15), %rcx
	movl	$.L.str.31, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.LBB8_17:                               # %cleanup.sink.split
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB8_18:                               # %cleanup
	movq	%r12, %rax
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
.LBB8_19:                               # %if.then4
	.cfi_def_cfa_offset 64
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.27, %esi
	movl	%ebx, %edx
	movq	%r14, %rcx
	movl	%r12d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB8_20:                               # %if.then8
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.28, %esi
	movl	%ebx, %edx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end8:
	.size	spec_mem_fread, .Lfunc_end8-spec_mem_fread
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_getc                   # -- Begin function spec_mem_getc
	.p2align	4, 0x90
	.type	spec_mem_getc,@function
spec_mem_getc:                          # @spec_mem_getc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	cmpl	$7, dbglvl(%rip)
	jl	.LBB9_2
# %bb.1:                                # %if.then
	movl	$.L.str.32, %edi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB9_2:                                # %if.end
	testl	%ebp, %ebp
	js	.LBB9_14
# %bb.3:                                # %if.end
	cmpl	%r14d, %ebp
	jae	.LBB9_14
# %bb.4:                                # %if.end6
	movl	%ebp, %eax
	leaq	(%rax,%rax,4), %rax
	cmpl	$1, 24(%rbx,%rax,8)
	jne	.LBB9_15
# %bb.5:                                # %if.end10
	leaq	(%rbx,%rax,8), %r15
	movq	16(%r15), %rax
	cmpq	8(%r15), %rax
	jge	.LBB9_6
# %bb.8:                                # %if.end22
	movq	32(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%r15)
	movzbl	(%rcx,%rax), %r14d
	movl	dbglvl(%rip), %eax
	cmpl	$7, %eax
	jl	.LBB9_10
# %bb.9:                                # %if.then31
	movl	$.L.str.24, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	movl	dbglvl(%rip), %eax
.LBB9_10:                               # %if.end34
	cmpl	$6, %eax
	jl	.LBB9_13
# %bb.11:                               # %if.then37
	movq	16(%r15), %rcx
	movl	$.L.str.35, %edi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB9_12
.LBB9_6:                                # %if.then16
	movl	$-1, %r14d
	cmpl	$7, dbglvl(%rip)
	jl	.LBB9_13
# %bb.7:                                # %if.then18
	movl	$.Lstr.87, %edi
	callq	puts@PLT
	movl	$-1, %r14d
.LBB9_12:                               # %cleanup.sink.split
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB9_13:                               # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB9_14:                               # %if.then4
	.cfi_def_cfa_offset 48
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.33, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	movl	%r14d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB9_15:                               # %if.then8
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.34, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end9:
	.size	spec_mem_getc, .Lfunc_end9-spec_mem_getc
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_ungetc                 # -- Begin function spec_mem_ungetc
	.p2align	4, 0x90
	.type	spec_mem_ungetc,@function
spec_mem_ungetc:                        # @spec_mem_ungetc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	cmpl	$7, dbglvl(%rip)
	jl	.LBB10_2
# %bb.1:                                # %if.then
	movzbl	%r14b, %ecx
	movl	$.L.str.36, %edi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movl	%ebp, %r8d
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB10_2:                               # %if.end
	testl	%ebp, %ebp
	js	.LBB10_12
# %bb.3:                                # %if.end
	cmpl	%r15d, %ebp
	jae	.LBB10_12
# %bb.4:                                # %if.end9
	movl	%ebp, %eax
	leaq	(%rax,%rax,4), %rax
	cmpl	$1, 24(%rbx,%rax,8)
	jne	.LBB10_13
# %bb.5:                                # %if.end14
	leaq	(%rbx,%rax,8), %r15
	movq	16(%r15), %rdx
	testq	%rdx, %rdx
	jle	.LBB10_14
# %bb.6:                                # %if.end24
	movq	32(%r15), %rax
	leaq	-1(%rdx), %rcx
	movq	%rcx, 16(%r15)
	movzbl	-1(%rax,%rdx), %eax
	cmpl	%r14d, %eax
	jne	.LBB10_15
# %bb.7:                                # %if.end36
	movl	dbglvl(%rip), %eax
	cmpl	$7, %eax
	jl	.LBB10_9
# %bb.8:                                # %if.then39
	movl	$.L.str.24, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	movl	dbglvl(%rip), %eax
.LBB10_9:                               # %if.end42
	cmpl	$6, %eax
	jl	.LBB10_11
# %bb.10:                               # %if.then45
	movq	16(%r15), %rcx
	movl	$.L.str.41, %edi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB10_11:                              # %if.end51
	movl	%r14d, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB10_12:                              # %if.then7
	.cfi_def_cfa_offset 48
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.37, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	movl	%r15d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB10_13:                              # %if.then12
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.38, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB10_14:                              # %if.then19
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB10_15:                              # %if.then34
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.40, %edi
	movl	$75, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end10:
	.size	spec_mem_ungetc, .Lfunc_end10-spec_mem_ungetc
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_lseek                  # -- Begin function spec_mem_lseek
	.p2align	4, 0x90
	.type	spec_mem_lseek,@function
spec_mem_lseek:                         # @spec_mem_lseek
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rcx, %rbx
	movl	%edx, %r8d
	movl	%esi, %eax
	movq	%rdi, %rcx
	testl	%edx, %edx
	js	.LBB11_22
# %bb.1:                                # %entry
	cmpl	%eax, %r8d
	jae	.LBB11_22
# %bb.2:                                # %if.end
	movl	%r8d, %edx
	leaq	(%rdx,%rdx,4), %rdx
	cmpl	$1, 24(%rcx,%rdx,8)
	jne	.LBB11_21
# %bb.3:                                # %if.end6
	leaq	(%rcx,%rdx,8), %r12
	movq	16(%r12), %r14
	cmpl	$5, dbglvl(%rip)
	jl	.LBB11_5
# %bb.4:                                # %if.then10
	movq	%r14, (%rsp)
	movl	$.L.str.44, %edi
	movq	%rcx, %rsi
	movl	%eax, %edx
	movl	%r8d, %ecx
	movq	%rbx, %r8
	movl	%ebp, %r9d
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB11_5:                               # %if.end13
	leaq	16(%r12), %r15
	testl	%ebp, %ebp
	je	.LBB11_10
# %bb.6:                                # %if.end13
	movq	%r15, %rax
	cmpl	$1, %ebp
	je	.LBB11_9
# %bb.7:                                # %if.end13
	cmpl	$2, %ebp
	jne	.LBB11_16
# %bb.8:                                # %if.then26
	addq	$8, %r12
	movq	%r12, %rax
.LBB11_9:                               # %if.end45.sink.split
	addq	(%rax), %rbx
.LBB11_10:                              # %if.end45
	movq	%rbx, (%r15)
	movl	dbglvl(%rip), %eax
	testq	%rbx, %rbx
	js	.LBB11_13
# %bb.11:                               # %if.end63
	cmpl	$5, %eax
	jl	.LBB11_20
# %bb.12:                               # %if.then65
	movl	$.L.str.47, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	movq	(%r15), %rbx
	jmp	.LBB11_20
.LBB11_13:                              # %if.then50
	cmpl	$5, %eax
	jl	.LBB11_15
# %bb.14:                               # %if.then52
	movl	$.L.str.46, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB11_15:                              # %if.end58
	movq	%r14, (%r15)
	jmp	.LBB11_18
.LBB11_16:                              # %if.else33
	cmpl	$5, dbglvl(%rip)
	jl	.LBB11_18
# %bb.17:                               # %if.then35
	movq	(%r15), %rsi
	movl	$.L.str.45, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB11_18:                              # %if.end41
	callq	__errno_location@PLT
	movl	$22, (%rax)
.LBB11_19:                              # %cleanup
	movq	$-1, %rbx
.LBB11_20:                              # %cleanup
	movq	%rbx, %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB11_21:                              # %if.then3
	.cfi_def_cfa_offset 64
	movq	stderr@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movl	%ebp, (%rsp)
	movl	$.L.str.43, %esi
	movq	%rcx, %rdx
	movl	%eax, %ecx
	movq	%rbx, %r9
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	__errno_location@PLT
	movl	$9, (%rax)
	jmp	.LBB11_19
.LBB11_22:                              # %if.then
	movq	stderr@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movl	$.L.str.42, %esi
	movl	%r8d, %edx
	movl	%eax, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end11:
	.size	spec_mem_lseek, .Lfunc_end11-spec_mem_lseek
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_rewind                 # -- Begin function spec_mem_rewind
	.p2align	4, 0x90
	.type	spec_mem_rewind,@function
spec_mem_rewind:                        # @spec_mem_rewind
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
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r14
	cmpl	$5, dbglvl(%rip)
	jl	.LBB12_2
# %bb.1:                                # %if.then
	movl	$.L.str.48, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB12_2:                               # %if.end
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	spec_mem_lseek
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	spec_mem_rewind, .Lfunc_end12-spec_mem_rewind
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_reset                  # -- Begin function spec_mem_reset
	.p2align	4, 0x90
	.type	spec_mem_reset,@function
spec_mem_reset:                         # @spec_mem_reset
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
	movl	%edx, %ebx
	movq	%rdi, %r14
	cmpl	$5, dbglvl(%rip)
	jl	.LBB13_2
# %bb.1:                                # %if.then
	movl	%esi, %edx
	movl	$.L.str.49, %edi
	movq	%r14, %rsi
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB13_2:                               # %if.end
	movslq	%ebx, %rax
	leaq	(%rax,%rax,4), %r15
	movq	8(%r14,%r15,8), %rdx
	movq	32(%r14,%r15,8), %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r14,%r15,8)
	cmpl	$6, dbglvl(%rip)
	jl	.LBB13_4
# %bb.3:                                # %if.then10
	movl	$.L.str.50, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB13_4:                               # %if.end16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	spec_mem_reset, .Lfunc_end13-spec_mem_reset
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_get_length             # -- Begin function spec_mem_get_length
	.p2align	4, 0x90
	.type	spec_mem_get_length,@function
spec_mem_get_length:                    # @spec_mem_get_length
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edx, %eax
	movl	%esi, %ecx
	movq	%rdi, %rdx
	movslq	%eax, %rsi
	leaq	(%rsi,%rsi,4), %rsi
	cmpl	$1, 24(%rdi,%rsi,8)
	jne	.LBB14_1
# %bb.2:                                # %if.end
	leaq	(%rdx,%rsi,8), %rbx
	cmpl	$5, dbglvl(%rip)
	jl	.LBB14_4
# %bb.3:                                # %if.then2
	movq	8(%rbx), %r8
	movl	$.L.str.52, %edi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB14_4:                               # %if.end7
	movq	8(%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB14_1:                               # %if.then
	.cfi_def_cfa_offset 16
	movq	stderr@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rdi
	movl	$.L.str.51, %esi
	movl	%eax, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	$-1, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	spec_mem_get_length, .Lfunc_end14-spec_mem_get_length
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_fopen                  # -- Begin function spec_mem_fopen
	.p2align	4, 0x90
	.type	spec_mem_fopen,@function
spec_mem_fopen:                         # @spec_mem_fopen
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r12
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	%rdx, %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %rbx
	testl	%ebx, %ebx
	setns	%al
	cmpl	%ebp, %ebx
	setb	%cl
	testb	%cl, %al
	je	.LBB15_1
# %bb.2:                                # %if.end
	cmpl	$5, dbglvl(%rip)
	jl	.LBB15_4
# %bb.3:                                # %if.then7
	movl	$.L.str.53, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	movl	%ebx, %r9d
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB15_4:                               # %if.end10
	movl	%ebx, %eax
	andl	$2147483647, %eax               # imm = 0x7FFFFFFF
	leaq	(%rax,%rax,4), %rax
	movl	$1, 24(%r14,%rax,8)
	movzbl	(%r15), %ecx
	cmpl	$114, %ecx
	je	.LBB15_12
# %bb.5:                                # %if.end10
	cmpl	$119, %ecx
	jne	.LBB15_16
# %bb.6:                                # %if.then15
	leaq	(%r14,%rax,8), %r12
	cmpb	$43, 1(%r15)
	jne	.LBB15_8
# %bb.7:                                # %if.then20
	movq	16(%r12), %rcx
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	jmp	.LBB15_15
.LBB15_1:                               # %if.then
	callq	__errno_location@PLT
	movl	$2, (%rax)
	movl	$-1, %ebx
	jmp	.LBB15_16
.LBB15_12:                              # %if.then31
	cmpl	$5, dbglvl(%rip)
	jl	.LBB15_14
# %bb.13:                               # %if.then.i58
	movl	$.L.str.48, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB15_14:                              # %spec_mem_rewind.exit
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
.LBB15_15:                              # %cleanup
	xorl	%r8d, %r8d
	callq	spec_mem_lseek
.LBB15_16:                              # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB15_8:                               # %if.else
	.cfi_def_cfa_offset 48
	cmpl	$5, dbglvl(%rip)
	jl	.LBB15_10
# %bb.9:                                # %if.then.i
	movl	$.L.str.49, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB15_10:                              # %if.end.i
	movq	8(%r12), %rdx
	movq	32(%r12), %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r12)
	cmpl	$6, dbglvl(%rip)
	jl	.LBB15_16
# %bb.11:                               # %if.then10.i
	movl	$.L.str.50, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	jmp	.LBB15_16
.Lfunc_end15:
	.size	spec_mem_fopen, .Lfunc_end15-spec_mem_fopen
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_open                   # -- Begin function spec_mem_open
	.p2align	4, 0x90
	.type	spec_mem_open,@function
spec_mem_open:                          # @spec_mem_open
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	%rdx, %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %rbx
	testl	%ebx, %ebx
	setns	%al
	cmpl	%ebp, %ebx
	setb	%cl
	testb	%cl, %al
	je	.LBB16_1
# %bb.2:                                # %if.end
	cmpl	$5, dbglvl(%rip)
	jl	.LBB16_4
# %bb.3:                                # %if.then7
	movl	$.L.str.54, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movq	%r12, %rcx
	movl	%r15d, %r8d
	movl	%ebx, %r9d
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB16_4:                               # %if.end10
	movl	%ebx, %eax
	andl	$2147483647, %eax               # imm = 0x7FFFFFFF
	leaq	(%rax,%rax,4), %rax
	movl	$1, 24(%r14,%rax,8)
	testb	$3, %r15b
	je	.LBB16_12
# %bb.5:                                # %if.then14
	leaq	(%r14,%rax,8), %r12
	testl	$512, %r15d                     # imm = 0x200
	je	.LBB16_10
# %bb.6:                                # %if.then17
	cmpl	$5, dbglvl(%rip)
	jl	.LBB16_8
# %bb.7:                                # %if.then.i
	movl	$.L.str.49, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB16_8:                               # %if.end.i
	movq	8(%r12), %rdx
	movq	32(%r12), %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r12)
	cmpl	$6, dbglvl(%rip)
	jl	.LBB16_10
# %bb.9:                                # %if.then10.i
	movl	$.L.str.50, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB16_10:                              # %if.end19
	testl	$1024, %r15d                    # imm = 0x400
	jne	.LBB16_11
.LBB16_12:                              # %if.else28
	cmpl	$5, dbglvl(%rip)
	jl	.LBB16_14
# %bb.13:                               # %if.then.i65
	movl	$.L.str.48, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB16_14:                              # %spec_mem_rewind.exit68
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	jmp	.LBB16_15
.LBB16_1:                               # %if.then
	callq	__errno_location@PLT
	movl	$2, (%rax)
	movl	$-1, %ebx
	jmp	.LBB16_16
.LBB16_11:                              # %if.then22
	movq	16(%r12), %rcx
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
.LBB16_15:                              # %cleanup
	xorl	%r8d, %r8d
	callq	spec_mem_lseek
.LBB16_16:                              # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	spec_mem_open, .Lfunc_end16-spec_mem_open
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_write                  # -- Begin function spec_mem_write
	.p2align	4, 0x90
	.type	spec_mem_write,@function
spec_mem_write:                         # @spec_mem_write
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movl	%edx, %ebp
	movl	%esi, %r12d
	movq	%rdi, %r15
	cmpl	$6, dbglvl(%rip)
	jl	.LBB17_2
# %bb.1:                                # %if.then
	movl	$.L.str.55, %edi
	movq	%r15, %rsi
	movl	%r12d, %edx
	movl	%ebp, %ecx
	movq	%r14, %r8
	movq	%rbx, %r9
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB17_2:                               # %if.end
	testl	%ebp, %ebp
	js	.LBB17_13
# %bb.3:                                # %if.end
	cmpl	%r12d, %ebp
	jae	.LBB17_13
# %bb.4:                                # %if.end6
	movl	%ebp, %eax
	leaq	(%rax,%rax,4), %rax
	cmpl	$1, 24(%r15,%rax,8)
	jne	.LBB17_14
# %bb.5:                                # %while.cond.preheader
	leaq	(%r15,%rax,8), %r12
	movq	16(%r12), %rdi
	leaq	(%rdi,%rbx), %rax
	cmpq	(%r12), %rax
	jle	.LBB17_8
	.p2align	4, 0x90
.LBB17_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.58, %edx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	fd_grow
	movq	16(%r12), %rdi
	leaq	(%rdi,%rbx), %rax
	cmpq	(%r12), %rax
	jg	.LBB17_6
.LBB17_8:                               # %while.end
	addq	32(%r12), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	16(%r12), %rcx
	addq	%rbx, %rcx
	movq	%rcx, 16(%r12)
	movq	8(%r12), %rdx
	cmpq	%rdx, %rcx
	jle	.LBB17_10
# %bb.9:                                # %if.then33
	movq	%rcx, 8(%r12)
	movq	%rcx, %rdx
.LBB17_10:                              # %if.end40
	cmpl	$6, dbglvl(%rip)
	jl	.LBB17_12
# %bb.11:                               # %if.then42
	movq	(%r12), %r8
	movl	$.L.str.59, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB17_12:                              # %return
	movq	%rbx, %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB17_14:                              # %if.then8
	.cfi_def_cfa_offset 64
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	%rbx, (%rsp)
	movl	$.L.str.57, %esi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	movl	%ebp, %r8d
	movq	%r14, %r9
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	__errno_location@PLT
	movl	$9, (%rax)
	movq	$-1, %rbx
	jmp	.LBB17_12
.LBB17_13:                              # %if.then4
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	%ebp, %edx
	movq	%r15, %rcx
	movl	%r12d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end17:
	.size	spec_mem_write, .Lfunc_end17-spec_mem_write
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_fwrite                 # -- Begin function spec_mem_fwrite
	.p2align	4, 0x90
	.type	spec_mem_fwrite,@function
spec_mem_fwrite:                        # @spec_mem_fwrite
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r8d, %r9d
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movl	%esi, %r13d
	movq	%rdi, %r15
	cmpl	$6, dbglvl(%rip)
	jl	.LBB18_2
# %bb.1:                                # %if.then
	movl	%r14d, (%rsp)
	movl	$.L.str.60, %edi
	movq	%r15, %rsi
	movl	%r13d, %edx
	movq	%r12, %rcx
	movq	%rbx, %r8
	movl	%r9d, %ebp
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	movl	%ebp, %r9d
.LBB18_2:                               # %if.end
	testl	%r14d, %r14d
	js	.LBB18_13
# %bb.3:                                # %if.end
	cmpl	%r13d, %r14d
	jae	.LBB18_13
# %bb.4:                                # %if.end6
	movl	%r14d, %eax
	leaq	(%rax,%rax,4), %rax
	cmpl	$1, 24(%r15,%rax,8)
	jne	.LBB18_14
# %bb.5:                                # %while.cond.preheader
	leaq	(%r15,%rax,8), %rbp
	movl	%r9d, 20(%rsp)                  # 4-byte Spill
	movslq	%r9d, %r13
	imulq	%r13, %rbx
	movq	16(%rbp), %rdi
	leaq	(%rdi,%rbx), %rax
	cmpq	(%rbp), %rax
	jle	.LBB18_8
	.p2align	4, 0x90
.LBB18_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.63, %edx
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	fd_grow
	movq	16(%rbp), %rdi
	leaq	(%rdi,%rbx), %rax
	cmpq	(%rbp), %rax
	jg	.LBB18_6
.LBB18_8:                               # %while.end
	addq	32(%rbp), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	16(%rbp), %rbx
	movq	%rbx, 16(%rbp)
	movq	8(%rbp), %rdx
	cmpq	%rdx, %rbx
	jle	.LBB18_10
# %bb.9:                                # %if.then38
	movq	%rbx, 8(%rbp)
	movq	%rbx, %rdx
.LBB18_10:                              # %if.end45
	cmpl	$6, dbglvl(%rip)
	movl	20(%rsp), %esi                  # 4-byte Reload
	jl	.LBB18_12
# %bb.11:                               # %if.then48
	movq	(%rbp), %r8
	movl	$.L.str.64, %edi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB18_12:                              # %if.end60
	movq	%r13, %rax
	addq	$24, %rsp
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
.LBB18_13:                              # %if.then4
	.cfi_def_cfa_offset 80
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.61, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	movl	%r13d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB18_14:                              # %if.then8
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.62, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end18:
	.size	spec_mem_fwrite, .Lfunc_end18-spec_mem_fwrite
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_putc                   # -- Begin function spec_mem_putc
	.p2align	4, 0x90
	.type	spec_mem_putc,@function
spec_mem_putc:                          # @spec_mem_putc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	cmpl	$5, dbglvl(%rip)
	jl	.LBB19_2
# %bb.1:                                # %if.then
	movl	$.L.str.65, %edi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB19_2:                               # %if.end
	testl	%ebp, %ebp
	js	.LBB19_11
# %bb.3:                                # %if.end
	cmpl	%r15d, %ebp
	jae	.LBB19_11
# %bb.4:                                # %if.end6
	movl	%ebp, %eax
	leaq	(%rax,%rax,4), %rax
	cmpl	$1, 24(%rbx,%rax,8)
	jne	.LBB19_12
# %bb.5:                                # %if.end10
	leaq	(%rbx,%rax,8), %r15
	movq	16(%r15), %rax
	movq	32(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%r15)
	movb	%r14b, (%rcx,%rax)
	movq	16(%r15), %rax
	cmpq	8(%r15), %rax
	jle	.LBB19_7
# %bb.6:                                # %if.then23
	movq	%rax, 8(%r15)
.LBB19_7:                               # %if.end30
	cmpl	$5, dbglvl(%rip)
	jl	.LBB19_10
# %bb.8:                                # %if.end36
	movl	$.L.str.68, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %r12
	movq	(%r12), %rdi
	callq	fflush@PLT
	cmpl	$6, dbglvl(%rip)
	jl	.LBB19_10
# %bb.9:                                # %if.then39
	movq	16(%r15), %rcx
	movl	$.L.str.69, %edi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	(%r12), %rdi
	callq	fflush@PLT
.LBB19_10:                              # %if.end45
	movl	%r14d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB19_11:                              # %if.then4
	.cfi_def_cfa_offset 48
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.66, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	movl	%r15d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB19_12:                              # %if.then8
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.67, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end19:
	.size	spec_mem_putc, .Lfunc_end19-spec_mem_putc
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_feof                   # -- Begin function spec_mem_feof
	.p2align	4, 0x90
	.type	spec_mem_feof,@function
spec_mem_feof:                          # @spec_mem_feof
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
	movl	%edx, %ecx
	movl	%esi, %eax
	movq	%rdi, %rbx
	testl	%edx, %edx
	js	.LBB20_5
# %bb.1:                                # %entry
	cmpl	%eax, %ecx
	jae	.LBB20_5
# %bb.2:                                # %if.end
	cmpl	$5, dbglvl(%rip)
	movl	%ecx, %edx
	leaq	(%rdx,%rdx,4), %r14
	jl	.LBB20_4
# %bb.3:                                # %if.then3
	movq	16(%rbx,%r14,8), %r10
	movq	8(%rbx,%r14,8), %r9
	xorl	%r8d, %r8d
	cmpq	%r9, %r10
	setge	%r8b
	movl	$.L.str.71, %edi
	movq	%rbx, %rsi
	movl	%eax, %edx
	xorl	%eax, %eax
	pushq	(%rbx,%r14,8)
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB20_4:                               # %if.end17
	movq	16(%rbx,%r14,8), %rcx
	xorl	%eax, %eax
	cmpq	8(%rbx,%r14,8), %rcx
	setge	%al
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB20_5:                               # %if.then
	.cfi_def_cfa_offset 32
	movq	stderr@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movl	$.L.str.70, %esi
	movl	%ecx, %edx
	movq	%rbx, %rcx
	movl	%eax, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end20:
	.size	spec_mem_feof, .Lfunc_end20-spec_mem_feof
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_close                  # -- Begin function spec_mem_close
	.p2align	4, 0x90
	.type	spec_mem_close,@function
spec_mem_close:                         # @spec_mem_close
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testl	%edx, %edx
	js	.LBB21_6
# %bb.1:                                # %entry
	cmpl	%esi, %edx
	jae	.LBB21_6
# %bb.2:                                # %if.end
	movl	%edx, %eax
	leaq	(%rax,%rax,4), %rax
	cmpl	$1, 24(%rdi,%rax,8)
	jne	.LBB21_3
# %bb.4:                                # %if.end6
	leaq	(%rdi,%rax,8), %rax
	addq	$24, %rax
	movl	$0, (%rax)
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB21_3:                               # %if.then3
	.cfi_def_cfa_offset 16
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	%rdi, %rax
	movq	(%rcx), %rdi
	movl	%esi, %ecx
	movl	$.L.str.73, %esi
	movl	%edx, %r8d
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
	callq	__errno_location@PLT
	movl	$9, (%rax)
	movl	$-1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB21_6:                               # %if.then
	.cfi_def_cfa_offset 16
	movq	stderr@GOTPCREL(%rip), %rax
	movq	%rdi, %rcx
	movq	(%rax), %rdi
	movl	%esi, %r8d
	movl	$.L.str.72, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end21:
	.size	spec_mem_close, .Lfunc_end21-spec_mem_close
	.cfi_endproc
                                        # -- End function
	.globl	spec_empty                      # -- Begin function spec_empty
	.p2align	4, 0x90
	.type	spec_empty,@function
spec_empty:                             # @spec_empty
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end22:
	.size	spec_empty, .Lfunc_end22-spec_empty
	.cfi_endproc
                                        # -- End function
	.globl	spec_initbufs                   # -- Begin function spec_initbufs
	.p2align	4, 0x90
	.type	spec_initbufs,@function
spec_initbufs:                          # @spec_initbufs
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end23:
	.size	spec_initbufs, .Lfunc_end23-spec_initbufs
	.cfi_endproc
                                        # -- End function
	.globl	spec_compress                   # -- Begin function spec_compress
	.p2align	4, 0x90
	.type	spec_compress,@function
spec_compress:                          # @spec_compress
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	spec_fd(%rip), %rax
	movslq	%edi, %rdi
	leaq	(,%rdi,8), %rcx
	leaq	(%rcx,%rcx,4), %rbx
	movl	24(%rax,%rbx), %ebp
	movslq	%esi, %rsi
	leaq	(,%rsi,8), %rcx
	leaq	(%rcx,%rcx,4), %r14
	movl	24(%rax,%r14), %r15d
	movl	$1, 24(%rax,%r14)
	movq	spec_fd(%rip), %rax
	movl	$1, 24(%rax,%rbx)
                                        # kill: def $edi killed $edi killed $rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	compressStream@PLT
	movq	spec_fd(%rip), %rax
	movl	%ebp, 24(%rax,%rbx)
	movq	spec_fd(%rip), %rax
	movl	%r15d, 24(%rax,%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end24:
	.size	spec_compress, .Lfunc_end24-spec_compress
	.cfi_endproc
                                        # -- End function
	.globl	debug_time                      # -- Begin function debug_time
	.p2align	4, 0x90
	.type	debug_time,@function
debug_time:                             # @debug_time
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end25:
	.size	debug_time, .Lfunc_end25-debug_time
	.cfi_endproc
                                        # -- End function
	.globl	sum_str_to_hex                  # -- Begin function sum_str_to_hex
	.p2align	4, 0x90
	.type	sum_str_to_hex,@function
sum_str_to_hex:                         # @sum_str_to_hex
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	movslq	%esi, %rdi
	shrq	$3, %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB26_11
# %bb.1:                                # %for.cond.preheader
	movq	%rax, %r15
	cmpl	$8, %ebx
	jl	.LBB26_10
# %bb.2:                                # %for.body.preheader
	shrl	$3, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB26_3
	.p2align	4, 0x90
.LBB26_8:                               # %if.else.i29
                                        #   in Loop: Header=BB26_3 Depth=1
	addb	$-48, %bpl
.LBB26_9:                               # %hex_char_to_num.exit37
                                        #   in Loop: Header=BB26_3 Depth=1
	shlb	$4, %r13b
	orb	%bpl, %r13b
	movb	%r13b, (%r15,%r12)
	incq	%r12
	cmpq	%r12, %rbx
	je	.LBB26_10
.LBB26_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsbq	(%r14,%r12,2), %r13
	cmpq	$58, %r13
	jl	.LBB26_5
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB26_3 Depth=1
	callq	__ctype_tolower_loc@PLT
	movq	(%rax), %rax
	movzbl	(%rax,%r13,4), %r13d
	addb	$-87, %r13b
	movsbq	1(%r14,%r12,2), %rbp
	cmpq	$58, %rbp
	jl	.LBB26_8
	jmp	.LBB26_7
	.p2align	4, 0x90
.LBB26_5:                               # %if.else.i
                                        #   in Loop: Header=BB26_3 Depth=1
	addb	$-48, %r13b
	movsbq	1(%r14,%r12,2), %rbp
	cmpq	$58, %rbp
	jl	.LBB26_8
.LBB26_7:                               # %if.then.i32
                                        #   in Loop: Header=BB26_3 Depth=1
	callq	__ctype_tolower_loc@PLT
	movq	(%rax), %rax
	movzbl	(%rax,%rbp,4), %ebp
	addb	$-87, %bpl
	jmp	.LBB26_9
.LBB26_10:                              # %for.end
	movq	%r15, %rax
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
.LBB26_11:                              # %if.then
	.cfi_def_cfa_offset 64
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leal	7(%rbx), %edx
	testl	%ebx, %ebx
	cmovnsl	%ebx, %edx
	sarl	$3, %edx
	movl	$.L.str.75, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end26:
	.size	sum_str_to_hex, .Lfunc_end26-sum_str_to_hex
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_alloc_fds              # -- Begin function spec_mem_alloc_fds
	.p2align	4, 0x90
	.type	spec_mem_alloc_fds,@function
spec_mem_alloc_fds:                     # @spec_mem_alloc_fds
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	cmpl	$4, dbglvl(%rip)
	jl	.LBB27_2
# %bb.1:                                # %if.then
	cmpl	$3, %ebx
	movl	$.L.str.78, %eax
	movl	$.L.str.79, %esi
	cmoveq	%rax, %rsi
	movl	$.L.str.77, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB27_2:                               # %if.end
	leal	1(%rbx), %eax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rsi
	movl	$1, %edi
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB27_3
# %bb.4:                                # %if.end8
	cmpl	$5, dbglvl(%rip)
	jl	.LBB27_7
# %bb.5:                                # %if.then14
	movl	$.L.str.81, %edi
	movl	%ebx, %esi
	movq	%rax, %rdx
	movq	%rax, %rbx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.LBB27_6:                               # %cleanup
	movq	%rbx, %rax
.LBB27_7:                               # %cleanup
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB27_3:                               # %if.then6
	.cfi_def_cfa_offset 16
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movl	$.L.str.80, %edi
	movl	$52, %esi
	movl	$1, %edx
	movq	%rax, %rbx
	callq	fwrite@PLT
	jmp	.LBB27_6
.Lfunc_end27:
	.size	spec_mem_alloc_fds, .Lfunc_end27-spec_mem_alloc_fds
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_free_fds               # -- Begin function spec_mem_free_fds
	.p2align	4, 0x90
	.type	spec_mem_free_fds,@function
spec_mem_free_fds:                      # @spec_mem_free_fds
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpl	$4, dbglvl(%rip)
	jl	.LBB28_3
# %bb.1:                                # %if.end
	cmpq	%rbx, spec_fd(%rip)
	movl	$.L.str.83, %eax
	movl	$.L.str.79, %esi
	cmoveq	%rax, %rsi
	movl	$.L.str.82, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	callq	fflush@PLT
	cmpl	$5, dbglvl(%rip)
	jl	.LBB28_3
# %bb.2:                                # %if.then4
	movl	$.L.str.84, %edi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	xorl	%eax, %eax
	callq	printf@PLT
	movq	(%r14), %rdi
	callq	fflush@PLT
.LBB28_3:                               # %if.end7
	testq	%rbx, %rbx
	sete	%al
	testl	%ebp, %ebp
	sete	%cl
	orb	%al, %cl
	jne	.LBB28_8
# %bb.4:                                # %for.body.preheader
	movl	%ebp, %eax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %r14
	xorl	%r15d, %r15d
	jmp	.LBB28_5
	.p2align	4, 0x90
.LBB28_7:                               # %for.inc
                                        #   in Loop: Header=BB28_5 Depth=1
	addq	$40, %r15
	cmpq	%r15, %r14
	je	.LBB28_8
.LBB28_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbx,%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB28_7
# %bb.6:                                # %if.then12
                                        #   in Loop: Header=BB28_5 Depth=1
	callq	free@PLT
	movq	$0, 32(%rbx,%r15)
	jmp	.LBB28_7
.LBB28_8:                               # %if.end20
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end28:
	.size	spec_mem_free_fds, .Lfunc_end28-spec_mem_free_fds
	.cfi_endproc
                                        # -- End function
	.type	dbglvl,@object                  # @dbglvl
	.data
	.globl	dbglvl
	.p2align	2, 0x0
dbglvl:
	.long	3                               # 0x3
	.size	dbglvl, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"spec_mem_init(fds=0x%p, fd_limit=%u, touch_all=%d)\n"
	.size	.L.str, 52

	.type	spec_fd,@object                 # @spec_fd
	.bss
	.globl	spec_fd
	.p2align	3, 0x0
spec_fd:
	.quad	0
	.size	spec_fd, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"spec_mem_init: Overflow in requested size (%ld) for fd %d\n"
	.size	.L.str.1, 59

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"spec_mem_init: Error mallocing %ld bytes for fd %d@%p!\n"
	.size	.L.str.2, 56

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" fd[%d] limit is %ld bytes (%ld bytes allocated)\n"
	.size	.L.str.3, 50

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"spec_mem_sum: Only SHA-512 is available\n"
	.size	.L.str.4, 41

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"spec_mem_load: couldn't allocate %d chars for SHA-%d sum\n"
	.size	.L.str.5, 58

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"spec_mem_load: in-mem fd tmpfd %d@%p is out of range: < 0 || >= fd_limit %u\n"
	.size	.L.str.6, 77

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"spec_mem_load: in-mem fd num %d@%p is out of range: < 0 || >= fd_limit %u\n"
	.size	.L.str.7, 75

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Can't open file %s: %s\n"
	.size	.L.str.8, 24

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"spec_mem_load"
	.size	.L.str.9, 14

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Error reading from %s: %s\n"
	.size	.L.str.10, 27

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Compressed size: %ld; Uncompressed size: %ld\n"
	.size	.L.str.11, 46

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Computed SHA-%d sum for decompressed input did not match expected\n"
	.size	.L.str.12, 67

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"  Generated: "
	.size	.L.str.13, 14

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\n   Expected: "
	.size	.L.str.14, 15

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"SHA-%d of decompressed data compared successfully!\n"
	.size	.L.str.16, 52

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Decompressed data too large; truncating to requested size %ld\n"
	.size	.L.str.17, 63

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Duplicating %ld bytes\n"
	.size	.L.str.18, 23

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"SHA-%d of input file: "
	.size	.L.str.19, 23

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"spec_mem_read: %d@%p, %p, %ld = "
	.size	.L.str.20, 33

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"spec_mem_read: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.21, 61

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"spec_mem_read(%p, %u, %d, %p, %ld) => EBADF\n"
	.size	.L.str.22, 45

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"pos (%ld) => len (%ld); returning EOF (0)\n"
	.size	.L.str.23, 43

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%d\n"
	.size	.L.str.24, 4

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"spec_mem_read: new pos for fd %d@%p is %ld\n"
	.size	.L.str.25, 44

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"spec_mem_fread(%p, %u, %p, (%ld x %d) fd %d) ="
	.size	.L.str.26, 47

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"spec_mem_fread: fd=%d@%p out of range: < 0 || > fd_limit %d!\n"
	.size	.L.str.27, 62

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"spec_mem_fread: fd=%d@%p is not open\n"
	.size	.L.str.28, 38

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"%ld\n"
	.size	.L.str.30, 5

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"spec_mem_fread: new pos for fd %d@%p is %ld\n"
	.size	.L.str.31, 45

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"spec_mem_getc(%p, %u, %d) = "
	.size	.L.str.32, 29

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"spec_mem_getc: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.33, 61

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"spec_mem_getc: fd=%d@%p is not open\n"
	.size	.L.str.34, 37

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"spec_mem_getc: new pos for fd %d@%p is %ld\n"
	.size	.L.str.35, 44

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"spec_mem_ungetc(%p, %u, 0x%02x, %d) = "
	.size	.L.str.36, 39

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"spec_mem_ungetc: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.37, 63

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"spec_mem_ungetc: fd=%d@%p is not open\n"
	.size	.L.str.38, 39

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"spec_mem_ungetc: pos %ld <= 0\n"
	.size	.L.str.39, 31

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"spec_mem_ungetc: can't unget something that wasn't what was in the buffer!\n"
	.size	.L.str.40, 76

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"spec_mem_ungetc: new pos for fd %d@%p is %ld\n"
	.size	.L.str.41, 46

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"spec_mem_lseek: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.42, 62

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"spec_mem_lseek(%p, %u, %d, %ld, %d) => EBADF\n"
	.size	.L.str.43, 46

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"spec_mem_lseek(%p, %u, fd=%d, offset=%ld, whence=0x%x): cur pos (%ld) => new pos "
	.size	.L.str.44, 82

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"(%ld) (WHENCE WAS BAD): EINVAL\n"
	.size	.L.str.45, 32

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"(%ld) (NEW POS (%ld) WAS < 0): EINVAL\n"
	.size	.L.str.46, 39

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"(%ld)\n"
	.size	.L.str.47, 7

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"spec_rewind(%p, %u, %d) called\n"
	.size	.L.str.48, 32

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"spec_mem_reset(%p, %u, %d) called\n"
	.size	.L.str.49, 35

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"spec_mem_reset: new pos for fd %d@%p is %ld\n"
	.size	.L.str.50, 45

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"spec_get_length(%p, %u, %d): file not open!\n"
	.size	.L.str.51, 45

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"spec_mem_get_length(%p, %u, %d) => %ld\n"
	.size	.L.str.52, 40

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"spec_mem_fopen(%p, %u, '%s', '%s') = %d\n"
	.size	.L.str.53, 41

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"spec_mem_open(%p, %u, '%s', 0x%02x) = %d\n"
	.size	.L.str.54, 42

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"spec_mem_write(fds=0x%p, fd_limit=%u, fd=%d, buf=0x%p, size=%ld)\n"
	.size	.L.str.55, 66

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"spec_mem_write: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.56, 62

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"spec_mem_write(%p, %u, %d, %p, %ld) => EBADF\n"
	.size	.L.str.57, 46

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"spec_mem_write"
	.size	.L.str.58, 15

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"  spec_mem_write returns %ld (len=%ld pos=%ld limit=%ld)\n"
	.size	.L.str.59, 58

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"spec_mem_fwrite(fds=0x%p, fd_limit=%u, buf=0x%p, size=%ld, num=%d, fd=%d)\n"
	.size	.L.str.60, 75

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"spec_mem_fwrite: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.61, 63

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"spec_mem_fwrite: fd=%d@%p is not open\n"
	.size	.L.str.62, 39

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"spec_mem_fwrite"
	.size	.L.str.63, 16

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"  spec_mem_fwrite returns %d (len=%ld pos=%ld limit=%ld)\n"
	.size	.L.str.64, 58

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"spec_putc(fds=0x%p, fd_limit=%u, ch=0x%x, fd=%d) = "
	.size	.L.str.65, 52

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"spec_mem_putc: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.66, 61

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"spec_mem_putc: fd=%d@%p is not open\n"
	.size	.L.str.67, 37

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"%x\n"
	.size	.L.str.68, 4

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"spec_mem_putc: new pos for fd %d@%p is %ld\n"
	.size	.L.str.69, 44

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"spec_feof: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.70, 57

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"spec_mem_feof(fds=0x%p, fd_limit=%u, fd=%d) = %d (len = %ld; pos = %ld; limit = %ld)\n"
	.size	.L.str.71, 86

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"spec_mem_close: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.72, 62

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"spec_mem_close(%p, %u, %d) => EBADF\n"
	.size	.L.str.73, 37

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"%02x"
	.size	.L.str.74, 5

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"sum_str_to_hex: couldn't allocate %d chars for hash\n"
	.size	.L.str.75, 53

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Hash mismatch at %d: '%02x' (expected) != '%02x' (generated)\n"
	.size	.L.str.76, 62

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"spec_mem_alloc_fds(%s)\n"
	.size	.L.str.77, 24

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"MAX_SPEC_FD"
	.size	.L.str.78, 12

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"<variable>"
	.size	.L.str.79, 11

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"Error mallocing space for list of spec_fd_t structs\n"
	.size	.L.str.80, 53

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"spec_mem_alloc_fds(%u) => %p\n"
	.size	.L.str.81, 30

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"spec_mem_free_fds(%s)\n"
	.size	.L.str.82, 23

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"spec_fd"
	.size	.L.str.83, 8

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"  +-> fds=%p fd_limit=%u\n"
	.size	.L.str.84, 26

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"%s: Error growing buffer for fd %d@%p: %s\n"
	.size	.L.str.85, 43

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"  grew buffer for fd%d@0x%p to %ld\n"
	.size	.L.str.86, 36

	.type	.Lstr.87,@object                # @str.87
.Lstr.87:
	.asciz	"EOF"
	.size	.Lstr.87, 4

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
