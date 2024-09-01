	.text
	.file	"lz_encoder_mf.c"
	.globl	lzma_mf_find                    # -- Begin function lzma_mf_find
	.p2align	4, 0x90
	.type	lzma_mf_find,@function
lzma_mf_find:                           # @lzma_mf_find
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rdx, %rsi
	callq	*48(%rdi)
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:                                # %if.then
	movl	%eax, %edi
	decl	%edi
	movl	(%r15,%rdi,8), %ecx
	cmpl	96(%rbx), %ecx
	jne	.LBB0_8
# %bb.3:                                # %if.then2
	movl	24(%rbx), %edx
	movl	36(%rbx), %esi
	subl	%edx, %esi
	incl	%esi
	movl	100(%rbx), %r8d
	cmpl	%r8d, %esi
	cmovael	%r8d, %esi
	cmpl	%esi, %ecx
	jae	.LBB0_8
# %bb.4:                                # %land.rhs.preheader
	movl	4(%r15,%rdi,8), %r8d
	movq	$-2, %rdi
	subq	%r8, %rdi
	addq	%rcx, %rdx
	addq	(%rbx), %rdx
	.p2align	4, 0x90
.LBB0_5:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdx), %r8d
	cmpb	(%rdx,%rdi), %r8b
	jne	.LBB0_8
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB0_5 Depth=1
	incl	%ecx
	incq	%rdx
	cmpl	%ecx, %esi
	jne	.LBB0_5
# %bb.7:
	movl	%esi, %ecx
	jmp	.LBB0_8
.LBB0_1:
	xorl	%ecx, %ecx
.LBB0_8:                                # %if.end22
	movl	%eax, (%r14)
	incl	28(%rbx)
	movl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_mf_find, .Lfunc_end0-lzma_mf_find
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_mf_hc3_find
.LCPI1_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.text
	.globl	lzma_mf_hc3_find
	.p2align	4, 0x90
	.type	lzma_mf_hc3_find,@function
lzma_mf_hc3_find:                       # @lzma_mf_hc3_find
	.cfi_startproc
# %bb.0:                                # %entry
	movl	24(%rdi), %eax
	movl	36(%rdi), %ecx
	subl	%eax, %ecx
	movl	96(%rdi), %r8d
	cmpl	%ecx, %r8d
	jbe	.LBB1_3
# %bb.1:                                # %if.else
	movl	%ecx, %r8d
	cmpl	$2, %ecx
	ja	.LBB1_3
# %bb.2:                                # %if.then3
	incl	%eax
	movl	%eax, 24(%rdi)
	incl	40(%rdi)
	xorl	%eax, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB1_3:                                # %if.end4
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
	movq	(%rdi), %rdx
	movq	64(%rdi), %r9
	leaq	(%rdx,%rax), %rcx
	movl	20(%rdi), %r14d
	addl	%eax, %r14d
	movzbl	(%rdx,%rax), %r10d
	movq	lzma_crc32_table@GOTPCREL(%rip), %r11
	movzbl	1(%rdx,%rax), %ebx
	xorl	(%r11,%r10,4), %ebx
	movzbl	2(%rdx,%rax), %edx
	shll	$8, %edx
	xorl	%ebx, %edx
	andl	88(%rdi), %edx
	andl	$1023, %ebx                     # imm = 0x3FF
	movl	%r14d, %eax
	subl	(%r9,%rbx,4), %eax
	addl	$1024, %edx                     # imm = 0x400
	movl	(%r9,%rdx,4), %ebp
	movl	%r14d, (%r9,%rbx,4)
	movq	64(%rdi), %r9
	movl	%r14d, -20(%rsp)                # 4-byte Spill
	movl	%r14d, (%r9,%rdx,4)
	movl	84(%rdi), %r9d
	movl	$2, %r10d
	cmpl	%r9d, %eax
	jae	.LBB1_14
# %bb.4:                                # %land.lhs.true
	movl	%eax, %edx
	movq	%rcx, %r11
	subq	%rdx, %r11
	movzbl	(%r11), %r11d
	cmpb	(%rcx), %r11b
	jne	.LBB1_14
# %bb.5:                                # %for.cond.preheader
	cmpl	$2, %r8d
	je	.LBB1_9
# %bb.6:                                # %for.body.preheader
	negq	%rdx
	.p2align	4, 0x90
.LBB1_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, %r9d
	leaq	(%rcx,%r9), %r11
	movzbl	(%rdx,%r11), %r11d
	cmpb	(%rcx,%r9), %r11b
	jne	.LBB1_15
# %bb.8:                                # %for.inc
                                        #   in Loop: Header=BB1_7 Depth=1
	incl	%r10d
	cmpl	%r10d, %r8d
	jne	.LBB1_7
.LBB1_9:                                # %do.body
	movl	%r8d, (%rsi)
	decl	%eax
	movl	%eax, 4(%rsi)
	movq	72(%rdi), %rax
	movl	80(%rdi), %ecx
	movl	%ebp, (%rax,%rcx,4)
	movl	80(%rdi), %eax
	incl	%eax
	movl	84(%rdi), %ecx
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	cmovnel	%eax, %edx
	movl	%edx, 80(%rdi)
	movl	20(%rdi), %edx
	movl	24(%rdi), %eax
	leal	1(%rax), %esi
	movl	%esi, 24(%rdi)
	leal	(%rdx,%rax), %esi
	incl	%esi
	movl	$1, %eax
	cmpl	$-1, %esi
	jne	.LBB1_42
# %bb.10:                               # %if.then5.i
	notl	%ecx
	movl	112(%rdi), %r9d
	addl	108(%rdi), %r9d
	je	.LBB1_48
# %bb.11:                               # %for.body.preheader.i.i
	movq	64(%rdi), %rdx
	movl	%r9d, %esi
	xorl	%r8d, %r8d
	cmpl	$16, %r9d
	jae	.LBB1_43
# %bb.12:
	xorl	%r9d, %r9d
	jmp	.LBB1_46
.LBB1_14:
	xorl	%eax, %eax
.LBB1_16:                               # %do.body57
	movl	92(%rdi), %r11d
	movq	72(%rdi), %rbx
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	movl	80(%rdi), %r14d
	leaq	(%rsi,%rax,8), %rax
	movl	%ebp, (%rbx,%r14,4)
	testl	%r11d, %r11d
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	je	.LBB1_32
# %bb.17:                               # %do.body57
	movl	-20(%rsp), %r12d                # 4-byte Reload
	subl	%ebp, %r12d
	cmpl	%r9d, %r12d
	jae	.LBB1_32
# %bb.18:                               # %if.end.preheader.i
	movq	%r8, %rdi
	leal	-1(%r8), %r15d
	movl	-20(%rsp), %r8d                 # 4-byte Reload
	.p2align	4, 0x90
.LBB1_19:                               # %if.end.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	movl	%r12d, %r13d
	movq	%rcx, %rdx
	subq	%r13, %rdx
	movl	%r14d, %r13d
	subl	%r12d, %r13d
	movl	$0, %ebp
	cmovbl	%r9d, %ebp
	addl	%ebp, %r13d
	movl	(%rbx,%r13,4), %ebp
	movl	%r10d, %r13d
	movzbl	(%rdx,%r13), %esi
	cmpb	(%rcx,%r13), %sil
	jne	.LBB1_26
# %bb.20:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB1_19 Depth=1
	movzbl	(%rdx), %esi
	cmpb	(%rcx), %sil
	jne	.LBB1_27
# %bb.21:                               # %while.cond20.i.preheader
                                        #   in Loop: Header=BB1_19 Depth=1
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB1_22:                               # %while.cond20.i
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r13, %r15
	je	.LBB1_30
# %bb.23:                               # %while.body23.i
                                        #   in Loop: Header=BB1_22 Depth=2
	incq	%r13
	movl	%r13d, %esi
	movzbl	(%rdx,%rsi), %r8d
	cmpb	(%rcx,%rsi), %r8b
	je	.LBB1_22
# %bb.24:                               # %while.end.split.loop.exit.i
                                        #   in Loop: Header=BB1_19 Depth=1
	movl	-20(%rsp), %r8d                 # 4-byte Reload
	cmpl	%r13d, %r10d
	jae	.LBB1_26
.LBB1_25:                               # %cleanup.i
                                        #   in Loop: Header=BB1_19 Depth=1
	decl	%r12d
	movl	%r13d, (%rax)
	movl	%r12d, 4(%rax)
	addq	$8, %rax
	cmpl	%edi, %r13d
	jne	.LBB1_28
	jmp	.LBB1_32
	.p2align	4, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_19 Depth=1
	movl	%r10d, %r13d
.LBB1_28:                               # %cleanup46.i
                                        #   in Loop: Header=BB1_19 Depth=1
	decl	%r11d
	jne	.LBB1_29
	jmp	.LBB1_32
.LBB1_30:                               #   in Loop: Header=BB1_19 Depth=1
	movl	%edi, %r13d
	movl	-20(%rsp), %r8d                 # 4-byte Reload
	cmpl	%r13d, %r10d
	jb	.LBB1_25
	.p2align	4, 0x90
.LBB1_26:                               #   in Loop: Header=BB1_19 Depth=1
	movl	%r10d, %r13d
	decl	%r11d
	je	.LBB1_32
.LBB1_29:                               # %cleanup46.i
                                        #   in Loop: Header=BB1_19 Depth=1
	movl	%r8d, %r12d
	subl	%ebp, %r12d
	movl	%r13d, %r10d
	cmpl	%r9d, %r12d
	jb	.LBB1_19
.LBB1_32:                               # %hc_find_func.exit
	subq	-16(%rsp), %rax                 # 8-byte Folded Reload
	shrq	$3, %rax
	movq	-8(%rsp), %r11                  # 8-byte Reload
	movl	80(%r11), %edx
	incl	%edx
	movl	84(%r11), %ecx
	xorl	%esi, %esi
	cmpl	%ecx, %edx
	cmovnel	%edx, %esi
	movl	%esi, 80(%r11)
	movl	20(%r11), %edx
	movl	24(%r11), %esi
	leal	1(%rsi), %edi
	movl	%edi, 24(%r11)
	addl	%edx, %esi
	incl	%esi
	cmpl	$-1, %esi
	jne	.LBB1_42
# %bb.33:                               # %if.then5.i147
	notl	%ecx
	movl	112(%r11), %r9d
	addl	108(%r11), %r9d
	je	.LBB1_41
# %bb.34:                               # %for.body.preheader.i.i154
	movq	64(%r11), %rdx
	movl	%r9d, %esi
	xorl	%r8d, %r8d
	cmpl	$16, %r9d
	jae	.LBB1_36
# %bb.35:
	xorl	%r9d, %r9d
	jmp	.LBB1_39
.LBB1_36:                               # %vector.ph
	movl	%esi, %r9d
	andl	$-16, %r9d
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%r10d, %r10d
	movdqa	.LCPI1_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	%xmm0, %xmm2
	pxor	%xmm1, %xmm2
	.p2align	4, 0x90
.LBB1_37:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rdx,%r10,4), %xmm3
	movdqu	16(%rdx,%r10,4), %xmm4
	movdqu	32(%rdx,%r10,4), %xmm5
	movdqu	48(%rdx,%r10,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rdx,%r10,4)
	movdqu	%xmm4, 16(%rdx,%r10,4)
	movdqu	%xmm5, 32(%rdx,%r10,4)
	movdqu	%xmm6, 48(%rdx,%r10,4)
	addq	$16, %r10
	cmpq	%r10, %r9
	jne	.LBB1_37
# %bb.38:                               # %middle.block
	cmpl	%esi, %r9d
	je	.LBB1_40
	.p2align	4, 0x90
.LBB1_39:                               # %for.body.i.i156
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx,%r9,4), %edi
	subl	%ecx, %edi
	cmovbl	%r8d, %edi
	movl	%edi, (%rdx,%r9,4)
	incq	%r9
	cmpq	%r9, %rsi
	jne	.LBB1_39
.LBB1_40:                               # %normalize.exit.loopexit.i162
	movl	20(%r11), %edx
.LBB1_41:                               # %normalize.exit.i164
	subl	%ecx, %edx
	movl	%edx, 20(%r11)
.LBB1_42:
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
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB1_15:                               # %for.end
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r10d, (%rsi)
	decl	%eax
	movl	%eax, 4(%rsi)
	movl	84(%rdi), %r9d
	movl	$1, %eax
	jmp	.LBB1_16
.LBB1_43:                               # %vector.ph184
	movl	%esi, %r9d
	andl	$-16, %r9d
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%r10d, %r10d
	movdqa	.LCPI1_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	%xmm0, %xmm2
	pxor	%xmm1, %xmm2
	.p2align	4, 0x90
.LBB1_44:                               # %vector.body188
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rdx,%r10,4), %xmm3
	movdqu	16(%rdx,%r10,4), %xmm4
	movdqu	32(%rdx,%r10,4), %xmm5
	movdqu	48(%rdx,%r10,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rdx,%r10,4)
	movdqu	%xmm4, 16(%rdx,%r10,4)
	movdqu	%xmm5, 32(%rdx,%r10,4)
	movdqu	%xmm6, 48(%rdx,%r10,4)
	addq	$16, %r10
	cmpq	%r10, %r9
	jne	.LBB1_44
# %bb.45:                               # %middle.block181
	cmpl	%esi, %r9d
	je	.LBB1_47
	.p2align	4, 0x90
