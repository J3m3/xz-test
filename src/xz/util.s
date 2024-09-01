	.text
	.file	"util.c"
	.globl	xrealloc                        # -- Begin function xrealloc
	.p2align	4, 0x90
	.type	xrealloc,@function
xrealloc:                               # @xrealloc
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
	movq	%rdi, %rbx
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:                                # %if.then
	.cfi_def_cfa_offset 32
	movq	%rax, %r14
	callq	__errno_location@PLT
	movl	(%rax), %ebp
	movq	%rbx, %rdi
	callq	free@PLT
	movl	%ebp, %edi
	callq	strerror@PLT
	movl	$.L.str, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	xrealloc, .Lfunc_end0-xrealloc
	.cfi_endproc
                                        # -- End function
	.globl	xstrdup                         # -- Begin function xstrdup
	.p2align	4, 0x90
	.type	xstrdup,@function
xstrdup:                                # @xstrdup
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
	movq	%rdi, %rbx
	callq	strlen@PLT
	movq	%rax, %r14
	incq	%r14
	movq	%r14, %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB1_2
# %bb.1:                                # %if.then.i
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	$.L.str, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.LBB1_2:                                # %xrealloc.exit
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	memcpy@PLT                      # TAILCALL
.Lfunc_end1:
	.size	xstrdup, .Lfunc_end1-xstrdup
	.cfi_endproc
                                        # -- End function
	.globl	str_to_uint64                   # -- Begin function str_to_uint64
	.p2align	4, 0x90
	.type	str_to_uint64,@function
str_to_uint64:                          # @str_to_uint64
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
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
	jmp	.LBB2_1
	.p2align	4, 0x90
.LBB2_3:                                # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	incq	%r13
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %ebp
	cmpl	$32, %ebp
	je	.LBB2_3
# %bb.2:                                # %while.cond
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$9, %ebp
	je	.LBB2_3
# %bb.4:                                # %while.end
	movl	$.L.str.1, %esi
	movq	%r13, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB2_5
# %bb.6:                                # %if.end
	addb	$-58, %bpl
	cmpb	$-11, %bpl
	ja	.LBB2_8
# %bb.7:                                # %if.then13
	movl	$.L.str.2, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.LBB2_8:                                # %do.body.preheader
	xorl	%r12d, %r12d
	movabsq	$1844674407370955161, %rax      # imm = 0x1999999999999999
	.p2align	4, 0x90
.LBB2_9:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %r12
	ja	.LBB2_34
# %bb.10:                               # %if.end18
                                        #   in Loop: Header=BB2_9 Depth=1
	addq	%r12, %r12
	leaq	(%r12,%r12,4), %rcx
	movsbl	(%r13), %r12d
	addl	$-48, %r12d
	addq	%rcx, %r12
	jb	.LBB2_34
# %bb.11:                               # %do.cond
                                        #   in Loop: Header=BB2_9 Depth=1
	movzbl	1(%r13), %ecx
	incq	%r13
	leal	-48(%rcx), %edx
	cmpb	$10, %dl
	jb	.LBB2_9
# %bb.12:                               # %do.end
	leal	-71(%rcx), %eax
	cmpl	$38, %eax
	ja	.LBB2_13
# %bb.15:                               # %do.end
	movabsq	$4294967297, %rdx               # imm = 0x100000001
	btq	%rax, %rdx
	jb	.LBB2_20
# %bb.16:                               # %do.end
	movabsq	$68719476752, %rdx              # imm = 0x1000000010
	btq	%rax, %rdx
	jb	.LBB2_17
# %bb.18:                               # %do.end
	movabsq	$274877907008, %rdx             # imm = 0x4000000040
	btq	%rax, %rdx
	jae	.LBB2_13
# %bb.19:                               # %if.then54
	movl	$1048576, %ebp                  # imm = 0x100000
	jmp	.LBB2_21
.LBB2_5:
	movq	%rbx, %r12
	jmp	.LBB2_35
.LBB2_17:
	movl	$1024, %ebp                     # imm = 0x400
	jmp	.LBB2_21
.LBB2_13:                               # %do.end
	testl	%ecx, %ecx
	je	.LBB2_33
# %bb.14:                               # %if.end66.fold.split
	movb	$1, %al
	xorl	%ebp, %ebp
	jmp	.LBB2_22
.LBB2_20:                               # %if.then63
	movl	$1073741824, %ebp               # imm = 0x40000000
.LBB2_21:                               # %if.end66
	xorl	%eax, %eax
.LBB2_22:                               # %if.end66
	movzbl	1(%r13), %ecx
	testl	%ecx, %ecx
	je	.LBB2_29
