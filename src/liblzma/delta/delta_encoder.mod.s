	.text
	.file	"delta_encoder.c"
	.globl	lzma_delta_encoder_init         # -- Begin function lzma_delta_encoder_init
	.p2align	4, 0x90
	.type	lzma_delta_encoder_init,@function
lzma_delta_encoder_init:                # @lzma_delta_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$delta_encode, 24(%rdi)
	movq	$delta_encoder_update, 56(%rdi)
	jmp	lzma_delta_coder_init@PLT       # TAILCALL
.Lfunc_end0:
	.size	lzma_delta_encoder_init, .Lfunc_end0-lzma_delta_encoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function delta_encode
	.type	delta_encode,@function
delta_encode:                           # @delta_encode
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%rdi, %rbx
	movl	112(%rsp), %r11d
	movq	104(%rsp), %r10
	movq	96(%rsp), %r15
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_8
# %bb.1:                                # %if.else
	movq	(%r15), %r12
	movq	(%rbx), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r14, %r9
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	*%rax
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	(%r15), %rcx
	movq	%rcx, %r9
	subq	%r12, %r9
	je	.LBB1_42
# %bb.2:                                # %for.body.lr.ph.i39
	movzbl	64(%rbx), %edx
	movzbl	72(%rbx), %r8d
	cmpq	$64, %r9
	jae	.LBB1_12
.LBB1_3:
	xorl	%esi, %esi
.LBB1_4:                                # %for.body.i44.preheader
	movl	%r8d, %edi
.LBB1_5:                                # %for.body.i44.preheader
	addq	%r12, %rsi
	.p2align	4, 0x90
.LBB1_6:                                # %for.body.i44
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%rdi), %r8d
	movzbl	%r8b, %r8d
	movzbl	(%r14,%rsi), %r9d
	movzbl	%dil, %r10d
	decb	%dil
	movl	%r9d, %r11d
	subb	73(%rbx,%r8), %r11b
	movb	%r9b, 73(%rbx,%r10)
	movb	%r11b, (%r14,%rsi)
	incq	%rsi
	cmpq	%rsi, %rcx
	jne	.LBB1_6
.LBB1_7:                                # %if.end.loopexit
	movb	%dil, 72(%rbx)
	jmp	.LBB1_42
.LBB1_8:                                # %if.then
	movq	(%rcx), %rsi
	movq	%r8, %rax
	subq	%rsi, %rax
	movq	(%r15), %rdi
	subq	%rdi, %r10
	cmpq	%r10, %rax
	cmovbq	%rax, %r10
	testq	%r10, %r10
	je	.LBB1_40
# %bb.9:                                # %for.body.lr.ph.i
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movzbl	64(%rbx), %r11d
	movzbl	72(%rbx), %r13d
	cmpq	$63, %r10
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	ja	.LBB1_21
# %bb.10:
	xorl	%r9d, %r9d
.LBB1_11:                               # %for.body.i.preheader
	movl	%r13d, %r12d
	jmp	.LBB1_33
.LBB1_12:                               # %vector.scevcheck
	movq	%r12, %rdi
	notq	%rdi
	addq	%rcx, %rdi
	xorl	%esi, %esi
	cmpb	%dil, %r8b
	jb	.LBB1_4
# %bb.13:                               # %vector.scevcheck
	leal	(%r8,%rdx), %r11d
	cmpb	%dil, %r11b
	jb	.LBB1_4
# %bb.14:                               # %vector.scevcheck
	cmpq	$255, %rdi
	ja	.LBB1_4
# %bb.15:                               # %vector.scevcheck
	movzbl	%r8b, %r10d
	leaq	(%rbx,%r10), %r15
	addq	$73, %r15
	movq	%r15, %r13
	subq	%rdi, %r13
	cmpq	%r15, %r13
	ja	.LBB1_4
# %bb.16:                               # %vector.scevcheck
	movzbl	%r11b, %r11d
	leaq	(%rbx,%r11), %r15
	addq	$73, %r15
	movq	%r15, %r13
	subq	%rdi, %r13
	cmpq	%r15, %r13
	ja	.LBB1_4