.LBB1_46:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx,%r9,4), %r10d
	subl	%ecx, %r10d
	cmovbl	%r8d, %r10d
	movl	%r10d, (%rdx,%r9,4)
	incq	%r9
	cmpq	%r9, %rsi
	jne	.LBB1_46
.LBB1_47:                               # %normalize.exit.loopexit.i
	movl	20(%rdi), %edx
.LBB1_48:                               # %normalize.exit.i
	subl	%ecx, %edx
	movl	%edx, 20(%rdi)
	jmp	.LBB1_42
.Lfunc_end1:
	.size	lzma_mf_hc3_find, .Lfunc_end1-lzma_mf_hc3_find
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_mf_hc3_skip
.LCPI2_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.text
	.globl	lzma_mf_hc3_skip
	.p2align	4, 0x90
	.type	lzma_mf_hc3_skip,@function
lzma_mf_hc3_skip:                       # @lzma_mf_hc3_skip
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	lzma_crc32_table@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI2_0(%rip), %xmm0           # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	jmp	.LBB2_1
	.p2align	4, 0x90
.LBB2_2:                                # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	incl	%edx
	movl	%edx, 24(%rdi)
	incl	40(%rdi)
.LBB2_13:                               # %do.cond21
                                        #   in Loop: Header=BB2_1 Depth=1
	decl	%esi
	je	.LBB2_14
.LBB2_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
                                        #     Child Loop BB2_10 Depth 2
	movl	24(%rdi), %edx
	movl	36(%rdi), %r8d
	subl	%edx, %r8d
	cmpl	$2, %r8d
	jbe	.LBB2_2
# %bb.3:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	20(%rdi), %r8d
	addl	%edx, %r8d
	movq	(%rdi), %r9
	movq	64(%rdi), %r10
	movzbl	(%r9,%rdx), %r11d
	movzbl	1(%r9,%rdx), %ebx
	xorl	(%rax,%r11,4), %ebx
	movzbl	2(%r9,%rdx), %edx
	shll	$8, %edx
	xorl	%ebx, %edx
	andl	$1023, %ebx                     # imm = 0x3FF
	andl	88(%rdi), %edx
	addl	$1024, %edx                     # imm = 0x400
	movl	(%r10,%rdx,4), %r9d
	movl	%r8d, (%r10,%rbx,4)
	movq	64(%rdi), %r10
	movl	%r8d, (%r10,%rdx,4)
	movq	72(%rdi), %rdx
	movl	80(%rdi), %r8d
	movl	%r9d, (%rdx,%r8,4)
	movl	80(%rdi), %r8d
	incl	%r8d
	movl	84(%rdi), %edx
	cmpl	%edx, %r8d
	cmovel	%ecx, %r8d
	movl	%r8d, 80(%rdi)
	movl	20(%rdi), %r8d
	movl	24(%rdi), %r9d
	leal	1(%r9), %r10d
	movl	%r10d, 24(%rdi)
	addl	%r8d, %r9d
	incl	%r9d
	cmpl	$-1, %r9d
	jne	.LBB2_13
# %bb.4:                                # %if.then5.i
                                        #   in Loop: Header=BB2_1 Depth=1
	notl	%edx
	movl	112(%rdi), %r10d
	addl	108(%rdi), %r10d
	je	.LBB2_12
# %bb.5:                                # %for.body.preheader.i.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	64(%rdi), %r8
	movl	%r10d, %r9d
	cmpl	$16, %r10d
	jae	.LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_1 Depth=1
	xorl	%r10d, %r10d
	jmp	.LBB2_10
.LBB2_7:                                # %vector.ph
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	%r9d, %r10d
	andl	$-16, %r10d
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movdqa	%xmm1, %xmm2
	pxor	%xmm0, %xmm2
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB2_8:                                # %vector.body
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r8,%r11,4), %xmm3
	movdqu	16(%r8,%r11,4), %xmm4
	movdqu	32(%r8,%r11,4), %xmm5
	movdqu	48(%r8,%r11,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%r8,%r11,4)
	movdqu	%xmm4, 16(%r8,%r11,4)
	movdqu	%xmm5, 32(%r8,%r11,4)
	movdqu	%xmm6, 48(%r8,%r11,4)
	addq	$16, %r11
	cmpq	%r11, %r10
	jne	.LBB2_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	%r9d, %r10d
	je	.LBB2_11
	.p2align	4, 0x90
.LBB2_10:                               # %for.body.i.i
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r8,%r10,4), %r11d
	subl	%edx, %r11d
	cmovbl	%ecx, %r11d
	movl	%r11d, (%r8,%r10,4)
	incq	%r10
	cmpq	%r10, %r9
	jne	.LBB2_10
.LBB2_11:                               # %normalize.exit.loopexit.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	20(%rdi), %r8d
.LBB2_12:                               # %normalize.exit.i
                                        #   in Loop: Header=BB2_1 Depth=1
	subl	%edx, %r8d
	movl	%r8d, 20(%rdi)
	jmp	.LBB2_13
.LBB2_14:                               # %do.end24
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	lzma_mf_hc3_skip, .Lfunc_end2-lzma_mf_hc3_skip
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_mf_hc4_find
.LCPI3_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.text
	.globl	lzma_mf_hc4_find
	.p2align	4, 0x90
	.type	lzma_mf_hc4_find,@function
lzma_mf_hc4_find:                       # @lzma_mf_hc4_find
	.cfi_startproc
# %bb.0:                                # %entry
	movl	24(%rdi), %eax
	movl	36(%rdi), %ecx
	subl	%eax, %ecx
	movl	96(%rdi), %r8d
	cmpl	%ecx, %r8d
	jbe	.LBB3_3
# %bb.1:                                # %if.else
	movl	%ecx, %r8d
	cmpl	$3, %ecx
	ja	.LBB3_3
# %bb.2:                                # %if.then3
	incl	%eax
	movl	%eax, 24(%rdi)
	incl	40(%rdi)
	xorl	%eax, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB3_3:                                # %if.end4
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
	movq	(%rdi), %r9
	movq	64(%rdi), %r10
	leaq	(%r9,%rax), %rcx
	movl	20(%rdi), %r15d
	movzbl	(%r9,%rax), %r11d
	movq	lzma_crc32_table@GOTPCREL(%rip), %rbx
	movzbl	1(%r9,%rax), %edx
	xorl	(%rbx,%r11,4), %edx
	addl	%eax, %r15d
	movzbl	2(%r9,%rax), %r11d
	shll	$8, %r11d
	xorl	%edx, %r11d
	andl	$1023, %edx                     # imm = 0x3FF
	movzwl	%r11w, %r14d
	movzbl	3(%r9,%rax), %eax
	movl	(%rbx,%rax,4), %eax
	shll	$5, %eax
	xorl	%r11d, %eax
	andl	88(%rdi), %eax
	movl	(%r10,%rdx,4), %ebp
	movl	%r15d, %r11d
	subl	%ebp, %r11d
	movl	4096(%r10,%r14,4), %ebx
	addl	$66560, %eax                    # imm = 0x10400
	movl	(%r10,%rax,4), %r9d
	movl	%r15d, (%r10,%rdx,4)
	movq	64(%rdi), %rdx
	movl	%r15d, 4096(%rdx,%r14,4)
	movq	64(%rdi), %rdx
	movl	%r15d, -20(%rsp)                # 4-byte Spill
	movl	%r15d, (%rdx,%rax,4)
	movl	$1, %r10d
	xorl	%eax, %eax
	movb	$1, %r14b
	cmpl	84(%rdi), %r11d
	jae	.LBB3_6
# %bb.4:                                # %land.lhs.true
	movl	%r11d, %edx
	movq	%rcx, %r15
	subq	%rdx, %r15
	movzbl	(%r15), %edx
	cmpb	(%rcx), %dl
	jne	.LBB3_6
# %bb.5:                                # %if.then50
	movl	$2, (%rsi)
	leal	-1(%r11), %eax
	movl	%eax, 4(%rsi)
	movl	$2, %r10d
	movl	$1, %eax
	xorl	%r14d, %r14d
.LBB3_6:                                # %if.end54
	cmpl	%ebp, %ebx
	je	.LBB3_10
# %bb.7:                                # %land.lhs.true57
	movl	-20(%rsp), %edx                 # 4-byte Reload
                                        # kill: def $edx killed $edx def $rdx
	subl	%ebx, %edx
	cmpl	84(%rdi), %edx
	jae	.LBB3_10
# %bb.8:                                # %land.lhs.true61
	movl	%edx, %ebx
	movq	%rcx, %r15
	subq	%rbx, %r15
	movzbl	(%r15), %ebx
	cmpb	(%rcx), %bl
	jne	.LBB3_10
# %bb.9:                                # %if.end74.thread
	leal	-1(%rdx), %r10d
	movl	%eax, %r11d
	incl	%eax
	movl	%r10d, 4(%rsi,%r11,8)
	movl	$3, %r10d
	cmpl	%r8d, %r10d
	jne	.LBB3_13
	jmp	.LBB3_16
.LBB3_10:                               # %if.end74
	movl	$1, %eax
	testb	%r14b, %r14b
	je	.LBB3_12
# %bb.11:
	xorl	%eax, %eax
	jmp	.LBB3_21
.LBB3_12:
	movl	%r11d, %edx
	cmpl	%r8d, %r10d
	je	.LBB3_16
.LBB3_13:                               # %for.body.lr.ph
	movl	%edx, %edx
	negq	%rdx
	.p2align	4, 0x90
.LBB3_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, %r11d
	leaq	(%rcx,%r11), %rbx
	movzbl	(%rdx,%rbx), %ebx
	cmpb	(%rcx,%r11), %bl
	jne	.LBB3_20
# %bb.15:                               # %for.inc
                                        #   in Loop: Header=BB3_14 Depth=1
	incl	%r10d
	cmpl	%r10d, %r8d
	jne	.LBB3_14
.LBB3_16:                               # %do.body
	leal	-1(%rax), %ecx
	movl	%r8d, (%rsi,%rcx,8)
	movq	72(%rdi), %rcx
	movl	80(%rdi), %edx
	movl	%r9d, (%rcx,%rdx,4)
	movl	80(%rdi), %edx
	incl	%edx
	movl	84(%rdi), %ecx
	xorl	%esi, %esi
	cmpl	%ecx, %edx
	cmovnel	%edx, %esi
	movl	%esi, 80(%rdi)
	movl	20(%rdi), %edx
	movl	24(%rdi), %esi
	leal	1(%rsi), %r8d
	movl	%r8d, 24(%rdi)
	addl	%edx, %esi
	incl	%esi
	cmpl	$-1, %esi
	jne	.LBB3_53
# %bb.17:                               # %if.then5.i
	notl	%ecx
	movl	112(%rdi), %r9d
	addl	108(%rdi), %r9d
	je	.LBB3_52
# %bb.18:                               # %for.body.preheader.i.i
	movq	64(%rdi), %rdx
	movl	%r9d, %esi
	xorl	%r8d, %r8d
	cmpl	$16, %r9d
	jae	.LBB3_47
# %bb.19:
	xorl	%r9d, %r9d
	jmp	.LBB3_50
.LBB3_20:                               # %for.end
	leal	-1(%rax), %edx
	movl	%r10d, (%rsi,%rdx,8)
	movl	%eax, %eax
.LBB3_21:                               # %if.end104
	movl	92(%rdi), %r11d
	movq	72(%rdi), %rbx
	movl	80(%rdi), %r14d
	movl	84(%rdi), %ebp
	leaq	(%rsi,%rax,8), %rax
	movl	%r9d, (%rbx,%r14,4)
	testl	%r11d, %r11d
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	je	.LBB3_37
# %bb.22:                               # %if.end104
	movl	-20(%rsp), %r15d                # 4-byte Reload
	subl	%r9d, %r15d
	cmpl	%ebp, %r15d
	jae	.LBB3_37
# %bb.23:                               # %if.end.preheader.i
	cmpl	$4, %r10d
	movl	$3, %r12d
	cmovael	%r10d, %r12d
	movq	%r8, %rdi
	leal	-1(%r8), %r9d
	movl	-20(%rsp), %r8d                 # 4-byte Reload
	.p2align	4, 0x90
.LBB3_24:                               # %if.end.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_27 Depth 2
	movl	%r15d, %r10d
	movq	%rcx, %rdx
	subq	%r10, %rdx
	movl	%r14d, %r10d
	subl	%r15d, %r10d
	movl	$0, %r13d
	cmovbl	%ebp, %r13d
	addl	%r13d, %r10d
	movl	(%rbx,%r10,4), %r10d
	movl	%r12d, %r13d
	movzbl	(%rdx,%r13), %esi
	cmpb	(%rcx,%r13), %sil
	jne	.LBB3_31
# %bb.25:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB3_24 Depth=1
	movzbl	(%rdx), %esi
	cmpb	(%rcx), %sil
	jne	.LBB3_32
# %bb.26:                               # %while.cond20.i.preheader
                                        #   in Loop: Header=BB3_24 Depth=1
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_27:                               # %while.cond20.i
                                        #   Parent Loop BB3_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r13, %r9
	je	.LBB3_35
# %bb.28:                               # %while.body23.i
                                        #   in Loop: Header=BB3_27 Depth=2
	incq	%r13
	movl	%r13d, %esi
	movzbl	(%rdx,%rsi), %r8d
	cmpb	(%rcx,%rsi), %r8b
	je	.LBB3_27
# %bb.29:                               # %while.end.split.loop.exit.i
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	-20(%rsp), %r8d                 # 4-byte Reload
	cmpl	%r13d, %r12d
	jae	.LBB3_31
