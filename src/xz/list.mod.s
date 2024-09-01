	.text
	.file	"list.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function list_totals
.LCPI0_0:
	.zero	16,45
.LCPI0_1:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_2:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_3:
	.quad	0x4023ff7ced916873              # double 9.9990000000000005
	.text
	.globl	list_totals
	.p2align	4, 0x90
	.type	list_totals,@function
list_totals:                            # @list_totals
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
	subq	$1104, %rsp                     # imm = 0x450
	.cfi_def_cfa_offset 1152
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	opt_robot@GOTPCREL(%rip), %rax
	cmpb	$1, (%rax)
	jne	.LBB0_7
# %bb.1:                                # %if.then
	movl	totals.7(%rip), %esi
	leaq	80(%rsp), %rbx
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	get_check_names
	movq	totals.1(%rip), %rsi
	movq	totals.2(%rip), %rdx
	movq	totals.3(%rip), %rcx
	movq	totals.4(%rip), %r8
	movl	$.L.str.10, %r9d
	testq	%r8, %r8
	je	.LBB0_4
# %bb.2:                                # %if.end.i.i
	movq	%rcx, %xmm1
	movq	.LCPI0_1(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI0_2(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r8, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	ucomisd	.LCPI0_3(%rip), %xmm0
	ja	.LBB0_4
# %bb.3:                                # %if.end5.i.i
	movl	$get_ratio.buf, %edi
	movq	%rsi, %r14
	movl	$16, %esi
	movq	%rdx, %r15
	movl	$.L.str.11, %edx
	movb	$1, %al
	movq	%rcx, %r12
	movq	%r8, %r13
	callq	snprintf@PLT
	movl	$get_ratio.buf, %r9d
	movq	%r13, %r8
	movq	%r12, %rcx
	movq	%r15, %rdx
	movq	%r14, %rsi
.LBB0_4:                                # %get_ratio.exit.i
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	pushq	totals.0(%rip)
	.cfi_adjust_cfa_offset 8
	pushq	totals.5(%rip)
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	callq	message_verbosity_get@PLT
	cmpl	$4, %eax
	jb	.LBB0_6
# %bb.5:                                # %if.then.i
	movq	totals.6(%rip), %rsi
	movl	$.L.str.4, %eax
	movl	$.L.str.5, %edx
	cmpb	$0, totals.8(%rip)
	cmovneq	%rax, %rdx
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_6:                                # %print_totals_robot.exit
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	putc@PLT
	jmp	.LBB0_14
.LBB0_7:                                # %if.else
	cmpq	$2, totals.0(%rip)
	jb	.LBB0_14
# %bb.8:                                # %if.then1
	callq	message_verbosity_get@PLT
	cmpl	$2, %eax
	ja	.LBB0_13
# %bb.9:                                # %if.then3
	movapd	.LCPI0_0(%rip), %xmm0           # xmm0 = [45,45,45,45,45,45,45,45,45,45,45,45,45,45,45,45]
	movapd	%xmm0, 64(%rsp)
	movapd	%xmm0, 48(%rsp)
	movapd	%xmm0, 32(%rsp)
	movapd	%xmm0, 16(%rsp)
	movapd	%xmm0, (%rsp)
	movb	$0, 79(%rsp)
	movq	%rsp, %rdi
	callq	puts@PLT
	movl	totals.7(%rip), %esi
	leaq	80(%rsp), %rbx
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	get_check_names
	movq	totals.1(%rip), %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r14
	movq	totals.2(%rip), %rdi
	movl	$1, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r15
	movq	totals.3(%rip), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	callq	uint64_to_nicestr@PLT
	movq	%rax, %r12
	movq	totals.4(%rip), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	movl	$3, %r8d
	callq	uint64_to_nicestr@PLT
	movq	totals.4(%rip), %rcx
	movl	$.L.str.10, %r9d
	testq	%rcx, %rcx
	je	.LBB0_12
# %bb.10:                               # %if.end.i.i11
	movsd	totals.3(%rip), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI0_2(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%rcx, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	ucomisd	.LCPI0_3(%rip), %xmm0
	ja	.LBB0_12
# %bb.11:                               # %if.end5.i.i16
	movl	$get_ratio.buf, %edi
	movl	$16, %esi
	movl	$.L.str.11, %edx
	movq	%rax, %r13
	movb	$1, %al
	callq	snprintf@PLT
	movl	$get_ratio.buf, %r9d
	movq	%r13, %rax
.LBB0_12:                               # %print_totals_basic.exit
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.12, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	totals.0(%rip), %rdi
	cmpq	$1, %rdi
	movl	$.L.str.13, %eax
	movl	$.L.str.14, %ebx
	cmoveq	%rax, %rbx
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB0_14
.LBB0_13:                               # %if.else4
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	putc@PLT
	movl	$.L.str.15, %edi
	callq	puts@PLT
	movq	totals.0(%rip), %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movl	$.L.str.16, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	totals.1(%rip), %rdi
	movq	totals.2(%rip), %rsi
	movq	totals.3(%rip), %rdx
	movq	totals.4(%rip), %rcx
	movl	totals.7(%rip), %r8d
	movq	totals.5(%rip), %r9
	callq	print_adv_helper
	callq	message_verbosity_get@PLT
	cmpl	$4, %eax
	jb	.LBB0_14
# %bb.15:                               # %if.then.i25
	movq	totals.6(%rip), %rdi
	callq	round_up_to_mib@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movl	$.L.str.17, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.L.str.19, %eax
	movl	$.L.str.20, %esi
	cmpb	$0, totals.8(%rip)
	cmovneq	%rax, %rsi
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	addq	$1104, %rsp                     # imm = 0x450
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
	jmp	printf@PLT                      # TAILCALL
.LBB0_14:                               # %if.end6
	.cfi_def_cfa_offset 1152
	addq	$1104, %rsp                     # imm = 0x450
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
.Lfunc_end0:
	.size	list_totals, .Lfunc_end0-list_totals
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function list_file
.LCPI1_0:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_1:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_2:
	.quad	0x4023ff7ced916873              # double 9.9990000000000005
	.text
	.globl	list_file
	.p2align	4, 0x90
	.type	list_file,@function
list_file:                              # @list_file
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
	subq	$9208, %rsp                     # imm = 0x23F8
	.cfi_def_cfa_offset 9264
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	opt_format@GOTPCREL(%rip), %rax
	cmpl	$2, (%rax)
	jb	.LBB1_2
# %bb.1:                                # %if.then
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.LBB1_2:                                # %if.end
	movq	%rbx, %rdi
	callq	message_filename@PLT
	cmpq	stdin_filename@GOTPCREL(%rip), %rbx
	je	.LBB1_108
# %bb.3:                                # %if.end4
	movq	opt_stdout@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	opt_force@GOTPCREL(%rip), %rax
	movb	$1, (%rax)
	movq	%rbx, %rdi
	callq	io_open_src@PLT
	testq	%rax, %rax
	je	.LBB1_107
# %bb.4:                                # %if.end7
	movq	%rax, %rbx
	movups	.L__const.list_file.xfi+16(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movupd	.L__const.list_file.xfi(%rip), %xmm0
	movapd	%xmm0, 64(%rsp)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 224(%rsp)
	movapd	%xmm0, 208(%rsp)
	movapd	%xmm0, 192(%rsp)
	movapd	%xmm0, 176(%rsp)
	movapd	%xmm0, 160(%rsp)
	movapd	%xmm0, 144(%rsp)
	movapd	%xmm0, 128(%rsp)
	movapd	%xmm0, 112(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 32(%rsp)
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	16(%rbx), %edx
	movl	$3, %esi
	callq	spec_mem_get_length@PLT
	movq	%rax, %rbp
	xorl	%r14d, %r14d
	leaq	1008(%rsp), %r12
	leaq	648(%rsp), %r15
	xorl	%eax, %eax
.LBB1_5:                                # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_28 Depth 2
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	cmpq	$23, %rbp
	jle	.LBB1_6
# %bb.8:                                # %if.end6.preheader.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	%r14, (%rsp)                    # 8-byte Spill
	addq	$-12, %rbp
	xorl	%r14d, %r14d
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_9 Depth=2
	addq	$4, %r14
.LBB1_16:                               # %cleanup.i
                                        #   in Loop: Header=BB1_9 Depth=2
	cmpq	$16, %rbp
	movq	%rax, %rbp
	jl	.LBB1_6
.LBB1_9:                                # %if.end6.i
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$12, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rcx
	callq	io_pread@PLT
	testb	%al, %al
	jne	.LBB1_36
# %bb.10:                               # %if.end9.i
                                        #   in Loop: Header=BB1_9 Depth=2
	cmpl	$0, 1016(%rsp)
	jne	.LBB1_17
# %bb.11:                               # %do.body13.preheader.i
                                        #   in Loop: Header=BB1_9 Depth=2
	leaq	-4(%rbp), %rax
	cmpl	$0, 1012(%rsp)
	jne	.LBB1_12
# %bb.13:                               # %do.body13.1.i
                                        #   in Loop: Header=BB1_9 Depth=2
	leaq	-8(%rbp), %rcx
	cmpl	$0, 1008(%rsp)
	je	.LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_9 Depth=2
	addq	$8, %r14
	movq	%rax, %rbp
	movq	%rcx, %rax
	jmp	.LBB1_16
.LBB1_15:                               # %do.body13.2.i
                                        #   in Loop: Header=BB1_9 Depth=2
	addq	$12, %r14
	movq	%rbp, %rax
	addq	$-12, %rax
	movq	%rcx, %rbp
	jmp	.LBB1_16
.LBB1_17:                               # %while.end.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	lzma_stream_footer_decode@PLT
	testl	%eax, %eax
	jne	.LBB1_18
# %bb.19:                               # %if.end24.i
                                        #   in Loop: Header=BB1_5 Depth=1
	cmpl	$0, 648(%rsp)
	jne	.LBB1_20
# %bb.21:                               # %if.end29.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	656(%rsp), %r13
	leaq	12(%r13), %rax
	cmpq	%rax, %rbp
	jb	.LBB1_6
# %bb.22:                               # %if.end35.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$3, %edi
	callq	hardware_memlimit_get@PLT
	movq	%rax, %r15
	movq	8(%rsp), %rdi                   # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB1_23
# %bb.24:                               # %if.then39.i
                                        #   in Loop: Header=BB1_5 Depth=1
	callq	lzma_index_memused@PLT
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	subq	%rax, %r15
	jae	.LBB1_26
# %bb.25:                               # %if.then42.i
                                        #   in Loop: Header=BB1_5 Depth=1
	callq	message_bug@PLT
	jmp	.LBB1_26
.LBB1_23:                               #   in Loop: Header=BB1_5 Depth=1
	movq	$0, 24(%rsp)                    # 8-byte Folded Spill
.LBB1_26:                               # %if.end45.i
                                        #   in Loop: Header=BB1_5 Depth=1
	leaq	112(%rsp), %rdi
	leaq	32(%rsp), %rsi
	movq	%r15, %rdx
	callq	lzma_index_decoder@PLT
	testl	%eax, %eax
	jne	.LBB1_18
# %bb.27:                               #   in Loop: Header=BB1_5 Depth=1
	subq	%r13, %rbp
	.p2align	4, 0x90
.LBB1_28:                               # %do.body52.i
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$8192, %r13                     # imm = 0x2000
	movl	$8192, %edx                     # imm = 0x2000
	cmovbq	%r13, %rdx
	movq	%rdx, 120(%rsp)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rcx
	callq	io_pread@PLT
	testb	%al, %al
	jne	.LBB1_36
# %bb.29:                               # %if.end57.i
                                        #   in Loop: Header=BB1_28 Depth=2
	movq	120(%rsp), %rax
	addq	%rax, %rbp
	subq	%rax, %r13
	movq	%r12, 112(%rsp)
	leaq	112(%rsp), %rdi
	xorl	%esi, %esi
	callq	lzma_code@PLT
	testl	%eax, %eax
	je	.LBB1_28
# %bb.30:                               # %if.end57.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	%eax, %r15d
	cmpl	$10, %eax
	je	.LBB1_33
# %bb.31:                               # %if.end57.i
                                        #   in Loop: Header=BB1_5 Depth=1
	cmpl	$1, %r15d
	jne	.LBB1_34
# %bb.32:                               # %if.then68.i
                                        #   in Loop: Header=BB1_5 Depth=1
	orq	120(%rsp), %r13
	jne	.LBB1_33
# %bb.37:                               # %if.end91.i
                                        #   in Loop: Header=BB1_5 Depth=1
	subq	656(%rsp), %rbp
	addq	$-12, %rbp
	movq	32(%rsp), %rdi
	callq	lzma_index_total_size@PLT
	cmpq	%rax, %rbp
	jb	.LBB1_6
# %bb.38:                               # %if.end100.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	32(%rsp), %rdi
	callq	lzma_index_total_size@PLT
	subq	%rax, %rbp
	movl	$12, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rcx
	callq	io_pread@PLT
	testb	%al, %al
	leaq	648(%rsp), %r15
	jne	.LBB1_36
# %bb.39:                               # %if.end105.i
                                        #   in Loop: Header=BB1_5 Depth=1
	leaq	704(%rsp), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	lzma_stream_header_decode@PLT
	testl	%eax, %eax
	jne	.LBB1_18
# %bb.40:                               # %if.end112.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	lzma_stream_flags_compare@PLT
	testl	%eax, %eax
	jne	.LBB1_18
# %bb.41:                               # %if.end118.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	32(%rsp), %rdi
	movq	%r15, %rsi
	callq	lzma_index_stream_flags@PLT
	testl	%eax, %eax
	je	.LBB1_43
# %bb.42:                               # %if.then121.i
                                        #   in Loop: Header=BB1_5 Depth=1
	callq	message_bug@PLT
.LBB1_43:                               # %if.end122.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	32(%rsp), %rdi
	movq	%r14, %rsi
	callq	lzma_index_stream_padding@PLT
	testl	%eax, %eax
	je	.LBB1_45
# %bb.44:                               # %if.then125.i
                                        #   in Loop: Header=BB1_5 Depth=1
	callq	message_bug@PLT
.LBB1_45:                               # %if.end126.i
                                        #   in Loop: Header=BB1_5 Depth=1
	cmpq	$0, 8(%rsp)                     # 8-byte Folded Reload
	je	.LBB1_47
# %bb.46:                               # %if.then128.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	32(%rsp), %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	xorl	%edx, %edx
	callq	lzma_index_cat@PLT
	testl	%eax, %eax
	jne	.LBB1_18
.LBB1_47:                               # %do.cond144.i
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	32(%rsp), %rax
	movq	$0, 32(%rsp)
	movq	(%rsp), %rcx                    # 8-byte Reload
	addq	%r14, %rcx
	movq	%rcx, %r14
	testq	%rbp, %rbp
	jg	.LBB1_5
# %bb.48:                               # %if.then9
	movq	%r14, 72(%rsp)
	leaq	112(%rsp), %rdi
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	callq	lzma_end@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%rdi, 64(%rsp)
	movq	opt_robot@GOTPCREL(%rip), %rax
	cmpb	$1, (%rax)
	jne	.LBB1_71
# %bb.49:                               # %if.then10
	movq	%r14, (%rsp)                    # 8-byte Spill
	movq	%rdi, %r14
	callq	lzma_index_checks@PLT
	leaq	1008(%rsp), %rdi
	movl	%eax, %esi
	xorl	%edx, %edx
	callq	get_check_names
	movq	(%rbx), %rsi
	movl	$.L.str.29, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%r14, %rdi
	callq	lzma_index_stream_count@PLT
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%r14, %rdi
	callq	lzma_index_block_count@PLT
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	lzma_index_file_size@PLT
	movq	%rax, %r13
	movq	%r14, %rdi
	callq	lzma_index_uncompressed_size@PLT
	movq	%rax, %rbp
	movq	%r14, %rdi
	callq	lzma_index_file_size@PLT
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	lzma_index_uncompressed_size@PLT
	movl	$.L.str.10, %r14d
	testq	%rax, %rax
	je	.LBB1_52
# %bb.50:                               # %if.end.i.i
	movq	%r15, %xmm1
	movq	.LCPI1_0(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI1_1(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%rax, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	ucomisd	.LCPI1_2(%rip), %xmm0
	ja	.LBB1_52
# %bb.51:                               # %if.end5.i.i
	movl	$get_ratio.buf, %r14d
	movl	$get_ratio.buf, %edi
	movl	$16, %esi
	movl	$.L.str.11, %edx
	movb	$1, %al
	callq	snprintf@PLT
.LBB1_52:                               # %get_ratio.exit.i
	movl	$.L.str.30, %edi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	%r14, %r9
	xorl	%eax, %eax
	pushq	(%rsp)                          # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	leaq	1016(%rsp), %r10
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	callq	message_verbosity_get@PLT
	cmpl	$3, %eax
	jb	.LBB1_69
# %bb.53:                               # %if.then.i39
	leaq	704(%rsp), %r14
	movq	%r14, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	lzma_index_iter_init@PLT
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lzma_index_iter_next@PLT
	testb	%al, %al
	je	.LBB1_54
.LBB1_59:                               # %while.end.i40
	leaq	704(%rsp), %r14
	movq	%r14, %rdi
	callq	lzma_index_iter_rewind@PLT
	movq	%r14, %rdi
	movl	$2, %esi
	callq	lzma_index_iter_next@PLT
	testb	%al, %al
	je	.LBB1_60
.LBB1_69:                               # %if.end75.i
	callq	message_verbosity_get@PLT
	cmpl	$4, %eax
	jb	.LBB1_102
# %bb.70:                               # %if.then78.i
	movq	80(%rsp), %rsi
	movl	$.L.str.4, %eax
	movl	$.L.str.5, %edx
	cmpb	$0, 88(%rsp)
	cmovneq	%rax, %rdx
	movl	$.L.str.34, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB1_102
.LBB1_108:                              # %if.then3
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	addq	$9208, %rsp                     # imm = 0x23F8
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
	jmp	message_error@PLT               # TAILCALL
.LBB1_6:                                # %if.then.i
	.cfi_def_cfa_offset 9264
	movq	(%rbx), %r14
	movl	$9, %edi
.LBB1_7:                                # %parse_indexes.exit.thread
	callq	message_strm@PLT
	movl	$.L.str.28, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.LBB1_36:                               # %parse_indexes.exit.thread
	leaq	112(%rsp), %rdi
	callq	lzma_end@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	callq	lzma_index_end@PLT
	movq	32(%rsp), %rdi
.LBB1_106:                              # %if.end25
	xorl	%esi, %esi
	callq	lzma_index_end@PLT
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	io_close@PLT
.LBB1_107:                              # %return
	addq	$9208, %rsp                     # imm = 0x23F8
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
.LBB1_33:                               # %if.then76.thread.i.loopexit
	.cfi_def_cfa_offset 9264
	movl	$9, %r15d
.LBB1_34:                               # %if.then76.thread.i
	movq	(%rbx), %r14
	movl	%r15d, %edi
	callq	message_strm@PLT
	movl	$.L.str.28, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
	cmpl	$6, %r15d
	jne	.LBB1_36
# %bb.35:                               # %if.then83.i
	leaq	112(%rsp), %rdi
	callq	lzma_memusage@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	%rax, %rcx
	movq	$-1, %rsi
	cmovaeq	%rcx, %rsi
	movl	$1, %edi
	callq	message_mem_needed@PLT
	jmp	.LBB1_36
.LBB1_18:                               # %if.then21.i
	movq	(%rbx), %r14
	movl	%eax, %edi
	jmp	.LBB1_7
.LBB1_20:                               # %if.then26.i
	movq	(%rbx), %r14
	movl	$8, %edi
	jmp	.LBB1_7
.LBB1_71:                               # %if.else
	callq	message_verbosity_get@PLT
	cmpl	$2, %eax
	ja	.LBB1_78
# %bb.72:                               # %if.then14
	cmpb	$0, print_info_basic.headings_displayed(%rip)
	jne	.LBB1_74
# %bb.73:                               # %if.then.i46
	movb	$1, print_info_basic.headings_displayed(%rip)
	movl	$.L.str.38, %edi
	callq	puts@PLT
.LBB1_74:                               # %if.end.i48
	movq	8(%rsp), %r14                   # 8-byte Reload
	movq	%r14, %rdi
	callq	lzma_index_checks@PLT
	leaq	1008(%rsp), %rdi
	movl	%eax, %esi
	xorl	%edx, %edx
	callq	get_check_names
	movq	%r14, %rdi
	callq	lzma_index_stream_count@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	lzma_index_block_count@PLT
	movq	%rax, %rdi
	movl	$1, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r13
	movq	%r14, %rdi
	callq	lzma_index_file_size@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	callq	uint64_to_nicestr@PLT
	movq	%rax, %rbp
	movq	%r14, %rdi
	callq	lzma_index_uncompressed_size@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	movl	$3, %r8d
	callq	uint64_to_nicestr@PLT
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%r14, %rdi
	callq	lzma_index_file_size@PLT
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	lzma_index_uncompressed_size@PLT
	movl	$.L.str.10, %r14d
	testq	%rax, %rax
	je	.LBB1_77
# %bb.75:                               # %if.end.i.i54
	movq	%r15, %xmm1
	movq	.LCPI1_0(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI1_1(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%rax, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	ucomisd	.LCPI1_2(%rip), %xmm0
	ja	.LBB1_77
# %bb.76:                               # %if.end5.i.i59
	movl	$get_ratio.buf, %r14d
	movl	$get_ratio.buf, %edi
	movl	$16, %esi
	movl	$.L.str.11, %edx
	movb	$1, %al
	callq	snprintf@PLT
.LBB1_77:                               # %print_info_basic.exit
	movq	(%rbx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%r12, %rdi
	movl	$5, %esi
	callq	tuklib_mbstr_fw@PLT
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movq	%r13, %rdi
	movl	$7, %esi
	callq	tuklib_mbstr_fw@PLT
	movq	%r13, 104(%rsp)                 # 8-byte Spill
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	movq	%rbp, %rdi
	movl	$11, %esi
	callq	tuklib_mbstr_fw@PLT
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	%eax, %ebp
	movq	(%rsp), %r12                    # 8-byte Reload
	movq	%r12, %rdi
	movl	$11, %esi
	callq	tuklib_mbstr_fw@PLT
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%r14, %rdi
	movl	$5, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r13d
	leaq	1008(%rsp), %r15
	movq	%r15, %rdi
	movl	$7, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r10d
	movl	$.L.str.39, %edi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movl	60(%rsp), %ecx                  # 4-byte Reload
	movq	104(%rsp), %r8                  # 8-byte Reload
	movl	%ebp, %r9d
	xorl	%eax, %eax
	pushq	8(%rsp)                         # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	jmp	.LBB1_102
.LBB1_78:                               # %if.else17
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movq	%rbp, %rdi
	callq	lzma_index_stream_count@PLT
	movq	%r14, (%rsp)                    # 8-byte Spill
	movq	%rax, %r14
	movq	%rbp, %rdi
	callq	lzma_index_block_count@PLT
	movq	%rax, %r15
	movq	%rbp, %rdi
	callq	lzma_index_file_size@PLT
	movq	%rax, %r12
	movq	%rbp, %rdi
	callq	lzma_index_uncompressed_size@PLT
	movq	%rax, %r13
	movq	%rbp, %rdi
	callq	lzma_index_checks@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	movl	%eax, %r8d
	movq	(%rsp), %r9                     # 8-byte Reload
	callq	print_adv_helper
	movl	$.L.str.40, %edi
	callq	puts@PLT
	leaq	112(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	lzma_index_iter_init@PLT
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lzma_index_iter_next@PLT
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
	testb	%al, %al
	jne	.LBB1_87
# %bb.79:                               # %while.body.lr.ph.i91
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB1_80
.LBB1_85:                               # %if.end.i119
                                        #   in Loop: Header=BB1_80 Depth=1
	leaq	112(%rsp), %rdi
	movl	$1, %esi
	callq	lzma_index_iter_next@PLT
	testb	%al, %al
	jne	.LBB1_86
.LBB1_80:                               # %while.body.i99
                                        # =>This Inner Loop Header: Depth=1
	movq	144(%rsp), %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r15
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	152(%rsp), %rdi
	movl	$1, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r13
	movq	160(%rsp), %rdi
	movl	$2, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r12
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	168(%rsp), %rdi
	movl	$3, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r14
	movq	%r15, %rdi
	movl	$6, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %ebp
	movq	%r13, %rdi
	movl	$9, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r15d
	movq	%r12, %rdi
	movl	$15, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r12d
	movq	%r14, %rdi
	movl	$15, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.41, %edi
	movl	%ebp, %esi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	%r15d, %ecx
	movq	%r13, %r8
	movl	%r12d, %r9d
	xorl	%eax, %eax
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	48(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	176(%rsp), %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r13
	movq	184(%rsp), %rdi
	movl	$1, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r15
	movq	184(%rsp), %rax
	movl	$.L.str.10, %r12d
	testq	%rax, %rax
	je	.LBB1_83
# %bb.81:                               # %if.end.i.i106
                                        #   in Loop: Header=BB1_80 Depth=1
	movsd	176(%rsp), %xmm1                # xmm1 = mem[0],zero
	movsd	.LCPI1_0(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI1_1(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%rax, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	ucomisd	.LCPI1_2(%rip), %xmm0
	ja	.LBB1_83
# %bb.82:                               # %if.end5.i.i111
                                        #   in Loop: Header=BB1_80 Depth=1
	movl	$get_ratio.buf, %r12d
	movl	$get_ratio.buf, %edi
	movl	$16, %esi
	movl	$.L.str.11, %edx
	movb	$1, %al
	callq	snprintf@PLT
.LBB1_83:                               # %get_ratio.exit.i113
                                        #   in Loop: Header=BB1_80 Depth=1
	movq	%r12, (%rsp)                    # 8-byte Spill
	movq	112(%rsp), %rax
	movq	192(%rsp), %rdi
	movl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	leaq	check_names(,%rax,4), %rbp
	movl	$2, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r14
	movq	%r13, %rdi
	movl	$15, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movq	%r15, %rdi
	movl	$15, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movq	%r12, %rdi
	movl	$5, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r12d
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	tuklib_mbstr_fw@PLT
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%r14, %rdi
	movl	$7, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.42, %edi
	movl	32(%rsp), %esi                  # 4-byte Reload
	movq	%r13, %rdx
	movl	48(%rsp), %ecx                  # 4-byte Reload
	movq	%r15, %r8
	movl	%r12d, %r9d
	xorl	%eax, %eax
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	40(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	movq	112(%rsp), %rax
	movl	16(%rax), %edi
	callq	lzma_check_size@PLT
	cmpl	20(%rsp), %eax                  # 4-byte Folded Reload
	jbe	.LBB1_85
# %bb.84:                               # %if.then.i122
                                        #   in Loop: Header=BB1_80 Depth=1
	movq	112(%rsp), %rax
	movl	16(%rax), %edi
	callq	lzma_check_size@PLT
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	jmp	.LBB1_85
.LBB1_54:                               # %while.body.lr.ph.i
	leaq	704(%rsp), %r14
	jmp	.LBB1_55
.LBB1_58:                               # %get_ratio.exit104.i
                                        #   in Loop: Header=BB1_55 Depth=1
	movq	704(%rsp), %rax
	movl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	leaq	check_names(,%rax,4), %r10
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	pushq	784(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	%r14, %rdi
	movl	$1, %esi
	callq	lzma_index_iter_next@PLT
	testb	%al, %al
	jne	.LBB1_59
.LBB1_55:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	736(%rsp), %rsi
	movq	744(%rsp), %rdx
	movq	752(%rsp), %rcx
	movq	760(%rsp), %r8
	movq	768(%rsp), %r9
	movq	776(%rsp), %r15
	movl	$.L.str.10, %r12d
	testq	%r15, %r15
	je	.LBB1_58
# %bb.56:                               # %if.end.i96.i
                                        #   in Loop: Header=BB1_55 Depth=1
	movq	%r9, %xmm1
	movq	.LCPI1_0(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI1_1(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r15, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	ucomisd	.LCPI1_2(%rip), %xmm0
	ja	.LBB1_58
# %bb.57:                               # %if.end5.i101.i
                                        #   in Loop: Header=BB1_55 Depth=1
	movl	$get_ratio.buf, %r12d
	movl	$get_ratio.buf, %edi
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movl	$16, %esi
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movl	$.L.str.11, %edx
	movb	$1, %al
	movq	%rcx, %r14
	movq	%r8, %rbp
	movq	%r9, %r13
	callq	snprintf@PLT
	movq	%r13, %r9
	movq	%rbp, %r8
	movq	%r14, %rcx
	leaq	704(%rsp), %r14
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	jmp	.LBB1_58
.LBB1_60:                               # %while.body38.lr.ph.i
	leaq	704(%rsp), %r15
	movq	stdout@GOTPCREL(%rip), %rbp
	jmp	.LBB1_61
.LBB1_68:                               # %if.end71.i
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	(%rbp), %rsi
	movl	$10, %edi
	callq	putc@PLT
	movq	%r15, %rdi
	movl	$2, %esi
	callq	lzma_index_iter_next@PLT
	testb	%al, %al
	jne	.LBB1_69
.LBB1_61:                               # %while.body38.i
                                        # =>This Inner Loop Header: Depth=1
	callq	message_verbosity_get@PLT
	cmpl	$4, %eax
	jb	.LBB1_63
# %bb.62:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	112(%rsp), %rdx
	leaq	64(%rsp), %rcx
	callq	parse_details
	testb	%al, %al
	jne	.LBB1_105
.LBB1_63:                               # %if.end.i
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	736(%rsp), %rsi
	movq	824(%rsp), %rcx
	movq	848(%rsp), %rdx
	movq	832(%rsp), %r8
	movq	840(%rsp), %r9
	movq	888(%rsp), %r14
	movq	872(%rsp), %r12
	movl	$.L.str.10, %r13d
	testq	%r12, %r12
	je	.LBB1_66
# %bb.64:                               # %if.end.i106.i
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	%r14, %xmm1
	movq	.LCPI1_0(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI1_1(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r12, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	ucomisd	.LCPI1_2(%rip), %xmm0
	ja	.LBB1_66
# %bb.65:                               # %if.end5.i111.i
                                        #   in Loop: Header=BB1_61 Depth=1
	movl	$get_ratio.buf, %r13d
	movl	$get_ratio.buf, %edi
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movl	$16, %esi
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movl	$.L.str.11, %edx
	movb	$1, %al
	movq	%rcx, %rbp
	movq	%r8, %r15
	movq	%r9, 24(%rsp)                   # 8-byte Spill
	callq	snprintf@PLT
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	24(%rsp), %r9                   # 8-byte Reload
	movq	%r15, %r8
	leaq	704(%rsp), %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rbp, %rcx
	movq	stdout@GOTPCREL(%rip), %rbp
.LBB1_66:                               # %get_ratio.exit114.i
                                        #   in Loop: Header=BB1_61 Depth=1
	movq	704(%rsp), %rax
	movl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	leaq	check_names(,%rax,4), %r10
	movl	$.L.str.32, %edi
	xorl	%eax, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	callq	message_verbosity_get@PLT
	cmpl	$4, %eax
	jb	.LBB1_68
# %bb.67:                               # %if.then65.i
                                        #   in Loop: Header=BB1_61 Depth=1
	movl	112(%rsp), %edx
	movq	120(%rsp), %r8
	movq	128(%rsp), %r9
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.33, %edi
	movl	$check_value, %esi
	leaq	124(%rsp), %rcx
	xorl	%eax, %eax
	leaq	144(%rsp), %r10
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB1_68
.LBB1_86:                               # %while.end.loopexit.i
	movl	20(%rsp), %eax                  # 4-byte Reload
	addl	%eax, %eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
.LBB1_87:                               # %while.end.i74
	callq	message_verbosity_get@PLT
	movl	%eax, (%rsp)                    # 4-byte Spill
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	lzma_index_block_count@PLT
	testq	%rax, %rax
	je	.LBB1_100
# %bb.88:                               # %if.then79.i
	movl	20(%rsp), %ecx                  # 4-byte Reload
	cmpl	$9, %ecx
	movl	$8, %eax
	cmovael	%ecx, %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	$.L.str.43, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	cmpl	$4, (%rsp)                      # 4-byte Folded Reload
	jb	.LBB1_90
# %bb.89:                               # %if.then83.i88
	movq	48(%rsp), %rax                  # 8-byte Reload
	leal	-8(%rax), %esi
	movl	$.L.str.44, %edi
	movl	$.L.str.9, %edx
	xorl	%eax, %eax
	callq	printf@PLT
.LBB1_90:                               # %if.end85.i
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	putc@PLT
	leaq	112(%rsp), %r14
	movq	%r14, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	lzma_index_iter_init@PLT
	movq	%r14, %rdi
	jmp	.LBB1_91
.LBB1_99:                               # %if.end195.i
                                        #   in Loop: Header=BB1_91 Depth=1
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	putc@PLT
	leaq	112(%rsp), %rdi
.LBB1_91:                               # %if.end85.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %esi
	callq	lzma_index_iter_next@PLT
	testb	%al, %al
	jne	.LBB1_100
# %bb.92:                               # %while.body92.i
                                        #   in Loop: Header=BB1_91 Depth=1
	movl	$1, %ecx
	cmpl	$4, (%rsp)                      # 4-byte Folded Reload
	jb	.LBB1_94
# %bb.93:                               # %land.lhs.true.i87
                                        #   in Loop: Header=BB1_91 Depth=1
	movq	%rbx, %rdi
	leaq	112(%rsp), %rsi
	leaq	1008(%rsp), %rdx
	leaq	64(%rsp), %rcx
	callq	parse_details
	movl	$11, %ecx
	testb	%al, %al
	jne	.LBB1_105
.LBB1_94:                               # %if.end96.i
                                        #   in Loop: Header=BB1_91 Depth=1
	movl	%ecx, 8(%rsp)                   # 4-byte Spill
	movq	144(%rsp), %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r14
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	256(%rsp), %rdi
	movl	$1, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r12
	movq	240(%rsp), %rdi
	movl	$2, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r15
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	248(%rsp), %rdi
	movl	$3, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %rbp
	movq	%r14, %rdi
	movl	$6, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r13d
	movq	%r12, %rdi
	movl	$9, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r14d
	movq	%r15, %rdi
	movl	$15, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r15d
	movq	%rbp, %rdi
	movl	$15, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.41, %edi
	movl	%r13d, %esi
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movl	%r14d, %ecx
	movq	%r12, %r8
	movl	%r15d, %r9d
	xorl	%eax, %eax
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	64(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	296(%rsp), %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r14
	movq	280(%rsp), %rdi
	movl	$1, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r13
	movq	280(%rsp), %rax
	movl	$.L.str.10, %r15d
	testq	%rax, %rax
	je	.LBB1_97
# %bb.95:                               # %if.end.i254.i
                                        #   in Loop: Header=BB1_91 Depth=1
	movsd	296(%rsp), %xmm1                # xmm1 = mem[0],zero
	movsd	.LCPI1_0(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI1_1(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%rax, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	ucomisd	.LCPI1_2(%rip), %xmm0
	ja	.LBB1_97
# %bb.96:                               # %if.end5.i259.i
                                        #   in Loop: Header=BB1_91 Depth=1
	movl	$get_ratio.buf, %r15d
	movl	$get_ratio.buf, %edi
	movl	$16, %esi
	movl	$.L.str.11, %edx
	movb	$1, %al
	callq	snprintf@PLT
.LBB1_97:                               # %get_ratio.exit262.i
                                        #   in Loop: Header=BB1_91 Depth=1
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax
	movl	16(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	leaq	check_names(,%rax,4), %rbp
	movq	%r14, %rdi
	movl	$15, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movq	%r13, %rdi
	movl	$15, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r12d
	movq	%r15, %rdi
	movl	$5, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r15d
	movq	%rbp, %rdi
	movl	8(%rsp), %esi                   # 4-byte Reload
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.45, %edi
	movl	32(%rsp), %esi                  # 4-byte Reload
	movq	%r14, %rdx
	movl	%r12d, %ecx
	movq	%r13, %r8
	movl	%r15d, %r9d
	xorl	%eax, %eax
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	64(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$4, (%rsp)                      # 4-byte Folded Reload
	jb	.LBB1_99
# %bb.98:                               # %if.then158.i
                                        #   in Loop: Header=BB1_91 Depth=1
	movq	112(%rsp), %rax
	movq	288(%rsp), %r14
	movl	1008(%rsp), %r15d
	movl	16(%rax), %edi
	callq	lzma_check_size@PLT
	movl	%eax, %eax
	addq	%r15, %rax
	subq	%rax, %r14
	movl	1008(%rsp), %edi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r15
	movq	%r14, %rdi
	movl	$1, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r14
	movq	1024(%rsp), %rdi
	callq	round_up_to_mib@PLT
	movq	%rax, %rdi
	movl	$2, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r12
	movq	%r15, %rdi
	movl	$6, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %ebp
	movq	%r14, %rdi
	movl	$15, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r13d
	movq	%r12, %rdi
	movl	$7, %esi
	callq	tuklib_mbstr_fw@PLT
	movl	%eax, %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.46, %edi
	movl	$check_value, %edx
	movq	56(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	%ebp, %ecx
	movq	%r15, %r8
	leaq	1020(%rsp), %r9
	xorl	%eax, %eax
	leaq	1040(%rsp), %r11
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	jmp	.LBB1_99
.LBB1_100:                              # %if.end198.i
	cmpl	$4, (%rsp)                      # 4-byte Folded Reload
	jb	.LBB1_102
# %bb.101:                              # %if.then200.i
	movq	80(%rsp), %rdi
	callq	round_up_to_mib@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movl	$.L.str.17, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.L.str.19, %eax
	movl	$.L.str.20, %esi
	cmpb	$0, 88(%rsp)
	cmovneq	%rax, %rsi
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB1_102:                              # %if.then23
	incq	totals.0(%rip)
	movq	64(%rsp), %r14
	movq	%r14, %rdi
	callq	lzma_index_stream_count@PLT
	addq	%rax, totals.1(%rip)
	movq	%r14, %rdi
	callq	lzma_index_block_count@PLT
	addq	%rax, totals.2(%rip)
	movq	%r14, %rdi
	callq	lzma_index_file_size@PLT
	addq	%rax, totals.3(%rip)
	movq	%r14, %rdi
	callq	lzma_index_uncompressed_size@PLT
	addq	%rax, totals.4(%rip)
	movq	72(%rsp), %rax
	addq	%rax, totals.5(%rip)
	movq	%r14, %rdi
	callq	lzma_index_checks@PLT
	orl	%eax, totals.7(%rip)
	movq	80(%rsp), %rax
	cmpq	%rax, totals.6(%rip)
	jae	.LBB1_104
# %bb.103:                              # %if.then.i134
	movq	%rax, totals.6(%rip)
.LBB1_104:                              # %update_totals.exit
	movzbl	88(%rsp), %eax
	andb	%al, totals.8(%rip)
.LBB1_105:                              # %if.end24
	movq	64(%rsp), %rdi
	jmp	.LBB1_106
.Lfunc_end1:
	.size	list_file, .Lfunc_end1-list_file
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function get_check_names
	.type	get_check_names,@function
get_check_names:                        # @get_check_names
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, 8(%rsp)
	movq	$1024, (%rsp)                   # imm = 0x400
	movl	$.L.str.6, %eax
	movl	$.L.str.7, %r14d
	testl	%edx, %edx
	cmovneq	%rax, %r14
	movl	%esi, %ebp
	andl	$1, %ebp
	jne	.LBB2_1
# %bb.2:                                # %for.inc
	testb	$2, %bl
	jne	.LBB2_3
.LBB2_4:                                # %for.inc.1
	testb	$4, %bl
	jne	.LBB2_5
.LBB2_6:                                # %for.inc.2
	testb	$8, %bl
	jne	.LBB2_7
.LBB2_8:                                # %for.inc.3
	testb	$16, %bl
	jne	.LBB2_9
.LBB2_10:                               # %for.inc.4
	testb	$32, %bl
	jne	.LBB2_11
.LBB2_12:                               # %for.inc.5
	testb	$64, %bl
	jne	.LBB2_13
.LBB2_14:                               # %for.inc.6
	testb	%bl, %bl
	js	.LBB2_15
.LBB2_16:                               # %for.inc.7
	testl	$256, %ebx                      # imm = 0x100
	jne	.LBB2_17
.LBB2_18:                               # %for.inc.8
	testl	$512, %ebx                      # imm = 0x200
	jne	.LBB2_19
.LBB2_20:                               # %for.inc.9
	testl	$1024, %ebx                     # imm = 0x400
	jne	.LBB2_21
.LBB2_22:                               # %for.inc.10
	testl	$2048, %ebx                     # imm = 0x800
	jne	.LBB2_23
.LBB2_24:                               # %for.inc.11
	testl	$4096, %ebx                     # imm = 0x1000
	jne	.LBB2_25
.LBB2_26:                               # %for.inc.12
	testl	$8192, %ebx                     # imm = 0x2000
	jne	.LBB2_27
.LBB2_28:                               # %for.inc.13
	testl	$16384, %ebx                    # imm = 0x4000
	jne	.LBB2_29
.LBB2_30:                               # %for.inc.14
	testw	%bx, %bx
	jns	.LBB2_32
.LBB2_31:                               # %if.then.15
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+180, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
.LBB2_32:                               # %for.inc.15
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_1:                                # %if.then
	.cfi_def_cfa_offset 48
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$.L.str.9, %ecx
	movl	$check_names, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	testb	$2, %bl
	je	.LBB2_4
.LBB2_3:                                # %if.then.1
	movl	$.L.str.9, %ecx
	testb	$1, %bl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+12, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testb	$4, %bl
	je	.LBB2_6
.LBB2_5:                                # %if.then.2
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+24, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testb	$8, %bl
	je	.LBB2_8
.LBB2_7:                                # %if.then.3
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+36, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testb	$16, %bl
	je	.LBB2_10
.LBB2_9:                                # %if.then.4
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+48, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testb	$32, %bl
	je	.LBB2_12
.LBB2_11:                               # %if.then.5
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+60, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testb	$64, %bl
	je	.LBB2_14
.LBB2_13:                               # %if.then.6
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+72, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testb	%bl, %bl
	jns	.LBB2_16
.LBB2_15:                               # %if.then.7
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+84, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testl	$256, %ebx                      # imm = 0x100
	je	.LBB2_18
.LBB2_17:                               # %if.then.8
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+96, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testl	$512, %ebx                      # imm = 0x200
	je	.LBB2_20
.LBB2_19:                               # %if.then.9
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+108, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testl	$1024, %ebx                     # imm = 0x400
	je	.LBB2_22
.LBB2_21:                               # %if.then.10
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+120, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testl	$2048, %ebx                     # imm = 0x800
	je	.LBB2_24
.LBB2_23:                               # %if.then.11
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+132, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testl	$4096, %ebx                     # imm = 0x1000
	je	.LBB2_26
.LBB2_25:                               # %if.then.12
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+144, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testl	$8192, %ebx                     # imm = 0x2000
	je	.LBB2_28
.LBB2_27:                               # %if.then.13
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+156, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testl	$16384, %ebx                    # imm = 0x4000
	je	.LBB2_30
.LBB2_29:                               # %if.then.14
	movl	$.L.str.9, %ecx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	movl	$.L.str.8, %edx
	movl	$check_names+168, %r8d
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movb	$1, %bpl
	testw	%bx, %bx
	js	.LBB2_31
	jmp	.LBB2_32
.Lfunc_end2:
	.size	get_check_names, .Lfunc_end2-get_check_names
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function print_adv_helper
.LCPI3_0:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI3_1:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI3_2:
	.quad	0x4023ff7ced916873              # double 9.9990000000000005
	.text
	.p2align	4, 0x90
	.type	print_adv_helper,@function
print_adv_helper:                       # @print_adv_helper
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
	subq	$1024, %rsp                     # imm = 0x400
	.cfi_def_cfa_offset 1072
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r9, %rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	%rsp, %rdi
	movl	%r8d, %esi
	movl	$1, %edx
	callq	get_check_names
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movl	$.L.str.21, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movl	$.L.str.22, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	uint64_to_nicestr@PLT
	movl	$.L.str.23, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	uint64_to_nicestr@PLT
	movl	$.L.str.24, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.L.str.10, %esi
	testq	%r14, %r14
	je	.LBB3_3
# %bb.1:                                # %if.end.i
	movq	%r15, %xmm1
	movq	.LCPI3_0(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI3_1(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movq	%r14, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	ucomisd	.LCPI3_2(%rip), %xmm0
	ja	.LBB3_3
# %bb.2:                                # %if.end5.i
	movl	$get_ratio.buf, %edi
	movl	$16, %esi
	movl	$.L.str.11, %edx
	movb	$1, %al
	callq	snprintf@PLT
	movl	$get_ratio.buf, %esi
.LBB3_3:                                # %get_ratio.exit
	movl	$.L.str.25, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%rsp, %rsi
	movl	$.L.str.26, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	uint64_to_nicestr@PLT
	movl	$.L.str.27, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	addq	$1024, %rsp                     # imm = 0x400
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
.Lfunc_end3:
	.size	print_adv_helper, .Lfunc_end3-print_adv_helper
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function parse_details
	.type	parse_details,@function
parse_details:                          # @parse_details
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
	subq	$8488, %rsp                     # imm = 0x2128
	.cfi_def_cfa_offset 8544
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rsi), %rax
	movq	184(%rsi), %r13
	movl	16(%rax), %edi
	callq	lzma_check_size@PLT
	movl	%eax, %eax
	subq	%rax, %r13
	movl	$1024, %ebp                     # imm = 0x400
	cmpq	$1023, %r13                     # imm = 0x3FF
	ja	.LBB4_2
# %bb.1:                                # %cond.true.i
	movl	184(%r14), %ebp
	movq	(%r14), %rax
	movl	16(%rax), %edi
	callq	lzma_check_size@PLT
	subl	%eax, %ebp
.LBB4_2:                                # %cond.end.i
	movl	%ebp, %edx
	movq	128(%r14), %rcx
	leaq	296(%rsp), %rsi
	movq	%rbx, %rdi
	callq	io_pread@PLT
	testb	%al, %al
	jne	.LBB4_18
# %bb.3:                                # %if.end.i
	movzbl	296(%rsp), %eax
	testl	%eax, %eax
	je	.LBB4_16
# %bb.4:                                # %if.end18.i
	movl	$0, 88(%rsp)
	movq	(%r14), %rcx
	movl	16(%rcx), %ecx
	movl	%ecx, 96(%rsp)
	movq	%rsp, %rcx
	movq	%rcx, 120(%rsp)
	leal	4(,%rax,4), %eax
	movl	%eax, 92(%rsp)
	cmpl	%ebp, %eax
	jbe	.LBB4_5
.LBB4_16:                               # %data_error.i
	movl	$9, %edi
.LBB4_17:                               # %cleanup.sink.split.i
	movq	(%rbx), %rbx
	callq	message_strm@PLT
	movl	$.L.str.28, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.LBB4_18:                               # %parse_block_header.exit.thread
	movb	$1, %bl
.LBB4_35:                               # %return
	movl	%ebx, %eax
	addq	$8488, %rsp                     # imm = 0x2128
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
.LBB4_5:                                # %if.end31.i
	.cfi_def_cfa_offset 8544
	leaq	88(%rsp), %rdi
	leaq	296(%rsp), %rdx
	xorl	%esi, %esi
	callq	lzma_block_header_decode@PLT
	testl	%eax, %eax
	je	.LBB4_9
# %bb.6:                                # %if.end31.i
	movl	%eax, %edi
	cmpl	$8, %eax
	je	.LBB4_17
# %bb.7:                                # %if.end31.i
	cmpl	$9, %edi
	je	.LBB4_16
# %bb.8:                                # %sw.default.i
	callq	message_bug@PLT
.LBB4_9:                                # %sw.epilog.i
	cmpq	$-1, 104(%rsp)
	movl	$45, %eax
	movl	$99, %ecx
	cmovel	%eax, %ecx
	movb	%cl, 4(%r15)
	setne	%cl
	cmpq	$-1, 112(%rsp)
	movl	$117, %edx
	cmovel	%eax, %edx
	movb	%dl, 5(%r15)
	movb	$0, 6(%r15)
	setne	%al
	andb	%cl, %al
	andb	%al, 24(%r12)
	movq	176(%r14), %rsi
	leaq	88(%rsp), %rdi
	callq	lzma_block_compressed_size@PLT
	cmpl	$9, %eax
	je	.LBB4_13
# %bb.10:                               # %sw.epilog.i
	testl	%eax, %eax
	jne	.LBB4_19
# %bb.11:                               # %sw.bb59.i
	movq	112(%rsp), %rax
	cmpq	$-1, %rax
	je	.LBB4_20
# %bb.12:                               # %lor.lhs.false.i
	cmpq	168(%r14), %rax
	je	.LBB4_20
.LBB4_13:                               # %sw.bb70.i
	cmpq	$-1, (%rsp)
	je	.LBB4_16
# %bb.14:                               # %for.body.i.preheader
	leaq	16(%rsp), %r14
	.p2align	4, 0x90
.LBB4_15:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r14), %rdi
	callq	free@PLT
	cmpq	$-1, (%r14)
	leaq	16(%r14), %r14
	jne	.LBB4_15
	jmp	.LBB4_16
.LBB4_19:                               # %sw.default75.i
	callq	message_bug@PLT
.LBB4_20:                               # %sw.epilog76.i
	movl	92(%rsp), %eax
	movl	%eax, (%r15)
	movq	104(%rsp), %rax
	movq	%rax, 8(%r15)
	movq	%rsp, %rdi
	callq	lzma_raw_decoder_memusage@PLT
	movq	%rax, 16(%r15)
	cmpq	%rax, 16(%r12)
	jae	.LBB4_22
# %bb.21:                               # %if.then86.i
	movq	%rax, 16(%r12)
.LBB4_22:                               # %if.end89.i
	addq	$24, %r15
	movq	%rsp, %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	message_filters_to_str@PLT
	cmpq	$-1, (%rsp)
	je	.LBB4_25
# %bb.23:                               # %for.body99.i.preheader
	leaq	16(%rsp), %r15
	.p2align	4, 0x90
.LBB4_24:                               # %for.body99.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r15), %rdi
	callq	free@PLT
	cmpq	$-1, (%r15)
	leaq	16(%r15), %r15
	jne	.LBB4_24
.LBB4_25:                               # %if.end
	movq	(%r14), %rax
	movl	16(%rax), %edi
	testl	%edi, %edi
	je	.LBB4_26
# %bb.27:                               # %if.end.i9
	callq	lzma_check_size@PLT
	movq	128(%r14), %rcx
	movl	%eax, %r15d
	subq	%r15, %rcx
	addq	184(%r14), %rcx
	leaq	296(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	io_pread@PLT
	movl	%eax, %ebx
	testb	%al, %al
	jne	.LBB4_35
# %bb.28:                               # %if.end9.i
	testq	%r15, %r15
	je	.LBB4_35
# %bb.29:                               # %if.end9.i
	cmpl	$4, %r15d
	je	.LBB4_33
# %bb.30:                               # %if.end9.i
	cmpl	$8, %r15d
	jne	.LBB4_31
# %bb.34:                               # %if.then16.i
	movq	296(%rsp), %rcx
	movl	$check_value, %edi
	movl	$129, %esi
	movl	$.L.str.36, %edx
	xorl	%eax, %eax
	callq	snprintf@PLT
	jmp	.LBB4_35
.LBB4_26:                               # %if.then.i
	movl	$2960685, check_value(%rip)     # imm = 0x2D2D2D
	xorl	%ebx, %ebx
	jmp	.LBB4_35
.LBB4_33:                               # %if.then12.i
	movl	296(%rsp), %ecx
	movl	$check_value, %edi
	movl	$129, %esi
	movl	$.L.str.35, %edx
	xorl	%eax, %eax
	callq	snprintf@PLT
	jmp	.LBB4_35
.LBB4_31:                               # %for.body.i17.preheader
	movl	$check_value, %r14d
	xorl	%r12d, %r12d
.LBB4_32:                               # %for.body.i17
                                        # =>This Inner Loop Header: Depth=1
	movzbl	296(%rsp,%r12), %ecx
	movl	$3, %esi
	movl	$.L.str.37, %edx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	incq	%r12
	addq	$2, %r14
	cmpq	%r12, %r15
	jne	.LBB4_32
	jmp	.LBB4_35
.Lfunc_end4:
	.size	parse_details, .Lfunc_end4-parse_details
	.cfi_endproc
                                        # -- End function
	.type	totals.0,@object                # @totals.0
	.local	totals.0
	.comm	totals.0,8,8
	.type	totals.1,@object                # @totals.1
	.local	totals.1
	.comm	totals.1,8,8
	.type	totals.2,@object                # @totals.2
	.local	totals.2
	.comm	totals.2,8,8
	.type	totals.3,@object                # @totals.3
	.local	totals.3
	.comm	totals.3,8,8
	.type	totals.4,@object                # @totals.4
	.local	totals.4
	.comm	totals.4,8,8
	.type	totals.5,@object                # @totals.5
	.local	totals.5
	.comm	totals.5,8,8
	.type	totals.6,@object                # @totals.6
	.local	totals.6
	.comm	totals.6,8,8
	.type	totals.7,@object                # @totals.7
	.local	totals.7
	.comm	totals.7,4,8
	.type	totals.8,@object                # @totals.8
	.data
	.p2align	2, 0x0
totals.8:
	.byte	1                               # 0x1
	.size	totals.8, 1

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"--list works only on .xz files (--format=xz or --format=auto)"
	.size	.L.str, 62

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"--list does not support reading from standard input"
	.size	.L.str.1, 52

	.type	.L__const.list_file.xfi,@object # @__const.list_file.xfi
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
.L__const.list_file.xfi:
	.quad	0
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.byte	1                               # 0x1
	.zero	7
	.size	.L__const.list_file.xfi, 32

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"totals\t%lu\t%lu\t%lu\t%lu\t%s\t%s\t%lu\t%lu"
	.size	.L.str.2, 37

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\t%lu\t%s"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"yes"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"no"
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	", "
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	","
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s%s"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1

	.type	check_names,@object             # @check_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
check_names:
	.asciz	"None\000\000\000\000\000\000\000"
	.asciz	"CRC32\000\000\000\000\000\000"
	.asciz	"Unknown-2\000\000"
	.asciz	"Unknown-3\000\000"
	.asciz	"CRC64\000\000\000\000\000\000"
	.asciz	"Unknown-5\000\000"
	.asciz	"Unknown-6\000\000"
	.asciz	"Unknown-7\000\000"
	.asciz	"Unknown-8\000\000"
	.asciz	"Unknown-9\000\000"
	.asciz	"SHA-256\000\000\000\000"
	.asciz	"Unknown-11\000"
	.asciz	"Unknown-12\000"
	.asciz	"Unknown-13\000"
	.asciz	"Unknown-14\000"
	.asciz	"Unknown-15\000"
	.size	check_names, 192

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"---"
	.size	.L.str.10, 4

	.type	get_ratio.buf,@object           # @get_ratio.buf
	.local	get_ratio.buf
	.comm	get_ratio.buf,16,16
	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%.3f"
	.size	.L.str.11, 5

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%5s %7s  %11s  %11s  %5s  %-7s "
	.size	.L.str.12, 32

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%s file\n"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%s files\n"
	.size	.L.str.14, 10

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Totals:"
	.size	.L.str.15, 8

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"  Number of files:    %s\n"
	.size	.L.str.16, 26

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"  Memory needed:      %s MiB\n"
	.size	.L.str.17, 30

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"  Sizes in headers:   %s\n"
	.size	.L.str.18, 26

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Yes"
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"No"
	.size	.L.str.20, 3

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"  Streams:            %s\n"
	.size	.L.str.21, 26

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"  Blocks:             %s\n"
	.size	.L.str.22, 26

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"  Compressed size:    %s\n"
	.size	.L.str.23, 26

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"  Uncompressed size:  %s\n"
	.size	.L.str.24, 26

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"  Ratio:              %s\n"
	.size	.L.str.25, 26

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"  Check:              %s\n"
	.size	.L.str.26, 26

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"  Stream padding:     %s\n"
	.size	.L.str.27, 26

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"%s: %s"
	.size	.L.str.28, 7

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"name\t%s\n"
	.size	.L.str.29, 9

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"file\t%lu\t%lu\t%lu\t%lu\t%s\t%s\t%lu\n"
	.size	.L.str.30, 32

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"stream\t%lu\t%lu\t%lu\t%lu\t%lu\t%lu\t%s\t%s\t%lu\n"
	.size	.L.str.31, 42

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"block\t%lu\t%lu\t%lu\t%lu\t%lu\t%lu\t%lu\t%s\t%s"
	.size	.L.str.32, 40

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"\t%s\t%u\t%s\t%lu\t%lu\t%s"
	.size	.L.str.33, 21

	.type	check_value,@object             # @check_value
	.local	check_value
	.comm	check_value,129,16
	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"summary\t%lu\t%s\n"
	.size	.L.str.34, 16

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"%08x"
	.size	.L.str.35, 5

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"%016lx"
	.size	.L.str.36, 7

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"%02x"
	.size	.L.str.37, 5

	.type	print_info_basic.headings_displayed,@object # @print_info_basic.headings_displayed
	.local	print_info_basic.headings_displayed
	.comm	print_info_basic.headings_displayed,1,1
	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Strms  Blocks   Compressed Uncompressed  Ratio  Check   Filename"
	.size	.L.str.38, 65

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"%*s %*s  %*s  %*s  %*s  %-*s %s\n"
	.size	.L.str.39, 33

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"  Streams:\n    Stream    Blocks      CompOffset    UncompOffset        CompSize      UncompSize  Ratio  Check      Padding"
	.size	.L.str.40, 123

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"    %*s %*s %*s %*s "
	.size	.L.str.41, 21

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"%*s %*s  %*s  %-*s %*s\n"
	.size	.L.str.42, 24

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"  Blocks:\n    Stream     Block      CompOffset    UncompOffset       TotalSize      UncompSize  Ratio  Check"
	.size	.L.str.43, 109

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"      CheckVal %*s Header  Flags        CompSize    MemUsage  Filters"
	.size	.L.str.44, 70

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"%*s %*s  %*s  %-*s"
	.size	.L.str.45, 19

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"%-*s  %*s  %-5s %*s %*s MiB  %s"
	.size	.L.str.46, 32

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