# %bb.17:                               # %vector.memcheck
	subq	%r10, %r11
	cmpq	$64, %r11
	jb	.LBB1_3
# %bb.18:                               # %vector.ph
	movq	%r9, %rsi
	andq	$-64, %rsi
	movl	%r8d, %edi
	subb	%sil, %dil
	leaq	(%r12,%r14), %r10
	addq	$48, %r10
	xorl	%r11d, %r11d
	pxor	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB1_19:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%r8), %ebp
	movzbl	%bpl, %r15d
	movdqu	10(%rbx,%r15), %xmm4
	movdqu	26(%rbx,%r15), %xmm3
	movdqu	42(%rbx,%r15), %xmm2
	movdqu	58(%rbx,%r15), %xmm1
	movdqa	%xmm1, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm1            # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshufd	$78, %xmm1, %xmm1               # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1               # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm1
	movdqa	%xmm2, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm2            # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshufd	$78, %xmm2, %xmm2               # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2               # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2               # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm2
	movdqa	%xmm3, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm3            # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshufd	$78, %xmm3, %xmm3               # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3               # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm3
	movdqa	%xmm4, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm4            # xmm4 = xmm4[8],xmm0[8],xmm4[9],xmm0[9],xmm4[10],xmm0[10],xmm4[11],xmm0[11],xmm4[12],xmm0[12],xmm4[13],xmm0[13],xmm4[14],xmm0[14],xmm4[15],xmm0[15]
	pshufd	$78, %xmm4, %xmm4               # xmm4 = xmm4[2,3,0,1]
	pshuflw	$27, %xmm4, %xmm4               # xmm4 = xmm4[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm4, %xmm4               # xmm4 = xmm4[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm4
	movdqu	-48(%r10,%r11), %xmm5
	movdqu	-32(%r10,%r11), %xmm6
	movdqu	-16(%r10,%r11), %xmm7
	movdqu	(%r10,%r11), %xmm8
	movzbl	%r8b, %r8d
	movdqa	%xmm5, %xmm9
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	pshufd	$78, %xmm9, %xmm9               # xmm9 = xmm9[2,3,0,1]
	pshuflw	$27, %xmm9, %xmm9               # xmm9 = xmm9[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm9, %xmm9               # xmm9 = xmm9[0,1,2,3,7,6,5,4]
	movdqa	%xmm5, %xmm10
	punpckhbw	%xmm0, %xmm10           # xmm10 = xmm10[8],xmm0[8],xmm10[9],xmm0[9],xmm10[10],xmm0[10],xmm10[11],xmm0[11],xmm10[12],xmm0[12],xmm10[13],xmm0[13],xmm10[14],xmm0[14],xmm10[15],xmm0[15]
	pshufd	$78, %xmm10, %xmm10             # xmm10 = xmm10[2,3,0,1]
	pshuflw	$27, %xmm10, %xmm10             # xmm10 = xmm10[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm10, %xmm10             # xmm10 = xmm10[0,1,2,3,7,6,5,4]
	packuswb	%xmm9, %xmm10
	movdqu	%xmm10, 58(%rbx,%r8)
	movdqa	%xmm6, %xmm9
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	pshufd	$78, %xmm9, %xmm9               # xmm9 = xmm9[2,3,0,1]
	pshuflw	$27, %xmm9, %xmm9               # xmm9 = xmm9[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm9, %xmm9               # xmm9 = xmm9[0,1,2,3,7,6,5,4]
	movdqa	%xmm6, %xmm10
	punpckhbw	%xmm0, %xmm10           # xmm10 = xmm10[8],xmm0[8],xmm10[9],xmm0[9],xmm10[10],xmm0[10],xmm10[11],xmm0[11],xmm10[12],xmm0[12],xmm10[13],xmm0[13],xmm10[14],xmm0[14],xmm10[15],xmm0[15]
	pshufd	$78, %xmm10, %xmm10             # xmm10 = xmm10[2,3,0,1]
	pshuflw	$27, %xmm10, %xmm10             # xmm10 = xmm10[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm10, %xmm10             # xmm10 = xmm10[0,1,2,3,7,6,5,4]
	packuswb	%xmm9, %xmm10
	movdqu	%xmm10, 42(%rbx,%r8)
	movdqa	%xmm7, %xmm9
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	pshufd	$78, %xmm9, %xmm9               # xmm9 = xmm9[2,3,0,1]
	pshuflw	$27, %xmm9, %xmm9               # xmm9 = xmm9[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm9, %xmm9               # xmm9 = xmm9[0,1,2,3,7,6,5,4]
	movdqa	%xmm7, %xmm10
	punpckhbw	%xmm0, %xmm10           # xmm10 = xmm10[8],xmm0[8],xmm10[9],xmm0[9],xmm10[10],xmm0[10],xmm10[11],xmm0[11],xmm10[12],xmm0[12],xmm10[13],xmm0[13],xmm10[14],xmm0[14],xmm10[15],xmm0[15]
	pshufd	$78, %xmm10, %xmm10             # xmm10 = xmm10[2,3,0,1]
	pshuflw	$27, %xmm10, %xmm10             # xmm10 = xmm10[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm10, %xmm10             # xmm10 = xmm10[0,1,2,3,7,6,5,4]
	packuswb	%xmm9, %xmm10
	movdqu	%xmm10, 26(%rbx,%r8)
	movdqa	%xmm8, %xmm9
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	pshufd	$78, %xmm9, %xmm9               # xmm9 = xmm9[2,3,0,1]
	pshuflw	$27, %xmm9, %xmm9               # xmm9 = xmm9[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm9, %xmm9               # xmm9 = xmm9[0,1,2,3,7,6,5,4]
	movdqa	%xmm8, %xmm10
	punpckhbw	%xmm0, %xmm10           # xmm10 = xmm10[8],xmm0[8],xmm10[9],xmm0[9],xmm10[10],xmm0[10],xmm10[11],xmm0[11],xmm10[12],xmm0[12],xmm10[13],xmm0[13],xmm10[14],xmm0[14],xmm10[15],xmm0[15]
	pshufd	$78, %xmm10, %xmm10             # xmm10 = xmm10[2,3,0,1]
	pshuflw	$27, %xmm10, %xmm10             # xmm10 = xmm10[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm10, %xmm10             # xmm10 = xmm10[0,1,2,3,7,6,5,4]
	packuswb	%xmm9, %xmm10
	movdqu	%xmm10, 10(%rbx,%r8)
	psubb	%xmm1, %xmm5
	psubb	%xmm2, %xmm6
	psubb	%xmm3, %xmm7
	psubb	%xmm4, %xmm8
	movdqu	%xmm5, -48(%r10,%r11)
	movdqu	%xmm6, -32(%r10,%r11)
	movdqu	%xmm7, -16(%r10,%r11)
	movdqu	%xmm8, (%r10,%r11)
	addq	$64, %r11
	addb	$-64, %r8b
	cmpq	%r11, %rsi
	jne	.LBB1_19