.LBB3_30:                               # %cleanup.i
                                        #   in Loop: Header=BB3_24 Depth=1
	decl	%r15d
	movl	%r13d, (%rax)
	movl	%r15d, 4(%rax)
	addq	$8, %rax
	cmpl	%edi, %r13d
	jne	.LBB3_33
	jmp	.LBB3_37
	.p2align	4, 0x90
.LBB3_32:                               #   in Loop: Header=BB3_24 Depth=1
	movl	%r12d, %r13d
.LBB3_33:                               # %cleanup46.i
                                        #   in Loop: Header=BB3_24 Depth=1
	decl	%r11d
	jne	.LBB3_34
	jmp	.LBB3_37
.LBB3_35:                               #   in Loop: Header=BB3_24 Depth=1
	movl	%edi, %r13d
	movl	-20(%rsp), %r8d                 # 4-byte Reload
	cmpl	%r13d, %r12d
	jb	.LBB3_30
	.p2align	4, 0x90
.LBB3_31:                               #   in Loop: Header=BB3_24 Depth=1
	movl	%r12d, %r13d
	decl	%r11d
	je	.LBB3_37
.LBB3_34:                               # %cleanup46.i
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	%r8d, %r15d
	subl	%r10d, %r15d
	movl	%r13d, %r12d
	cmpl	%ebp, %r15d
	jb	.LBB3_24
.LBB3_37:                               # %hc_find_func.exit
	subq	-8(%rsp), %rax                  # 8-byte Folded Reload
	shrq	$3, %rax
	movq	-16(%rsp), %r11                 # 8-byte Reload
	movl	80(%r11), %edx
	incl	%edx
	movl	84(%r11), %ecx
	xorl	%esi, %esi
	cmpl	%ecx, %edx
	cmovnel	%edx, %esi
	movl	%esi, 80(%r11)
	movl	20(%r11), %edx
	movl	24(%r11), %esi
	leal	1(%rsi), %edi
	movl	%edi, 24(%r11)
	addl	%edx, %esi
	incl	%esi
	cmpl	$-1, %esi
	jne	.LBB3_53
# %bb.38:                               # %if.then5.i224
	notl	%ecx
	movl	112(%r11), %r9d
	addl	108(%r11), %r9d
	je	.LBB3_46
# %bb.39:                               # %for.body.preheader.i.i231
	movq	64(%r11), %rdx
	movl	%r9d, %esi
	xorl	%r8d, %r8d
	cmpl	$16, %r9d
	jae	.LBB3_41
# %bb.40:
	xorl	%r9d, %r9d
	jmp	.LBB3_44
.LBB3_41:                               # %vector.ph270
	movl	%esi, %r9d
	andl	$-16, %r9d
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%r10d, %r10d
	movdqa	.LCPI3_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	%xmm0, %xmm2
	pxor	%xmm1, %xmm2
	.p2align	4, 0x90
.LBB3_42:                               # %vector.body274
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rdx,%r10,4), %xmm3
	movdqu	16(%rdx,%r10,4), %xmm4
	movdqu	32(%rdx,%r10,4), %xmm5
	movdqu	48(%rdx,%r10,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rdx,%r10,4)
	movdqu	%xmm4, 16(%rdx,%r10,4)
	movdqu	%xmm5, 32(%rdx,%r10,4)
	movdqu	%xmm6, 48(%rdx,%r10,4)
	addq	$16, %r10
	cmpq	%r10, %r9
	jne	.LBB3_42
# %bb.43:                               # %middle.block267
	cmpl	%esi, %r9d
	je	.LBB3_45
	.p2align	4, 0x90
.LBB3_44:                               # %for.body.i.i233
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx,%r9,4), %edi
	subl	%ecx, %edi
	cmovbl	%r8d, %edi
	movl	%edi, (%rdx,%r9,4)
	incq	%r9
	cmpq	%r9, %rsi
	jne	.LBB3_44
.LBB3_45:                               # %normalize.exit.loopexit.i239
	movl	20(%r11), %edx
.LBB3_46:                               # %normalize.exit.i241
	subl	%ecx, %edx
	movl	%edx, 20(%r11)
	jmp	.LBB3_53
.LBB3_47:                               # %vector.ph
	movl	%esi, %r9d
	andl	$-16, %r9d
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%r10d, %r10d
	movdqa	.LCPI3_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	%xmm0, %xmm2
	pxor	%xmm1, %xmm2
	.p2align	4, 0x90
.LBB3_48:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rdx,%r10,4), %xmm3
	movdqu	16(%rdx,%r10,4), %xmm4
	movdqu	32(%rdx,%r10,4), %xmm5
	movdqu	48(%rdx,%r10,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rdx,%r10,4)
	movdqu	%xmm4, 16(%rdx,%r10,4)
	movdqu	%xmm5, 32(%rdx,%r10,4)
	movdqu	%xmm6, 48(%rdx,%r10,4)
	addq	$16, %r10
	cmpq	%r10, %r9
	jne	.LBB3_48
# %bb.49:                               # %middle.block
	cmpl	%esi, %r9d
	je	.LBB3_51
	.p2align	4, 0x90
.LBB3_50:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx,%r9,4), %r10d
	subl	%ecx, %r10d
	cmovbl	%r8d, %r10d
	movl	%r10d, (%rdx,%r9,4)
	incq	%r9
	cmpq	%r9, %rsi
	jne	.LBB3_50
.LBB3_51:                               # %normalize.exit.loopexit.i
	movl	20(%rdi), %edx
.LBB3_52:                               # %normalize.exit.i
	subl	%ecx, %edx
	movl	%edx, 20(%rdi)
.LBB3_53:
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
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end3:
	.size	lzma_mf_hc4_find, .Lfunc_end3-lzma_mf_hc4_find
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_mf_hc4_skip
.LCPI4_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.text
	.globl	lzma_mf_hc4_skip
	.p2align	4, 0x90
	.type	lzma_mf_hc4_skip,@function
lzma_mf_hc4_skip:                       # @lzma_mf_hc4_skip
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	lzma_crc32_table@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movdqa	.LCPI4_0(%rip), %xmm0           # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	jmp	.LBB4_1
	.p2align	4, 0x90
.LBB4_2:                                # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	incl	%r8d
	movl	%r8d, 24(%rdi)
	incl	40(%rdi)
.LBB4_13:                               # %do.cond35
                                        #   in Loop: Header=BB4_1 Depth=1
	decl	%esi
	je	.LBB4_14
.LBB4_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #     Child Loop BB4_10 Depth 2
	movl	24(%rdi), %r8d
	movl	36(%rdi), %edx
	subl	%r8d, %edx
	cmpl	$3, %edx
	jbe	.LBB4_2
# %bb.3:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	20(%rdi), %edx
	addl	%r8d, %edx
	movq	(%rdi), %r9
	movzbl	(%r9,%r8), %r10d
	movzbl	1(%r9,%r8), %r11d
	xorl	(%rax,%r10,4), %r11d
	movq	64(%rdi), %r10
	movzbl	2(%r9,%r8), %ebx
	shll	$8, %ebx
	xorl	%r11d, %ebx
	andl	$1023, %r11d                    # imm = 0x3FF
	movzwl	%bx, %r14d
	movzbl	3(%r9,%r8), %r8d
	movl	(%rax,%r8,4), %r8d
	shll	$5, %r8d
	xorl	%ebx, %r8d
	andl	88(%rdi), %r8d
	addl	$66560, %r8d                    # imm = 0x10400
	movl	(%r10,%r8,4), %r9d
	movl	%edx, (%r10,%r11,4)
	movq	64(%rdi), %r10
	movl	%edx, 4096(%r10,%r14,4)
	movq	64(%rdi), %r10
	movl	%edx, (%r10,%r8,4)
	movq	72(%rdi), %rdx
	movl	80(%rdi), %r8d
	movl	%r9d, (%rdx,%r8,4)
	movl	80(%rdi), %r8d
	incl	%r8d
	movl	84(%rdi), %edx
	cmpl	%edx, %r8d
	cmovel	%ecx, %r8d
	movl	%r8d, 80(%rdi)
	movl	20(%rdi), %r8d
	movl	24(%rdi), %r9d
	leal	1(%r9), %r10d
	movl	%r10d, 24(%rdi)
	addl	%r8d, %r9d
	incl	%r9d
	cmpl	$-1, %r9d
	jne	.LBB4_13
# %bb.4:                                # %if.then5.i
                                        #   in Loop: Header=BB4_1 Depth=1
	notl	%edx
	movl	112(%rdi), %r10d
	addl	108(%rdi), %r10d
	je	.LBB4_12
# %bb.5:                                # %for.body.preheader.i.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	64(%rdi), %r8
	movl	%r10d, %r9d
	cmpl	$16, %r10d
	jae	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_1 Depth=1
	xorl	%r10d, %r10d
	jmp	.LBB4_10
.LBB4_7:                                # %vector.ph
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	%r9d, %r10d
	andl	$-16, %r10d
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movdqa	%xmm1, %xmm2
	pxor	%xmm0, %xmm2
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB4_8:                                # %vector.body
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r8,%r11,4), %xmm3
	movdqu	16(%r8,%r11,4), %xmm4
	movdqu	32(%r8,%r11,4), %xmm5
	movdqu	48(%r8,%r11,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%r8,%r11,4)
	movdqu	%xmm4, 16(%r8,%r11,4)
	movdqu	%xmm5, 32(%r8,%r11,4)
	movdqu	%xmm6, 48(%r8,%r11,4)
	addq	$16, %r11
	cmpq	%r11, %r10
	jne	.LBB4_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	%r9d, %r10d
	je	.LBB4_11
	.p2align	4, 0x90
.LBB4_10:                               # %for.body.i.i
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r8,%r10,4), %r11d
	subl	%edx, %r11d
	cmovbl	%ecx, %r11d
	movl	%r11d, (%r8,%r10,4)
	incq	%r10
	cmpq	%r10, %r9
	jne	.LBB4_10
.LBB4_11:                               # %normalize.exit.loopexit.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	20(%rdi), %r8d
.LBB4_12:                               # %normalize.exit.i
                                        #   in Loop: Header=BB4_1 Depth=1
	subl	%edx, %r8d
	movl	%r8d, 20(%rdi)
	jmp	.LBB4_13
.LBB4_14:                               # %do.end38
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	lzma_mf_hc4_skip, .Lfunc_end4-lzma_mf_hc4_skip
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_mf_bt2_find
.LCPI5_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.text
	.globl	lzma_mf_bt2_find
	.p2align	4, 0x90
	.type	lzma_mf_bt2_find,@function
lzma_mf_bt2_find:                       # @lzma_mf_bt2_find
	.cfi_startproc
# %bb.0:                                # %entry
	movl	24(%rdi), %ecx
	movl	36(%rdi), %eax
	subl	%ecx, %eax
	movl	96(%rdi), %r8d
	cmpl	%eax, %r8d
	jbe	.LBB5_5
# %bb.1:                                # %if.else
	cmpl	$2, %eax
	jb	.LBB5_3
# %bb.2:                                # %lor.lhs.false
	cmpl	$1, 104(%rdi)
	movl	%eax, %r8d
	jne	.LBB5_5
.LBB5_3:                                # %if.then4
	incl	%ecx
	movl	%ecx, 24(%rdi)
	incl	40(%rdi)
	xorl	%eax, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB5_5:                                # %if.end5
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
	movq	(%rdi), %rbx
	movq	64(%rdi), %rdx
	movl	20(%rdi), %r14d
	addl	%ecx, %r14d
	movzwl	(%rbx,%rcx), %eax
	movl	(%rdx,%rax,4), %r13d
	movl	%r14d, (%rdx,%rax,4)
	movl	92(%rdi), %r11d
	movq	72(%rdi), %r9
	movl	80(%rdi), %eax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	leal	(%rax,%rax), %edx
	leaq	(%r9,%rdx,4), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	%r9, -8(%rsp)                   # 8-byte Spill
	leaq	(%r9,%rdx,4), %rax
	addq	$4, %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	testl	%r11d, %r11d
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	movq	%rsi, -48(%rsp)                 # 8-byte Spill
	je	.LBB5_7
# %bb.6:                                # %if.end5
	movl	84(%rdi), %ebp
	movl	%r14d, %r10d
	subl	%r13d, %r10d
	cmpl	%ebp, %r10d
	jae	.LBB5_7
# %bb.9:                                # %if.end.i.preheader
	addq	%rcx, %rbx
	movl	%r8d, %eax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	%r8, -24(%rsp)                  # 8-byte Spill
	leal	-1(%r8), %r12d
	movl	$1, -68(%rsp)                   # 4-byte Folded Spill
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	movq	%rsi, %rax
	.p2align	4, 0x90
.LBB5_10:                               # %if.end.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_13 Depth 2
	movq	-16(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%r10d, %ecx
	movl	$0, %edx
	cmovbl	%ebp, %edx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	movl	%r10d, %edx
	movq	%rbx, %r9
	subq	%rdx, %r9
	cmpl	%r15d, %edi
	movl	%r15d, %edx
	cmovbl	%edi, %edx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rsi,%rcx,4), %rcx
	movzbl	(%r9,%rdx), %r8d
	cmpb	(%rbx,%rdx), %r8b
	jne	.LBB5_11
# %bb.12:                               # %while.cond24.i.preheader
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	%r14d, %esi
	.p2align	4, 0x90
