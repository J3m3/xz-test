	.text
	.file	"lzma_encoder_optimum_normal.c"
	.globl	lzma_lzma_optimum_normal        # -- Begin function lzma_lzma_optimum_normal
	.p2align	4, 0x90
	.type	lzma_lzma_optimum_normal,@function
lzma_lzma_optimum_normal:               # @lzma_lzma_optimum_normal
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
	subq	$408, %rsp                      # imm = 0x198
	.cfi_def_cfa_offset 464
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, 304(%rsp)                  # 8-byte Spill
	movq	%rcx, %r9
	movq	%rdx, %r15
	movq	%rdi, %r12
	movl	69344(%rdi), %eax
	cmpl	%eax, 69340(%rdi)
	jne	.LBB0_3
# %bb.1:                                # %if.end
	cmpl	$0, 28(%rsi)
	movq	%r12, 136(%rsp)                 # 8-byte Spill
	movq	%r15, 200(%rsp)                 # 8-byte Spill
	movq	%rsi, 248(%rsp)                 # 8-byte Spill
	je	.LBB0_5
# %bb.2:                                # %if.end21.thread
	movl	96(%rsi), %r14d
	movl	2948(%r12), %ecx
	movl	2952(%r12), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, 196(%rsp)
	jmp	.LBB0_53
.LBB0_3:                                # %if.then
	imulq	$44, %rax, %rcx
	movl	69368(%r12,%rcx), %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, (%r9)
	movl	69372(%r12,%rcx), %eax
	movl	%eax, (%r15)
	movl	%edx, 69344(%r12)
.LBB0_4:                                # %cleanup45
	addq	$408, %rsp                      # imm = 0x198
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
.LBB0_5:                                # %if.then14
	.cfi_def_cfa_offset 464
	cmpl	$128, 69268(%r12)
	jb	.LBB0_48
# %bb.6:                                # %if.then16
	xorl	%eax, %eax
	cmpl	$0, 69264(%r12)
	movl	$0, %esi
	je	.LBB0_14
# %bb.7:                                # %for.body5.i.preheader
	movq	%r9, %r10
	xorl	%ecx, %ecx
	movq	lzma_rc_prices@GOTPCREL(%rip), %rdx
	.p2align	4, 0x90
.LBB0_8:                                # %for.body5.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	leal	64(%rcx), %r8d
	xorl	%esi, %esi
	movl	%r8d, %edi
	.p2align	4, 0x90
.LBB0_9:                                # %do.body.i.i
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r8d, %r9d
	andl	$1, %r9d
	negl	%r9d
	shrl	%edi
	andl	$-2, %r8d
	movzwl	28412(%r12,%r8), %r8d
	andl	$2032, %r9d                     # imm = 0x7F0
	xorl	%r8d, %r9d
	shrl	$4, %r9d
	movzbl	(%rdx,%r9), %r8d
	addl	%r8d, %esi
	movl	%edi, %r8d
	cmpl	$1, %edi
	jne	.LBB0_9
# %bb.10:                               # %rc_bittree_price.exit.i
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	%esi, 66192(%r12,%rcx,4)
	incq	%rcx
	movl	69264(%r12), %esi
	cmpq	%rsi, %rcx
	jb	.LBB0_8
# %bb.11:                               # %for.cond13.preheader.i
	cmpl	$15, %esi
	movq	%r10, %r9
	jb	.LBB0_14
# %bb.12:                               # %for.body17.i.preheader
	movl	$16562, %edx                    # imm = 0x40B2
	movl	$112, %ecx
	.p2align	4, 0x90
.LBB0_13:                               # %for.body17.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %esi
	andl	$-16, %esi
	movl	(%r12,%rdx,4), %edi
	addl	%edi, %esi
	addl	$-80, %esi
	movl	%esi, (%r12,%rdx,4)
	movl	69264(%r12), %esi
	leaq	1(%rdx), %rdi
	addq	$-16547, %rdx                   # imm = 0xBF5D
	addl	$8, %ecx
	cmpq	%rsi, %rdx
	movq	%rdi, %rdx
	jb	.LBB0_13
.LBB0_14:                               # %for.cond25.preheader.i
	movups	66192(%r12), %xmm0
	movups	%xmm0, 67216(%r12)
	testl	%esi, %esi
	je	.LBB0_22
# %bb.15:                               # %for.body5.lr.ph.1.i
	xorl	%ecx, %ecx
	movq	lzma_rc_prices@GOTPCREL(%rip), %rdx
	.p2align	4, 0x90
.LBB0_16:                               # %for.body5.1.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	leal	64(%rcx), %edi
	xorl	%eax, %eax
	movl	%edi, %esi
	.p2align	4, 0x90
.LBB0_17:                               # %do.body.i.1.i
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, %r8d
	andl	$1, %r8d
	negl	%r8d
	shrl	%esi
	andl	$-2, %edi
	movzwl	28540(%r12,%rdi), %edi
	andl	$2032, %r8d                     # imm = 0x7F0
	xorl	%edi, %r8d
	shrl	$4, %r8d
	movzbl	(%rdx,%r8), %edi
	addl	%edi, %eax
	movl	%esi, %edi
	cmpl	$1, %esi
	jne	.LBB0_17
# %bb.18:                               # %rc_bittree_price.exit.1.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	%eax, 66448(%r12,%rcx,4)
	incq	%rcx
	movl	69264(%r12), %eax
	cmpq	%rax, %rcx
	jb	.LBB0_16
# %bb.19:                               # %for.cond13.preheader.1.i
	cmpl	$15, %eax
	jb	.LBB0_22
# %bb.20:                               # %for.body17.1.i.preheader
	movl	$16626, %edx                    # imm = 0x40F2
	movl	$112, %ecx
	.p2align	4, 0x90
.LBB0_21:                               # %for.body17.1.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	andl	$-16, %eax
	movl	(%r12,%rdx,4), %esi
	addl	%esi, %eax
	addl	$-80, %eax
	movl	%eax, (%r12,%rdx,4)
	movl	69264(%r12), %eax
	leaq	1(%rdx), %rsi
	addq	$-16611, %rdx                   # imm = 0xBF1D
	addl	$8, %ecx
	cmpq	%rax, %rdx
	movq	%rsi, %rdx
	jb	.LBB0_21
.LBB0_22:                               # %for.cond25.preheader.1.i
	movups	66448(%r12), %xmm0
	movups	%xmm0, 67728(%r12)
	testl	%eax, %eax
	je	.LBB0_30
# %bb.23:                               # %for.body5.lr.ph.2.i
	xorl	%eax, %eax
	movq	lzma_rc_prices@GOTPCREL(%rip), %rcx
	.p2align	4, 0x90
.LBB0_24:                               # %for.body5.2.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
	leal	64(%rax), %edi
	xorl	%edx, %edx
	movl	%edi, %esi
	.p2align	4, 0x90
.LBB0_25:                               # %do.body.i.2.i
                                        #   Parent Loop BB0_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, %r8d
	andl	$1, %r8d
	negl	%r8d
	shrl	%esi
	andl	$-2, %edi
	movzwl	28668(%r12,%rdi), %edi
	andl	$2032, %r8d                     # imm = 0x7F0
	xorl	%edi, %r8d
	shrl	$4, %r8d
	movzbl	(%rcx,%r8), %edi
	addl	%edi, %edx
	movl	%esi, %edi
	cmpl	$1, %esi
	jne	.LBB0_25
# %bb.26:                               # %rc_bittree_price.exit.2.i
                                        #   in Loop: Header=BB0_24 Depth=1
	movl	%edx, 66704(%r12,%rax,4)
	incq	%rax
	movl	69264(%r12), %edx
	cmpq	%rdx, %rax
	jb	.LBB0_24
# %bb.27:                               # %for.cond13.preheader.2.i
	cmpl	$15, %edx
	jb	.LBB0_31
# %bb.28:                               # %for.body17.2.i.preheader
	movl	$16690, %ecx                    # imm = 0x4132
	movl	$112, %eax
	.p2align	4, 0x90
.LBB0_29:                               # %for.body17.2.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	andl	$-16, %edx
	movl	(%r12,%rcx,4), %esi
	addl	%esi, %edx
	addl	$-80, %edx
	movl	%edx, (%r12,%rcx,4)
	movl	69264(%r12), %edx
	leaq	1(%rcx), %rsi
	addq	$-16675, %rcx                   # imm = 0xBEDD
	addl	$8, %eax
	cmpq	%rdx, %rcx
	movq	%rsi, %rcx
	jb	.LBB0_29
	jmp	.LBB0_31
.LBB0_30:
	xorl	%edx, %edx
.LBB0_31:                               # %for.cond25.preheader.2.i
	movups	66704(%r12), %xmm0
	movups	%xmm0, 68240(%r12)
	testl	%edx, %edx
	je	.LBB0_39
# %bb.32:                               # %for.body5.lr.ph.3.i
	xorl	%eax, %eax
	movq	lzma_rc_prices@GOTPCREL(%rip), %rcx
	.p2align	4, 0x90
.LBB0_33:                               # %for.body5.3.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
	leal	64(%rax), %edi
	xorl	%edx, %edx
	movl	%edi, %esi
	.p2align	4, 0x90
.LBB0_34:                               # %do.body.i.3.i
                                        #   Parent Loop BB0_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, %r8d
	andl	$1, %r8d
	negl	%r8d
	shrl	%esi
	andl	$-2, %edi
	movzwl	28796(%r12,%rdi), %edi
	andl	$2032, %r8d                     # imm = 0x7F0
	xorl	%edi, %r8d
	shrl	$4, %r8d
	movzbl	(%rcx,%r8), %edi
	addl	%edi, %edx
	movl	%esi, %edi
	cmpl	$1, %esi
	jne	.LBB0_34
# %bb.35:                               # %rc_bittree_price.exit.3.i
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	%edx, 66960(%r12,%rax,4)
	incq	%rax
	movl	69264(%r12), %edx
	cmpq	%rdx, %rax
	jb	.LBB0_33
# %bb.36:                               # %for.cond13.preheader.3.i
	cmpl	$15, %edx
	jb	.LBB0_39
# %bb.37:                               # %for.body17.3.i.preheader
	movl	$16754, %ecx                    # imm = 0x4172
	movl	$112, %eax
	.p2align	4, 0x90
.LBB0_38:                               # %for.body17.3.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	andl	$-16, %edx
	movl	(%r12,%rcx,4), %esi
	addl	%esi, %edx
	addl	$-80, %edx
	movl	%edx, (%r12,%rcx,4)
	movl	69264(%r12), %edx
	leaq	1(%rcx), %rsi
	addq	$-16739, %rcx                   # imm = 0xBE9D
	addl	$8, %eax
	cmpq	%rdx, %rcx
	movq	%rsi, %rcx
	jb	.LBB0_38
.LBB0_39:                               # %for.cond25.preheader.3.i
	movq	%r9, %r14
	movups	66960(%r12), %xmm0
	movups	%xmm0, 68752(%r12)
	leaq	28924(%r12), %rax
	movl	$4, %esi
	movq	lzma_rc_prices@GOTPCREL(%rip), %rdi
	jmp	.LBB0_41
	.p2align	4, 0x90
.LBB0_40:                               # %for.cond57.preheader.i
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	136(%rsp), %r12                 # 8-byte Reload
	movl	66192(%r12,%r8,4), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 67216(%r12,%rsi,4)
	movl	66448(%r12,%r8,4), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 67728(%r12,%rsi,4)
	movl	66704(%r12,%r8,4), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 68240(%r12,%rsi,4)
	addl	66960(%r12,%r8,4), %r11d
	movl	%r11d, 68752(%r12,%rsi,4)
	incq	%rsi
	cmpq	$128, %rsi
	je	.LBB0_47
.LBB0_41:                               # %for.body45.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%rsi), %r8d
	movl	%r8d, %r11d
	shrl	%r11d
	leal	-1(%r11), %ecx
	movl	%r8d, %ebx
	andl	$1, %ebx
	orl	$2, %ebx
	shll	%cl, %ebx
	leaq	(%rax,%rbx,2), %r9
	leal	(%r8,%r8), %r10d
	subq	%r10, %r9
	addq	$-2, %r9
	movl	%esi, %edx
	subl	%ebx, %edx
	cmpl	$2, %r11d
	jne	.LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_41 Depth=1
	movl	$1, %r15d
	xorl	%r11d, %r11d
	jmp	.LBB0_45
	.p2align	4, 0x90
.LBB0_43:                               # %for.body45.i.new
                                        #   in Loop: Header=BB0_41 Depth=1
	movl	%ecx, %ebx
	andl	$-2, %ebx
	movl	$1, %r15d
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB0_44:                               # %do.body.i115.i
                                        #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %r13d
	andl	$1, %r13d
	leal	(%r13,%r15,2), %r12d
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	negl	%r13d
	movl	%edx, %r10d
	shrl	%r10d
	movl	%r15d, %r15d
	movzwl	(%r9,%r15,2), %ebp
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%ebp, %r13d
	shrl	$4, %r13d
	movzbl	(%rdi,%r13), %ebp
	addl	%r11d, %ebp
	andl	$1, %r10d
	leal	(%r10,%r12,2), %r15d
                                        # kill: def $r10d killed $r10d killed $r10 def $r10
	negl	%r10d
	shrl	$2, %edx
	movzwl	(%r9,%r12,2), %r11d
	andl	$2032, %r10d                    # imm = 0x7F0
	xorl	%r11d, %r10d
	shrl	$4, %r10d
	movzbl	(%rdi,%r10), %r11d
	addl	%ebp, %r11d
	addl	$-2, %ebx
	jne	.LBB0_44
.LBB0_45:                               # %for.cond57.preheader.i.unr-lcssa
                                        #   in Loop: Header=BB0_41 Depth=1
	testb	$1, %cl
	je	.LBB0_40
# %bb.46:                               # %do.body.i115.i.epil
                                        #   in Loop: Header=BB0_41 Depth=1
	andl	$1, %edx
	negl	%edx
	movl	%r15d, %ecx
	movzwl	(%r9,%rcx,2), %ecx
	andl	$2032, %edx                     # imm = 0x7F0
	xorl	%ecx, %edx
	shrl	$4, %edx
	movzbl	(%rdi,%rdx), %ecx
	addl	%ecx, %r11d
	jmp	.LBB0_40
.LBB0_47:                               # %fill_distances_prices.exit
	movl	$0, 69268(%r12)
	movq	%r14, %r9
	movq	200(%rsp), %r15                 # 8-byte Reload
.LBB0_48:                               # %if.end17
	movq	%r9, %rbx
	cmpl	$16, 69336(%r12)
	jb	.LBB0_52
# %bb.49:                               # %if.then19
	movzwl	29154(%r12), %eax
	xorl	%ecx, %ecx
	movq	lzma_rc_prices@GOTPCREL(%rip), %rdx
	.p2align	4, 0x90
