	.text
	.file	"delta_decoder.c"
	.globl	lzma_delta_decoder_init         # -- Begin function lzma_delta_decoder_init
	.p2align	4, 0x90
	.type	lzma_delta_decoder_init,@function
lzma_delta_decoder_init:                # @lzma_delta_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$delta_decode, 24(%rdi)
	jmp	lzma_delta_coder_init@PLT       # TAILCALL
.Lfunc_end0:
	.size	lzma_delta_decoder_init, .Lfunc_end0-lzma_delta_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function delta_decode
	.type	delta_decode,@function
delta_decode:                           # @delta_decode
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
	movq	%r9, %rbx
	movq	%rdi, %r14
	movl	80(%rsp), %eax
	movq	64(%rsp), %r12
	movq	(%r12), %r15
	movq	(%rdi), %rdi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	*24(%r14)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	(%r12), %rcx
	movq	%rcx, %r9
	subq	%r15, %r9
	je	.LBB1_7
# %bb.1:                                # %for.body.lr.ph.i
	movzbl	64(%r14), %edx
	movzbl	72(%r14), %r8d
	cmpq	$64, %r9
	jae	.LBB1_8
.LBB1_2:
	xorl	%esi, %esi
.LBB1_3:                                # %for.body.i.preheader
	movl	%r8d, %edi
.LBB1_4:                                # %for.body.i.preheader
	addq	%r15, %rsi
	.p2align	4, 0x90
.LBB1_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%rdi), %r8d
	movzbl	%r8b, %r8d
	movzbl	(%rbx,%rsi), %r9d
	addb	73(%r14,%r8), %r9b
	movb	%r9b, (%rbx,%rsi)
	movzbl	%dil, %r8d
	decb	%dil
	movb	%r9b, 73(%r14,%r8)
	incq	%rsi
	cmpq	%rsi, %rcx
	jne	.LBB1_5
.LBB1_6:                                # %decode_buffer.exit.loopexit
	movb	%dil, 72(%r14)
.LBB1_7:                                # %decode_buffer.exit
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
.LBB1_8:                                # %vector.scevcheck
	.cfi_def_cfa_offset 64
	movq	%r15, %rdi
	notq	%rdi
	addq	%rcx, %rdi
	xorl	%esi, %esi
	cmpb	%dil, %r8b
	jb	.LBB1_3
# %bb.9:                                # %vector.scevcheck
	leal	(%r8,%rdx), %r11d
	cmpb	%dil, %r11b
	jb	.LBB1_3
# %bb.10:                               # %vector.scevcheck
	cmpq	$255, %rdi
	ja	.LBB1_3
# %bb.11:                               # %vector.scevcheck
	movzbl	%r8b, %r10d
	leaq	(%r14,%r10), %r12
	addq	$73, %r12
	movq	%r12, %r13
	subq	%rdi, %r13
	cmpq	%r12, %r13
	ja	.LBB1_3
# %bb.12:                               # %vector.scevcheck
	movzbl	%r11b, %r11d
	leaq	(%r14,%r11), %r12
	addq	$73, %r12
	movq	%r12, %r13
	subq	%rdi, %r13
	cmpq	%r12, %r13
	ja	.LBB1_3
# %bb.13:                               # %vector.memcheck
	subq	%r10, %r11
	cmpq	$64, %r11
	jb	.LBB1_2