.LBB5_13:                               # %while.cond24.i
                                        #   Parent Loop BB5_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edx, %r12d
	je	.LBB5_17
# %bb.14:                               # %while.body27.i
                                        #   in Loop: Header=BB5_13 Depth=2
	incl	%edx
	movl	%edx, %r8d
	movzbl	(%r9,%r8), %r14d
	cmpb	(%rbx,%r8), %r14b
	je	.LBB5_13
# %bb.15:                               # %while.end.thread.i
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	%edx, -68(%rsp)                 # 4-byte Folded Reload
	jae	.LBB5_19
# %bb.16:                               # %if.then40.thread.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	%edx, (%rax)
	decl	%r10d
	movl	%r10d, 4(%rax)
	addq	$8, %rax
	movl	%edx, -68(%rsp)                 # 4-byte Spill
	jmp	.LBB5_19
	.p2align	4, 0x90
.LBB5_11:                               #   in Loop: Header=BB5_10 Depth=1
	movq	%rdx, %r8
	movzbl	(%r9,%r8), %r9d
	cmpb	(%rbx,%r8), %r9b
	jae	.LBB5_22
.LBB5_21:                               # %if.then59.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-64(%rsp), %r8                  # 8-byte Reload
	movl	%r13d, (%r8)
	addq	$4, %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movl	%edx, %r15d
	decl	%r11d
	jne	.LBB5_24
	jmp	.LBB5_8
	.p2align	4, 0x90
.LBB5_17:                               # %while.end.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	cmpl	%edx, -68(%rsp)                 # 4-byte Folded Reload
	jb	.LBB5_25
# %bb.18:                               #   in Loop: Header=BB5_10 Depth=1
	movq	-32(%rsp), %r8                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
.LBB5_19:                               # %if.end50.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	%esi, %r14d
	movzbl	(%r9,%r8), %r9d
	cmpb	(%rbx,%r8), %r9b
	jb	.LBB5_21
.LBB5_22:                               # %if.else.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	movl	%r13d, (%rdi)
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movl	%edx, %edi
	decl	%r11d
	je	.LBB5_8
.LBB5_24:                               # %cleanup64.i
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	(%rcx), %r13d
	movl	%r14d, %r10d
	subl	%r13d, %r10d
	cmpl	%ebp, %r10d
	jb	.LBB5_10
	jmp	.LBB5_8
.LBB5_7:
	movq	%rsi, %rax
.LBB5_8:                                # %if.then.i
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	movl	$0, (%rcx)
	movq	-64(%rsp), %rcx                 # 8-byte Reload
	movl	$0, (%rcx)
.LBB5_26:                               # %bt_find_func.exit
	subq	-48(%rsp), %rax                 # 8-byte Folded Reload
	shrq	$3, %rax
	movq	-40(%rsp), %r9                  # 8-byte Reload
	movl	80(%r9), %ecx
	incl	%ecx
	movl	84(%r9), %r10d
	xorl	%edx, %edx
	cmpl	%r10d, %ecx
	cmovnel	%ecx, %edx
	movl	%edx, 80(%r9)
	movl	20(%r9), %ecx
	movl	24(%r9), %edx
	leal	1(%rdx), %esi
	movl	%esi, 24(%r9)
	addl	%ecx, %edx
	incl	%edx
	cmpl	$-1, %edx
	jne	.LBB5_36
# %bb.27:                               # %if.then5.i
	notl	%r10d
	movl	112(%r9), %edi
	addl	108(%r9), %edi
	je	.LBB5_35
# %bb.28:                               # %for.body.preheader.i.i
	movq	64(%r9), %rcx
	movl	%edi, %edx
	xorl	%esi, %esi
	cmpl	$16, %edi
	jae	.LBB5_30
# %bb.29:
	xorl	%r8d, %r8d
	jmp	.LBB5_33
.LBB5_30:                               # %vector.ph
	movl	%edx, %r8d
	andl	$-16, %r8d
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%edi, %edi
	movdqa	.LCPI5_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	%xmm0, %xmm2
	pxor	%xmm1, %xmm2
	.p2align	4, 0x90
.LBB5_31:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx,%rdi,4), %xmm3
	movdqu	16(%rcx,%rdi,4), %xmm4
	movdqu	32(%rcx,%rdi,4), %xmm5
	movdqu	48(%rcx,%rdi,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rcx,%rdi,4)
	movdqu	%xmm4, 16(%rcx,%rdi,4)
	movdqu	%xmm5, 32(%rcx,%rdi,4)
	movdqu	%xmm6, 48(%rcx,%rdi,4)
	addq	$16, %rdi
	cmpq	%rdi, %r8
	jne	.LBB5_31
# %bb.32:                               # %middle.block
	cmpl	%edx, %r8d
	je	.LBB5_34
	.p2align	4, 0x90
.LBB5_33:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%r8,4), %edi
	subl	%r10d, %edi
	cmovbl	%esi, %edi
	movl	%edi, (%rcx,%r8,4)
	incq	%r8
	cmpq	%r8, %rdx
	jne	.LBB5_33
.LBB5_34:                               # %normalize.exit.loopexit.i
	movl	20(%r9), %ecx
.LBB5_35:                               # %normalize.exit.i
	subl	%r10d, %ecx
	movl	%ecx, 20(%r9)
.LBB5_36:
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
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB5_25:                               # %if.then45.i
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, (%rax)
	decl	%r10d
	movl	%r10d, 4(%rax)
	addq	$8, %rax
	movl	(%rcx), %edx
	movq	-64(%rsp), %rdi                 # 8-byte Reload
	movl	%edx, (%rdi)
	movl	4(%rcx), %ecx
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movl	%ecx, (%rdx)
	jmp	.LBB5_26
.Lfunc_end5:
	.size	lzma_mf_bt2_find, .Lfunc_end5-lzma_mf_bt2_find
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_mf_bt2_skip
.LCPI6_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.text
	.globl	lzma_mf_bt2_skip
	.p2align	4, 0x90
	.type	lzma_mf_bt2_skip,@function
lzma_mf_bt2_skip:                       # @lzma_mf_bt2_skip
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movdqa	.LCPI6_0(%rip), %xmm0           # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_4:                                # %if.then4
                                        #   in Loop: Header=BB6_1 Depth=1
	incl	%edx
	movl	%edx, 24(%rdi)
	incl	40(%rdi)
.LBB6_28:                               # %cleanup
                                        #   in Loop: Header=BB6_1 Depth=1
	decl	%esi
	je	.LBB6_29
.LBB6_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #       Child Loop BB6_10 Depth 3
                                        #     Child Loop BB6_23 Depth 2
                                        #     Child Loop BB6_25 Depth 2
	movl	24(%rdi), %edx
	movl	36(%rdi), %eax
	subl	%edx, %eax
	movl	96(%rdi), %ecx
	cmpl	%eax, %ecx
	jbe	.LBB6_5
# %bb.2:                                # %if.else
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$2, %eax
	jb	.LBB6_4
# %bb.3:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$1, 104(%rdi)
	movl	%eax, %ecx
	je	.LBB6_4
	.p2align	4, 0x90
.LBB6_5:                                # %if.end5
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	%esi, -12(%rsp)                 # 4-byte Spill
	movq	(%rdi), %r9
	movq	64(%rdi), %rsi
	movl	20(%rdi), %eax
	addl	%edx, %eax
	movzwl	(%r9,%rdx), %r8d
	movl	(%rsi,%r8,4), %r15d
	movl	%eax, (%rsi,%r8,4)
	movl	92(%rdi), %r11d
	movq	72(%rdi), %rsi
	movl	80(%rdi), %r8d
	movq	%r8, -8(%rsp)                   # 8-byte Spill
	addl	%r8d, %r8d
	leaq	(%rsi,%r8,4), %r10
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	leaq	(%rsi,%r8,4), %r8
	addq	$4, %r8
	movq	%r8, -32(%rsp)                  # 8-byte Spill
	testl	%r11d, %r11d
	je	.LBB6_17
# %bb.6:                                # %if.end5
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	84(%rdi), %ebp
	movl	%eax, %r10d
	subl	%r15d, %r10d
	cmpl	%ebp, %r10d
	jae	.LBB6_17
# %bb.7:                                # %if.end.i.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	addq	%rdx, %r9
	decl	%ecx
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
.LBB6_8:                                # %if.end.i
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_10 Depth 3
	movq	-8(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	subl	%r10d, %edx
	movl	$0, %r8d
	cmovbl	%ebp, %r8d
	addl	%r8d, %edx
	addl	%edx, %edx
	movl	%r10d, %r10d
	movq	%r9, %r8
	subq	%r10, %r8
	cmpl	%r12d, %r13d
	movl	%r12d, %r10d
	cmovbl	%r13d, %r10d
	leaq	(%rsi,%rdx,4), %rdx
	movzbl	(%r8,%r10), %r14d
	movzbl	(%r9,%r10), %ebx
	cmpb	%bl, %r14b
	jne	.LBB6_12
	.p2align	4, 0x90
.LBB6_10:                               # %while.cond24.i
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%r10d, %ecx
	je	.LBB6_30
# %bb.11:                               # %while.body27.i
                                        #   in Loop: Header=BB6_10 Depth=3
	incl	%r10d
	movl	%r10d, %ebx
	movzbl	(%r8,%rbx), %r14d
	movzbl	(%r9,%rbx), %ebx
	cmpb	%bl, %r14b
	je	.LBB6_10
.LBB6_12:                               # %if.end44.i
                                        #   in Loop: Header=BB6_8 Depth=2
	cmpb	%bl, %r14b
	jae	.LBB6_14
# %bb.13:                               # %if.then53.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	-24(%rsp), %r8                  # 8-byte Reload
	movl	%r15d, (%r8)
	addq	$4, %rdx
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movl	%r10d, %r12d
	decl	%r11d
	jne	.LBB6_16
	jmp	.LBB6_17
	.p2align	4, 0x90
.LBB6_14:                               # %if.else.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	-32(%rsp), %r8                  # 8-byte Reload
	movl	%r15d, (%r8)
	movl	%r10d, %r13d
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	decl	%r11d
	je	.LBB6_17
.LBB6_16:                               # %cleanup58.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	(%rdx), %r15d
	movl	%eax, %r10d
	subl	%r15d, %r10d
	cmpl	%ebp, %r10d
	jb	.LBB6_8
	.p2align	4, 0x90
.LBB6_17:                               # %if.then.i
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	jmp	.LBB6_18
	.p2align	4, 0x90
.LBB6_30:                               # %if.then40.i
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	(%rdx), %eax
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, (%rcx)
	movl	4(%rdx), %eax
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, (%rcx)
.LBB6_18:                               # %bt_skip_func.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	80(%rdi), %eax
	incl	%eax
	movl	84(%rdi), %ecx
	cmpl	%ecx, %eax
	movl	$0, %r10d
	cmovel	%r10d, %eax
	movl	%eax, 80(%rdi)
	movl	20(%rdi), %eax
	movl	24(%rdi), %edx
	leal	1(%rdx), %esi
	movl	%esi, 24(%rdi)
	addl	%eax, %edx
	incl	%edx
	cmpl	$-1, %edx
	movl	-12(%rsp), %esi                 # 4-byte Reload
	jne	.LBB6_28
# %bb.19:                               # %if.then5.i
                                        #   in Loop: Header=BB6_1 Depth=1
	notl	%ecx
	movl	112(%rdi), %r9d
	addl	108(%rdi), %r9d
	je	.LBB6_27
# %bb.20:                               # %for.body.preheader.i.i
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	64(%rdi), %rdx
	movl	%r9d, %r8d
	cmpl	$16, %r9d
	jae	.LBB6_22
# %bb.21:                               #   in Loop: Header=BB6_1 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB6_25
.LBB6_22:                               # %vector.ph
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	%r8d, %r9d
	andl	$-16, %r9d
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movdqa	%xmm1, %xmm2
	pxor	%xmm0, %xmm2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB6_23:                               # %vector.body
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rdx,%rax,4), %xmm3
	movdqu	16(%rdx,%rax,4), %xmm4
	movdqu	32(%rdx,%rax,4), %xmm5
	movdqu	48(%rdx,%rax,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rdx,%rax,4)
	movdqu	%xmm4, 16(%rdx,%rax,4)
	movdqu	%xmm5, 32(%rdx,%rax,4)
	movdqu	%xmm6, 48(%rdx,%rax,4)
	addq	$16, %rax
	cmpq	%rax, %r9
	jne	.LBB6_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	%r8d, %r9d
	je	.LBB6_26
	.p2align	4, 0x90
.LBB6_25:                               # %for.body.i.i
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx,%r9,4), %eax
	subl	%ecx, %eax
	cmovbl	%r10d, %eax
	movl	%eax, (%rdx,%r9,4)
	incq	%r9
	cmpq	%r9, %r8
	jne	.LBB6_25
.LBB6_26:                               # %normalize.exit.loopexit.i
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	20(%rdi), %eax
.LBB6_27:                               # %normalize.exit.i
                                        #   in Loop: Header=BB6_1 Depth=1
	subl	%ecx, %eax
	movl	%eax, 20(%rdi)
	jmp	.LBB6_28
.LBB6_29:                               # %do.end17
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
.Lfunc_end6:
	.size	lzma_mf_bt2_skip, .Lfunc_end6-lzma_mf_bt2_skip
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_mf_bt3_find
.LCPI7_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.text
	.globl	lzma_mf_bt3_find
	.p2align	4, 0x90
	.type	lzma_mf_bt3_find,@function