# %bb.23:                               # %if.end66
	cmpl	$66, %ecx
	je	.LBB2_28
# %bb.24:                               # %if.end66
	cmpl	$105, %ecx
	jne	.LBB2_30
# %bb.25:                               # %land.lhs.true.tail
	cmpb	$0, 2(%r13)
	je	.LBB2_29
# %bb.26:                               # %sub_1152
	cmpb	$66, 2(%r13)
	jne	.LBB2_30
# %bb.27:                               # %land.lhs.true74.tail
	cmpb	$0, 3(%r13)
	setne	%cl
	orb	%al, %cl
	jne	.LBB2_30
	jmp	.LBB2_31
.LBB2_29:                               # %if.end83
	testb	%al, %al
	je	.LBB2_31
.LBB2_30:                               # %if.then86
	xorl	%ebp, %ebp
	movl	$.L.str.6, %esi
	movl	$1, %edi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	message@PLT
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.LBB2_31:                               # %if.end87
	movq	%rbp, %rax
	mulq	%r12
	jo	.LBB2_34
# %bb.32:
	imulq	%rbp, %r12
.LBB2_33:                               # %if.end96
	cmpq	%r14, %r12
	setae	%al
	cmpq	%rbx, %r12
	setbe	%cl
	testb	%cl, %al
	jne	.LBB2_35
.LBB2_34:                               # %error
	xorl	%r12d, %r12d
	movl	$.L.str.8, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	message_fatal@PLT
.LBB2_35:                               # %cleanup104
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
.LBB2_28:                               # %land.lhs.true78.tail
	.cfi_def_cfa_offset 64
	cmpb	$0, 2(%r13)
	setne	%cl
	orb	%cl, %al
	jne	.LBB2_30
	jmp	.LBB2_31
.Lfunc_end2:
	.size	str_to_uint64, .Lfunc_end2-str_to_uint64
	.cfi_endproc
                                        # -- End function
	.globl	round_up_to_mib                 # -- Begin function round_up_to_mib
	.p2align	4, 0x90
	.type	round_up_to_mib,@function
round_up_to_mib:                        # @round_up_to_mib
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rax
	shrq	$20, %rax
	andl	$1048575, %edi                  # imm = 0xFFFFF
	cmpq	$1, %rdi
	sbbq	$-1, %rax
	retq
.Lfunc_end3:
	.size	round_up_to_mib, .Lfunc_end3-round_up_to_mib
	.cfi_endproc
                                        # -- End function
	.globl	uint64_to_str                   # -- Begin function uint64_to_str
	.p2align	4, 0x90
	.type	uint64_to_str,@function
uint64_to_str:                          # @uint64_to_str
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rcx
	movl	%esi, %eax
	shlq	$7, %rax
	leaq	bufs(%rax), %rbx
	movl	$128, %esi
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	uint64_to_str, .Lfunc_end4-uint64_to_str
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function uint64_to_nicestr
.LCPI5_0:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI5_1:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_2:
	.quad	0x3f50000000000000              # double 9.765625E-4
.LCPI5_3:
	.quad	0x40c387f333333333              # double 9999.8999999999996
	.text
	.globl	uint64_to_nicestr
	.p2align	4, 0x90
	.type	uint64_to_nicestr,@function
uint64_to_nicestr:                      # @uint64_to_nicestr
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdi, %rbx
	movl	%r8d, %eax
	shlq	$7, %rax
	leaq	bufs(%rax), %r14
	movq	%r14, 16(%rsp)
	movq	$128, 8(%rsp)
	testl	%esi, %esi
	setne	%al
	cmpq	$10000, %rdi                    # imm = 0x2710
	setae	%cl
	orb	%al, %cl
	testl	%edx, %edx
	setne	%al
	testb	%al, %cl
	jne	.LBB5_2
# %bb.1:                                # %if.then
	xorl	%r15d, %r15d
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rsi
	movl	$.L.str.10, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	my_snprintf
	jmp	.LBB5_8
.LBB5_2:                                # %if.else
	movq	%rbx, %xmm1
	punpckldq	.LCPI5_0(%rip), %xmm1   # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI5_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movl	$1, %r15d
	movsd	.LCPI5_2(%rip), %xmm1           # xmm1 = [9.765625E-4,0.0E+0]
	movsd	.LCPI5_3(%rip), %xmm2           # xmm2 = [9.9998999999999996E+3,0.0E+0]
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_6:                                # %do.body.backedge
                                        #   in Loop: Header=BB5_3 Depth=1
	incq	%r15
.LBB5_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	mulsd	%xmm1, %xmm0
	cmpl	%esi, %r15d
	jb	.LBB5_6