# %bb.20:                               # %middle.block
	cmpq	%rsi, %r9
	jne	.LBB1_5
	jmp	.LBB1_7
.LBB1_21:                               # %vector.scevcheck82
	leaq	-1(%r10), %rax
	xorl	%r9d, %r9d
	cmpb	%al, %r13b
	jb	.LBB1_11
# %bb.22:                               # %vector.scevcheck82
	leal	(%r11,%r13), %ebp
	cmpb	%al, %bpl
	jb	.LBB1_11
# %bb.23:                               # %vector.scevcheck82
	cmpq	$255, %rax
	ja	.LBB1_11
# %bb.24:                               # %vector.scevcheck82
	movq	%r15, %rcx
	movzbl	%r13b, %eax
	leaq	(%rbx,%rax), %rdi
	movl	$1, %r15d
	subq	%r10, %r15
	leaq	(%rbx,%rax), %r12
	addq	$73, %r12
	addq	%r15, %rdi
	addq	$73, %rdi
	cmpq	%r12, %rdi
	ja	.LBB1_28
# %bb.25:                               # %vector.scevcheck82
	movzbl	%bpl, %r12d
	leaq	(%rbx,%r12), %rdi
	leaq	(%rbx,%r12), %rbp
	addq	$73, %rbp
	addq	%r15, %rdi
	addq	$73, %rdi
	cmpq	%rbp, %rdi
	ja	.LBB1_28