lzma_mf_bt3_find:                       # @lzma_mf_bt3_find
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	24(%rdi), %ecx
	movl	36(%rdi), %eax
	subl	%ecx, %eax
	movl	96(%rdi), %ebx
	cmpl	%eax, %ebx
	jbe	.LBB7_4
# %bb.1:                                # %if.else
	cmpl	$3, %eax
	jb	.LBB7_3
# %bb.2:                                # %lor.lhs.false
	cmpl	$1, 104(%rdi)
	movl	%eax, %ebx
	jne	.LBB7_4
.LBB7_3:                                # %if.then4
	incl	%ecx
	movl	%ecx, 24(%rdi)
	incl	40(%rdi)
	xorl	%eax, %eax
	jmp	.LBB7_56
.LBB7_4:                                # %if.end5
	movq	(%rdi), %rdx
	movq	64(%rdi), %r11
	leaq	(%rdx,%rcx), %rax
	movl	20(%rdi), %r12d
	addl	%ecx, %r12d
	movzbl	(%rdx,%rcx), %r9d
	movq	lzma_crc32_table@GOTPCREL(%rip), %r8
	movzbl	1(%rdx,%rcx), %r10d
	xorl	(%r8,%r9,4), %r10d
	movzbl	2(%rdx,%rcx), %edx
	shll	$8, %edx
	xorl	%r10d, %edx
	andl	88(%rdi), %edx
	andl	$1023, %r10d                    # imm = 0x3FF
	movl	%r12d, %ecx
	subl	(%r11,%r10,4), %ecx
	addl	$1024, %edx                     # imm = 0x400
	movl	(%r11,%rdx,4), %r9d
	movl	%r12d, (%r11,%r10,4)
	movq	64(%rdi), %r8
	movl	%r12d, (%r8,%rdx,4)
	movl	84(%rdi), %r11d
	movl	$2, %r10d
	cmpl	%r11d, %ecx
	movq	%rbx, -56(%rsp)                 # 8-byte Spill
	movl	%r12d, -68(%rsp)                # 4-byte Spill
	movq	%rdi, -32(%rsp)                 # 8-byte Spill
	jae	.LBB7_23
# %bb.5:                                # %land.lhs.true
	movl	%ecx, %edx
	movq	%rax, %r8
	subq	%rdx, %r8
	movzbl	(%r8), %r8d
	cmpb	(%rax), %r8b
	jne	.LBB7_23
# %bb.6:                                # %for.cond.preheader
	cmpl	$2, %ebx
	je	.LBB7_10
# %bb.7:                                # %for.body.preheader
	negq	%rdx
	.p2align	4, 0x90
.LBB7_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, %r11d
	leaq	(%rax,%r11), %r8
	movzbl	(%rdx,%r8), %r8d
	cmpb	(%rax,%r11), %r8b
	jne	.LBB7_29
# %bb.9:                                # %for.inc
                                        #   in Loop: Header=BB7_8 Depth=1
	incl	%r10d
	cmpl	%r10d, %ebx
	jne	.LBB7_8
.LBB7_10:                               # %do.body
	movl	%ebx, (%rsi)
	decl	%ecx
	movl	%ecx, 4(%rsi)
	movl	92(%rdi), %r10d
	movq	72(%rdi), %r11
	movl	80(%rdi), %ebx
	leal	(%rbx,%rbx), %edx
	leaq	(%r11,%rdx,4), %rcx
	leaq	(%r11,%rdx,4), %rsi
	addq	$4, %rsi
	testl	%r10d, %r10d
	je	.LBB7_21
# %bb.11:                               # %do.body
	movl	84(%rdi), %ebp
	movl	%r12d, %edx
	subl	%r9d, %edx
	cmpl	%ebp, %edx
	jae	.LBB7_21
# %bb.12:                               # %if.end.i.preheader
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	decl	%edi
	movq	%rdi, -56(%rsp)                 # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
.LBB7_13:                               # %if.end.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
	movl	%ebx, %edi
	subl	%edx, %edi
	movl	$0, %r8d
	cmovbl	%ebp, %r8d
	leal	(%rdi,%r8), %r12d
	addl	%r12d, %r12d
	movl	%edx, %edx
	movq	%rax, %r8
	subq	%rdx, %r8
	cmpl	%r14d, %r15d
	movl	%r14d, %edi
	cmovbl	%r15d, %edi
	leaq	(%r11,%r12,4), %rdx
	movzbl	(%r8,%rdi), %r12d
	movzbl	(%rax,%rdi), %r13d
	cmpb	%r13b, %r12b
	jne	.LBB7_16
	.p2align	4, 0x90
.LBB7_14:                               # %while.cond24.i
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edi, -56(%rsp)                 # 4-byte Folded Reload
	je	.LBB7_24
# %bb.15:                               # %while.body27.i
                                        #   in Loop: Header=BB7_14 Depth=2
	incl	%edi
	movl	%edi, %r13d
	movzbl	(%r8,%r13), %r12d
	movzbl	(%rax,%r13), %r13d
	cmpb	%r13b, %r12b
	je	.LBB7_14
.LBB7_16:                               # %if.end44.i
                                        #   in Loop: Header=BB7_13 Depth=1
	cmpb	%r13b, %r12b
	jae	.LBB7_18
# %bb.17:                               # %if.then53.i
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	%r9d, (%rcx)
	addq	$4, %rdx
	movq	%rdx, %rcx
	movl	%edi, %r14d
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.i
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	%r9d, (%rsi)
	movl	%edi, %r15d
	movq	%rdx, %rsi
.LBB7_19:                               # %cleanup58.i
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-68(%rsp), %edi                 # 4-byte Reload
	decl	%r10d
	je	.LBB7_21
# %bb.20:                               # %cleanup58.i
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	(%rdx), %r9d
	movl	%edi, %edx
	subl	%r9d, %edx
	cmpl	%ebp, %edx
	jb	.LBB7_13
.LBB7_21:                               # %if.then.i
	movl	$0, (%rsi)
	movl	$0, (%rcx)
	jmp	.LBB7_25
.LBB7_23:
	xorl	%ecx, %ecx
.LBB7_30:                               # %do.body57
	movl	92(%rdi), %ebp
	movq	72(%rdi), %r15
	movl	80(%rdi), %edx
	leaq	(%rsi,%rcx,8), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	leal	(%rdx,%rdx), %ecx
	leaq	(%r15,%rcx,4), %rdx
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	leaq	(%r15,%rcx,4), %rcx
	addq	$4, %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	testl	%ebp, %ebp
	movq	%rsi, -24(%rsp)                 # 8-byte Spill
	je	.LBB7_45
# %bb.31:                               # %do.body57
	movl	%r12d, %r8d
	subl	%r9d, %r8d
	cmpl	%r11d, %r8d
	jae	.LBB7_45
# %bb.32:                               # %if.end.i152.preheader
	movl	%ebx, %ecx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	leal	-1(%rbx), %r13d
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	.LBB7_33
	.p2align	4, 0x90
.LBB7_43:                               # %if.else.i169
                                        #   in Loop: Header=BB7_33 Depth=1
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	movl	%r9d, (%rcx)
	movq	%rbx, -40(%rsp)                 # 8-byte Spill
	movl	%edi, %ecx
	decl	%ebp
	je	.LBB7_45
.LBB7_44:                               # %cleanup64.i
                                        #   in Loop: Header=BB7_33 Depth=1
	movl	(%rbx), %r9d
	movl	%r12d, %r8d
	subl	%r9d, %r8d
	cmpl	%r11d, %r8d
	jae	.LBB7_45
.LBB7_33:                               # %if.end.i152
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_34 Depth 2
	movq	-8(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	subl	%r8d, %edx
	movl	$0, %edi
	cmovbl	%r11d, %edi
	leal	(%rdx,%rdi), %ebx
	addl	%ebx, %ebx
	movl	%r8d, %edi
	movq	%rax, %rdx
	subq	%rdi, %rdx
	cmpl	%esi, %ecx
	movl	%esi, %edi
	cmovbl	%ecx, %edi
	leaq	(%r15,%rbx,4), %rbx
	movzbl	(%rdx,%rdi), %r14d
	cmpb	(%rax,%rdi), %r14b
	jne	.LBB7_39
	.p2align	4, 0x90
.LBB7_34:                               # %while.cond24.i180
                                        #   Parent Loop BB7_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edi, %r13d
	je	.LBB7_41
# %bb.35:                               # %while.body27.i184
                                        #   in Loop: Header=BB7_34 Depth=2
	incl	%edi
	movl	%edi, %r14d
	movzbl	(%rdx,%r14), %r12d
	cmpb	(%rax,%r14), %r12b
	je	.LBB7_34
# %bb.36:                               # %while.end.thread.i
                                        #   in Loop: Header=BB7_33 Depth=1
	cmpl	%edi, %r10d
	jae	.LBB7_38
# %bb.37:                               # %if.then40.thread.i
                                        #   in Loop: Header=BB7_33 Depth=1
	movq	-64(%rsp), %r10                 # 8-byte Reload
	movl	%edi, (%r10)
	decl	%r8d
	movl	%r8d, 4(%r10)
	addq	$8, %r10
	movq	%r10, -64(%rsp)                 # 8-byte Spill
	movl	%edi, %r10d
.LBB7_38:                               # %if.end50.i
                                        #   in Loop: Header=BB7_33 Depth=1
	movl	-68(%rsp), %r12d                # 4-byte Reload
	movzbl	(%rdx,%r14), %edx
	cmpb	(%rax,%r14), %dl
	jb	.LBB7_40
	jmp	.LBB7_43
	.p2align	4, 0x90
.LBB7_39:                               #   in Loop: Header=BB7_33 Depth=1
	movq	%rdi, %r14
	movzbl	(%rdx,%r14), %edx
	cmpb	(%rax,%r14), %dl
	jae	.LBB7_43
	jmp	.LBB7_40
	.p2align	4, 0x90
.LBB7_41:                               # %while.end.i
                                        #   in Loop: Header=BB7_33 Depth=1
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	cmpl	%edi, %r10d
	jb	.LBB7_57
# %bb.42:                               #   in Loop: Header=BB7_33 Depth=1
	movq	-16(%rsp), %r14                 # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	movl	-68(%rsp), %r12d                # 4-byte Reload
	movzbl	(%rdx,%r14), %edx
	cmpb	(%rax,%r14), %dl
	jae	.LBB7_43
.LBB7_40:                               # %if.then59.i
                                        #   in Loop: Header=BB7_33 Depth=1
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movl	%r9d, (%rdx)
	addq	$4, %rbx
	movq	%rbx, -48(%rsp)                 # 8-byte Spill
	movl	%edi, %esi
	decl	%ebp
	jne	.LBB7_44
.LBB7_45:                               # %if.then.i149
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	movq	-64(%rsp), %rax                 # 8-byte Reload
.LBB7_46:                               # %bt_find_func.exit
	subq	-24(%rsp), %rax                 # 8-byte Folded Reload
	shrq	$3, %rax
	movq	-32(%rsp), %r9                  # 8-byte Reload
	movl	80(%r9), %ecx
	incl	%ecx
	movl	84(%r9), %r10d
	xorl	%edx, %edx
	cmpl	%r10d, %ecx
	cmovnel	%ecx, %edx
	movl	%edx, 80(%r9)
	movl	20(%r9), %ecx
	movl	24(%r9), %edx
	leal	1(%rdx), %esi
	movl	%esi, 24(%r9)
	addl	%ecx, %edx
	incl	%edx
	cmpl	$-1, %edx
	jne	.LBB7_56
# %bb.47:                               # %if.then5.i199
	notl	%r10d
	movl	112(%r9), %edi
	addl	108(%r9), %edi
	je	.LBB7_55
# %bb.48:                               # %for.body.preheader.i.i206
	movq	64(%r9), %rcx
	movl	%edi, %edx
	xorl	%esi, %esi
	cmpl	$16, %edi
	jae	.LBB7_50
# %bb.49:
	xorl	%edi, %edi
	jmp	.LBB7_53
.LBB7_50:                               # %vector.ph
	movl	%edx, %edi
	andl	$-16, %edi
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%r8d, %r8d
	movdqa	.LCPI7_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	%xmm0, %xmm2
	pxor	%xmm1, %xmm2
	.p2align	4, 0x90
.LBB7_51:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx,%r8,4), %xmm3
	movdqu	16(%rcx,%r8,4), %xmm4
	movdqu	32(%rcx,%r8,4), %xmm5
	movdqu	48(%rcx,%r8,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rcx,%r8,4)
	movdqu	%xmm4, 16(%rcx,%r8,4)
	movdqu	%xmm5, 32(%rcx,%r8,4)
	movdqu	%xmm6, 48(%rcx,%r8,4)
	addq	$16, %r8
	cmpq	%r8, %rdi
	jne	.LBB7_51
# %bb.52:                               # %middle.block
	cmpl	%edx, %edi
	je	.LBB7_54
	.p2align	4, 0x90
.LBB7_53:                               # %for.body.i.i208
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rdi,4), %r8d
	subl	%r10d, %r8d
	cmovbl	%esi, %r8d
	movl	%r8d, (%rcx,%rdi,4)
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB7_53
.LBB7_54:                               # %normalize.exit.loopexit.i214
	movl	20(%r9), %ecx
.LBB7_55:                               # %normalize.exit.i216
	subl	%r10d, %ecx
	movl	%ecx, 20(%r9)
	jmp	.LBB7_56