# %bb.14:                               # %vector.ph
	movq	%r9, %rsi
	andq	$-64, %rsi
	movl	%r8d, %edi
	subb	%sil, %dil
	leaq	(%r15,%rbx), %r10
	addq	$48, %r10
	xorl	%r11d, %r11d
	pxor	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB1_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%r8), %ebp
	movzbl	%bpl, %r12d
	movdqu	10(%r14,%r12), %xmm1
	movdqu	26(%r14,%r12), %xmm3
	movdqu	42(%r14,%r12), %xmm4
	movdqu	58(%r14,%r12), %xmm2
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
	movdqa	%xmm3, %xmm5
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	pshufd	$78, %xmm5, %xmm5               # xmm5 = xmm5[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm3            # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshufd	$78, %xmm3, %xmm3               # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm6               # xmm6 = xmm3[0,1,2,3,7,6,5,4]
	packuswb	%xmm5, %xmm6
	movdqa	%xmm1, %xmm3
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pshufd	$78, %xmm3, %xmm3               # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3               # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm1            # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshufd	$78, %xmm1, %xmm1               # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1               # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm5               # xmm5 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm5
	movdqu	-48(%r10,%r11), %xmm7
	paddb	%xmm2, %xmm7
	movdqu	-32(%r10,%r11), %xmm3
	paddb	%xmm4, %xmm3
	movdqu	-16(%r10,%r11), %xmm2
	paddb	%xmm6, %xmm2
	movdqu	(%r10,%r11), %xmm1
	paddb	%xmm5, %xmm1
	movdqu	%xmm7, -48(%r10,%r11)
	movdqu	%xmm3, -32(%r10,%r11)
	movdqu	%xmm2, -16(%r10,%r11)
	movdqu	%xmm1, (%r10,%r11)
	movzbl	%r8b, %r8d
	movdqa	%xmm7, %xmm4
	punpcklbw	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	pshufd	$78, %xmm4, %xmm4               # xmm4 = xmm4[2,3,0,1]
	pshuflw	$27, %xmm4, %xmm4               # xmm4 = xmm4[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm4, %xmm4               # xmm4 = xmm4[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm7            # xmm7 = xmm7[8],xmm0[8],xmm7[9],xmm0[9],xmm7[10],xmm0[10],xmm7[11],xmm0[11],xmm7[12],xmm0[12],xmm7[13],xmm0[13],xmm7[14],xmm0[14],xmm7[15],xmm0[15]
	pshufd	$78, %xmm7, %xmm5               # xmm5 = xmm7[2,3,0,1]
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm5, %xmm5               # xmm5 = xmm5[0,1,2,3,7,6,5,4]
	packuswb	%xmm4, %xmm5
	movdqu	%xmm5, 58(%r14,%r8)
	movdqa	%xmm3, %xmm4
	punpcklbw	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	pshufd	$78, %xmm4, %xmm4               # xmm4 = xmm4[2,3,0,1]
	pshuflw	$27, %xmm4, %xmm4               # xmm4 = xmm4[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm4, %xmm4               # xmm4 = xmm4[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm3            # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshufd	$78, %xmm3, %xmm3               # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3               # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	packuswb	%xmm4, %xmm3
	movdqu	%xmm3, 42(%r14,%r8)
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pshufd	$78, %xmm3, %xmm3               # xmm3 = xmm3[2,3,0,1]
	pshuflw	$27, %xmm3, %xmm3               # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm3, %xmm3               # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm2            # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshufd	$78, %xmm2, %xmm2               # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2               # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2               # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm2, 26(%r14,%r8)
	movdqa	%xmm1, %xmm2
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshufd	$78, %xmm2, %xmm2               # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2               # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2               # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm0, %xmm1            # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	pshufd	$78, %xmm1, %xmm1               # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1               # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1               # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm2, %xmm1
	movdqu	%xmm1, 10(%r14,%r8)
	addq	$64, %r11
	addb	$-64, %r8b
	cmpq	%r11, %rsi
	jne	.LBB1_15
# %bb.16:                               # %middle.block
	cmpq	%rsi, %r9
	jne	.LBB1_4
	jmp	.LBB1_6
.Lfunc_end1:
	.size	delta_decode, .Lfunc_end1-delta_decode
	.cfi_endproc
                                        # -- End function
	.globl	lzma_delta_props_decode         # -- Begin function lzma_delta_props_decode
	.p2align	4, 0x90
	.type	lzma_delta_props_decode,@function
lzma_delta_props_decode:                # @lzma_delta_props_decode
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$8, %eax
	cmpq	$1, %rcx
	jne	.LBB2_5
# %bb.1:                                # %if.end
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$40, %edi
	callq	lzma_alloc@PLT
	testq	%rax, %rax
	je	.LBB2_2
# %bb.3:                                # %if.end3
	movl	$0, (%rax)
	movzbl	(%r14), %ecx
	incl	%ecx
	movl	%ecx, 4(%rax)
	movq	%rax, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB2_4
.LBB2_2:
	movl	$5, %eax
.LBB2_4:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB2_5:                                # %return
	retq
.Lfunc_end2:
	.size	lzma_delta_props_decode, .Lfunc_end2-lzma_delta_props_decode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