# %bb.26:                               # %vector.memcheck97
	subq	%rax, %r12
	cmpq	$64, %r12
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jae	.LBB1_30
# %bb.27:
	xorl	%r9d, %r9d
	movl	%r13d, %r12d
	movq	%rcx, %r15
	jmp	.LBB1_33
.LBB1_28:
	movl	%r13d, %r12d
	movq	%rcx, %r15
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jmp	.LBB1_33
.LBB1_30:                               # %vector.ph102
	movl	%r10d, %r9d
	andl	$448, %r9d                      # imm = 0x1C0
	movl	%r13d, %r12d
	subb	%r9b, %r12b
	leaq	(%rdi,%r14), %rbp
	addq	$48, %rbp
	leaq	(%rsi,%rdx), %rax
	addq	$48, %rax
	xorl	%r15d, %r15d
	pxor	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB1_31:                               # %vector.body109
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r11,%r13), %edi
	movzbl	%dil, %edi
	movdqu	10(%rbx,%rdi), %xmm4
	movdqu	26(%rbx,%rdi), %xmm3
	movdqu	42(%rbx,%rdi), %xmm2
	movdqu	58(%rbx,%rdi), %xmm1
	movdqa	%xmm1, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm1            # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshufd	$78, %xmm1, %xmm1               # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1               # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm1
	movdqa	%xmm2, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm2            # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshufd	$78, %xmm2, %xmm2               # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2               # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2               # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm2
	movdqa	%xmm3, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm3            # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshufd	$78, %xmm3, %xmm3               # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3               # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm3
	movdqa	%xmm4, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm4            # xmm4 = xmm4[8],xmm0[8],xmm4[9],xmm0[9],xmm4[10],xmm0[10],xmm4[11],xmm0[11],xmm4[12],xmm0[12],xmm4[13],xmm0[13],xmm4[14],xmm0[14],xmm4[15],xmm0[15]
	pshufd	$78, %xmm4, %xmm4               # xmm4 = xmm4[2,3,0,1]
	pshuflw	$27, %xmm4, %xmm4               # xmm4 = xmm4[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm4, %xmm4               # xmm4 = xmm4[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm4
	movdqu	-48(%rax,%r15), %xmm5
	movdqu	-32(%rax,%r15), %xmm6
	movdqu	-16(%rax,%r15), %xmm7
	movdqu	(%rax,%r15), %xmm8
	movzbl	%r13b, %r13d
	movdqa	%xmm5, %xmm9
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	pshufd	$78, %xmm9, %xmm9               # xmm9 = xmm9[2,3,0,1]
	pshuflw	$27, %xmm9, %xmm9               # xmm9 = xmm9[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm9, %xmm9               # xmm9 = xmm9[0,1,2,3,7,6,5,4]
	movdqa	%xmm5, %xmm10
	punpckhbw	%xmm0, %xmm10           # xmm10 = xmm10[8],xmm0[8],xmm10[9],xmm0[9],xmm10[10],xmm0[10],xmm10[11],xmm0[11],xmm10[12],xmm0[12],xmm10[13],xmm0[13],xmm10[14],xmm0[14],xmm10[15],xmm0[15]
	pshufd	$78, %xmm10, %xmm10             # xmm10 = xmm10[2,3,0,1]
	pshuflw	$27, %xmm10, %xmm10             # xmm10 = xmm10[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm10, %xmm10             # xmm10 = xmm10[0,1,2,3,7,6,5,4]
	packuswb	%xmm9, %xmm10
	movdqu	%xmm10, 58(%rbx,%r13)
	movdqa	%xmm6, %xmm9
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	pshufd	$78, %xmm9, %xmm9               # xmm9 = xmm9[2,3,0,1]
	pshuflw	$27, %xmm9, %xmm9               # xmm9 = xmm9[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm9, %xmm9               # xmm9 = xmm9[0,1,2,3,7,6,5,4]
	movdqa	%xmm6, %xmm10
	punpckhbw	%xmm0, %xmm10           # xmm10 = xmm10[8],xmm0[8],xmm10[9],xmm0[9],xmm10[10],xmm0[10],xmm10[11],xmm0[11],xmm10[12],xmm0[12],xmm10[13],xmm0[13],xmm10[14],xmm0[14],xmm10[15],xmm0[15]
	pshufd	$78, %xmm10, %xmm10             # xmm10 = xmm10[2,3,0,1]
	pshuflw	$27, %xmm10, %xmm10             # xmm10 = xmm10[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm10, %xmm10             # xmm10 = xmm10[0,1,2,3,7,6,5,4]
	packuswb	%xmm9, %xmm10
	movdqu	%xmm10, 42(%rbx,%r13)
	movdqa	%xmm7, %xmm9
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	pshufd	$78, %xmm9, %xmm9               # xmm9 = xmm9[2,3,0,1]
	pshuflw	$27, %xmm9, %xmm9               # xmm9 = xmm9[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm9, %xmm9               # xmm9 = xmm9[0,1,2,3,7,6,5,4]
	movdqa	%xmm7, %xmm10
	punpckhbw	%xmm0, %xmm10           # xmm10 = xmm10[8],xmm0[8],xmm10[9],xmm0[9],xmm10[10],xmm0[10],xmm10[11],xmm0[11],xmm10[12],xmm0[12],xmm10[13],xmm0[13],xmm10[14],xmm0[14],xmm10[15],xmm0[15]
	pshufd	$78, %xmm10, %xmm10             # xmm10 = xmm10[2,3,0,1]
	pshuflw	$27, %xmm10, %xmm10             # xmm10 = xmm10[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm10, %xmm10             # xmm10 = xmm10[0,1,2,3,7,6,5,4]
	packuswb	%xmm9, %xmm10
	movdqu	%xmm10, 26(%rbx,%r13)
	movdqa	%xmm8, %xmm9
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	pshufd	$78, %xmm9, %xmm9               # xmm9 = xmm9[2,3,0,1]
	pshuflw	$27, %xmm9, %xmm9               # xmm9 = xmm9[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm9, %xmm9               # xmm9 = xmm9[0,1,2,3,7,6,5,4]
	movdqa	%xmm8, %xmm10
	punpckhbw	%xmm0, %xmm10           # xmm10 = xmm10[8],xmm0[8],xmm10[9],xmm0[9],xmm10[10],xmm0[10],xmm10[11],xmm0[11],xmm10[12],xmm0[12],xmm10[13],xmm0[13],xmm10[14],xmm0[14],xmm10[15],xmm0[15]
	pshufd	$78, %xmm10, %xmm10             # xmm10 = xmm10[2,3,0,1]
	pshuflw	$27, %xmm10, %xmm10             # xmm10 = xmm10[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm10, %xmm10             # xmm10 = xmm10[0,1,2,3,7,6,5,4]
	packuswb	%xmm9, %xmm10
	movdqu	%xmm10, 10(%rbx,%r13)
	psubb	%xmm1, %xmm5
	psubb	%xmm2, %xmm6
	psubb	%xmm3, %xmm7
	psubb	%xmm4, %xmm8
	movdqu	%xmm5, -48(%rbp,%r15)
	movdqu	%xmm6, -32(%rbp,%r15)
	movdqu	%xmm7, -16(%rbp,%r15)
	movdqu	%xmm8, (%rbp,%r15)
	addq	$64, %r15
	addb	$-64, %r13b
	cmpq	%r15, %r9
	jne	.LBB1_31