.LBB7_24:                               # %if.then40.i
	movl	(%rdx), %eax
	movl	%eax, (%rcx)
	movl	4(%rdx), %eax
	movl	%eax, (%rsi)
.LBB7_25:                               # %bt_skip_func.exit
	movq	-32(%rsp), %r9                  # 8-byte Reload
	movl	80(%r9), %ecx
	incl	%ecx
	movl	84(%r9), %r10d
	xorl	%edx, %edx
	cmpl	%r10d, %ecx
	cmovnel	%ecx, %edx
	movl	%edx, 80(%r9)
	movl	20(%r9), %ecx
	movl	24(%r9), %edx
	leal	1(%rdx), %esi
	movl	%esi, 24(%r9)
	addl	%ecx, %edx
	incl	%edx
	movl	$1, %eax
	cmpl	$-1, %edx
	je	.LBB7_26
.LBB7_56:                               # %cleanup76
                                        # kill: def $eax killed $eax killed $rax
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
.LBB7_57:                               # %if.then45.i
	.cfi_def_cfa_offset 56
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	%edi, (%rax)
	decl	%r8d
	movl	%r8d, 4(%rax)
	addq	$8, %rax
	movl	(%rbx), %ecx
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movl	%ecx, (%rdx)
	movl	4(%rbx), %ecx
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movl	%ecx, (%rdx)
	jmp	.LBB7_46
.LBB7_26:                               # %if.then5.i
	notl	%r10d
	movl	112(%r9), %edi
	addl	108(%r9), %edi
	je	.LBB7_55
# %bb.27:                               # %for.body.preheader.i.i
	movq	64(%r9), %rcx
	movl	%edi, %edx
	xorl	%esi, %esi
	cmpl	$16, %edi
	jae	.LBB7_58
# %bb.28:
	xorl	%edi, %edi
	jmp	.LBB7_61
.LBB7_29:                               # %for.end
	movl	%r10d, (%rsi)
	decl	%ecx
	movl	%ecx, 4(%rsi)
	movl	84(%rdi), %r11d
	movl	$1, %ecx
	jmp	.LBB7_30
.LBB7_58:                               # %vector.ph278
	movl	%edx, %edi
	andl	$-16, %edi
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%r8d, %r8d
	movdqa	.LCPI7_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	%xmm0, %xmm2
	pxor	%xmm1, %xmm2
	.p2align	4, 0x90
.LBB7_59:                               # %vector.body282
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx,%r8,4), %xmm3
	movdqu	16(%rcx,%r8,4), %xmm4
	movdqu	32(%rcx,%r8,4), %xmm5
	movdqu	48(%rcx,%r8,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rcx,%r8,4)
	movdqu	%xmm4, 16(%rcx,%r8,4)
	movdqu	%xmm5, 32(%rcx,%r8,4)
	movdqu	%xmm6, 48(%rcx,%r8,4)
	addq	$16, %r8
	cmpq	%r8, %rdi
	jne	.LBB7_59
# %bb.60:                               # %middle.block275
	cmpl	%edx, %edi
	je	.LBB7_54
	.p2align	4, 0x90
.LBB7_61:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rdi,4), %r8d
	subl	%r10d, %r8d
	cmovbl	%esi, %r8d
	movl	%r8d, (%rcx,%rdi,4)
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB7_61
	jmp	.LBB7_54
.Lfunc_end7:
	.size	lzma_mf_bt3_find, .Lfunc_end7-lzma_mf_bt3_find
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_mf_bt3_skip
.LCPI8_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.text
	.globl	lzma_mf_bt3_skip
	.p2align	4, 0x90
	.type	lzma_mf_bt3_skip,@function
lzma_mf_bt3_skip:                       # @lzma_mf_bt3_skip
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movdqa	.LCPI8_0(%rip), %xmm0           # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	jmp	.LBB8_1
	.p2align	4, 0x90
.LBB8_4:                                # %if.then4
                                        #   in Loop: Header=BB8_1 Depth=1
	incl	%eax
	movl	%eax, 24(%rdi)
	incl	40(%rdi)
.LBB8_28:                               # %cleanup
                                        #   in Loop: Header=BB8_1 Depth=1
	decl	%esi
	je	.LBB8_29
.LBB8_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #       Child Loop BB8_10 Depth 3
                                        #     Child Loop BB8_23 Depth 2
                                        #     Child Loop BB8_25 Depth 2
	movl	24(%rdi), %eax
	movl	36(%rdi), %ecx
	subl	%eax, %ecx
	movl	96(%rdi), %edx
	cmpl	%ecx, %edx
	jbe	.LBB8_5
# %bb.2:                                # %if.else
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$3, %ecx
	jb	.LBB8_4
# %bb.3:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$1, 104(%rdi)
	movl	%ecx, %edx
	je	.LBB8_4
	.p2align	4, 0x90
.LBB8_5:                                # %if.end5
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	%esi, -12(%rsp)                 # 4-byte Spill
	movq	(%rdi), %r11
	movq	64(%rdi), %rcx
	movl	20(%rdi), %r9d
	addl	%eax, %r9d
	movzbl	(%r11,%rax), %esi
	movzbl	1(%r11,%rax), %r8d
	movq	lzma_crc32_table@GOTPCREL(%rip), %r10
	xorl	(%r10,%rsi,4), %r8d
	movzbl	2(%r11,%rax), %esi
	shll	$8, %esi
	xorl	%r8d, %esi
	andl	$1023, %r8d                     # imm = 0x3FF
	andl	88(%rdi), %esi
	addl	$1024, %esi                     # imm = 0x400
	movl	(%rcx,%rsi,4), %r12d
	movl	%r9d, (%rcx,%r8,4)
	movq	64(%rdi), %rcx
	movl	%r9d, (%rcx,%rsi,4)
	movl	92(%rdi), %ebx
	movq	72(%rdi), %rsi
	movl	80(%rdi), %ecx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	addl	%ecx, %ecx
	leaq	(%rsi,%rcx,4), %r8
	movq	%r8, -24(%rsp)                  # 8-byte Spill
	leaq	(%rsi,%rcx,4), %rcx
	addq	$4, %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	testl	%ebx, %ebx
	je	.LBB8_17
# %bb.6:                                # %if.end5
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	84(%rdi), %ebp
	movl	%r9d, %r10d
	subl	%r12d, %r10d
	cmpl	%ebp, %r10d
	jae	.LBB8_17
# %bb.7:                                # %if.end.i.preheader
                                        #   in Loop: Header=BB8_1 Depth=1
	addq	%rax, %r11
	decl	%edx
	xorl	%r13d, %r13d
	xorl	%eax, %eax
.LBB8_8:                                # %if.end.i
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_10 Depth 3
	movq	-8(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%r10d, %ecx
	movl	$0, %r8d
	cmovbl	%ebp, %r8d
	leal	(%rcx,%r8), %r14d
	addl	%r14d, %r14d
	movl	%r10d, %ecx
	movq	%r11, %r8
	subq	%rcx, %r8
	cmpl	%r13d, %eax
	movl	%r13d, %ecx
	cmovbl	%eax, %ecx
	leaq	(%rsi,%r14,4), %r10
	movzbl	(%r8,%rcx), %r15d
	movzbl	(%r11,%rcx), %r14d
	cmpb	%r14b, %r15b
	jne	.LBB8_12
	.p2align	4, 0x90
.LBB8_10:                               # %while.cond24.i
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%ecx, %edx
	je	.LBB8_30
# %bb.11:                               # %while.body27.i
                                        #   in Loop: Header=BB8_10 Depth=3
	incl	%ecx
	movl	%ecx, %r14d
	movzbl	(%r8,%r14), %r15d
	movzbl	(%r11,%r14), %r14d
	cmpb	%r14b, %r15b
	je	.LBB8_10
.LBB8_12:                               # %if.end44.i
                                        #   in Loop: Header=BB8_8 Depth=2
	cmpb	%r14b, %r15b
	jae	.LBB8_14
# %bb.13:                               # %if.then53.i
                                        #   in Loop: Header=BB8_8 Depth=2
	movq	-24(%rsp), %r8                  # 8-byte Reload
	movl	%r12d, (%r8)
	addq	$4, %r10
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	movl	%ecx, %r13d
	decl	%ebx
	jne	.LBB8_16
	jmp	.LBB8_17
	.p2align	4, 0x90
.LBB8_14:                               # %if.else.i
                                        #   in Loop: Header=BB8_8 Depth=2
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movl	%r12d, (%rax)
	movl	%ecx, %eax
	movq	%r10, -32(%rsp)                 # 8-byte Spill
	decl	%ebx
	je	.LBB8_17
.LBB8_16:                               # %cleanup58.i
                                        #   in Loop: Header=BB8_8 Depth=2
	movl	(%r10), %r12d
	movl	%r9d, %r10d
	subl	%r12d, %r10d
	cmpl	%ebp, %r10d
	jb	.LBB8_8
	.p2align	4, 0x90
.LBB8_17:                               # %if.then.i
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	jmp	.LBB8_18
	.p2align	4, 0x90
.LBB8_30:                               # %if.then40.i
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	(%r10), %eax
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, (%rcx)
	movl	4(%r10), %eax
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, (%rcx)
.LBB8_18:                               # %bt_skip_func.exit
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	80(%rdi), %eax
	incl	%eax
	movl	84(%rdi), %edx
	cmpl	%edx, %eax
	movl	$0, %r10d
	cmovel	%r10d, %eax
	movl	%eax, 80(%rdi)
	movl	20(%rdi), %eax
	movl	24(%rdi), %ecx
	leal	1(%rcx), %esi
	movl	%esi, 24(%rdi)
	addl	%eax, %ecx
	incl	%ecx
	cmpl	$-1, %ecx
	movl	-12(%rsp), %esi                 # 4-byte Reload
	jne	.LBB8_28
# %bb.19:                               # %if.then5.i
                                        #   in Loop: Header=BB8_1 Depth=1
	notl	%edx
	movl	112(%rdi), %ecx
	addl	108(%rdi), %ecx
	je	.LBB8_27
# %bb.20:                               # %for.body.preheader.i.i
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	64(%rdi), %rax
	movl	%ecx, %r8d
	cmpl	$16, %ecx
	jae	.LBB8_22
# %bb.21:                               #   in Loop: Header=BB8_1 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB8_25
.LBB8_22:                               # %vector.ph
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	%r8d, %r9d
	andl	$-16, %r9d
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movdqa	%xmm1, %xmm2
	pxor	%xmm0, %xmm2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB8_23:                               # %vector.body
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rax,%rcx,4), %xmm3
	movdqu	16(%rax,%rcx,4), %xmm4
	movdqu	32(%rax,%rcx,4), %xmm5
	movdqu	48(%rax,%rcx,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rax,%rcx,4)
	movdqu	%xmm4, 16(%rax,%rcx,4)
	movdqu	%xmm5, 32(%rax,%rcx,4)
	movdqu	%xmm6, 48(%rax,%rcx,4)
	addq	$16, %rcx
	cmpq	%rcx, %r9
	jne	.LBB8_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	%r8d, %r9d
	je	.LBB8_26
	.p2align	4, 0x90
.LBB8_25:                               # %for.body.i.i
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%r9,4), %ecx
	subl	%edx, %ecx
	cmovbl	%r10d, %ecx
	movl	%ecx, (%rax,%r9,4)
	incq	%r9
	cmpq	%r9, %r8
	jne	.LBB8_25
.LBB8_26:                               # %normalize.exit.loopexit.i
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	20(%rdi), %eax
.LBB8_27:                               # %normalize.exit.i
                                        #   in Loop: Header=BB8_1 Depth=1
	subl	%edx, %eax
	movl	%eax, 20(%rdi)
	jmp	.LBB8_28
.LBB8_29:                               # %do.end27
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
.Lfunc_end8:
	.size	lzma_mf_bt3_skip, .Lfunc_end8-lzma_mf_bt3_skip
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_mf_bt4_find
.LCPI9_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.text
	.globl	lzma_mf_bt4_find
	.p2align	4, 0x90
	.type	lzma_mf_bt4_find,@function
lzma_mf_bt4_find:                       # @lzma_mf_bt4_find
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	24(%rdi), %ecx
	movl	36(%rdi), %eax
	subl	%ecx, %eax
	movl	96(%rdi), %r15d
	cmpl	%eax, %r15d
	jbe	.LBB9_4
# %bb.1:                                # %if.else
	cmpl	$4, %eax
	jb	.LBB9_3
# %bb.2:                                # %lor.lhs.false
	cmpl	$1, 104(%rdi)
	movl	%eax, %r15d
	jne	.LBB9_4
.LBB9_3:                                # %if.then4
	incl	%ecx
	movl	%ecx, 24(%rdi)
	incl	40(%rdi)
	xorl	%eax, %eax
	jmp	.LBB9_66