# %bb.4:                                # %lor.rhs
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	%edx, %r15d
	jae	.LBB5_7
# %bb.5:                                # %lor.rhs
                                        #   in Loop: Header=BB5_3 Depth=1
	ucomisd	%xmm2, %xmm0
	ja	.LBB5_6
.LBB5_7:                                # %do.end
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rsi
	movl	$.L.str.11, %edx
	movb	$1, %al
	callq	my_snprintf
.LBB5_8:                                # %if.end
	leaq	uint64_to_nicestr.suffix(,%r15,4), %rcx
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rsi
	movl	$.L.str.12, %edx
	xorl	%eax, %eax
	callq	my_snprintf
	cmpq	$10000, %rbx                    # imm = 0x2710
	setb	%al
	xorb	$1, %bpl
	orb	%al, %bpl
	jne	.LBB5_10
# %bb.9:                                # %if.then17
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rsi
	movl	$.L.str.13, %edx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	snprintf@PLT
.LBB5_10:                               # %if.end18
	movq	%r14, %rax
	addq	$24, %rsp
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
.Lfunc_end5:
	.size	uint64_to_nicestr, .Lfunc_end5-uint64_to_nicestr
	.cfi_endproc
                                        # -- End function
	.globl	my_snprintf                     # -- Begin function my_snprintf
	.p2align	4, 0x90
	.type	my_snprintf,@function
my_snprintf:                            # @my_snprintf
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$216, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.LBB6_2
# %bb.1:                                # %entry
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.LBB6_2:                                # %entry
	leaq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 8(%rsp)
	movabsq	$206158430232, %rax             # imm = 0x3000000018
	movq	%rax, (%rsp)
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movq	%rsp, %rcx
	callq	vsnprintf@PLT
	testl	%eax, %eax
	js	.LBB6_6
# %bb.3:                                # %lor.lhs.false
	movl	%eax, %ecx
	cmpq	%rcx, (%rbx)
	jbe	.LBB6_6
# %bb.4:                                # %if.else
	addq	%rcx, (%r14)
	movq	(%rbx), %rax
	subq	%rcx, %rax
	jmp	.LBB6_7
.LBB6_6:
	xorl	%eax, %eax
.LBB6_7:                                # %if.end
	movq	%rax, (%rbx)
	addq	$216, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	my_snprintf, .Lfunc_end6-my_snprintf
	.cfi_endproc
                                        # -- End function
	.globl	is_empty_filename               # -- Begin function is_empty_filename
	.p2align	4, 0x90
	.type	is_empty_filename,@function
is_empty_filename:                      # @is_empty_filename
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movzbl	(%rdi), %ebx
	testb	%bl, %bl
	je	.LBB7_1
# %bb.2:                                # %return
	testb	%bl, %bl
	sete	%al
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB7_1:                                # %if.then
	.cfi_def_cfa_offset 16
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	message_error@PLT
	testb	%bl, %bl
	sete	%al
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	is_empty_filename, .Lfunc_end7-is_empty_filename
	.cfi_endproc
                                        # -- End function
	.globl	is_tty_stdin                    # -- Begin function is_tty_stdin
	.p2align	4, 0x90
	.type	is_tty_stdin,@function
is_tty_stdin:                           # @is_tty_stdin
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	is_tty_stdin, .Lfunc_end8-is_tty_stdin
	.cfi_endproc
                                        # -- End function
	.globl	is_tty_stdout                   # -- Begin function is_tty_stdout
	.p2align	4, 0x90
	.type	is_tty_stdout,@function
is_tty_stdout:                          # @is_tty_stdout
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	is_tty_stdout, .Lfunc_end9-is_tty_stdout
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"max"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s: Value is not a non-negative decimal integer"
	.size	.L.str.2, 48

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s: Invalid multiplier suffix"
	.size	.L.str.6, 30

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Valid suffixes are `KiB' (2^10), `MiB' (2^20), and `GiB' (2^30)."
	.size	.L.str.7, 65

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Value of the option `%s' must be in the range [%lu, %lu]"
	.size	.L.str.8, 57

	.type	bufs,@object                    # @bufs
	.local	bufs
	.comm	bufs,512,16
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%lu"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%u"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%.1f"
	.size	.L.str.11, 5

	.type	uint64_to_nicestr.suffix,@object # @uint64_to_nicestr.suffix
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
uint64_to_nicestr.suffix:
	.asciz	"B\000\000"
	.asciz	"KiB"
	.asciz	"MiB"
	.asciz	"GiB"
	.asciz	"TiB"
	.size	uint64_to_nicestr.suffix, 20

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	" %s"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" (%lu B)"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Empty filename, skipping"
	.size	.L.str.14, 25

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