# %bb.32:                               # %middle.block99
	cmpq	%r9, %r10
	movq	%rcx, %r15
	movq	8(%rsp), %rdi                   # 8-byte Reload
	je	.LBB1_39
.LBB1_33:                               # %for.body.i.preheader
	addq	%rsi, %rdx
	addq	%rdi, %r14
	movq	%r9, %rax
	orq	$1, %rax
	testb	$1, %r10b
	je	.LBB1_35
# %bb.34:                               # %for.body.i.prol
	leal	(%r12,%r11), %ebp
	movq	%r15, %rcx
	movzbl	%bpl, %r15d
	movzbl	(%rdx,%r9), %edi
	movzbl	%r12b, %r13d
	movl	%edi, %ebp
	subb	73(%rbx,%r15), %bpl
	movq	%rcx, %r15
	decb	%r12b
	movb	%dil, 73(%rbx,%r13)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movb	%bpl, (%r14,%r9)
	movq	%rax, %r9
.LBB1_35:                               # %for.body.i.prol.loopexit
	cmpq	%rax, %r10
	je	.LBB1_39
# %bb.36:                               # %for.body.i.preheader1
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movzbl	%r12b, %r12d
	addb	%r12b, %r11b
	movzbl	%r11b, %eax
	movq	%r9, %r11
	subq	%r10, %r11
	incq	%r9
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB1_37:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r12,%r15), %rdi
	leaq	(%rax,%r15), %r13
	movzbl	%r13b, %ebp
	movzbl	-1(%rdx,%r9), %ecx
	leal	-1(%rdi), %esi
	movzbl	%dil, %edi
	movl	%ecx, %r8d
	subb	73(%rbx,%rbp), %r8b
	movb	%cl, 73(%rbx,%rdi)
	movb	%r8b, -1(%r14,%r9)
	decl	%r13d
	movzbl	%r13b, %ecx
	movzbl	(%rdx,%r9), %edi
	movzbl	%sil, %esi
	movl	%edi, %r8d
	subb	73(%rbx,%rcx), %r8b
	movb	%dil, 73(%rbx,%rsi)
	movb	%r8b, (%r14,%r9)
	addq	$-2, %r15
	addq	$2, %r9
	cmpq	%r15, %r11
	jne	.LBB1_37