.LBB9_4:                                # %if.end5
	movq	(%rdi), %rdx
	movq	64(%rdi), %r14
	leaq	(%rdx,%rcx), %rax
	movl	20(%rdi), %ebp
	movzbl	(%rdx,%rcx), %r10d
	movq	lzma_crc32_table@GOTPCREL(%rip), %r9
	movzbl	1(%rdx,%rcx), %r8d
	xorl	(%r9,%r10,4), %r8d
	addl	%ecx, %ebp
	movzbl	2(%rdx,%rcx), %ebx
	shll	$8, %ebx
	xorl	%r8d, %ebx
	andl	$1023, %r8d                     # imm = 0x3FF
	movzwl	%bx, %r10d
	movzbl	3(%rdx,%rcx), %ecx
	movl	(%r9,%rcx,4), %r11d
	shll	$5, %r11d
	xorl	%ebx, %r11d
	andl	88(%rdi), %r11d
	movl	(%r14,%r8,4), %edx
	movl	%ebp, %ebx
	subl	%edx, %ebx
	movl	4096(%r14,%r10,4), %ecx
	addl	$66560, %r11d                   # imm = 0x10400
	movl	(%r14,%r11,4), %r9d
	movl	%ebp, (%r14,%r8,4)
	movq	64(%rdi), %r8
	movl	%ebp, 4096(%r8,%r10,4)
	movq	64(%rdi), %r8
	movl	%ebp, -68(%rsp)                 # 4-byte Spill
	movl	%ebp, (%r8,%r11,4)
	movl	$1, %r12d
	xorl	%r14d, %r14d
	movb	$1, %r8b
	cmpl	84(%rdi), %ebx
	jae	.LBB9_7
# %bb.5:                                # %land.lhs.true
	movl	%ebx, %r10d
	movq	%rax, %r11
	subq	%r10, %r11
	movzbl	(%r11), %r10d
	cmpb	(%rax), %r10b
	jne	.LBB9_7
# %bb.6:                                # %if.then51
	movl	$2, (%rsi)
	leal	-1(%rbx), %r8d
	movl	%r8d, 4(%rsi)
	movl	$2, %r12d
	movl	$1, %r14d
	xorl	%r8d, %r8d
.LBB9_7:                                # %if.end55
	cmpl	%edx, %ecx
	movq	%r15, -24(%rsp)                 # 8-byte Spill
	movq	%rdi, -32(%rsp)                 # 8-byte Spill
	je	.LBB9_11
# %bb.8:                                # %land.lhs.true58
	movl	-68(%rsp), %edx                 # 4-byte Reload
                                        # kill: def $edx killed $edx def $rdx
	subl	%ecx, %edx
	cmpl	84(%rdi), %edx
	jae	.LBB9_11
# %bb.9:                                # %land.lhs.true62
	movl	%edx, %ecx
	movq	%rax, %r10
	subq	%rcx, %r10
	movzbl	(%r10), %ecx
	cmpb	(%rax), %cl
	jne	.LBB9_11
# %bb.10:                               # %if.end75.thread
	leal	-1(%rdx), %ecx
	movl	%r14d, %r8d
	incl	%r14d
	movl	%ecx, 4(%rsi,%r8,8)
	movl	$3, %r12d
	cmpl	%r15d, %r12d
	jne	.LBB9_14
	jmp	.LBB9_17
.LBB9_11:                               # %if.end75
	movl	$1, %r14d
	testb	%r8b, %r8b
	je	.LBB9_12
# %bb.38:
	xorl	%ecx, %ecx
	jmp	.LBB9_39
.LBB9_12:
	movl	%ebx, %edx
	cmpl	%r15d, %r12d
	je	.LBB9_17
.LBB9_14:                               # %for.body.lr.ph
	movl	%edx, %ecx
	negq	%rcx
	.p2align	4, 0x90
.LBB9_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %edx
	leaq	(%rax,%rdx), %r8
	movzbl	(%rcx,%r8), %r8d
	cmpb	(%rax,%rdx), %r8b
	jne	.LBB9_67
# %bb.16:                               # %for.inc
                                        #   in Loop: Header=BB9_15 Depth=1
	incl	%r12d
	cmpl	%r12d, %r15d
	jne	.LBB9_15
.LBB9_17:                               # %do.body
	leal	-1(%r14), %ecx
	movl	%r15d, (%rsi,%rcx,8)
	movl	92(%rdi), %esi
	movq	72(%rdi), %r11
	movl	80(%rdi), %ebx
	leal	(%rbx,%rbx), %ecx
	leaq	(%r11,%rcx,4), %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	leaq	(%r11,%rcx,4), %r10
	addq	$4, %r10
	testl	%esi, %esi
	movq	%r14, -48(%rsp)                 # 8-byte Spill
	je	.LBB9_29
# %bb.18:                               # %do.body
	movl	84(%rdi), %ebp
	movl	-68(%rsp), %ecx                 # 4-byte Reload
	subl	%r9d, %ecx
	cmpl	%ebp, %ecx
	jae	.LBB9_29
# %bb.19:                               # %if.end.i.preheader
	decl	%r15d
	movq	%r15, %rdi
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
.LBB9_20:                               # %if.end.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_22 Depth 2
	movl	%ebx, %edx
	subl	%ecx, %edx
	movl	$0, %r8d
	cmovbl	%ebp, %r8d
	leal	(%rdx,%r8), %r12d
	addl	%r12d, %r12d
	movl	%ecx, %ecx
	movq	%rax, %r8
	subq	%rcx, %r8
	cmpl	%r14d, %r15d
	movl	%r14d, %edx
	cmovbl	%r15d, %edx
	leaq	(%r11,%r12,4), %rcx
	movzbl	(%r8,%rdx), %r12d
	movzbl	(%rax,%rdx), %r13d
	cmpb	%r13b, %r12b
	jne	.LBB9_24
	.p2align	4, 0x90
.LBB9_22:                               # %while.cond24.i
                                        #   Parent Loop BB9_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edx, %edi
	je	.LBB9_68
# %bb.23:                               # %while.body27.i
                                        #   in Loop: Header=BB9_22 Depth=2
	incl	%edx
	movl	%edx, %r13d
	movzbl	(%r8,%r13), %r12d
	movzbl	(%rax,%r13), %r13d
	cmpb	%r13b, %r12b
	je	.LBB9_22
.LBB9_24:                               # %if.end44.i
                                        #   in Loop: Header=BB9_20 Depth=1
	cmpb	%r13b, %r12b
	jae	.LBB9_26
# %bb.25:                               # %if.then53.i
                                        #   in Loop: Header=BB9_20 Depth=1
	movq	-64(%rsp), %r8                  # 8-byte Reload
	movl	%r9d, (%r8)
	addq	$4, %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movl	%edx, %r14d
	jmp	.LBB9_27
.LBB9_26:                               # %if.else.i
                                        #   in Loop: Header=BB9_20 Depth=1
	movl	%r9d, (%r10)
	movl	%edx, %r15d
	movq	%rcx, %r10
.LBB9_27:                               # %cleanup58.i
                                        #   in Loop: Header=BB9_20 Depth=1
	decl	%esi
	je	.LBB9_29
# %bb.28:                               # %cleanup58.i
                                        #   in Loop: Header=BB9_20 Depth=1
	movl	(%rcx), %r9d
	movl	-68(%rsp), %ecx                 # 4-byte Reload
	subl	%r9d, %ecx
	cmpl	%ebp, %ecx
	jb	.LBB9_20
.LBB9_29:                               # %if.then.i
	movl	$0, (%r10)
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	jmp	.LBB9_30
.LBB9_68:                               # %if.then40.i
	movl	(%rcx), %eax
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movl	%eax, (%rdx)
	movl	4(%rcx), %eax
	movl	%eax, (%r10)
.LBB9_30:                               # %bt_skip_func.exit
	movq	-32(%rsp), %r9                  # 8-byte Reload
	movl	80(%r9), %ecx
	incl	%ecx
	movl	84(%r9), %r10d
	xorl	%edx, %edx
	cmpl	%r10d, %ecx
	cmovnel	%ecx, %edx
	movl	%edx, 80(%r9)
	movl	20(%r9), %ecx
	movl	24(%r9), %edx
	leal	1(%rdx), %esi
	movl	%esi, 24(%r9)
	addl	%ecx, %edx
	incl	%edx
	cmpl	$-1, %edx
	movq	-48(%rsp), %rax                 # 8-byte Reload
	jne	.LBB9_66
# %bb.31:                               # %if.then5.i
	notl	%r10d
	movl	112(%r9), %edi
	addl	108(%r9), %edi
	je	.LBB9_65
# %bb.32:                               # %for.body.preheader.i.i
	movq	64(%r9), %rcx
	movl	%edi, %edx
	xorl	%esi, %esi
	cmpl	$16, %edi
	jae	.LBB9_34
# %bb.33:
	xorl	%edi, %edi
	jmp	.LBB9_37
.LBB9_67:                               # %for.end
	leal	-1(%r14), %ecx
	movl	%r12d, (%rsi,%rcx,8)
	movl	%r14d, %ecx
.LBB9_39:                               # %if.end104
	movl	92(%rdi), %ebx
	movq	72(%rdi), %r14
	movl	80(%rdi), %r15d
	leaq	(%rsi,%rcx,8), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	leal	(%r15,%r15), %ecx
	leaq	(%r14,%rcx,4), %rdx
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	leaq	(%r14,%rcx,4), %rcx
	addq	$4, %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	testl	%ebx, %ebx
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	je	.LBB9_55
# %bb.40:                               # %if.end104
	movl	84(%rdi), %ebp
	movl	-68(%rsp), %r8d                 # 4-byte Reload
	subl	%r9d, %r8d
	cmpl	%ebp, %r8d
	jae	.LBB9_55
# %bb.41:                               # %if.end.i229.preheader
	cmpl	$4, %r12d
	movl	$3, %ecx
	cmovael	%r12d, %ecx
	movl	%ecx, -52(%rsp)                 # 4-byte Spill
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, %edx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	leal	-1(%rcx), %r13d
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB9_42:                               # %if.end.i229
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_44 Depth 2
	movl	%r15d, %ecx
	subl	%r8d, %ecx
	movl	$0, %edx
	cmovbl	%ebp, %edx
	leal	(%rcx,%rdx), %edi
	addl	%edi, %edi
	movl	%r8d, %ecx
	movq	%rax, %rdx
	subq	%rcx, %rdx
	cmpl	%esi, %r12d
	movl	%esi, %ecx
	cmovbl	%r12d, %ecx
	leaq	(%r14,%rdi,4), %r10
	movzbl	(%rdx,%rcx), %edi
	cmpb	(%rax,%rcx), %dil
	jne	.LBB9_43
	.p2align	4, 0x90
.LBB9_44:                               # %while.cond24.i257
                                        #   Parent Loop BB9_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, %r13d
	je	.LBB9_48
# %bb.45:                               # %while.body27.i261
                                        #   in Loop: Header=BB9_44 Depth=2
	incl	%ecx
	movl	%ecx, %edi
	movzbl	(%rdx,%rdi), %r11d
	cmpb	(%rax,%rdi), %r11b
	je	.LBB9_44
# %bb.46:                               # %while.end.thread.i
                                        #   in Loop: Header=BB9_42 Depth=1
	cmpl	%ecx, -52(%rsp)                 # 4-byte Folded Reload
	jae	.LBB9_50
# %bb.47:                               # %if.then40.thread.i
                                        #   in Loop: Header=BB9_42 Depth=1
	movq	-48(%rsp), %r11                 # 8-byte Reload
	movl	%ecx, (%r11)
	decl	%r8d
	movl	%r8d, 4(%r11)
	addq	$8, %r11
	movq	%r11, -48(%rsp)                 # 8-byte Spill
	movl	%ecx, -52(%rsp)                 # 4-byte Spill
	movzbl	(%rdx,%rdi), %edx
	cmpb	(%rax,%rdi), %dl
	jb	.LBB9_51
	jmp	.LBB9_52
	.p2align	4, 0x90
.LBB9_43:                               #   in Loop: Header=BB9_42 Depth=1
	movq	%rcx, %rdi
.LBB9_50:                               # %if.end50.i
                                        #   in Loop: Header=BB9_42 Depth=1
	movzbl	(%rdx,%rdi), %edx
	cmpb	(%rax,%rdi), %dl
	jae	.LBB9_52
.LBB9_51:                               # %if.then59.i
                                        #   in Loop: Header=BB9_42 Depth=1
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movl	%r9d, (%rdx)
	addq	$4, %r10
	movq	%r10, -40(%rsp)                 # 8-byte Spill
	movl	%ecx, %esi
	decl	%ebx
	jne	.LBB9_54
	jmp	.LBB9_55
	.p2align	4, 0x90
.LBB9_48:                               # %while.end.i
                                        #   in Loop: Header=BB9_42 Depth=1
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	cmpl	%ecx, -52(%rsp)                 # 4-byte Folded Reload
	jb	.LBB9_69