.LBB0_50:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %r8d
	andl	$1, %r8d
	movl	%ecx, %edi
	shrl	%edi
	andl	$1, %edi
	leal	4(,%r8,2), %r9d
	leal	(%rdi,%r8,2), %esi
	addl	$4, %esi
                                        # kill: def $r8d killed $r8d killed $r8 def $r8
	negl	%r8d
	andl	$2032, %r8d                     # imm = 0x7F0
	xorl	%eax, %r8d
	shrl	$4, %r8d
	movzbl	(%rdx,%r8), %r8d
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	negl	%edi
	movl	%ecx, %r10d
	shrl	$2, %r10d
	movzwl	29152(%r12,%r9), %r9d
	andl	$2032, %edi                     # imm = 0x7F0
	xorl	%r9d, %edi
	shrl	$4, %edi
	movzbl	(%rdx,%rdi), %edi
	addl	%r8d, %edi
	andl	$1, %r10d
	leal	(%r10,%rsi,2), %r8d
                                        # kill: def $r10d killed $r10d killed $r10 def $r10
	negl	%r10d
	addl	%esi, %esi
	movzwl	29152(%r12,%rsi), %esi
	andl	$2032, %r10d                    # imm = 0x7F0
	xorl	%esi, %r10d
	shrl	$4, %r10d
	movzbl	(%rdx,%r10), %esi
	addl	%edi, %esi
	movzwl	29152(%r12,%r8,2), %edi
	movl	%ecx, %r8d
	shll	$28, %r8d
	sarl	$31, %r8d
	andl	$2032, %r8d                     # imm = 0x7F0
	xorl	%edi, %r8d
	shrl	$4, %r8d
	movzbl	(%rdx,%r8), %edi
	addl	%esi, %edi
	movl	%edi, 69272(%r12,%rcx,4)
	incq	%rcx
	cmpq	$16, %rcx
	jne	.LBB0_50
# %bb.51:                               # %fill_align_prices.exit
	movl	$0, 69336(%r12)
.LBB0_52:                               # %if.end21
	movq	248(%rsp), %r13                 # 8-byte Reload
	movl	96(%r13), %r14d
	leaq	756(%r12), %rdx
	leaq	196(%rsp), %rsi
	movq	%r13, %rdi
	callq	lzma_mf_find@PLT
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movq	%rbx, %r9
	movq	%r13, %rsi
.LBB0_53:                               # %if.end.i
	movl	24(%rsi), %eax
	movl	36(%rsi), %edx
	subl	%eax, %edx
	incl	%edx
	movl	$273, %ecx                      # imm = 0x111
	cmpl	$272, %edx                      # imm = 0x110
	ja	.LBB0_56
# %bb.54:                               # %cond.end.i
	movl	%edx, %ecx
	cmpl	$1, %edx
	ja	.LBB0_56
# %bb.55:                               # %helper1.exit.thread
	movl	$-1, (%r15)
	movl	$1, (%r9)
	jmp	.LBB0_4
.LBB0_56:                               # %if.end9.i
	movq	%r9, 216(%rsp)                  # 8-byte Spill
	movq	(%rsi), %rdx
	leaq	(%rdx,%rax), %rsi
	leaq	(%rdx,%rax), %r10
	decq	%r10
	movzbl	-1(%rdx,%rax), %ebx
	movl	740(%r12), %r12d
	movq	%r12, %rdi
	notq	%rdi
	movzbl	-1(%rdi,%rsi), %r13d
	xorl	%edi, %edi
	cmpb	%r13b, %bl
	jne	.LBB0_63
# %bb.57:                               # %lor.lhs.false.i
	movq	%r12, %rdi
	negq	%rdi
	movzbl	(%rsi), %r8d
	movzbl	-1(%rsi,%rdi), %r9d
	xorl	%edi, %edi
	cmpb	%r9b, %r8b
	sete	%dil
	addl	%edi, %edi
	cmpl	$3, %ecx
	jb	.LBB0_63
# %bb.58:                               # %lor.lhs.false.i
	cmpb	%r9b, %r8b
	jne	.LBB0_63
# %bb.59:                               # %land.rhs.preheader.i
	movl	%ecx, %r8d
	movq	%rax, %r9
	subq	%r12, %r9
	addq	%rdx, %r9
	movl	$2, %edi
	.p2align	4, 0x90
.LBB0_60:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rsi,%rdi), %r11d
	cmpb	-2(%r9,%rdi), %r11b
	jne	.LBB0_63
# %bb.61:                               # %for.inc.i
                                        #   in Loop: Header=BB0_60 Depth=1
	incq	%rdi
	cmpq	%rdi, %r8
	jne	.LBB0_60
# %bb.62:
	movl	%ecx, %edi
.LBB0_63:                               # %cleanup.i
	movl	%edi, 96(%rsp)
	movq	136(%rsp), %r8                  # 8-byte Reload
	movl	744(%r8), %r11d
	movq	%r11, %r8
	notq	%r8
	cmpb	(%r8,%r10), %bl
	movq	%r11, 168(%rsp)                 # 8-byte Spill
	jne	.LBB0_71
# %bb.64:                               # %lor.lhs.false.1.i
	movq	%r11, %r8
	negq	%r8
	movzbl	(%rsi), %r9d
	cmpb	-1(%rsi,%r8), %r9b
	jne	.LBB0_71
# %bb.65:                               # %for.cond29.preheader.1.i
	movl	$2, %r9d
	cmpl	$3, %ecx
	jb	.LBB0_70
# %bb.66:                               # %land.rhs.preheader.1.i
	movl	%ecx, %r8d
	movq	%rax, %r11
	subq	168(%rsp), %r11                 # 8-byte Folded Reload
	addq	%rdx, %r11
	movl	$2, %r9d
	.p2align	4, 0x90
.LBB0_67:                               # %land.rhs.1.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rsi,%r9), %ebp
	cmpb	-2(%r11,%r9), %bpl
	jne	.LBB0_70
# %bb.68:                               # %for.inc.1.i
                                        #   in Loop: Header=BB0_67 Depth=1
	incq	%r9
	cmpq	%r9, %r8
	jne	.LBB0_67
# %bb.69:
	movl	%ecx, %r9d
.LBB0_70:                               # %for.end.1.i
	movl	%r9d, 100(%rsp)
	xorl	%r15d, %r15d
	cmpl	%edi, %r9d
	seta	%r15b
	jmp	.LBB0_72
.LBB0_71:                               # %if.then25.1.i
	movl	$0, 100(%rsp)
	xorl	%r9d, %r9d
	xorl	%r15d, %r15d
.LBB0_72:                               # %cleanup.1.i
	movq	136(%rsp), %r8                  # 8-byte Reload
	movl	748(%r8), %r8d
	movq	%r8, %r11
	notq	%r11
	cmpb	(%r11,%r10), %bl
	movq	%r8, 288(%rsp)                  # 8-byte Spill
	jne	.LBB0_81
# %bb.73:                               # %lor.lhs.false.2.i
	movq	%r8, %r11
	negq	%r11
	movzbl	(%rsi), %ebp
	cmpb	-1(%rsi,%r11), %bpl
	jne	.LBB0_81
# %bb.74:                               # %for.cond29.preheader.2.i
	movl	$2, %ebp
	movl	$2, %r11d
	cmpl	$3, %ecx
	jb	.LBB0_80
# %bb.75:                               # %land.rhs.preheader.2.i
	movl	%r13d, 40(%rsp)                 # 4-byte Spill
	movl	%ecx, %ebp
	movq	%rax, %r13
	subq	288(%rsp), %r13                 # 8-byte Folded Reload
	addq	%rdx, %r13
	movl	$2, %r11d
	.p2align	4, 0x90
.LBB0_76:                               # %land.rhs.2.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rsi,%r11), %r8d
	cmpb	-2(%r13,%r11), %r8b
	jne	.LBB0_79
# %bb.77:                               # %for.inc.2.i
                                        #   in Loop: Header=BB0_76 Depth=1
	incq	%r11
	cmpq	%r11, %rbp
	jne	.LBB0_76
# %bb.78:
	movl	%ecx, %r11d
.LBB0_79:                               # %for.end.2.loopexit.split.loop.exit580.i
	movl	40(%rsp), %r13d                 # 4-byte Reload
	movl	$2, %ebp
.LBB0_80:                               # %for.end.2.i
	movl	%r11d, 104(%rsp)
	movl	%r15d, %r8d
	cmpl	96(%rsp,%r8,4), %r11d
	cmoval	%ebp, %r15d
	jmp	.LBB0_82
.LBB0_81:                               # %if.then25.2.i
	movl	$0, 104(%rsp)
	xorl	%r11d, %r11d
.LBB0_82:                               # %cleanup.2.i
	movq	136(%rsp), %r8                  # 8-byte Reload
	movl	752(%r8), %ebp
	movq	%rbp, %r8
	notq	%r8
	cmpb	(%r8,%r10), %bl
	jne	.LBB0_93
# %bb.83:                               # %lor.lhs.false.3.i
	movq	%rbp, %r8
	negq	%r8
	movzbl	(%rsi), %r10d
	cmpb	-1(%rsi,%r8), %r10b
	jne	.LBB0_93
# %bb.84:                               # %for.cond29.preheader.3.i
	movl	$2, %r10d
	cmpl	$3, %ecx
	jb	.LBB0_90
# %bb.85:                               # %land.rhs.preheader.3.i
	movl	%r13d, %r8d
	movl	%ecx, %r13d
	subq	%rbp, %rax
	addq	%rax, %rdx
	movl	$2, %r10d
	.p2align	4, 0x90
.LBB0_86:                               # %land.rhs.3.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rsi,%r10), %eax
	cmpb	-2(%rdx,%r10), %al
	jne	.LBB0_89
# %bb.87:                               # %for.inc.3.i
                                        #   in Loop: Header=BB0_86 Depth=1
	incq	%r10
	cmpq	%r10, %r13
	jne	.LBB0_86
# %bb.88:
	movl	%ecx, %r10d
.LBB0_89:                               # %for.end.3.loopexit.split.loop.exit582.i
	movl	%r8d, %r13d
.LBB0_90:                               # %for.end.3.i
	movl	%r10d, 108(%rsp)
	movl	%r15d, %eax
	cmpl	96(%rsp,%rax,4), %r10d
	movl	$3, %eax
	cmoval	%eax, %r15d
	movl	%r15d, %eax
	movl	96(%rsp,%rax,4), %ecx
	cmpl	%r14d, %ecx
	jb	.LBB0_94
.LBB0_91:                               # %if.then57.i
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	%r15d, (%rax)
	movq	216(%rsp), %rax                 # 8-byte Reload
	movl	%ecx, (%rax)
	decl	%ecx
	je	.LBB0_4
# %bb.92:                               # %if.then.i.i
	movq	248(%rsp), %rbx                 # 8-byte Reload
	movq	%rcx, %r14
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*56(%rbx)
	addl	%r14d, 28(%rbx)
	jmp	.LBB0_4
.LBB0_93:                               # %if.then25.3.i
	movl	$0, 108(%rsp)
	xorl	%r10d, %r10d
	movl	%r15d, %eax
	movl	96(%rsp,%rax,4), %ecx
	cmpl	%r14d, %ecx
	jae	.LBB0_91
.LBB0_94:                               # %if.end60.i
	movq	%rcx, (%rsp)                    # 8-byte Spill
	cmpl	%r14d, 12(%rsp)                 # 4-byte Folded Reload
	jae	.LBB0_98
# %bb.95:                               # %if.end70.i
	cmpb	%r13b, %bl
	je	.LBB0_100
# %bb.96:                               # %if.end70.i
	movq	(%rsp), %rax                    # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	orl	12(%rsp), %eax                  # 4-byte Folded Reload
	cmpl	$1, %eax
	ja	.LBB0_100
# %bb.97:                               # %if.then88.i
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	$-1, (%rax)
	jmp	.LBB0_111
.LBB0_98:                               # %if.then63.i
	movl	196(%rsp), %eax
	decl	%eax
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movl	760(%rcx,%rax,8), %eax
	addl	$4, %eax
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, (%rcx)
	movl	12(%rsp), %esi                  # 4-byte Reload
	movq	216(%rsp), %rax                 # 8-byte Reload
	movl	%esi, (%rax)
	decl	%esi
	je	.LBB0_4