# %bb.38:                               # %for.cond.for.cond.cleanup_crit_edge.i.loopexit
	addl	%r15d, %r12d
	movq	96(%rsp), %r15
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	8(%rsp), %rdi                   # 8-byte Reload
.LBB1_39:                               # %for.cond.for.cond.cleanup_crit_edge.i
	movb	%r12b, 72(%rbx)
	movl	112(%rsp), %r11d
	movq	32(%rsp), %rcx                  # 8-byte Reload
.LBB1_40:                               # %copy_and_encode.exit
	addq	%r10, %rsi
	movq	%rsi, (%rcx)
	addq	%r10, %rdi
	movq	%rdi, (%r15)
	xorl	%eax, %eax
	testl	%r11d, %r11d
	je	.LBB1_42
# %bb.41:                               # %land.rhs
	cmpq	%r8, %rsi
	sete	%al
.LBB1_42:                               # %if.end
	addq	$40, %rsp
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
.Lfunc_end1:
	.size	delta_encode, .Lfunc_end1-delta_encode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function delta_encoder_update
	.type	delta_encoder_update,@function
delta_encoder_update:                   # @delta_encoder_update
	.cfi_startproc
# %bb.0:                                # %entry
	leaq	16(%rcx), %rdx
	jmp	lzma_next_filter_update@PLT     # TAILCALL
.Lfunc_end2:
	.size	delta_encoder_update, .Lfunc_end2-delta_encoder_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_delta_props_encode         # -- Begin function lzma_delta_props_encode
	.p2align	4, 0x90
	.type	lzma_delta_props_encode,@function
lzma_delta_props_encode:                # @lzma_delta_props_encode
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	lzma_delta_coder_memusage@PLT
	cmpq	$-1, %rax
	je	.LBB3_1
# %bb.2:                                # %if.end
	movzbl	4(%r14), %eax
	decb	%al
	movb	%al, (%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB3_1:
	.cfi_def_cfa_offset 32
	movl	$11, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	lzma_delta_props_encode, .Lfunc_end3-lzma_delta_props_encode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