# %bb.49:                               #   in Loop: Header=BB9_42 Depth=1
	movq	-8(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	movzbl	(%rdx,%rdi), %edx
	cmpb	(%rax,%rdi), %dl
	jb	.LBB9_51
.LBB9_52:                               # %if.else.i246
                                        #   in Loop: Header=BB9_42 Depth=1
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movl	%r9d, (%rdx)
	movq	%r10, -64(%rsp)                 # 8-byte Spill
	movl	%ecx, %r12d
	decl	%ebx
	je	.LBB9_55
.LBB9_54:                               # %cleanup64.i
                                        #   in Loop: Header=BB9_42 Depth=1
	movl	(%r10), %r9d
	movl	-68(%rsp), %r8d                 # 4-byte Reload
	subl	%r9d, %r8d
	cmpl	%ebp, %r8d
	jb	.LBB9_42
.LBB9_55:                               # %if.then.i226
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	movq	-48(%rsp), %rax                 # 8-byte Reload
.LBB9_56:                               # %bt_find_func.exit
	subq	-16(%rsp), %rax                 # 8-byte Folded Reload
	shrq	$3, %rax
	movq	-32(%rsp), %r9                  # 8-byte Reload
	movl	80(%r9), %ecx
	incl	%ecx
	movl	84(%r9), %r10d
	xorl	%edx, %edx
	cmpl	%r10d, %ecx
	cmovnel	%ecx, %edx
	movl	%edx, 80(%r9)
	movl	20(%r9), %ecx
	movl	24(%r9), %edx
	leal	1(%rdx), %esi
	movl	%esi, 24(%r9)
	addl	%ecx, %edx
	incl	%edx
	cmpl	$-1, %edx
	jne	.LBB9_66
# %bb.57:                               # %if.then5.i276
	notl	%r10d
	movl	112(%r9), %edi
	addl	108(%r9), %edi
	je	.LBB9_65
# %bb.58:                               # %for.body.preheader.i.i283
	movq	64(%r9), %rcx
	movl	%edi, %edx
	xorl	%esi, %esi
	cmpl	$16, %edi
	jae	.LBB9_60
# %bb.59:
	xorl	%edi, %edi
	jmp	.LBB9_63
.LBB9_60:                               # %vector.ph363
	movl	%edx, %edi
	andl	$-16, %edi
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%r8d, %r8d
	movdqa	.LCPI9_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	%xmm0, %xmm2
	pxor	%xmm1, %xmm2
	.p2align	4, 0x90
.LBB9_61:                               # %vector.body367
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx,%r8,4), %xmm3
	movdqu	16(%rcx,%r8,4), %xmm4
	movdqu	32(%rcx,%r8,4), %xmm5
	movdqu	48(%rcx,%r8,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rcx,%r8,4)
	movdqu	%xmm4, 16(%rcx,%r8,4)
	movdqu	%xmm5, 32(%rcx,%r8,4)
	movdqu	%xmm6, 48(%rcx,%r8,4)
	addq	$16, %r8
	cmpq	%r8, %rdi
	jne	.LBB9_61
# %bb.62:                               # %middle.block360
	cmpl	%edx, %edi
	je	.LBB9_64
	.p2align	4, 0x90
.LBB9_63:                               # %for.body.i.i285
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rdi,4), %r8d
	subl	%r10d, %r8d
	cmovbl	%esi, %r8d
	movl	%r8d, (%rcx,%rdi,4)
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB9_63
	jmp	.LBB9_64
.LBB9_69:                               # %if.then45.i
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movl	%ecx, (%rax)
	decl	%r8d
	movl	%r8d, 4(%rax)
	addq	$8, %rax
	movl	(%r10), %ecx
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movl	%ecx, (%rdx)
	movl	4(%r10), %ecx
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movl	%ecx, (%rdx)
	jmp	.LBB9_56
.LBB9_34:                               # %vector.ph
	movl	%edx, %edi
	andl	$-16, %edi
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	xorl	%r8d, %r8d
	movdqa	.LCPI9_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	%xmm0, %xmm2
	pxor	%xmm1, %xmm2
	.p2align	4, 0x90
.LBB9_35:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx,%r8,4), %xmm3
	movdqu	16(%rcx,%r8,4), %xmm4
	movdqu	32(%rcx,%r8,4), %xmm5
	movdqu	48(%rcx,%r8,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm0, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rcx,%r8,4)
	movdqu	%xmm4, 16(%rcx,%r8,4)
	movdqu	%xmm5, 32(%rcx,%r8,4)
	movdqu	%xmm6, 48(%rcx,%r8,4)
	addq	$16, %r8
	cmpq	%r8, %rdi
	jne	.LBB9_35
# %bb.36:                               # %middle.block
	cmpl	%edx, %edi
	je	.LBB9_64
	.p2align	4, 0x90
.LBB9_37:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rdi,4), %r8d
	subl	%r10d, %r8d
	cmovbl	%esi, %r8d
	movl	%r8d, (%rcx,%rdi,4)
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB9_37
.LBB9_64:                               # %normalize.exit.loopexit.i291
	movl	20(%r9), %ecx
.LBB9_65:                               # %normalize.exit.i293
	subl	%r10d, %ecx
	movl	%ecx, 20(%r9)
.LBB9_66:                               # %cleanup130
                                        # kill: def $eax killed $eax killed $rax
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
.Lfunc_end9:
	.size	lzma_mf_bt4_find, .Lfunc_end9-lzma_mf_bt4_find
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_mf_bt4_skip
.LCPI10_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.text
	.globl	lzma_mf_bt4_skip
	.p2align	4, 0x90
	.type	lzma_mf_bt4_skip,@function
lzma_mf_bt4_skip:                       # @lzma_mf_bt4_skip
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movdqa	.LCPI10_0(%rip), %xmm0          # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	jmp	.LBB10_1
	.p2align	4, 0x90
.LBB10_4:                               # %if.then4
                                        #   in Loop: Header=BB10_1 Depth=1
	incl	%eax
	movl	%eax, 24(%rdi)
	incl	40(%rdi)
.LBB10_28:                              # %cleanup
                                        #   in Loop: Header=BB10_1 Depth=1
	decl	%esi
	je	.LBB10_29
.LBB10_1:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_8 Depth 2
                                        #       Child Loop BB10_10 Depth 3
                                        #     Child Loop BB10_23 Depth 2
                                        #     Child Loop BB10_25 Depth 2
	movl	24(%rdi), %eax
	movl	36(%rdi), %ecx
	subl	%eax, %ecx
	movl	96(%rdi), %edx
	cmpl	%ecx, %edx
	jbe	.LBB10_5
# %bb.2:                                # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$4, %ecx
	jb	.LBB10_4
# %bb.3:                                # %lor.lhs.false
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$1, 104(%rdi)
	movl	%ecx, %edx
	je	.LBB10_4
	.p2align	4, 0x90
.LBB10_5:                               # %if.end5
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	%esi, -12(%rsp)                 # 4-byte Spill
	movq	(%rdi), %r11
	movq	64(%rdi), %rcx
	movl	20(%rdi), %r9d
	addl	%eax, %r9d
	movzbl	(%r11,%rax), %esi
	movzbl	1(%r11,%rax), %r8d
	movq	lzma_crc32_table@GOTPCREL(%rip), %r14
	xorl	(%r14,%rsi,4), %r8d
	movzbl	2(%r11,%rax), %esi
	shll	$8, %esi
	xorl	%r8d, %esi
	andl	$1023, %r8d                     # imm = 0x3FF
	movzwl	%si, %r10d
	movzbl	3(%r11,%rax), %ebx
	movl	(%r14,%rbx,4), %ebx
	shll	$5, %ebx
	xorl	%esi, %ebx
	andl	88(%rdi), %ebx
	addl	$66560, %ebx                    # imm = 0x10400
	movl	(%rcx,%rbx,4), %r12d
	movl	%r9d, (%rcx,%r8,4)
	movq	64(%rdi), %rcx
	movl	%r9d, 4096(%rcx,%r10,4)
	movq	64(%rdi), %rcx
	movl	%r9d, (%rcx,%rbx,4)
	movl	92(%rdi), %ebx
	movq	72(%rdi), %rsi
	movl	80(%rdi), %ecx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	addl	%ecx, %ecx
	leaq	(%rsi,%rcx,4), %r8
	movq	%r8, -24(%rsp)                  # 8-byte Spill
	leaq	(%rsi,%rcx,4), %rcx
	addq	$4, %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	testl	%ebx, %ebx
	je	.LBB10_17
# %bb.6:                                # %if.end5
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	84(%rdi), %ebp
	movl	%r9d, %r10d
	subl	%r12d, %r10d
	cmpl	%ebp, %r10d
	jae	.LBB10_17
# %bb.7:                                # %if.end.i.preheader
                                        #   in Loop: Header=BB10_1 Depth=1
	addq	%rax, %r11
	decl	%edx
	xorl	%r13d, %r13d
	xorl	%eax, %eax
.LBB10_8:                               # %if.end.i
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_10 Depth 3
	movq	-8(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%r10d, %ecx
	movl	$0, %r8d
	cmovbl	%ebp, %r8d
	leal	(%rcx,%r8), %r14d
	addl	%r14d, %r14d
	movl	%r10d, %ecx
	movq	%r11, %r8
	subq	%rcx, %r8
	cmpl	%r13d, %eax
	movl	%r13d, %ecx
	cmovbl	%eax, %ecx
	leaq	(%rsi,%r14,4), %r10
	movzbl	(%r8,%rcx), %r15d
	movzbl	(%r11,%rcx), %r14d
	cmpb	%r14b, %r15b
	jne	.LBB10_12
	.p2align	4, 0x90
.LBB10_10:                              # %while.cond24.i
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%ecx, %edx
	je	.LBB10_30
# %bb.11:                               # %while.body27.i
                                        #   in Loop: Header=BB10_10 Depth=3
	incl	%ecx
	movl	%ecx, %r14d
	movzbl	(%r8,%r14), %r15d
	movzbl	(%r11,%r14), %r14d
	cmpb	%r14b, %r15b
	je	.LBB10_10
.LBB10_12:                              # %if.end44.i
                                        #   in Loop: Header=BB10_8 Depth=2
	cmpb	%r14b, %r15b
	jae	.LBB10_14
# %bb.13:                               # %if.then53.i
                                        #   in Loop: Header=BB10_8 Depth=2
	movq	-24(%rsp), %r8                  # 8-byte Reload
	movl	%r12d, (%r8)
	addq	$4, %r10
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	movl	%ecx, %r13d
	decl	%ebx
	jne	.LBB10_16
	jmp	.LBB10_17
	.p2align	4, 0x90
.LBB10_14:                              # %if.else.i
                                        #   in Loop: Header=BB10_8 Depth=2
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movl	%r12d, (%rax)
	movl	%ecx, %eax
	movq	%r10, -32(%rsp)                 # 8-byte Spill
	decl	%ebx
	je	.LBB10_17
.LBB10_16:                              # %cleanup58.i
                                        #   in Loop: Header=BB10_8 Depth=2
	movl	(%r10), %r12d
	movl	%r9d, %r10d
	subl	%r12d, %r10d
	cmpl	%ebp, %r10d
	jb	.LBB10_8
	.p2align	4, 0x90
.LBB10_17:                              # %if.then.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	$0, (%rax)
	jmp	.LBB10_18
	.p2align	4, 0x90
.LBB10_30:                              # %if.then40.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	(%r10), %eax
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, (%rcx)
	movl	4(%r10), %eax
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, (%rcx)
.LBB10_18:                              # %bt_skip_func.exit
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	80(%rdi), %eax
	incl	%eax
	movl	84(%rdi), %edx
	cmpl	%edx, %eax
	movl	$0, %r10d
	cmovel	%r10d, %eax
	movl	%eax, 80(%rdi)
	movl	20(%rdi), %eax
	movl	24(%rdi), %ecx
	leal	1(%rcx), %esi
	movl	%esi, 24(%rdi)
	addl	%eax, %ecx
	incl	%ecx
	cmpl	$-1, %ecx
	movl	-12(%rsp), %esi                 # 4-byte Reload
	jne	.LBB10_28
# %bb.19:                               # %if.then5.i
                                        #   in Loop: Header=BB10_1 Depth=1
	notl	%edx
	movl	112(%rdi), %ecx
	addl	108(%rdi), %ecx
	je	.LBB10_27
# %bb.20:                               # %for.body.preheader.i.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	64(%rdi), %rax
	movl	%ecx, %r8d
	cmpl	$16, %ecx
	jae	.LBB10_22
# %bb.21:                               #   in Loop: Header=BB10_1 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB10_25
.LBB10_22:                              # %vector.ph
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	%r8d, %r9d
	andl	$-16, %r9d
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movdqa	%xmm1, %xmm2
	pxor	%xmm0, %xmm2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB10_23:                              # %vector.body
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rax,%rcx,4), %xmm3
	movdqu	16(%rax,%rcx,4), %xmm4
	movdqu	32(%rax,%rcx,4), %xmm5
	movdqu	48(%rax,%rcx,4), %xmm6
	movdqa	%xmm3, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm4, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm4
	pand	%xmm7, %xmm4
	movdqa	%xmm5, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm5
	pand	%xmm7, %xmm5
	movdqa	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pcmpgtd	%xmm2, %xmm7
	psubd	%xmm1, %xmm6
	pand	%xmm7, %xmm6
	movdqu	%xmm3, (%rax,%rcx,4)
	movdqu	%xmm4, 16(%rax,%rcx,4)
	movdqu	%xmm5, 32(%rax,%rcx,4)
	movdqu	%xmm6, 48(%rax,%rcx,4)
	addq	$16, %rcx
	cmpq	%rcx, %r9
	jne	.LBB10_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	%r8d, %r9d
	je	.LBB10_26
	.p2align	4, 0x90
.LBB10_25:                              # %for.body.i.i
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%r9,4), %ecx
	subl	%edx, %ecx
	cmovbl	%r10d, %ecx
	movl	%ecx, (%rax,%r9,4)
	incq	%r9
	cmpq	%r9, %r8
	jne	.LBB10_25
.LBB10_26:                              # %normalize.exit.loopexit.i
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	20(%rdi), %eax
.LBB10_27:                              # %normalize.exit.i
                                        #   in Loop: Header=BB10_1 Depth=1
	subl	%edx, %eax
	movl	%eax, 20(%rdi)
	jmp	.LBB10_28
.LBB10_29:                              # %do.end41
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
.Lfunc_end10:
	.size	lzma_mf_bt4_skip, .Lfunc_end10-lzma_mf_bt4_skip
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