# %bb.99:                               # %if.then.i490.i
	movq	248(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdi
	movl	%esi, %ebx
	callq	*56(%r14)
	addl	%ebx, 28(%r14)
	jmp	.LBB0_4
.LBB0_100:                              # %if.end89.i
	movl	%r13d, 40(%rsp)                 # 4-byte Spill
	movq	%r12, 272(%rsp)                 # 8-byte Spill
	movq	136(%rsp), %r14                 # 8-byte Reload
	movl	736(%r14), %r13d
	movl	%r13d, 69348(%r14)
	movl	2960(%r14), %r12d
	movq	304(%rsp), %rcx                 # 8-byte Reload
	andl	%ecx, %r12d
	movq	%r13, %rax
	shlq	$5, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	addq	%r14, %rax
	addq	$27548, %rax                    # imm = 0x6B9C
	movzwl	(%rax,%r12,2), %edx
	shrl	$4, %edx
	movl	2968(%r14), %r8d
	andl	%ecx, %r8d
	movzbl	2964(%r14), %ecx
	shll	%cl, %r8d
	movzbl	-2(%rsi), %r15d
	movb	$8, %sil
	subb	%cl, %sil
	movl	%esi, %ecx
	shrl	%cl, %r15d
	addl	%r8d, %r15d
	leaq	(%r15,%r15,2), %rcx
	shlq	$9, %rcx
	leal	256(%rbx), %r15d
	movq	%r12, 280(%rsp)                 # 8-byte Spill
	leaq	(%rax,%r12,2), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	lzma_rc_prices@GOTPCREL(%rip), %rax
	movzbl	(%rax,%rdx), %eax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	leaq	(%r14,%rcx), %rsi
	addq	$2972, %rsi                     # imm = 0xB9C
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	cmpq	$6, %r13
	jbe	.LBB0_103
# %bb.101:                              # %do.body.i.preheader.i
	movl	$256, %ecx                      # imm = 0x100
	movl	40(%rsp), %edx                  # 4-byte Reload
	movq	lzma_rc_prices@GOTPCREL(%rip), %r12
	.p2align	4, 0x90
.LBB0_102:                              # %do.body.i.i156
                                        # =>This Inner Loop Header: Depth=1
	addl	%edx, %edx
	movl	%edx, %r8d
	andl	%ecx, %r8d
	movl	%r15d, %r13d
	shrl	$8, %r13d
	addl	%ecx, %r13d
	addl	%r8d, %r13d
	movzwl	(%rsi,%r13,2), %r8d
	movsbl	%r15b, %r13d
	shrl	$7, %r13d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r8d, %r13d
	shrl	$4, %r13d
	movzbl	(%r12,%r13), %r8d
	addl	%r8d, %eax
	leal	(%r15,%r15), %r8d
	movl	%r8d, %r13d
	xorl	%edx, %r13d
	notl	%r13d
	andl	%r13d, %ecx
	cmpl	$32768, %r15d                   # imm = 0x8000
	movl	%r8d, %r15d
	jb	.LBB0_102
	jmp	.LBB0_105
.LBB0_103:                              # %do.body.i.i.i.preheader
	movl	%r15d, %ecx
	movq	lzma_rc_prices@GOTPCREL(%rip), %r12
	.p2align	4, 0x90
.LBB0_104:                              # %do.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %edx
	andl	$1, %edx
	negl	%edx
	shrl	%ecx
	andl	$-2, %r15d
	movzwl	(%rsi,%r15), %r8d
	andl	$2032, %edx                     # imm = 0x7F0
	xorl	%r8d, %edx
	shrl	$4, %edx
	movzbl	(%r12,%rdx), %edx
	addl	%edx, %eax
	movl	%ecx, %r15d
	cmpl	$1, %ecx
	jne	.LBB0_104
.LBB0_105:                              # %get_literal_price.exit.i
	addl	80(%rsp), %eax                  # 4-byte Folded Reload
	movq	136(%rsp), %r14                 # 8-byte Reload
	movl	%eax, 69408(%r14)
	movl	$-1, 69416(%r14)
	movb	$0, 69396(%r14)
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movzwl	(%rcx), %ecx
	shrl	$4, %ecx
	xorq	$127, %rcx
	movzbl	(%r12,%rcx), %ecx
	movq	32(%rsp), %r13                  # 8-byte Reload
	movzwl	27932(%r14,%r13,2), %edx
	shrl	$4, %edx
	xorq	$127, %rdx
	movzbl	(%r12,%rdx), %esi
	addl	%ecx, %esi
	movl	$-1, %edx
	cmpb	40(%rsp), %bl                   # 1-byte Folded Reload
	je	.LBB0_107
# %bb.106:
	movq	272(%rsp), %r8                  # 8-byte Reload
	jmp	.LBB0_109
.LBB0_107:                              # %if.then127.i
	movzwl	27956(%r14,%r13,2), %r8d
	shrl	$4, %r8d
	movzbl	(%r12,%r8), %r15d
	movq	72(%rsp), %r8                   # 8-byte Reload
	addq	%r14, %r8
	movq	280(%rsp), %rbx                 # 8-byte Reload
	movzwl	28028(%r8,%rbx,2), %r8d
	shrl	$4, %r8d
	movzbl	(%r12,%r8), %r8d
	addl	%esi, %r15d
	addl	%r8d, %r15d
	cmpl	%eax, %r15d
	movq	272(%rsp), %r8                  # 8-byte Reload
	jae	.LBB0_109
# %bb.108:                              # %if.then136.i
	movl	%r15d, 69408(%r14)
	movl	$0, 69416(%r14)
	movb	$0, 69396(%r14)
	xorl	%edx, %edx
.LBB0_109:                              # %if.end143.i
	movl	12(%rsp), %eax                  # 4-byte Reload
	movq	(%rsp), %rbx                    # 8-byte Reload
	cmpl	%ebx, %eax
	cmoval	%eax, %ebx
	cmpl	$1, %ebx
	ja	.LBB0_112
# %bb.110:                              # %if.then156.i
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	%edx, (%rax)
.LBB0_111:                              # %helper1.exit.thread333
	movq	216(%rsp), %rax                 # 8-byte Reload
	movl	$1, (%rax)
	jmp	.LBB0_4
.LBB0_112:                              # %if.end159.i
	movl	$0, 69412(%r14)
	movl	%r8d, 69376(%r14)
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 69380(%r14)
	movq	288(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 69384(%r14)
	movl	%ebp, 69388(%r14)
	movl	%ebx, %edx
	cmpl	$5, %ebx
	movq	%rbx, (%rsp)                    # 8-byte Spill
	jae	.LBB0_114
# %bb.113:
	movl	%ebx, %eax
	jmp	.LBB0_117
.LBB0_114:                              # %vector.ph
	leal	-1(%rbx), %r8d
	movl	%r8d, %r15d
	andl	$-4, %r15d
	movl	%ebx, %eax
	subl	%r15d, %eax
	imulq	$44, %rdx, %r12
	subq	%r15, %rdx
	addq	%r14, %r12
	addq	$69364, %r12                    # imm = 0x10EF4
	movq	%r15, %r13
	.p2align	4, 0x90
.LBB0_115:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1073741824, (%r12)             # imm = 0x40000000
	movl	$1073741824, -44(%r12)          # imm = 0x40000000
	movl	$1073741824, -88(%r12)          # imm = 0x40000000
	movl	$1073741824, -132(%r12)         # imm = 0x40000000
	addq	$-176, %r12
	addq	$-4, %r13
	jne	.LBB0_115
# %bb.116:                              # %middle.block
	cmpl	%r8d, %r15d
	movq	136(%rsp), %r14                 # 8-byte Reload
	movq	32(%rsp), %r13                  # 8-byte Reload
	je	.LBB0_119
.LBB0_117:                              # %do.body.i.preheader
	imulq	$44, %rdx, %rdx
	addq	%r14, %rdx
	addq	$69364, %rdx                    # imm = 0x10EF4
	.p2align	4, 0x90
.LBB0_118:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1073741824, (%rdx)             # imm = 0x40000000
	decl	%eax
	addq	$-44, %rdx
	cmpl	$1, %eax
	ja	.LBB0_118
.LBB0_119:                              # %for.cond186.preheader.i
	cmpl	$2, %edi
	movq	280(%rsp), %r12                 # 8-byte Reload
	jae	.LBB0_337
.LBB0_120:                              # %cleanup232.i
	cmpl	$2, %r9d
	jae	.LBB0_341
.LBB0_121:                              # %cleanup232.1.i
	cmpl	$2, %r11d
	jae	.LBB0_345
.LBB0_122:                              # %cleanup232.2.i
	cmpl	$2, %r10d
	jae	.LBB0_349
.LBB0_123:                              # %cleanup232.3.i
	leaq	69348(%r14), %rbp
	leal	1(%rdi), %eax
	cmpl	$2, %edi
	movl	$2, %r11d
	cmovael	%eax, %r11d
	cmpl	12(%rsp), %r11d                 # 4-byte Folded Reload
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	ja	.LBB0_135
# %bb.124:                              # %while.cond.preheader.i
	movzwl	27932(%r14,%r13,2), %eax
	shrl	$4, %eax
	movq	lzma_rc_prices@GOTPCREL(%rip), %rdx
	movzbl	(%rdx,%rax), %eax
	movl	$-1, %r10d
	.p2align	4, 0x90
.LBB0_125:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	incl	%r10d
	cmpl	756(%r14,%r10,8), %r11d
	ja	.LBB0_125
# %bb.126:                              # %for.cond265.preheader.i
	leaq	30212(%r14), %r9
	addl	%ecx, %eax
	movl	196(%rsp), %edx
	leaq	66192(%r14), %rsi
	leaq	67216(%r14), %rdi
	imulq	$1088, %r12, %r8                # imm = 0x440
	addq	%r9, %r8
	movl	$18, %r12d
	jmp	.LBB0_128
	.p2align	4, 0x90
.LBB0_127:                              # %for.inc316.i
                                        #   in Loop: Header=BB0_128 Depth=1
	cmpl	%ecx, %r9d
	cmovnel	%r13d, %r10d
	incl	%r9d
	movl	%r9d, %r11d
.LBB0_128:                              # %for.cond265.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, %r13d
	movl	760(%r14,%r13,8), %r15d
	leal	-2(%r11), %r9d
	cmpl	$6, %r11d
	movl	$3, %ecx
	cmovbl	%r9d, %ecx
	movl	%ecx, %ebx
	cmpq	$127, %r15
	ja	.LBB0_130
# %bb.129:                              # %if.then.i542.i
                                        #   in Loop: Header=BB0_128 Depth=1
	shlq	$9, %rbx
	addq	%rdi, %rbx
	movl	(%rbx,%r15,4), %ecx
	jmp	.LBB0_131
.LBB0_130:                              # %if.else.i537.i
                                        #   in Loop: Header=BB0_128 Depth=1
	testl	%r15d, %r15d
	movl	$30, %ecx
	cmovnsl	%r12d, %ecx
	movl	$60, %ebp
	movl	$36, %r10d
	cmovnsl	%r10d, %ebp
	cmpl	$524288, %r15d                  # imm = 0x80000
	movl	$6, %r10d
	cmovbl	%r10d, %ecx
	movl	$12, %r10d
	cmovbl	%r10d, %ebp
	movq	%r15, %r10
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %r10
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%r10), %r10d
	addl	%ebp, %r10d
	movq	64(%rsp), %rbp                  # 8-byte Reload
	shlq	$8, %rbx
	addq	%rsi, %rbx
	movl	%r15d, %ecx
	andl	$15, %ecx
	movl	69272(%r14,%rcx,4), %ecx
	addl	(%rbx,%r10,4), %ecx
.LBB0_131:                              # %get_pos_len_price.exit.i
                                        #   in Loop: Header=BB0_128 Depth=1
	addl	%eax, %ecx
	movl	%r9d, %r10d
	addl	(%r8,%r10,4), %ecx
	movl	%r11d, %r10d
	imulq	$44, %r10, %r11
	cmpl	16(%rbp,%r11), %ecx
	jae	.LBB0_133
# %bb.132:                              # %if.then280.i
                                        #   in Loop: Header=BB0_128 Depth=1
	addq	%rbp, %r11
	movl	%ecx, 16(%r11)
	movl	$0, 20(%r11)
	leal	4(%r15), %ecx
	movl	%ecx, 24(%r11)
	movb	$0, 4(%r11)
.LBB0_133:                              # %if.end298.i
                                        #   in Loop: Header=BB0_128 Depth=1
	movl	756(%r14,%r13,8), %ecx
	addl	$2, %r9d
	leal	1(%r13), %r10d
	cmpl	%ecx, %r9d
	jne	.LBB0_127
# %bb.134:                              # %if.end298.i
                                        #   in Loop: Header=BB0_128 Depth=1
	cmpl	%edx, %r10d
	jne	.LBB0_127
.LBB0_135:                              # %helper1.exit
	movq	(%rsp), %rcx                    # 8-byte Reload
	cmpl	$-1, %ecx
	je	.LBB0_4
# %bb.136:                              # %for.body.lr.ph
	leaq	740(%r14), %rax
	leaq	27548(%r14), %rdx
	movq	%rdx, 240(%rsp)                 # 8-byte Spill
	leaq	2972(%r14), %rdx
	movq	%rdx, 320(%rsp)                 # 8-byte Spill
	leaq	69376(%r14), %rdx
	movq	%rdx, 352(%rsp)                 # 8-byte Spill
	leaq	48716(%r14), %rdx
	movq	%rdx, 256(%rsp)                 # 8-byte Spill
	movups	(%rax), %xmm0
	movaps	%xmm0, 96(%rsp)
	leaq	2948(%r14), %rax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	leaq	756(%r14), %r15
	leaq	28028(%r14), %rax
	movq	%rax, 296(%rsp)                 # 8-byte Spill
	leaq	30212(%r14), %rax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	leaq	66192(%r14), %rax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	leaq	67216(%r14), %rax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	leaq	69424(%r14), %rax
	movq	%rax, 376(%rsp)                 # 8-byte Spill
	leaq	69540(%r14), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	leaq	69408(%r14), %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	movq	304(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	movl	$1, %r13d
	movl	$4094, %r12d                    # imm = 0xFFE
	movl	$1, %eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	$0, 328(%rsp)                   # 8-byte Folded Spill
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB0_139
.LBB0_137:                              #   in Loop: Header=BB0_139 Depth=1
	movq	40(%rsp), %r15                  # 8-byte Reload
.LBB0_138:                              # %helper2.exit
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	%ecx, %eax
	movq	176(%rsp), %rdx                 # 8-byte Reload
	leal	-1(%rdx), %r12d
	movq	56(%rsp), %rdx                  # 8-byte Reload
	incl	%edx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	312(%rsp), %rdx                 # 8-byte Reload
	incl	%edx
	movq	%rdx, 312(%rsp)                 # 8-byte Spill
	movq	328(%rsp), %rdx                 # 8-byte Reload
	incl	%edx
	movq	%rdx, 328(%rsp)                 # 8-byte Spill
	movq	360(%rsp), %r13                 # 8-byte Reload
	cmpq	%rax, %r13
	jae	.LBB0_354
.LBB0_139:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_318 Depth 2
                                        #     Child Loop BB0_162 Depth 2
                                        #     Child Loop BB0_168 Depth 2
                                        #     Child Loop BB0_166 Depth 2
                                        #     Child Loop BB0_183 Depth 2
                                        #     Child Loop BB0_323 Depth 2
                                        #     Child Loop BB0_327 Depth 2
                                        #     Child Loop BB0_332 Depth 2
                                        #     Child Loop BB0_189 Depth 2
                                        #       Child Loop BB0_193 Depth 3
                                        #       Child Loop BB0_200 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_217 Depth 3
                                        #       Child Loop BB0_221 Depth 3
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_234 Depth 3
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_244 Depth 3
                                        #     Child Loop BB0_253 Depth 2
                                        #     Child Loop BB0_267 Depth 2
                                        #     Child Loop BB0_272 Depth 2
                                        #     Child Loop BB0_276 Depth 2
                                        #     Child Loop BB0_279 Depth 2
                                        #     Child Loop BB0_282 Depth 2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_292 Depth 3
                                        #       Child Loop BB0_296 Depth 3
                                        #       Child Loop BB0_302 Depth 3
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_311 Depth 3
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	248(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	384(%rsp), %r15                 # 8-byte Reload
	movq	%r15, %rsi
	callq	lzma_mf_find@PLT
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, 2952(%r14)
	movl	96(%rbx), %edx
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	cmpl	%edx, %eax
	jae	.LBB0_353
# %bb.140:                              # %if.end33
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%r12d, 48(%rsp)                 # 4-byte Spill
	movq	(%rbx), %r12
	movl	24(%rbx), %r9d
	movl	36(%rbx), %ecx
	subl	%r9d, %ecx
	incl	%ecx
	movl	$4095, %eax                     # imm = 0xFFF
	subl	%r13d, %eax
	cmpl	%eax, %ecx
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
	cmovbl	%ecx, %eax
	movl	%eax, 192(%rsp)                 # 4-byte Spill
	movl	(%r15), %eax
	movl	%eax, 156(%rsp)                 # 4-byte Spill
	imulq	$44, %r13, %rax
	leaq	(%rax,%rbp), %rbx
	movl	20(%rbp,%rax), %ecx
	cmpb	$1, 4(%rbp,%rax)
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	jne	.LBB0_144
# %bb.141:                              # %if.then.i308
                                        #   in Loop: Header=BB0_139 Depth=1
	cmpb	$1, 5(%rbx)
	jne	.LBB0_147
# %bb.142:                              # %if.then10.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	8(%rbx), %eax
	imulq	$44, %rax, %rdx
	xorl	%esi, %esi
	xorl	%edi, %edi
	cmpl	$7, (%rbp,%rdx)
	movq	%r13, %r8
	movl	12(%rbx), %r13d
	setb	%sil
	setae	%dil
	cmpl	$4, %r13d
	leal	8(%rdi,%rdi,2), %edx
	leal	7(%rdi,%rdi,2), %edi
	cmovbl	%edx, %edi
	leal	(%rsi,%rsi,2), %edx
	addl	%edi, %edx
	addl	$-6, %edx
	cmpq	%rcx, %r8
	jne	.LBB0_152
# %bb.143:                              #   in Loop: Header=BB0_139 Depth=1
	movq	32(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB0_145
.LBB0_144:                              # %if.end44.thread.i
                                        #   in Loop: Header=BB0_139 Depth=1
	imulq	$44, %rcx, %rax
	movl	(%rbp,%rax), %edx
	leaq	-1(%r13), %rax
	cmpq	%rcx, %rax
	jne	.LBB0_148
.LBB0_145:                              # %if.then47.i
                                        #   in Loop: Header=BB0_139 Depth=1
	cmpl	$0, 24(%rbx)
	je	.LBB0_150
# %bb.146:                              # %if.else55.i
                                        #   in Loop: Header=BB0_139 Depth=1
	xorl	%eax, %eax
	cmpl	$10, %edx
	setb	%al
	cmpl	$4, %edx
	leal	(%rax,%rax,2), %eax
	leal	-6(%rdx,%rax), %r15d
	movl	$0, %eax
	cmovbl	%eax, %r15d
	jmp	.LBB0_164
.LBB0_147:                              # %if.end44.thread1698.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%ecx, %eax
	decl	%eax
	imulq	$44, %rax, %rdx
	movl	(%rbp,%rdx), %edx
	xorl	%esi, %esi
	cmpl	$10, %edx
	setb	%sil
	cmpl	$4, %edx
	leal	(%rsi,%rsi,2), %esi
	leal	-6(%rdx,%rsi), %edx
	movl	$0, %esi
	cmovbl	%esi, %edx
	cmpq	%rcx, %r13
	movl	%eax, %ecx
	je	.LBB0_145
.LBB0_148:                              # %if.else91.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	24(%rbx), %r13d
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %r13d
	ja	.LBB0_151
# %bb.149:                              # %if.end104.thread.i
                                        #   in Loop: Header=BB0_139 Depth=1
	cmpl	$7, %edx
	setae	%cl
	leal	(%rcx,%rcx,2), %r15d
	addl	$8, %r15d
	jmp	.LBB0_153
.LBB0_150:                              # %if.then52.i
                                        #   in Loop: Header=BB0_139 Depth=1
	xorl	%eax, %eax
	cmpl	$7, %edx
	setae	%al
	leal	9(,%rax,2), %r15d
	jmp	.LBB0_164
.LBB0_151:                              # %if.end104.thread1567.i
                                        #   in Loop: Header=BB0_139 Depth=1
	cmpl	$7, %edx
	setae	%cl
	leal	(%rcx,%rcx,2), %r15d
	addl	$7, %r15d
	jmp	.LBB0_156
.LBB0_152:                              # %if.end104.i
                                        #   in Loop: Header=BB0_139 Depth=1
	xorl	%ecx, %ecx
	cmpl	$7, %edx
	setae	%cl
	leal	(%rcx,%rcx,2), %r15d
	addl	$8, %r15d
	cmpl	$3, %r13d
	ja	.LBB0_156
.LBB0_153:                              # %if.then106.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%r15d, 12(%rsp)                 # 4-byte Spill
	movl	%r13d, %ecx
	imulq	$44, %rax, %r15
	leaq	(%r15,%rbp), %rax
	movl	28(%rax,%rcx,4), %eax
	movl	%eax, 96(%rsp)
	testl	%r13d, %r13d
	je	.LBB0_157
# %bb.154:                              # %for.body.preheader.i
                                        #   in Loop: Header=BB0_139 Depth=1
	leal	1(%r13), %ebp
	movq	352(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r15), %rsi
	leaq	-4(,%rbp,4), %rdx
	leaq	100(%rsp), %rdi
	callq	memcpy@PLT
	cmpl	$2, %r13d
	jbe	.LBB0_158
# %bb.155:                              #   in Loop: Header=BB0_139 Depth=1
	movq	32(%rsp), %r13                  # 8-byte Reload
	movq	16(%rsp), %r9                   # 8-byte Reload
	jmp	.LBB0_163
.LBB0_156:                              # %if.else137.i
                                        #   in Loop: Header=BB0_139 Depth=1
	addl	$-4, %r13d
	movl	%r13d, 96(%rsp)
	imulq	$44, %rax, %rax
	movq	28(%rbp,%rax), %rcx
	movq	%rcx, 100(%rsp)
	movl	36(%rbp,%rax), %eax
	movl	%eax, 108(%rsp)
	movq	32(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB0_164
.LBB0_157:                              #   in Loop: Header=BB0_139 Depth=1
	movl	$1, %ebp
.LBB0_158:                              # %for.body125.preheader.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%ebp, %edx
	leal	2(%r13), %ecx
	movl	$5, %eax
	subq	%rcx, %rax
	cmpq	$16, %rax
	jb	.LBB0_160
# %bb.159:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	$4, %esi
	subq	%rcx, %rsi
	movl	$-3, %ecx
	subl	%r13d, %ecx
	cmpl	%esi, %ecx
	setb	%cl
	shrq	$32, %rsi
	setne	%sil
	orb	%cl, %sil
	je	.LBB0_317
.LBB0_160:                              #   in Loop: Header=BB0_139 Depth=1
	movq	%rdx, %rcx
	movq	32(%rsp), %r13                  # 8-byte Reload
	movq	16(%rsp), %r9                   # 8-byte Reload
.LBB0_161:                              # %for.body125.i.preheader
                                        #   in Loop: Header=BB0_139 Depth=1
	addq	352(%rsp), %r15                 # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB0_162:                              # %for.body125.i
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r15,%rcx,4), %eax
	movl	%eax, 96(%rsp,%rcx,4)
	incq	%rcx
	cmpl	$4, %ecx
	jne	.LBB0_162
.LBB0_163:                              #   in Loop: Header=BB0_139 Depth=1
	movl	12(%rsp), %r15d                 # 4-byte Reload
.LBB0_164:                              # %if.end157.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	%r12, 264(%rsp)                 # 8-byte Spill
	leaq	(%r12,%r9), %r8
	movq	304(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r13), %ecx
	movl	%r15d, (%rbx)
	movl	96(%rsp), %edx
	movl	96(%rsp), %eax
	movl	%eax, 28(%rbx)
	movq	100(%rsp), %rax
	movq	%rax, 32(%rbx)
	movl	108(%rsp), %eax
	movl	%eax, 40(%rbx)
	movl	16(%rbx), %edi
	movq	%r8, %rax
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	subq	%rdx, %rax
	movzbl	-2(%rax), %r9d
	movl	2960(%r14), %eax
	movl	2964(%r14), %r11d
	movl	%eax, 92(%rsp)                  # 4-byte Spill
	movl	%eax, %ebx
	andl	%ecx, %ebx
	movl	%r15d, %edx
	movl	2968(%r14), %eax
	movl	%eax, 228(%rsp)                 # 4-byte Spill
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	andl	%ecx, %eax
	movl	%r11d, %ecx
	shll	%cl, %eax
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movzbl	-2(%r8), %r10d
	movl	$8, %ecx
	movl	%r11d, 340(%rsp)                # 4-byte Spill
	subl	%r11d, %ecx
	movl	%ecx, 336(%rsp)                 # 4-byte Spill
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %r10d
	shlq	$5, %rdx
	addl	%eax, %r10d
	movq	240(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	leaq	(%rax,%rdx), %rsi
	movq	%rbx, 168(%rsp)                 # 8-byte Spill
	movzwl	(%rsi,%rbx,2), %r11d
	shrl	$4, %r11d
	leaq	(%r10,%r10,2), %rbx
	shlq	$9, %rbx
	addq	320(%rsp), %rbx                 # 8-byte Folded Reload
	movq	%r8, 184(%rsp)                  # 8-byte Spill
	movzbl	-1(%r8), %r10d
	movq	lzma_rc_prices@GOTPCREL(%rip), %rax
	movzbl	(%rax,%r11), %ecx
	leal	256(%r10), %edx
	cmpl	$6, %r15d
	jbe	.LBB0_167
# %bb.165:                              # %do.body.i.preheader.i276
                                        #   in Loop: Header=BB0_139 Depth=1
	xorl	%r15d, %r15d
	movl	$256, %eax                      # imm = 0x100
	movl	%r9d, %r8d
	movq	lzma_rc_prices@GOTPCREL(%rip), %r12
	.p2align	4, 0x90
.LBB0_166:                              # %do.body.i.i277
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%r8d, %r8d
	movl	%r8d, %ebp
	andl	%eax, %ebp
	movl	%edx, %r13d
	shrl	$8, %r13d
	addl	%eax, %r13d
	addl	%ebp, %r13d
	movzwl	(%rbx,%r13,2), %ebp
	movsbl	%dl, %r13d
	shrl	$7, %r13d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%ebp, %r13d
	shrl	$4, %r13d
	movzbl	(%r12,%r13), %ebp
	addl	%ebp, %r15d
	leal	(%rdx,%rdx), %ebp
	movl	%ebp, %r13d
	xorl	%r8d, %r13d
	notl	%r13d
	andl	%r13d, %eax
	cmpl	$32768, %edx                    # imm = 0x8000
	movl	%ebp, %edx
	jb	.LBB0_166
	jmp	.LBB0_169
.LBB0_167:                              # %do.body.i.i.i202.preheader
                                        #   in Loop: Header=BB0_139 Depth=1
	xorl	%r15d, %r15d
	movl	%edx, %eax
	movq	lzma_rc_prices@GOTPCREL(%rip), %r8
	.p2align	4, 0x90
.LBB0_168:                              # %do.body.i.i.i202
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	andl	$1, %ebp
	negl	%ebp
	shrl	%eax
	andl	$-2, %edx
	movzwl	(%rbx,%rdx), %r13d
	andl	$2032, %ebp                     # imm = 0x7F0
	xorl	%r13d, %ebp
	shrl	$4, %ebp
	movzbl	(%r8,%rbp), %ebp
	addl	%ebp, %r15d
	movl	%eax, %edx
	cmpl	$1, %eax
	jne	.LBB0_168
.LBB0_169:                              # %get_literal_price.exit.i217
                                        #   in Loop: Header=BB0_139 Depth=1
	addl	%edi, %ecx
	addl	%r15d, %ecx
	movq	32(%rsp), %r13                  # 8-byte Reload
	leaq	1(%r13), %rdx
	movq	%rdx, 360(%rsp)                 # 8-byte Spill
	imulq	$44, %rdx, %rax
	movq	64(%rsp), %rbp                  # 8-byte Reload
	leaq	(%rax,%rbp), %r15
	movl	16(%rbp,%rax), %eax
	cmpl	%eax, %ecx
	setb	%bl
	jae	.LBB0_171
# %bb.170:                              # %if.then201.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	168(%rsp), %rax                 # 8-byte Reload
	leaq	(%rsi,%rax,2), %rax
	movl	%ecx, 16(%r15)
	movl	%r13d, 20(%r15)
	movl	$-1, 24(%r15)
	movb	$0, 4(%r15)
	movzwl	(%rax), %r11d
	shrl	$4, %r11d
	movl	%ecx, %eax
.LBB0_171:                              # %if.end216.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movzwl	%r11w, %edx
	xorq	$127, %rdx
	movq	lzma_rc_prices@GOTPCREL(%rip), %rsi
	movzbl	(%rsi,%rdx), %edx
	addl	%edx, %edi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movzwl	27932(%r14,%rdx,2), %edx
	shrl	$4, %edx
	xorq	$127, %rdx
	movzbl	(%rsi,%rdx), %edx
	movl	%edi, 12(%rsp)                  # 4-byte Spill
	addl	%edi, %edx
	movl	%edx, 152(%rsp)                 # 4-byte Spill
	cmpb	%r10b, %r9b
	movq	184(%rsp), %r12                 # 8-byte Reload
	jne	.LBB0_176
# %bb.172:                              # %land.lhs.true232.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	20(%r15), %edx
	cmpq	%rdx, %r13
	movq	72(%rsp), %r11                  # 8-byte Reload
	jbe	.LBB0_174
# %bb.173:                              # %land.lhs.true240.i
                                        #   in Loop: Header=BB0_139 Depth=1
	cmpl	$0, 24(%r15)
	je	.LBB0_177
.LBB0_174:                              # %if.then248.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movzwl	27956(%r14,%rdx,2), %edx
	shrl	$4, %edx
	movq	%rsi, %rdi
	movzbl	(%rsi,%rdx), %esi
	movq	296(%rsp), %rdx                 # 8-byte Reload
	movq	80(%rsp), %r8                   # 8-byte Reload
	addq	%r8, %rdx
	movq	168(%rsp), %r8                  # 8-byte Reload
	movzwl	(%rdx,%r8,2), %edx
	shrl	$4, %edx
	movzbl	(%rdi,%rdx), %edx
	addl	152(%rsp), %esi                 # 4-byte Folded Reload
	addl	%edx, %esi
	cmpl	%eax, %esi
	ja	.LBB0_177
# %bb.175:                              # %if.then258.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%esi, 16(%r15)
	movl	%r13d, 20(%r15)
	movl	$0, 24(%r15)
	movb	$0, 4(%r15)
	movb	$1, %bl
	jmp	.LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_139 Depth=1
	movq	72(%rsp), %r11                  # 8-byte Reload
.LBB0_177:                              # %if.end274.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	48(%rsp), %eax                  # 4-byte Reload
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movl	192(%rsp), %edx                 # 4-byte Reload
	cmpl	$2, %edx
	jb	.LBB0_137
# %bb.178:                              # %if.end278.i
                                        #   in Loop: Header=BB0_139 Depth=1
	cmpb	%r10b, %r9b
	sete	%al
	cmpl	%r11d, %edx
	movl	%r11d, %esi
	cmovbl	%edx, %esi
	movl	%esi, 148(%rsp)                 # 4-byte Spill
	orb	%bl, %al
	movl	88(%rsp), %r8d                  # 4-byte Reload
	movq	40(%rsp), %r15                  # 8-byte Reload
	je	.LBB0_181
.LBB0_179:                              #   in Loop: Header=BB0_139 Depth=1
	movq	24(%rsp), %r10                  # 8-byte Reload
.LBB0_180:                              # %if.end393.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	16(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_186
.LBB0_181:                              # %if.then291.i
                                        #   in Loop: Header=BB0_139 Depth=1
	leal	1(%r11), %esi
	cmpl	%edx, %esi
	movl	%edx, %r10d
	cmovbl	%esi, %r10d
	cmpl	$2, %r10d
	movq	16(%rsp), %rdi                  # 8-byte Reload
	jb	.LBB0_185
# %bb.182:                              # %land.rhs.preheader.i261
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	176(%rsp), %rdx                 # 8-byte Reload
	cmpq	%r8, %rdx
	movq	%r8, %rax
	cmovbq	%rdx, %rax
	movl	%esi, %edx
	cmpq	%rdx, %rax
	cmovaeq	%rdx, %rax
	movq	%rdi, %rsi
	subq	128(%rsp), %rsi                 # 8-byte Folded Reload
	addq	264(%rsp), %rsi                 # 8-byte Folded Reload
	movl	$1, %r9d
	.p2align	4, 0x90
.LBB0_183:                              # %land.rhs.i262
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%r12,%r9), %edx
	cmpb	-2(%rsi,%r9), %dl
	jne	.LBB0_261
# %bb.184:                              # %while.body.i
                                        #   in Loop: Header=BB0_183 Depth=2
	incq	%r9
	cmpq	%r9, %rax
	jne	.LBB0_183
	jmp	.LBB0_262
.LBB0_185:                              #   in Loop: Header=BB0_139 Depth=1
	movq	24(%rsp), %r10                  # 8-byte Reload
.LBB0_186:                              # %if.end393.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	264(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdi), %rsi
	decq	%rsi
	leaq	-2(%r12), %rax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$7, %r10d
	setae	%al
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addq	296(%rsp), %rcx                 # 8-byte Folded Reload
	movq	168(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rcx,%rdi,2), %rcx
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rax,2), %rdx
	addq	$8, %rdx
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpq	%rax, %r11
	movq	%rax, %rbx
	cmovbq	%r11, %rbx
	cmpq	%r8, %rbx
	cmovaeq	%r8, %rbx
	imulq	$1088, %rdi, %rcx               # imm = 0x440
	movq	256(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	addq	%rcx, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movl	$2, %r9d
	shll	$5, %edx
	addq	240(%rsp), %rdx                 # 8-byte Folded Reload
	movq	%rdx, 400(%rsp)                 # 8-byte Spill
	xorl	%r11d, %r11d
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movq	%rbx, 160(%rsp)                 # 8-byte Spill
	jmp	.LBB0_189
.LBB0_187:                              #   in Loop: Header=BB0_189 Depth=2
	movq	40(%rsp), %r15                  # 8-byte Reload
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	160(%rsp), %rbx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_188:                              # %cleanup.i225
                                        #   in Loop: Header=BB0_189 Depth=2
	incq	%r11
	cmpq	$4, %r11
	je	.LBB0_251
.LBB0_189:                              # %for.body398.i
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_193 Depth 3
                                        #       Child Loop BB0_200 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_217 Depth 3
                                        #       Child Loop BB0_221 Depth 3
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_234 Depth 3
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_244 Depth 3
	movl	96(%rsp,%r11,4), %eax
	movq	%rsi, %rcx
	subq	%rax, %rcx
	movzbl	(%rsi), %edx
	cmpb	-1(%rcx), %dl
	jne	.LBB0_188
# %bb.190:                              # %lor.lhs.false.i252
                                        #   in Loop: Header=BB0_189 Depth=2
	movzbl	(%r12), %edx
	cmpb	(%rcx), %dl
	jne	.LBB0_188
# %bb.191:                              # %for.cond421.preheader.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movl	$2, %r8d
	movl	148(%rsp), %esi                 # 4-byte Reload
	cmpl	$3, %esi
	movq	56(%rsp), %r15                  # 8-byte Reload
	jb	.LBB0_196
# %bb.192:                              # %land.rhs424.i.preheader
                                        #   in Loop: Header=BB0_189 Depth=2
	negq	%rax
	addq	%r12, %rax
	movl	$2, %r8d
	.p2align	4, 0x90
.LBB0_193:                              # %land.rhs424.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-1(%r12,%r8), %edx
	cmpb	-2(%rax,%r8), %dl
	jne	.LBB0_196
# %bb.194:                              # %for.inc435.i
                                        #   in Loop: Header=BB0_193 Depth=3
	incq	%r8
	cmpq	%r8, %rbx
	jne	.LBB0_193
# %bb.195:                              #   in Loop: Header=BB0_189 Depth=2
	movl	%esi, %r8d
.LBB0_196:                              # %for.end437.i
                                        #   in Loop: Header=BB0_189 Depth=2
	leal	(%r8,%r13), %eax
	cmpl	%eax, %edi
	movq	%r9, 48(%rsp)                   # 8-byte Spill
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jae	.LBB0_210
# %bb.197:                              # %while.body442.preheader.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movl	%edi, %ebx
	movl	%eax, %esi
	movq	%rsi, %rax
	subq	%rbx, %rax
	cmpq	$4, %rax
	jae	.LBB0_199
# %bb.198:                              #   in Loop: Header=BB0_189 Depth=2
	movq	%rbx, %r9
	jmp	.LBB0_202
.LBB0_199:                              # %vector.ph474
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	%rax, %rdx
	andq	$-4, %rdx
	leaq	(%rdx,%rbx), %r9
	leal	(%r15,%r8), %r10d
	subq	%rbx, %r10
	andq	$-4, %r10
	imulq	$44, %rbx, %rbx
	addq	120(%rsp), %rbx                 # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB0_200:                              # %vector.body479
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1073741824, -132(%rbx)         # imm = 0x40000000
	movl	$1073741824, -88(%rbx)          # imm = 0x40000000
	movl	$1073741824, -44(%rbx)          # imm = 0x40000000
	movl	$1073741824, (%rbx)             # imm = 0x40000000
	addq	$176, %rbx
	addq	$-4, %r10
	jne	.LBB0_200
# %bb.201:                              # %middle.block471
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	16(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	cmpq	%rdx, %rax
	movq	24(%rsp), %r10                  # 8-byte Reload
	je	.LBB0_210
.LBB0_202:                              # %while.body442.i.preheader
                                        #   in Loop: Header=BB0_189 Depth=2
	movl	%esi, %edx
	subl	%r9d, %edx
	movq	%r9, %rax
	testb	$3, %dl
	je	.LBB0_206
# %bb.203:                              # %while.body442.i.prol.preheader
                                        #   in Loop: Header=BB0_189 Depth=2
	imulq	$44, %r9, %rax
	addq	208(%rsp), %rax                 # 8-byte Folded Reload
	leal	(%r15,%r8), %edx
	subb	%r9b, %dl
	movzbl	%dl, %edx
	andl	$3, %edx
	negq	%rdx
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB0_204:                              # %while.body442.i.prol
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1073741824, (%rax)             # imm = 0x40000000
	decq	%r10
	addq	$44, %rax
	cmpq	%r10, %rdx
	jne	.LBB0_204
# %bb.205:                              # %while.body442.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	%r9, %rax
	subq	%r10, %rax
	movq	24(%rsp), %r10                  # 8-byte Reload
.LBB0_206:                              # %while.body442.i.prol.loopexit
                                        #   in Loop: Header=BB0_189 Depth=2
	subq	%rsi, %r9
	movq	16(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	cmpq	$-4, %r9
	ja	.LBB0_210
# %bb.207:                              # %while.body442.i.preheader3
                                        #   in Loop: Header=BB0_189 Depth=2
	leal	(%r15,%r8), %edx
	subq	%rax, %rdx
	imulq	$44, %rax, %rax
	addq	120(%rsp), %rax                 # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB0_208:                              # %while.body442.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1073741824, -132(%rax)         # imm = 0x40000000
	movl	$1073741824, -88(%rax)          # imm = 0x40000000
	movl	$1073741824, -44(%rax)          # imm = 0x40000000
	movl	$1073741824, (%rax)             # imm = 0x40000000
	addq	$176, %rax
	addq	$-4, %rdx
	jne	.LBB0_208
# %bb.209:                              #   in Loop: Header=BB0_189 Depth=2
	movq	16(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	.p2align	4, 0x90
.LBB0_210:                              # %while.end448.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movzwl	27956(%r14,%r10,2), %eax
	shrl	$4, %eax
	testq	%r11, %r11
	je	.LBB0_213
# %bb.211:                              # %if.else.i.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movzwl	%ax, %eax
	xorq	$127, %rax
	movq	lzma_rc_prices@GOTPCREL(%rip), %rsi
	movzbl	(%rsi,%rax), %eax
	movzwl	27980(%r14,%r10,2), %edx
	shrl	$4, %edx
	cmpq	$1, %r11
	je	.LBB0_214
# %bb.212:                              # %if.else16.i.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movzwl	%dx, %edx
	xorq	$127, %rdx
	movzbl	(%rsi,%rdx), %edx
	addl	%eax, %edx
	movzwl	28004(%r14,%r10,2), %eax
	movq	%rsi, %r9
	movl	$2, %esi
	subl	%r11d, %esi
	andl	$2032, %esi                     # imm = 0x7F0
	xorl	%eax, %esi
	shrl	$4, %esi
	movzbl	(%r9,%rsi), %r10d
	addl	%edx, %r10d
	jmp	.LBB0_215
.LBB0_213:                              # %if.then.i.i257
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	lzma_rc_prices@GOTPCREL(%rip), %rsi
	movzbl	(%rsi,%rax), %eax
	movq	392(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx), %edx
	shrl	$4, %edx
	xorq	$127, %rdx
.LBB0_214:                              # %if.then11.i.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movzbl	(%rsi,%rdx), %r10d
	addl	%eax, %r10d
.LBB0_215:                              # %get_pure_rep_price.exit.i253
                                        #   in Loop: Header=BB0_189 Depth=2
	decq	%rcx
	addl	152(%rsp), %r10d                # 4-byte Folded Reload
	leal	-2(%r8), %esi
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rsi,4), %rax
	movl	%r8d, %edx
	jmp	.LBB0_217
	.p2align	4, 0x90
.LBB0_216:                              # %if.end483.i
                                        #   in Loop: Header=BB0_217 Depth=3
	decl	%edx
	addq	$-4, %rax
	cmpl	$1, %edx
	jbe	.LBB0_219
.LBB0_217:                              # %do.body.i254
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax), %r9d
	addl	%r10d, %r9d
	leal	(%r15,%rdx), %ebx
	imulq	$44, %rbx, %rbx
	cmpl	16(%rbp,%rbx), %r9d
	jae	.LBB0_216
# %bb.218:                              # %if.then462.i
                                        #   in Loop: Header=BB0_217 Depth=3
	addq	%rbp, %rbx
	movl	%r9d, 16(%rbx)
	movl	%r13d, 20(%rbx)
	movl	%r11d, 24(%rbx)
	movb	$0, 4(%rbx)
	jmp	.LBB0_216
	.p2align	4, 0x90
.LBB0_219:                              # %do.end.i
                                        #   in Loop: Header=BB0_189 Depth=2
	leal	1(%r8), %r15d
	testq	%r11, %r11
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmovel	%r15d, %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	addl	%r8d, %eax
	incl	%eax
	movl	192(%rsp), %edx                 # 4-byte Reload
	cmpl	%edx, %eax
	cmovbl	%eax, %edx
	movl	%r15d, %ebx
	cmpl	%edx, %r15d
	jae	.LBB0_226
# %bb.220:                              # %land.rhs505.preheader.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	%rdi, %r12
	movl	%r15d, %ebx
	movq	176(%rsp), %rdi                 # 8-byte Reload
	cmpl	%eax, %edi
	cmovbl	%edi, %eax
	movl	88(%rsp), %edi                  # 4-byte Reload
	cmpl	%edi, %eax
	cmovael	%edi, %eax
	negl	%eax
	addq	%rbx, %rax
	movq	80(%rsp), %r13                  # 8-byte Reload
	movq	%rcx, %rbp
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_221:                              # %land.rhs505.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r13,%rbx), %edi
	cmpb	(%rbp,%rbx), %dil
	jne	.LBB0_224
# %bb.222:                              # %for.inc516.i
                                        #   in Loop: Header=BB0_221 Depth=3
	incq	%r9
	incq	%rbp
	incq	%r13
	movl	%eax, %edi
	addl	%r9d, %edi
	jne	.LBB0_221
# %bb.223:                              #   in Loop: Header=BB0_189 Depth=2
	movl	%edx, %ebx
	jmp	.LBB0_225
.LBB0_224:                              # %for.end518.loopexit.split.loop.exit1718.i
                                        #   in Loop: Header=BB0_189 Depth=2
	addl	%r9d, %ebx
.LBB0_225:                              # %for.end518.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	64(%rsp), %rbp                  # 8-byte Reload
	movq	%r12, %rdi
	movq	32(%rsp), %r13                  # 8-byte Reload
	movq	184(%rsp), %r12                 # 8-byte Reload
.LBB0_226:                              # %for.end518.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movl	%ebx, %r9d
	subl	%r15d, %r9d
	cmpl	$2, %r9d
	jb	.LBB0_187
# %bb.227:                              # %if.then523.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movq	368(%rsp), %rax                 # 8-byte Reload
	leal	(%r8,%rax), %r15d
	movl	%r15d, %eax
	andl	92(%rsp), %eax                  # 4-byte Folded Reload
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movl	(%rdx,%rsi,4), %r13d
	movq	400(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx,%rax,2), %eax
	shrl	$4, %eax
	movq	lzma_rc_prices@GOTPCREL(%rip), %r12
	movzbl	(%r12,%rax), %eax
	movl	%eax, 144(%rsp)                 # 4-byte Spill
	leal	-1(%r8), %eax
	movq	80(%rsp), %rbp                  # 8-byte Reload
	movzbl	(%rbp,%rax), %eax
	movl	%r8d, %edx
	movzbl	(%rcx,%rdx), %esi
	movl	%r15d, %edi
	andl	228(%rsp), %edi                 # 4-byte Folded Reload
	movl	340(%rsp), %ecx                 # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edi
	movl	336(%rsp), %ecx                 # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %eax
	movzbl	(%rbp,%rdx), %r8d
	addl	%edi, %eax
	leaq	(%rax,%rax,2), %rax
	shlq	$9, %rax
	addq	320(%rsp), %rax                 # 8-byte Folded Reload
	orl	$256, %r8d                      # imm = 0x100
	xorl	%ecx, %ecx
	movl	$256, %edx                      # imm = 0x100
	.p2align	4, 0x90
.LBB0_228:                              # %do.body.i1420.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addl	%esi, %esi
	movl	%esi, %edi
	andl	%edx, %edi
	movl	%r8d, %ebp
	shrl	$8, %ebp
	addl	%edx, %ebp
	addl	%edi, %ebp
	movzwl	(%rax,%rbp,2), %edi
	movsbl	%r8b, %ebp
	shrl	$7, %ebp
	andl	$2032, %ebp                     # imm = 0x7F0
	xorl	%edi, %ebp
	shrl	$4, %ebp
	movzbl	(%r12,%rbp), %edi
	addl	%edi, %ecx
	leal	(%r8,%r8), %edi
	movl	%edi, %ebp
	xorl	%esi, %ebp
	notl	%ebp
	andl	%ebp, %edx
	cmpl	$32768, %r8d                    # imm = 0x8000
	movl	%edi, %r8d
	jb	.LBB0_228
# %bb.229:                              # %get_literal_price.exit1446.i
                                        #   in Loop: Header=BB0_189 Depth=2
	incl	%r15d
	andl	92(%rsp), %r15d                 # 4-byte Folded Reload
	movzwl	27708(%r14,%r15,2), %eax
	shrl	$4, %eax
	xorq	$127, %rax
	movzbl	(%r12,%rax), %edx
	movzwl	27942(%r14), %eax
	shrl	$4, %eax
	xorq	$127, %rax
	movzbl	(%r12,%rax), %esi
	movq	16(%rsp), %rax                  # 8-byte Reload
	leal	(%r9,%rax), %r8d
	incl	%r8d
	movq	(%rsp), %rdi                    # 8-byte Reload
	cmpl	%r8d, %edi
	movl	%edx, 348(%rsp)                 # 4-byte Spill
	movl	%esi, 344(%rsp)                 # 4-byte Spill
	jae	.LBB0_232
# %bb.230:                              # %while.body593.preheader.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movl	%edi, %esi
	movl	%r8d, (%rsp)                    # 4-byte Spill
	movl	%r8d, %r12d
	movq	%r12, %rax
	subq	%rsi, %rax
	cmpq	$4, %rax
	jae	.LBB0_233
# %bb.231:                              #   in Loop: Header=BB0_189 Depth=2
	movq	%rsi, %r8
	movq	64(%rsp), %rbp                  # 8-byte Reload
	jmp	.LBB0_237
.LBB0_232:                              # %get_literal_price.exit1446.while.end599_crit_edge.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movl	%r8d, %ebx
	movq	64(%rsp), %rbp                  # 8-byte Reload
	movl	144(%rsp), %r8d                 # 4-byte Reload
	jmp	.LBB0_247
.LBB0_233:                              # %vector.ph461
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	%rax, %rdx
	andq	$-4, %rdx
	leaq	(%rdx,%rsi), %r8
	movq	56(%rsp), %rdi                  # 8-byte Reload
	leal	(%rdi,%rbx), %ebp
	subq	%rsi, %rbp
	andq	$-4, %rbp
	imulq	$44, %rsi, %rsi
	addq	120(%rsp), %rsi                 # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB0_234:                              # %vector.body466
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1073741824, -132(%rsi)         # imm = 0x40000000
	movl	$1073741824, -88(%rsi)          # imm = 0x40000000
	movl	$1073741824, -44(%rsi)          # imm = 0x40000000
	movl	$1073741824, (%rsi)             # imm = 0x40000000
	addq	$176, %rsi
	addq	$-4, %rbp
	jne	.LBB0_234
# %bb.235:                              # %middle.block458
                                        #   in Loop: Header=BB0_189 Depth=2
	cmpq	%rdx, %rax
	movq	64(%rsp), %rbp                  # 8-byte Reload
	jne	.LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_189 Depth=2
	movl	(%rsp), %eax                    # 4-byte Reload
	movl	%eax, %edi
	movq	%r12, %rbx
	movq	lzma_rc_prices@GOTPCREL(%rip), %r12
	movl	144(%rsp), %r8d                 # 4-byte Reload
	jmp	.LBB0_247
.LBB0_237:                              # %while.body593.i.preheader
                                        #   in Loop: Header=BB0_189 Depth=2
	movl	%r12d, %edx
	subl	%r8d, %edx
	movq	%r8, %rax
	testb	$3, %dl
	je	.LBB0_241
# %bb.238:                              # %while.body593.i.prol.preheader
                                        #   in Loop: Header=BB0_189 Depth=2
	imulq	$44, %r8, %rax
	addq	208(%rsp), %rax                 # 8-byte Folded Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	addl	%ebx, %edx
	subb	%r8b, %dl
	movzbl	%dl, %edx
	andl	$3, %edx
	negq	%rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_239:                              # %while.body593.i.prol
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1073741824, (%rax)             # imm = 0x40000000
	decq	%rsi
	addq	$44, %rax
	cmpq	%rsi, %rdx
	jne	.LBB0_239
# %bb.240:                              # %while.body593.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	%r8, %rax
	subq	%rsi, %rax
.LBB0_241:                              # %while.body593.i.prol.loopexit
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	%r12, %rdx
	subq	%r12, %r8
	cmpq	$-4, %r8
	jbe	.LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_189 Depth=2
	movl	(%rsp), %eax                    # 4-byte Reload
	movl	%eax, %edi
	movq	lzma_rc_prices@GOTPCREL(%rip), %r12
	movl	144(%rsp), %r8d                 # 4-byte Reload
	jmp	.LBB0_246
.LBB0_243:                              # %while.body593.i.preheader2
                                        #   in Loop: Header=BB0_189 Depth=2
	addl	56(%rsp), %ebx                  # 4-byte Folded Reload
	subq	%rax, %rbx
	imulq	$44, %rax, %rax
	addq	120(%rsp), %rax                 # 8-byte Folded Reload
	movq	lzma_rc_prices@GOTPCREL(%rip), %r12
	movl	144(%rsp), %r8d                 # 4-byte Reload
	.p2align	4, 0x90
.LBB0_244:                              # %while.body593.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1073741824, -132(%rax)         # imm = 0x40000000
	movl	$1073741824, -88(%rax)          # imm = 0x40000000
	movl	$1073741824, -44(%rax)          # imm = 0x40000000
	movl	$1073741824, (%rax)             # imm = 0x40000000
	addq	$176, %rax
	addq	$-4, %rbx
	jne	.LBB0_244
# %bb.245:                              #   in Loop: Header=BB0_189 Depth=2
	movl	(%rsp), %eax                    # 4-byte Reload
	movl	%eax, %edi
.LBB0_246:                              # %while.end599.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	%rdx, %rbx
.LBB0_247:                              # %while.end599.i
                                        #   in Loop: Header=BB0_189 Depth=2
	addl	$-2, %r9d
	imulq	$1088, %r15, %rax               # imm = 0x440
	addq	256(%rsp), %rax                 # 8-byte Folded Reload
	movzwl	27966(%r14), %edx
	shrl	$4, %edx
	movzbl	(%r12,%rdx), %edx
	movzwl	28188(%r14,%r15,2), %esi
	shrl	$4, %esi
	xorq	$127, %rsi
	movzbl	(%r12,%rsi), %esi
	addl	%r10d, %r13d
	addl	%r8d, %r13d
	addl	%ecx, %r13d
	addl	348(%rsp), %r13d                # 4-byte Folded Reload
	addl	344(%rsp), %r13d                # 4-byte Folded Reload
	addl	(%rax,%r9,4), %r13d
	addl	%edx, %r13d
	addl	%esi, %r13d
	imulq	$44, %rbx, %rax
	cmpl	16(%rbp,%rax), %r13d
	movq	160(%rsp), %rbx                 # 8-byte Reload
	jae	.LBB0_249
# %bb.248:                              # %if.then609.i
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	16(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
	addq	%rbp, %rax
	movl	%r13d, 16(%rax)
	movl	%ecx, 20(%rax)
	movl	$0, 24(%rax)
	movw	$257, 4(%rax)                   # imm = 0x101
	movq	32(%rsp), %r13                  # 8-byte Reload
	movl	%r13d, 8(%rax)
	movl	%r11d, 12(%rax)
	movq	40(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_189 Depth=2
	movq	40(%rsp), %r15                  # 8-byte Reload
	movq	32(%rsp), %r13                  # 8-byte Reload
.LBB0_250:                              # %cleanup.i225
                                        #   in Loop: Header=BB0_189 Depth=2
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	184(%rsp), %r12                 # 8-byte Reload
	jmp	.LBB0_188
.LBB0_251:                              # %for.cond.cleanup397.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	232(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	movl	148(%rsp), %esi                 # 4-byte Reload
	cmpl	%esi, %eax
	movq	72(%rsp), %r11                  # 8-byte Reload
	movq	lzma_rc_prices@GOTPCREL(%rip), %rdx
	jbe	.LBB0_255
# %bb.252:                              # %while.cond649.i.preheader
                                        #   in Loop: Header=BB0_139 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_253:                              # %while.cond649.i
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %eax
	incl	%ecx
	cmpl	(%r15,%rax,8), %esi
	ja	.LBB0_253
# %bb.254:                              # %while.end656.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%ecx, 156(%rsp)                 # 4-byte Spill
	movl	%esi, (%r15,%rax,8)
	movl	%esi, %ecx
.LBB0_255:                              # %if.end662.i
                                        #   in Loop: Header=BB0_139 Depth=1
	cmpl	%r9d, %ecx
	jae	.LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_139 Depth=1
	movq	%rdi, (%rsp)                    # 8-byte Spill
	jmp	.LBB0_138
.LBB0_257:                              # %if.then665.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movzwl	27932(%r14,%r10,2), %eax
	shrl	$4, %eax
	movzbl	(%rdx,%rax), %eax
	addl	%r13d, %ecx
	cmpl	%ecx, %edi
	jae	.LBB0_260
# %bb.258:                              # %while.body675.preheader.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%edi, %r10d
	movl	%ecx, %esi
	movq	%rsi, %rdx
	subq	%r10, %rdx
	cmpq	$3, %rdx
	ja	.LBB0_266
# %bb.259:                              #   in Loop: Header=BB0_139 Depth=1
	movq	%r10, %rdi
	jmp	.LBB0_270
.LBB0_260:                              #   in Loop: Header=BB0_139 Depth=1
	movq	%rdi, (%rsp)                    # 8-byte Spill
	jmp	.LBB0_278
.LBB0_261:                              # %while.end.split.loop.exit.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%r9d, %r10d
.LBB0_262:                              # %while.end.i
                                        #   in Loop: Header=BB0_139 Depth=1
	leal	-3(%r10), %r9d
	cmpl	$-3, %r9d
	ja	.LBB0_179
# %bb.263:                              # %if.then319.i
                                        #   in Loop: Header=BB0_139 Depth=1
	xorl	%eax, %eax
	movq	24(%rsp), %rdx                  # 8-byte Reload
	cmpl	$10, %edx
	setb	%al
	cmpl	$4, %edx
	leal	(%rax,%rax,2), %eax
	leal	-6(%rdx,%rax), %ebx
	movl	$0, %eax
	cmovbl	%eax, %ebx
	movq	368(%rsp), %rax                 # 8-byte Reload
	leal	1(%rax), %r11d
	andl	92(%rsp), %r11d                 # 4-byte Folded Reload
	movq	%rbx, %r15
	shlq	$5, %r15
	movq	240(%rsp), %rax                 # 8-byte Reload
	addq	%r15, %rax
	movzwl	(%rax,%r11,2), %eax
	shrl	$4, %eax
	xorq	$127, %rax
	movq	lzma_rc_prices@GOTPCREL(%rip), %rdx
	movzbl	(%rdx,%rax), %edi
	movzwl	27932(%r14,%rbx,2), %eax
	shrl	$4, %eax
	xorq	$127, %rax
	movzbl	(%rdx,%rax), %eax
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	leal	(%r10,%r13), %esi
	movl	%esi, %edx
	movq	(%rsp), %rax                    # 8-byte Reload
	cmpl	%eax, %esi
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	jbe	.LBB0_321
# %bb.264:                              # %while.body354.preheader.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%esi, 160(%rsp)                 # 4-byte Spill
	movl	%eax, %esi
	movq	%rdx, %rax
	subq	%rsi, %rax
	cmpq	$4, %rax
	jae	.LBB0_322
# %bb.265:                              #   in Loop: Header=BB0_139 Depth=1
	movq	%rsi, %rbp
	jmp	.LBB0_325
.LBB0_266:                              # %vector.ph448
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	%r9, %r12
	movq	%rdx, %r8
	andq	$-4, %r8
	movq	232(%rsp), %rdi                 # 8-byte Reload
	cmpl	%r11d, %edi
	movl	%r11d, %r9d
	cmovbl	%edi, %r9d
	leaq	(%r8,%r10), %rdi
	movq	176(%rsp), %rbx                 # 8-byte Reload
	cmpl	%ebx, %r9d
	cmovael	%ebx, %r9d
	movl	88(%rsp), %ebx                  # 4-byte Reload
	cmpl	%ebx, %r9d
	cmovael	%ebx, %r9d
	addl	56(%rsp), %r9d                  # 4-byte Folded Reload
	subq	%r10, %r9
	andq	$-4, %r9
	imulq	$44, %r10, %r10
	addq	120(%rsp), %r10                 # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB0_267:                              # %vector.body453
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1073741824, -132(%r10)         # imm = 0x40000000
	movl	$1073741824, -88(%r10)          # imm = 0x40000000
	movl	$1073741824, -44(%r10)          # imm = 0x40000000
	movl	$1073741824, (%r10)             # imm = 0x40000000
	addq	$176, %r10
	addq	$-4, %r9
	jne	.LBB0_267
# %bb.268:                              # %middle.block445
                                        #   in Loop: Header=BB0_139 Depth=1
	cmpq	%r8, %rdx
	movq	%r12, %r9
	jne	.LBB0_270
# %bb.269:                              #   in Loop: Header=BB0_139 Depth=1
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	24(%rsp), %r10                  # 8-byte Reload
	jmp	.LBB0_278
.LBB0_270:                              # %while.body675.i.preheader
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%esi, %r8d
	subl	%edi, %r8d
	movq	%rdi, %rdx
	testb	$3, %r8b
	movq	24(%rsp), %r10                  # 8-byte Reload
	je	.LBB0_274
# %bb.271:                              # %while.body675.i.prol.preheader
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	%r9, %rbx
	imulq	$44, %rdi, %rdx
	addq	208(%rsp), %rdx                 # 8-byte Folded Reload
	movq	232(%rsp), %r9                  # 8-byte Reload
	cmpl	%r11d, %r9d
	movl	%r11d, %r8d
	cmovbl	%r9d, %r8d
	movq	176(%rsp), %r9                  # 8-byte Reload
	cmpl	%r9d, %r8d
	cmovael	%r9d, %r8d
	movl	88(%rsp), %r9d                  # 4-byte Reload
	cmpl	%r9d, %r8d
	cmovael	%r9d, %r8d
	addb	56(%rsp), %r8b                  # 1-byte Folded Reload
	subb	%dil, %r8b
	movzbl	%r8b, %r8d
	andl	$3, %r8d
	negq	%r8
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_272:                              # %while.body675.i.prol
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1073741824, (%rdx)             # imm = 0x40000000
	decq	%r9
	addq	$44, %rdx
	cmpq	%r9, %r8
	jne	.LBB0_272
# %bb.273:                              # %while.body675.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	%rdi, %rdx
	subq	%r9, %rdx
	movq	%rbx, %r9
.LBB0_274:                              # %while.body675.i.prol.loopexit
                                        #   in Loop: Header=BB0_139 Depth=1
	subq	%rsi, %rdi
	cmpq	$-4, %rdi
	ja	.LBB0_277
# %bb.275:                              # %while.body675.i.preheader4
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	232(%rsp), %rdi                 # 8-byte Reload
	cmpl	%r11d, %edi
	cmovael	%r11d, %edi
	movq	176(%rsp), %rsi                 # 8-byte Reload
	cmpl	%esi, %edi
	cmovael	%esi, %edi
	movl	88(%rsp), %esi                  # 4-byte Reload
	cmpl	%esi, %edi
	cmovael	%esi, %edi
	addl	56(%rsp), %edi                  # 4-byte Folded Reload
	imulq	$44, %rdx, %rsi
	subq	%rdi, %rdx
	addq	120(%rsp), %rsi                 # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB0_276:                              # %while.body675.i
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1073741824, -132(%rsi)         # imm = 0x40000000
	movl	$1073741824, -88(%rsi)          # imm = 0x40000000
	movl	$1073741824, -44(%rsi)          # imm = 0x40000000
	movl	$1073741824, (%rsi)             # imm = 0x40000000
	addq	$176, %rsi
	addq	$4, %rdx
	jne	.LBB0_276
.LBB0_277:                              #   in Loop: Header=BB0_139 Depth=1
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
.LBB0_278:                              # %while.cond683.preheader.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	$-1, %edi
	.p2align	4, 0x90
.LBB0_279:                              # %while.cond683.i
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	%edi
	cmpl	(%r15,%rdi,8), %r9d
	ja	.LBB0_279
# %bb.280:                              # %for.cond694.preheader.i
                                        #   in Loop: Header=BB0_139 Depth=1
	xorl	%ecx, %ecx
	cmpl	$7, %r10d
	setae	%cl
	addl	%eax, 12(%rsp)                  # 4-byte Folded Spill
	leaq	(%rcx,%rcx,2), %rax
	addq	$7, %rax
	incl	%r11d
	movq	%r11, 72(%rsp)                  # 8-byte Spill
	shll	$5, %eax
	addq	240(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	%r9, 48(%rsp)                   # 8-byte Spill
	movl	%r9d, %r12d
	jmp	.LBB0_282
	.p2align	4, 0x90
.LBB0_281:                              #   in Loop: Header=BB0_282 Depth=2
	movq	40(%rsp), %r15                  # 8-byte Reload
	movl	156(%rsp), %eax                 # 4-byte Reload
	incl	%edi
	cmpl	%eax, %edi
	je	.LBB0_138
.LBB0_282:                              # %for.cond694.i.outer
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_292 Depth 3
                                        #       Child Loop BB0_296 Depth 3
                                        #       Child Loop BB0_302 Depth 3
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_311 Depth 3
	movl	%r12d, %r13d
	movl	%edi, %edi
	movq	328(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r13), %r11d
	leal	-2(%r13), %esi
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_283:                              # %for.cond694.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%r9,%r13), %eax
	movl	4(%r15,%rdi,8), %r10d
	cmpl	$6, %eax
	leal	-2(%r13,%r9), %ebx
	movl	$3, %ecx
	cmovbl	%ebx, %ecx
	movl	%ecx, %edx
	cmpq	$127, %r10
	ja	.LBB0_285
# %bb.284:                              # %if.then.i1483.i
                                        #   in Loop: Header=BB0_283 Depth=3
	shlq	$9, %rdx
	addq	272(%rsp), %rdx                 # 8-byte Folded Reload
	movl	(%rdx,%r10,4), %r8d
	jmp	.LBB0_286
	.p2align	4, 0x90
.LBB0_285:                              # %if.else.i1475.i
                                        #   in Loop: Header=BB0_283 Depth=3
	testl	%r10d, %r10d
	movl	$30, %ecx
	movl	$18, %r8d
	cmovnsl	%r8d, %ecx
	movl	$60, %r8d
	movl	$36, %r15d
	cmovnsl	%r15d, %r8d
	cmpl	$524288, %r10d                  # imm = 0x80000
	movl	$6, %r15d
	cmovbl	%r15d, %ecx
	movl	$12, %r15d
	cmovbl	%r15d, %r8d
	movq	%r10, %r15
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %r15
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%r15), %ecx
	movq	40(%rsp), %r15                  # 8-byte Reload
	addl	%r8d, %ecx
	shlq	$8, %rdx
	addq	280(%rsp), %rdx                 # 8-byte Folded Reload
	movl	%r10d, %r8d
	andl	$15, %r8d
	movl	69272(%r14,%r8,4), %r8d
	addl	(%rdx,%rcx,4), %r8d
.LBB0_286:                              # %get_pos_len_price.exit.i248
                                        #   in Loop: Header=BB0_283 Depth=3
	addl	12(%rsp), %r8d                  # 4-byte Folded Reload
	leal	(%rsi,%r9), %ecx
	movl	%ecx, %ecx
	movq	288(%rsp), %rdx                 # 8-byte Reload
	movq	168(%rsp), %r12                 # 8-byte Reload
	addq	%r12, %rdx
	addl	(%rdx,%rcx,4), %r8d
	leal	(%r11,%r9), %ecx
	incl	%ecx
	imulq	$44, %rcx, %rcx
	cmpl	16(%rbp,%rcx), %r8d
	jae	.LBB0_288
# %bb.287:                              # %if.then708.i
                                        #   in Loop: Header=BB0_283 Depth=3
	addq	%rbp, %rcx
	movl	%r8d, 16(%rcx)
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movl	%edx, 20(%rcx)
	leal	4(%r10), %edx
	movl	%edx, 24(%rcx)
	movb	$0, 4(%rcx)
.LBB0_288:                              # %if.end730.i
                                        #   in Loop: Header=BB0_283 Depth=3
	addl	$2, %ebx
	cmpl	(%r15,%rdi,8), %ebx
	je	.LBB0_290
# %bb.289:                              # %if.end730.for.inc906_crit_edge.i
                                        #   in Loop: Header=BB0_283 Depth=3
	incl	%r9d
	jmp	.LBB0_283
	.p2align	4, 0x90
.LBB0_290:                              # %if.then737.i
                                        #   in Loop: Header=BB0_282 Depth=2
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addl	%r9d, %ecx
	incl	%ecx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	264(%rsp), %r15                 # 8-byte Reload
	subq	%r10, %r15
	leal	(%r9,%r13), %r12d
	incl	%r12d
	movq	72(%rsp), %rcx                  # 8-byte Reload
	addl	%eax, %ecx
	movl	192(%rsp), %edx                 # 4-byte Reload
	cmpl	%edx, %ecx
	cmovael	%edx, %ecx
	movl	%r12d, %ebx
	cmpl	%ecx, %r12d
	movq	80(%rsp), %rsi                  # 8-byte Reload
	jae	.LBB0_294
# %bb.291:                              # %land.rhs757.preheader.i
                                        #   in Loop: Header=BB0_282 Depth=2
	movl	%ecx, %ecx
	movq	48(%rsp), %rbx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_292:                              # %land.rhs757.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rsi,%rbx), %edx
	cmpb	(%r15,%rbx), %dl
	jne	.LBB0_294
# %bb.293:                              # %for.inc768.i
                                        #   in Loop: Header=BB0_292 Depth=3
	incq	%rbx
	cmpq	%rcx, %rbx
	jb	.LBB0_292
.LBB0_294:                              # %for.end770.i
                                        #   in Loop: Header=BB0_282 Depth=2
	movl	%r13d, %ecx
	notl	%ecx
	addl	%ebx, %ecx
	subl	%r9d, %ecx
	cmpl	$2, %ecx
	jb	.LBB0_281
# %bb.295:                              # %if.then775.i
                                        #   in Loop: Header=BB0_282 Depth=2
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%r12d, 128(%rsp)                # 4-byte Spill
	movq	312(%rsp), %rcx                 # 8-byte Reload
	leal	(%rax,%rcx), %edx
	movl	%edx, %r12d
	andl	92(%rsp), %r12d                 # 4-byte Folded Reload
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	movzwl	(%rcx,%r12,2), %ecx
	shrl	$4, %ecx
	movq	lzma_rc_prices@GOTPCREL(%rip), %r12
	movzbl	(%r12,%rcx), %ecx
	movl	%ecx, 184(%rsp)                 # 4-byte Spill
	leal	(%r9,%r13), %ecx
	decl	%ecx
	movzbl	(%rsi,%rcx), %ebp
	andl	228(%rsp), %edx                 # 4-byte Folded Reload
	movzbl	2964(%r14), %ecx
	shll	%cl, %edx
	movq	%rsi, %r14
	movq	%r12, %rsi
	movl	%eax, %r12d
	movzbl	(%r15,%r12), %r15d
	movb	$8, %al
	subb	%cl, %al
	movl	%eax, %ecx
	shrl	%cl, %ebp
	movzbl	(%r14,%r12), %r14d
	addl	%edx, %ebp
	leaq	(,%rbp,2), %rdx
	addq	%rbp, %rdx
	shlq	$9, %rdx
	addq	320(%rsp), %rdx                 # 8-byte Folded Reload
	orl	$256, %r14d                     # imm = 0x100
	xorl	%eax, %eax
	movl	$256, %ebp                      # imm = 0x100
	.p2align	4, 0x90
.LBB0_296:                              # %do.body.i1499.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addl	%r15d, %r15d
	movl	%r15d, %r12d
	andl	%ebp, %r12d
	movl	%r14d, %ecx
	shrl	$8, %ecx
	addl	%ebp, %ecx
	addl	%r12d, %ecx
	movzwl	(%rdx,%rcx,2), %ecx
	movsbl	%r14b, %r12d
	shrl	$7, %r12d
	andl	$2032, %r12d                    # imm = 0x7F0
	xorl	%ecx, %r12d
	shrl	$4, %r12d
	movzbl	(%rsi,%r12), %ecx
	addl	%ecx, %eax
	leal	(%r14,%r14), %ecx
	movl	%ecx, %r12d
	xorl	%r15d, %r12d
	notl	%r12d
	andl	%r12d, %ebp
	cmpl	$32768, %r14d                   # imm = 0x8000
	movl	%ecx, %r14d
	jb	.LBB0_296
# %bb.297:                              # %get_literal_price.exit1525.i
                                        #   in Loop: Header=BB0_282 Depth=2
	movq	16(%rsp), %rdx                  # 8-byte Reload
	incl	%edx
	andl	92(%rsp), %edx                  # 4-byte Folded Reload
	movq	136(%rsp), %r14                 # 8-byte Reload
	movzwl	27676(%r14,%rdx,2), %ecx
	shrl	$4, %ecx
	xorq	$127, %rcx
	movzbl	(%rsi,%rcx), %ecx
	movl	%ecx, 152(%rsp)                 # 4-byte Spill
	movzwl	27940(%r14), %ecx
	shrl	$4, %ecx
	xorq	$127, %rcx
	movzbl	(%rsi,%rcx), %ecx
	movl	%ecx, 148(%rsp)                 # 4-byte Spill
	leal	(%r11,%r9), %ecx
	movq	24(%rsp), %r15                  # 8-byte Reload
	leal	(%r15,%rcx), %r12d
	addl	$2, %r12d
	movl	%r12d, %r15d
	movq	(%rsp), %rcx                    # 8-byte Reload
	cmpl	%r12d, %ecx
	movq	64(%rsp), %rbp                  # 8-byte Reload
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	jae	.LBB0_300
# %bb.298:                              # %while.body842.preheader.i
                                        #   in Loop: Header=BB0_282 Depth=2
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movl	%ecx, %esi
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmpq	$4, %rdx
	jae	.LBB0_301
# %bb.299:                              #   in Loop: Header=BB0_282 Depth=2
	movq	%rsi, %rcx
	jmp	.LBB0_305
	.p2align	4, 0x90
.LBB0_300:                              # %get_literal_price.exit1525.while.end848_crit_edge.i
                                        #   in Loop: Header=BB0_282 Depth=2
	movq	40(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB0_314
.LBB0_301:                              # %vector.ph435
                                        #   in Loop: Header=BB0_282 Depth=2
	movq	%rdx, %r15
	andq	$-4, %r15
	leaq	(%r15,%rsi), %rcx
	movq	56(%rsp), %rbp                  # 8-byte Reload
	addl	%ebx, %ebp
	subq	%rsi, %rbp
	andq	$-4, %rbp
	imulq	$44, %rsi, %rsi
	addq	120(%rsp), %rsi                 # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB0_302:                              # %vector.body440
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1073741824, -132(%rsi)         # imm = 0x40000000
	movl	$1073741824, -88(%rsi)          # imm = 0x40000000
	movl	$1073741824, -44(%rsi)          # imm = 0x40000000
	movl	$1073741824, (%rsi)             # imm = 0x40000000
	addq	$176, %rsi
	addq	$-4, %rbp
	jne	.LBB0_302
# %bb.303:                              # %middle.block432
                                        #   in Loop: Header=BB0_282 Depth=2
	cmpq	%r15, %rdx
	movq	64(%rsp), %rbp                  # 8-byte Reload
	movq	24(%rsp), %r15                  # 8-byte Reload
	jne	.LBB0_305
# %bb.304:                              #   in Loop: Header=BB0_282 Depth=2
	movl	%r12d, %ecx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	40(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB0_313
.LBB0_305:                              # %while.body842.i.preheader
                                        #   in Loop: Header=BB0_282 Depth=2
	movl	%r15d, %edx
	subl	%ecx, %edx
	movq	%rcx, %rsi
	testb	$3, %dl
	je	.LBB0_309
# %bb.306:                              # %while.body842.i.prol.preheader
                                        #   in Loop: Header=BB0_282 Depth=2
	imulq	$44, %rcx, %rdx
	addq	208(%rsp), %rdx                 # 8-byte Folded Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	addl	%ebx, %esi
	subb	%cl, %sil
	movzbl	%sil, %r15d
	andl	$3, %r15d
	negq	%r15
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_307:                              # %while.body842.i.prol
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1073741824, (%rdx)             # imm = 0x40000000
	decq	%rbp
	addq	$44, %rdx
	cmpq	%rbp, %r15
	jne	.LBB0_307
# %bb.308:                              # %while.body842.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB0_282 Depth=2
	movq	%rcx, %rsi
	subq	%rbp, %rsi
	movq	64(%rsp), %rbp                  # 8-byte Reload
	movq	24(%rsp), %r15                  # 8-byte Reload
.LBB0_309:                              # %while.body842.i.prol.loopexit
                                        #   in Loop: Header=BB0_282 Depth=2
	subq	%r15, %rcx
	cmpq	$-4, %rcx
	movq	40(%rsp), %r15                  # 8-byte Reload
	ja	.LBB0_312
# %bb.310:                              # %while.body842.i.preheader1
                                        #   in Loop: Header=BB0_282 Depth=2
	movq	56(%rsp), %rcx                  # 8-byte Reload
	leal	(%rcx,%rbx), %edx
	subq	%rsi, %rdx
	imulq	$44, %rsi, %rcx
	addq	120(%rsp), %rcx                 # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB0_311:                              # %while.body842.i
                                        #   Parent Loop BB0_139 Depth=1
                                        #     Parent Loop BB0_282 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1073741824, -132(%rcx)         # imm = 0x40000000
	movl	$1073741824, -88(%rcx)          # imm = 0x40000000
	movl	$1073741824, -44(%rcx)          # imm = 0x40000000
	movl	$1073741824, (%rcx)             # imm = 0x40000000
	addq	$176, %rcx
	addq	$-4, %rdx
	jne	.LBB0_311
.LBB0_312:                              #   in Loop: Header=BB0_282 Depth=2
	movl	%r12d, %ecx
	movq	%rcx, (%rsp)                    # 8-byte Spill
.LBB0_313:                              # %while.end848.i
                                        #   in Loop: Header=BB0_282 Depth=2
	movq	lzma_rc_prices@GOTPCREL(%rip), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
.LBB0_314:                              # %while.end848.i
                                        #   in Loop: Header=BB0_282 Depth=2
	subl	%r13d, %ebx
	subl	%r9d, %ebx
	addl	$-3, %ebx
	imulq	$1088, %rdx, %rcx               # imm = 0x440
	addq	256(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rdx, %r13
	movzwl	27964(%r14), %edx
	shrl	$4, %edx
	movzbl	(%rsi,%rdx), %edx
	movq	%rsi, %r12
	movzwl	28156(%r14,%r13,2), %esi
	shrl	$4, %esi
	xorq	$127, %rsi
	movzbl	(%r12,%rsi), %esi
	addl	184(%rsp), %r8d                 # 4-byte Folded Reload
	addl	%eax, %r8d
	addl	152(%rsp), %r8d                 # 4-byte Folded Reload
	addl	148(%rsp), %r8d                 # 4-byte Folded Reload
	addl	(%rcx,%rbx,4), %r8d
	addl	%edx, %r8d
	addl	%esi, %r8d
	imulq	$44, 24(%rsp), %rax             # 8-byte Folded Reload
	cmpl	16(%rbp,%rax), %r8d
	jae	.LBB0_316
# %bb.315:                              # %if.then857.i
                                        #   in Loop: Header=BB0_282 Depth=2
	leal	(%r9,%r11), %ecx
	addl	$2, %ecx
	addq	%rbp, %rax
	movl	%r8d, 16(%rax)
	movl	%ecx, 20(%rax)
	movl	$0, 24(%rax)
	movw	$257, 4(%rax)                   # imm = 0x101
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, 8(%rax)
	leal	4(%r10), %ecx
	movl	%ecx, 12(%rax)
.LBB0_316:                              # %if.end890.i
                                        #   in Loop: Header=BB0_282 Depth=2
	movl	156(%rsp), %eax                 # 4-byte Reload
	movl	128(%rsp), %r12d                # 4-byte Reload
	incl	%edi
	cmpl	%eax, %edi
	jne	.LBB0_282
	jmp	.LBB0_138
.LBB0_317:                              # %vector.ph500
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	%rax, %rsi
	andq	$-16, %rsi
	leaq	(%rsi,%rdx), %rcx
	leaq	100(%rsp), %rdi
	leaq	(%rdi,%rdx,4), %rdi
	addq	$44, %rdi
	leaq	(%r15,%rdx,4), %rdx
	addq	376(%rsp), %rdx                 # 8-byte Folded Reload
	xorl	%r8d, %r8d
	movq	32(%rsp), %r13                  # 8-byte Reload
	movq	16(%rsp), %r9                   # 8-byte Reload
	.p2align	4, 0x90
.LBB0_318:                              # %vector.body505
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rdx,%r8,4), %xmm0
	movups	-32(%rdx,%r8,4), %xmm1
	movups	-16(%rdx,%r8,4), %xmm2
	movups	(%rdx,%r8,4), %xmm3
	movups	%xmm0, -48(%rdi,%r8,4)
	movups	%xmm1, -32(%rdi,%r8,4)
	movups	%xmm2, -16(%rdi,%r8,4)
	movups	%xmm3, (%rdi,%r8,4)
	addq	$16, %r8
	cmpq	%r8, %rsi
	jne	.LBB0_318
# %bb.319:                              # %middle.block497
                                        #   in Loop: Header=BB0_139 Depth=1
	cmpq	%rsi, %rax
	jne	.LBB0_161
	jmp	.LBB0_163
.LBB0_321:                              # %if.then319.while.end360_crit_edge.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%edi, %r10d
	jmp	.LBB0_334
.LBB0_322:                              # %vector.ph487
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	%rax, %rdx
	andq	$-4, %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	leaq	(%rdx,%rsi), %rbp
	movq	56(%rsp), %rdx                  # 8-byte Reload
	leal	(%r10,%rdx), %r13d
	subq	%rsi, %r13
	andq	$-4, %r13
	imulq	$44, %rsi, %rsi
	addq	120(%rsp), %rsi                 # 8-byte Folded Reload
.LBB0_323:                              # %vector.body492
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1073741824, -132(%rsi)         # imm = 0x40000000
	movl	$1073741824, -88(%rsi)          # imm = 0x40000000
	movl	$1073741824, -44(%rsi)          # imm = 0x40000000
	movl	$1073741824, (%rsi)             # imm = 0x40000000
	addq	$176, %rsi
	addq	$-4, %r13
	jne	.LBB0_323
# %bb.324:                              # %middle.block484
                                        #   in Loop: Header=BB0_139 Depth=1
	cmpq	(%rsp), %rax                    # 8-byte Folded Reload
	movq	32(%rsp), %r13                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	je	.LBB0_330
.LBB0_325:                              # %while.body354.i.preheader
                                        #   in Loop: Header=BB0_139 Depth=1
                                        # kill: def $edx killed $edx killed $rdx
	subl	%ebp, %edx
	movq	%rbp, %rax
	testb	$3, %dl
	je	.LBB0_329
# %bb.326:                              # %while.body354.i.prol.preheader
                                        #   in Loop: Header=BB0_139 Depth=1
	imulq	$44, %rbp, %rax
	addq	208(%rsp), %rax                 # 8-byte Folded Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	addl	%r10d, %edx
	subb	%bpl, %dl
	movzbl	%dl, %r13d
	andl	$3, %r13d
	negq	%r13
	xorl	%esi, %esi
.LBB0_327:                              # %while.body354.i.prol
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1073741824, (%rax)             # imm = 0x40000000
	decq	%rsi
	addq	$44, %rax
	cmpq	%rsi, %r13
	jne	.LBB0_327
# %bb.328:                              # %while.body354.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	%rbp, %rax
	subq	%rsi, %rax
	movq	32(%rsp), %r13                  # 8-byte Reload
.LBB0_329:                              # %while.body354.i.prol.loopexit
                                        #   in Loop: Header=BB0_139 Depth=1
	subq	48(%rsp), %rbp                  # 8-byte Folded Reload
	cmpq	$-4, %rbp
	jbe	.LBB0_331
.LBB0_330:                              #   in Loop: Header=BB0_139 Depth=1
	movl	%edi, %r10d
	movl	160(%rsp), %eax                 # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	64(%rsp), %rbp                  # 8-byte Reload
	jmp	.LBB0_334
.LBB0_331:                              # %while.body354.i.preheader5
                                        #   in Loop: Header=BB0_139 Depth=1
	addl	56(%rsp), %r10d                 # 4-byte Folded Reload
	subq	%rax, %r10
	imulq	$44, %rax, %rax
	addq	120(%rsp), %rax                 # 8-byte Folded Reload
	movq	64(%rsp), %rbp                  # 8-byte Reload
	movl	160(%rsp), %edx                 # 4-byte Reload
.LBB0_332:                              # %while.body354.i
                                        #   Parent Loop BB0_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1073741824, -132(%rax)         # imm = 0x40000000
	movl	$1073741824, -88(%rax)          # imm = 0x40000000
	movl	$1073741824, -44(%rax)          # imm = 0x40000000
	movl	$1073741824, (%rax)             # imm = 0x40000000
	addq	$176, %rax
	addq	$-4, %r10
	jne	.LBB0_332
# %bb.333:                              #   in Loop: Header=BB0_139 Depth=1
	movl	%edi, %r10d
	movl	%edx, %eax
	movq	%rax, (%rsp)                    # 8-byte Spill
.LBB0_334:                              # %while.end360.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movl	%r9d, %eax
	imulq	$1088, %r11, %rdx               # imm = 0x440
	addq	256(%rsp), %rdx                 # 8-byte Folded Reload
	movzwl	27956(%r14,%rbx,2), %esi
	shrl	$4, %esi
	movq	lzma_rc_prices@GOTPCREL(%rip), %rdi
	movzbl	(%rdi,%rsi), %esi
	addq	296(%rsp), %r15                 # 8-byte Folded Reload
	movzwl	(%r15,%r11,2), %r9d
	shrl	$4, %r9d
	xorq	$127, %r9
	movzbl	(%rdi,%r9), %r9d
	addl	%r10d, %ecx
	addl	128(%rsp), %ecx                 # 4-byte Folded Reload
	addl	(%rdx,%rax,4), %ecx
	addl	%esi, %ecx
	addl	%r9d, %ecx
	imulq	$44, 48(%rsp), %rax             # 8-byte Folded Reload
	cmpl	16(%rbp,%rax), %ecx
	movq	24(%rsp), %r10                  # 8-byte Reload
	jae	.LBB0_336
# %bb.335:                              # %if.then369.i
                                        #   in Loop: Header=BB0_139 Depth=1
	addq	%rbp, %rax
	movl	%ecx, 16(%rax)
	movq	360(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, 20(%rax)
	movl	$0, 24(%rax)
	movw	$1, 4(%rax)
.LBB0_336:                              # %if.end393.i
                                        #   in Loop: Header=BB0_139 Depth=1
	movq	40(%rsp), %r15                  # 8-byte Reload
	movq	72(%rsp), %r11                  # 8-byte Reload
	jmp	.LBB0_180
.LBB0_337:                              # %get_pure_rep_price.exit.i
	movq	72(%rsp), %rax                  # 8-byte Reload
	addq	%r14, %rax
	movzwl	28028(%rax,%r12,2), %eax
	shrl	$4, %eax
	xorq	$127, %rax
	movq	lzma_rc_prices@GOTPCREL(%rip), %r8
	movzbl	(%r8,%rax), %edx
	movzwl	27956(%r14,%r13,2), %eax
	shrl	$4, %eax
	movzbl	(%r8,%rax), %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	%edi, %edx
	imulq	$44, %rdx, %r8
	decq	%rdx
	addq	%r14, %r8
	addq	$69372, %r8                     # imm = 0x10EFC
	imulq	$1088, %r12, %rbx               # imm = 0x440
	addq	%r14, %rbx
	addq	$48708, %rbx                    # imm = 0xBE44
	jmp	.LBB0_339
	.p2align	4, 0x90
.LBB0_338:                              # %if.end226.i
                                        #   in Loop: Header=BB0_339 Depth=1
	movq	%rdx, %r15
	decq	%r15
	addq	$-44, %r8
	testl	$-2, %edx
	movq	%r15, %rdx
	je	.LBB0_120
.LBB0_339:                              # %do.body201.i
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rbx,%rdx,4), %ebp
	addl	%eax, %ebp
	cmpl	-8(%r8), %ebp
	jae	.LBB0_338
# %bb.340:                              # %if.then210.i
                                        #   in Loop: Header=BB0_339 Depth=1
	movl	%ebp, -8(%r8)
	movq	$0, -4(%r8)
	movb	$0, -20(%r8)
	jmp	.LBB0_338
.LBB0_341:                              # %get_pure_rep_price.exit.1.i
	movzwl	27980(%r14,%r13,2), %eax
	shrl	$4, %eax
	movq	lzma_rc_prices@GOTPCREL(%rip), %r8
	movzbl	(%r8,%rax), %eax
	movzwl	27956(%r14,%r13,2), %edx
	shrl	$4, %edx
	xorq	$127, %rdx
	movzbl	(%r8,%rdx), %edx
	addl	%esi, %eax
	addl	%edx, %eax
	movl	%r9d, %edx
	imulq	$44, %rdx, %r8
	decq	%rdx
	addq	%r14, %r8
	addq	$69372, %r8                     # imm = 0x10EFC
	imulq	$1088, %r12, %r9                # imm = 0x440
	addq	%r14, %r9
	addq	$48708, %r9                     # imm = 0xBE44
	movabsq	$4294967296, %rbx               # imm = 0x100000000
	jmp	.LBB0_343
	.p2align	4, 0x90
.LBB0_342:                              # %if.end226.1.i
                                        #   in Loop: Header=BB0_343 Depth=1
	movq	%rdx, %r15
	decq	%r15
	addq	$-44, %r8
	testl	$-2, %edx
	movq	%r15, %rdx
	je	.LBB0_121
.LBB0_343:                              # %do.body201.1.i
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%r9,%rdx,4), %ebp
	addl	%eax, %ebp
	cmpl	-8(%r8), %ebp
	jae	.LBB0_342
# %bb.344:                              # %if.then210.1.i
                                        #   in Loop: Header=BB0_343 Depth=1
	movl	%ebp, -8(%r8)
	movq	%rbx, -4(%r8)
	movb	$0, -20(%r8)
	jmp	.LBB0_342
.LBB0_345:                              # %get_pure_rep_price.exit.2.i
	movzwl	27980(%r14,%r13,2), %eax
	shrl	$4, %eax
	xorq	$127, %rax
	movq	lzma_rc_prices@GOTPCREL(%rip), %r9
	movzbl	(%r9,%rax), %eax
	movzwl	27956(%r14,%r13,2), %edx
	shrl	$4, %edx
	xorq	$127, %rdx
	movzbl	(%r9,%rdx), %edx
	movzwl	28004(%r14,%r13,2), %r8d
	shrl	$4, %r8d
	movzbl	(%r9,%r8), %r8d
	addl	%edx, %r8d
	addl	%esi, %eax
	addl	%r8d, %eax
	movl	%r11d, %edx
	imulq	$44, %rdx, %r8
	decq	%rdx
	addq	%r14, %r8
	addq	$69372, %r8                     # imm = 0x10EFC
	imulq	$1088, %r12, %r9                # imm = 0x440
	addq	%r14, %r9
	addq	$48708, %r9                     # imm = 0xBE44
	movabsq	$8589934592, %r11               # imm = 0x200000000
	jmp	.LBB0_347
	.p2align	4, 0x90
.LBB0_346:                              # %if.end226.2.i
                                        #   in Loop: Header=BB0_347 Depth=1
	movq	%rdx, %rbx
	decq	%rbx
	addq	$-44, %r8
	testl	$-2, %edx
	movq	%rbx, %rdx
	je	.LBB0_122
.LBB0_347:                              # %do.body201.2.i
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%r9,%rdx,4), %ebx
	addl	%eax, %ebx
	cmpl	-8(%r8), %ebx
	jae	.LBB0_346
# %bb.348:                              # %if.then210.2.i
                                        #   in Loop: Header=BB0_347 Depth=1
	movl	%ebx, -8(%r8)
	movq	%r11, -4(%r8)
	movb	$0, -20(%r8)
	jmp	.LBB0_346
.LBB0_349:                              # %get_pure_rep_price.exit.3.i
	movzwl	27980(%r14,%r13,2), %eax
	shrl	$4, %eax
	xorq	$127, %rax
	movq	lzma_rc_prices@GOTPCREL(%rip), %r9
	movzbl	(%r9,%rax), %eax
	movzwl	27956(%r14,%r13,2), %edx
	shrl	$4, %edx
	xorq	$127, %rdx
	movzbl	(%r9,%rdx), %edx
	movzwl	28004(%r14,%r13,2), %r8d
	shrl	$4, %r8d
	xorq	$127, %r8
	movzbl	(%r9,%r8), %r8d
	addl	%edx, %r8d
	addl	%eax, %esi
	addl	%r8d, %esi
	movl	%r10d, %eax
	imulq	$44, %rax, %rdx
	decq	%rax
	addq	%r14, %rdx
	addq	$69372, %rdx                    # imm = 0x10EFC
	imulq	$1088, %r12, %r8                # imm = 0x440
	addq	%r14, %r8
	addq	$48708, %r8                     # imm = 0xBE44
	movabsq	$12884901888, %r9               # imm = 0x300000000
	jmp	.LBB0_351
	.p2align	4, 0x90
.LBB0_350:                              # %if.end226.3.i
                                        #   in Loop: Header=BB0_351 Depth=1
	movq	%rax, %r10
	decq	%r10
	addq	$-44, %rdx
	testl	$-2, %eax
	movq	%r10, %rax
	je	.LBB0_123
.LBB0_351:                              # %do.body201.3.i
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%r8,%rax,4), %r10d
	addl	%esi, %r10d
	cmpl	-8(%rdx), %r10d
	jae	.LBB0_350
# %bb.352:                              # %if.then210.3.i
                                        #   in Loop: Header=BB0_351 Depth=1
	movl	%r10d, -8(%rdx)
	movq	%r9, -4(%rdx)
	movb	$0, -20(%rdx)
	jmp	.LBB0_350
.LBB0_353:
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
.LBB0_354:                              # %for.end
	movl	%r13d, 69340(%r14)
	movl	%r13d, %eax
	imulq	$44, %rax, %rax
	movl	20(%rbp,%rax), %esi
	movl	24(%rbp,%rax), %ecx
	movq	200(%rsp), %rax                 # 8-byte Reload
	jmp	.LBB0_357
	.p2align	4, 0x90
.LBB0_355:                              # %do.body.if.end40_crit_edge.i
                                        #   in Loop: Header=BB0_357 Depth=1
	movl	20(%rdi), %esi
	movl	24(%rdi), %r8d
.LBB0_356:                              # %if.end40.i
                                        #   in Loop: Header=BB0_357 Depth=1
	movl	%ecx, 24(%rdi)
	movl	%edx, 20(%rdi)
	movl	%r8d, %ecx
	testl	%r13d, %r13d
	je	.LBB0_360
.LBB0_357:                              # %do.body.i316
                                        # =>This Inner Loop Header: Depth=1
	movl	%r13d, %edx
	movl	%esi, %r13d
	movl	%edx, %esi
	imulq	$44, %rsi, %r9
	movl	%r13d, %esi
	imulq	$44, %rsi, %rdi
	addq	%rbp, %rdi
	cmpb	$0, 4(%rbp,%r9)
	je	.LBB0_355
# %bb.358:                              # %if.then.i322
                                        #   in Loop: Header=BB0_357 Depth=1
	addq	%rbp, %r9
	movb	$0, 4(%rdi)
	leal	-1(%r13), %esi
	movl	$-1, %r8d
	cmpb	$1, 5(%r9)
	jne	.LBB0_356
# %bb.359:                              # %if.then18.i
                                        #   in Loop: Header=BB0_357 Depth=1
	movl	%esi, %r10d
	imulq	$44, %r10, %r10
	movb	$0, 4(%rbp,%r10)
	movq	8(%r9), %r9
	movq	%r9, 20(%rbp,%r10)
	jmp	.LBB0_356
.LBB0_360:                              # %backward.exit
	movl	69368(%r14), %ecx
	movl	%ecx, 69344(%r14)
	movq	216(%rsp), %rdx                 # 8-byte Reload
	movl	%ecx, (%rdx)
	movl	69372(%r14), %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_4
.Lfunc_end0:
	.size	lzma_lzma_optimum_normal, .Lfunc_end0-lzma_lzma_optimum_normal
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
