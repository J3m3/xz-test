	.text
	.file	"lzma_decoder.c"
	.globl	lzma_lzma_decoder_create        # -- Begin function lzma_lzma_decoder_create
	.p2align	4, 0x90
	.type	lzma_lzma_decoder_create,@function
lzma_lzma_decoder_create:               # @lzma_lzma_decoder_create
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
	cmpq	$0, (%rdi)
	jne	.LBB0_4
# %bb.1:                                # %if.then
	movq	%rdi, %rbx
	movq	%rdx, %r14
	movq	%rcx, %r15
	movl	$28352, %edi                    # imm = 0x6EC0
	callq	lzma_alloc@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.3:                                # %if.end
	movq	$lzma_decode, 8(%rbx)
	movq	$lzma_decoder_reset, 16(%rbx)
	movq	$lzma_decoder_uncompressed, 24(%rbx)
	movq	%r15, %rcx
	movq	%r14, %rdx
.LBB0_4:                                # %if.end5
	movl	(%rdx), %eax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movl	16(%rdx), %eax
	movq	%rax, 16(%rcx)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_2:
	.cfi_def_cfa_offset 32
	movl	$5, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	lzma_lzma_decoder_create, .Lfunc_end0-lzma_lzma_decoder_create
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma_decode
	.type	lzma_decode,@function
lzma_decode:                            # @lzma_decode
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%rdx, %r8
	movl	28276(%rdi), %eax
	testl	%eax, %eax
	je	.LBB1_4
# %bb.1:                                # %while.body.lr.ph.i
	movq	(%rcx), %r14
	decl	%eax
	.p2align	4, 0x90
.LBB1_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r14, 32(%rsp)                  # 8-byte Folded Reload
	je	.LBB1_7
# %bb.3:                                # %if.end.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	28272(%rdi), %r9d
	shll	$8, %r9d
	movzbl	(%r8,%r14), %r15d
	orl	%r9d, %r15d
	movl	%r15d, 28272(%rdi)
	incq	%r14
	movq	%r14, (%rcx)
	movl	%eax, 28276(%rdi)
	addl	$-1, %eax
	jb	.LBB1_2
	jmp	.LBB1_5
.LBB1_4:                                # %entry.if.end_crit_edge
	movl	28272(%rdi), %r15d
	movq	(%rcx), %r14
.LBB1_5:                                # %if.end
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movq	8(%rsi), %r9
	movq	16(%rsi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	24(%rsi), %rax
	movl	28268(%rdi), %ebx
	movl	28280(%rdi), %ecx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	movl	28284(%rdi), %ebp
	movl	28288(%rdi), %ecx
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movl	28292(%rdi), %ecx
	movl	%ecx, (%rsp)                    # 4-byte Spill
	movl	28296(%rdi), %ecx
	movl	%ecx, 92(%rsp)                  # 4-byte Spill
	movq	28328(%rdi), %r12
	movl	28336(%rdi), %ecx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	28312(%rdi), %r11
	movq	%rax, %rcx
	subq	%r9, %rcx
	leaq	(%r11,%r9), %r10
	cmpq	%rcx, %r11
	cmovaeq	%rax, %r10
	movl	28340(%rdi), %ecx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%r11, 192(%rsp)                 # 8-byte Spill
	cmpq	$-1, %r11
	cmoveq	%rax, %r10
	movq	%r10, 112(%rsp)                 # 8-byte Spill
	movl	28344(%rdi), %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	28348(%rdi), %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	28320(%rdi), %ecx
	cmpq	$70, %rcx
	movq	%rsi, 184(%rsp)                 # 8-byte Spill
	movq	%r9, 168(%rsp)                  # 8-byte Spill
	ja	.LBB1_8
# %bb.6:                                # %if.end
	movq	(%rsi), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	32(%rsi), %rsi
	movl	28300(%rdi), %edx
	movl	28308(%rdi), %eax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movl	28304(%rdi), %eax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movl	%r9d, %eax
	movl	%edx, 108(%rsp)                 # 4-byte Spill
	andl	%edx, %eax
	movq	%r9, 56(%rsp)                   # 8-byte Spill
	movq	%r12, %r11
	movq	16(%rsp), %r13                  # 8-byte Reload
	movl	4(%rsp), %r12d                  # 4-byte Reload
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_7:
	xorl	%eax, %eax
	jmp	.LBB1_465
.LBB1_8:
	movq	%r9, %rsi
.LBB1_9:                                # %do.body5579
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	ja	.LBB1_12
# %bb.10:                               # %if.then5583
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	movq	8(%rsp), %r11                   # 8-byte Reload
	jne	.LBB1_13
# %bb.11:                               # %if.then5586
	movl	$0, 28320(%rdi)
	jmp	.LBB1_586
.LBB1_12:
	movq	8(%rsp), %r11                   # 8-byte Reload
	jmp	.LBB1_14
.LBB1_13:                               # %if.end5588
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%r15d, %eax
	movl	%eax, %r15d
.LBB1_14:                               # %do.end5600
	movl	$1, 28320(%rdi)
	xorl	%ecx, %ecx
	movb	$1, %dl
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB1_587
.LBB1_15:                               # %while.body
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	andl	%ecx, %eax
.LBB1_16:                               # %sw.bb
	cmpq	$-1, 192(%rsp)                  # 8-byte Folded Reload
	je	.LBB1_18
# %bb.17:                               # %sw.bb
	movq	112(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, 56(%rsp)                  # 8-byte Folded Reload
	je	.LBB1_576
.LBB1_18:                               # %do.body
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_21
# %bb.19:                               # %if.then45
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_654
# %bb.20:                               # %if.end50
	movq	%r11, %rdx
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r9d, %r15d
	movl	%ecx, %ebx
	jmp	.LBB1_22
.LBB1_21:
	movq	%r11, %rdx
	movl	%ebx, %ecx
.LBB1_22:                               # %do.end
	shrl	$11, %ebx
	movl	%r12d, %r9d
	shlq	$5, %r9
	addq	%rdi, %r9
	movl	%eax, %r11d
	leaq	(%r9,%r11,2), %r10
	addq	$24576, %r10                    # imm = 0x6000
	movzwl	24576(%r9,%r11,2), %r11d
	imull	%r11d, %ebx
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_80
# %bb.23:                               # %do.body65
	movl	$2048, %eax                     # imm = 0x800
	subl	%r11d, %eax
	shrl	$5, %eax
	addl	%r11d, %eax
	movw	%ax, (%r10)
	movq	56(%rsp), %r11                  # 8-byte Reload
	movl	%r11d, %r9d
	andl	160(%rsp), %r9d                 # 4-byte Folded Reload
	movq	152(%rsp), %r13                 # 8-byte Reload
	movl	%r13d, %ecx
	shlq	%cl, %r9
	xorl	%ecx, %ecx
	testq	%r11, %r11
	cmoveq	%rsi, %rcx
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	%r11, %rax
	movzbl	-1(%rcx,%rax), %r10d
	movb	$8, %cl
	subb	%r13b, %cl
	shrl	%cl, %r10d
	addq	%r9, %r10
	leaq	(%r10,%r10,2), %rdx
	shlq	$9, %rdx
	addq	%rdi, %rdx
	movl	$1, %r13d
	cmpl	$6, %r12d
	ja	.LBB1_473
# %bb.24:
	movq	%rdx, %r11
.LBB1_25:                               # %do.body101
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_28
# %bb.26:                               # %if.then105
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_625
# %bb.27:                               # %if.end110
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%ecx, %r15d
	movl	%eax, %ebx
	jmp	.LBB1_29
.LBB1_28:
	movl	%ebx, %eax
.LBB1_29:                               # %do.end122
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_34
# %bb.30:                               # %do.body133
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_31:                               # %do.body171
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_35
.LBB1_32:                               # %if.then175
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_627
# %bb.33:                               # %if.end180
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%ecx, %r15d
	movl	%eax, %ebx
	jmp	.LBB1_36
.LBB1_34:                               # %do.body148
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_32
.LBB1_35:
	movl	%ebx, %eax
.LBB1_36:                               # %do.end192
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_41
# %bb.37:                               # %do.body203
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_38:                               # %do.body242
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_42
.LBB1_39:                               # %if.then246
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_618
# %bb.40:                               # %if.end251
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%ecx, %r15d
	movl	%eax, %ebx
	jmp	.LBB1_43
.LBB1_41:                               # %do.body219
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_39
.LBB1_42:
	movl	%ebx, %eax
.LBB1_43:                               # %do.end263
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_48
# %bb.44:                               # %do.body274
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_45:                               # %do.body313
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_49
.LBB1_46:                               # %if.then317
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_620
# %bb.47:                               # %if.end322
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	movl	%eax, %ebx
	jmp	.LBB1_50
.LBB1_48:                               # %do.body290
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_46
.LBB1_49:
	movl	%ebx, %eax
.LBB1_50:                               # %do.end334
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_55
# %bb.51:                               # %do.body345
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_52:                               # %do.body384
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_56
.LBB1_53:                               # %if.then388
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_623
# %bb.54:                               # %if.end393
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	movl	%eax, %ebx
	jmp	.LBB1_57
.LBB1_55:                               # %do.body361
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_53
.LBB1_56:
	movl	%ebx, %eax
.LBB1_57:                               # %do.end405
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_62
# %bb.58:                               # %do.body416
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_59:                               # %do.body455
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_63
.LBB1_60:                               # %if.then459
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_616
# %bb.61:                               # %if.end464
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	movl	%eax, %ebx
	jmp	.LBB1_64
.LBB1_62:                               # %do.body432
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_60
.LBB1_63:
	movl	%ebx, %eax
.LBB1_64:                               # %do.end476
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_69
# %bb.65:                               # %do.body487
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_66:                               # %do.body526
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_70
.LBB1_67:                               # %if.then530
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_617
# %bb.68:                               # %if.end535
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	movl	%eax, %ebx
	jmp	.LBB1_71
.LBB1_69:                               # %do.body503
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_67
.LBB1_70:
	movl	%ebx, %eax
.LBB1_71:                               # %do.end547
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_74
# %bb.72:                               # %do.body558
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_73:                               # %do.body597
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_75
	jmp	.LBB1_77
.LBB1_74:                               # %do.body574
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_77
.LBB1_75:                               # %if.then601
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_624
# %bb.76:                               # %if.end606
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%r15d, %eax
	movl	%eax, %r15d
.LBB1_77:                               # %do.end618
	movl	%ebx, %eax
	shrl	$11, %eax
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %eax
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%eax, %ecx
	jae	.LBB1_79
# %bb.78:                               # %do.body629
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r10d, %ecx
	shrl	$5, %ecx
	addl	%r10d, %ecx
	movw	%cx, (%r11,%r9,2)
	jmp	.LBB1_536
.LBB1_79:                               # %do.body645
	subl	%eax, %ebx
	movl	%r10d, %eax
	shrl	$5, %eax
	subl	%eax, %r10d
	movw	%r10w, (%r11,%r9,2)
	orl	$1, %r13d
	movl	%ebx, %eax
	movl	%ecx, %r15d
	jmp	.LBB1_536
.LBB1_80:                               # %do.body1302
	subl	%ebx, %ecx
	movl	%r11d, %ebx
	shrl	$5, %ebx
	subl	%ebx, %r11d
	movw	%r11w, (%r10)
	movl	%ecx, %ebx
	movl	%r9d, %r15d
	movq	%rdx, %r11
.LBB1_81:                               # %do.body1325
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	movq	%rsi, %rax
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	(%rsp), %r9d                    # 4-byte Reload
	movl	52(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, (%rsp)                    # 4-byte Spill
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	movq	%r11, %rsi
	ja	.LBB1_84
# %bb.82:                               # %if.then1329
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_612
# %bb.83:                               # %if.end1334
	movl	%ebx, %r10d
	shll	$8, %r10d
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	movl	%r10d, %ebx
	jmp	.LBB1_85
.LBB1_84:
	movl	%ebx, %r10d
.LBB1_85:                               # %do.end1346
	shrl	$11, %ebx
	movl	%r12d, %ecx
	movzwl	24960(%rdi,%rcx,2), %ebp
	imull	%ebp, %ebx
	movl	%r15d, %r11d
	subl	%ebx, %r11d
	jae	.LBB1_99
# %bb.86:                               # %do.body1357
	movl	$2048, %r10d                    # imm = 0x800
	subl	%ebp, %r10d
	shrl	$5, %r10d
	addl	%ebp, %r10d
	movw	%r10w, 24960(%rdi,%rcx,2)
	xorl	%ecx, %ecx
	cmpl	$7, %r12d
	setae	%cl
	leal	7(%rcx,%rcx,2), %r12d
	movl	$1, %r13d
	movq	24(%rsp), %rbp                  # 8-byte Reload
	movl	%ebp, 52(%rsp)                  # 4-byte Spill
	movl	%r9d, 92(%rsp)                  # 4-byte Spill
	movq	%rsi, %r11
	movq	%rax, %rsi
	movl	4(%rsp), %eax                   # 4-byte Reload
.LBB1_87:                               # %do.body1377
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_90
# %bb.88:                               # %if.then1381
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_635
# %bb.89:                               # %if.end1386
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	movl	%ecx, %ebx
	jmp	.LBB1_91
.LBB1_90:
	movl	%ebx, %ecx
.LBB1_91:                               # %do.end1398
	shrl	$11, %ebx
	movzwl	26212(%rdi), %r10d
	imull	%r10d, %ebx
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_210
# %bb.92:                               # %do.body1407
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r10d, %ecx
	shrl	$5, %ecx
	addl	%r10d, %ecx
	movw	%cx, 26212(%rdi)
.LBB1_93:                               # %do.body1423
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_96
# %bb.94:                               # %if.then1427
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_632
# %bb.95:                               # %if.end1432
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	movl	%ecx, %ebx
	jmp	.LBB1_97
.LBB1_96:
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
.LBB1_97:                               # %do.end1444
	shrl	$11, %ebx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r11d
	leaq	(%r9,%r11,2), %r10
	addq	$26216, %r10                    # imm = 0x6668
	movzwl	26216(%r9,%r11,2), %r11d
	imull	%r11d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_193
# %bb.98:                               # %do.body1458
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r11d, %ecx
	shrl	$5, %ecx
	addl	%r11d, %ecx
	movw	%cx, (%r10)
	jmp	.LBB1_194
.LBB1_99:                               # %do.body3917
	subl	%ebx, %r10d
	movl	%ebp, %ebx
	shrl	$5, %ebx
	subl	%ebx, %ebp
	movw	%bp, 24960(%rdi,%rcx,2)
	cmpq	$0, 72(%rsp)                    # 8-byte Folded Reload
	je	.LBB1_653
# %bb.100:
	movl	(%rsp), %ecx                    # 4-byte Reload
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movl	%r9d, (%rsp)                    # 4-byte Spill
	movl	%r10d, %ebx
	movl	%r11d, %r15d
	movq	24(%rsp), %rbp                  # 8-byte Reload
	movq	%rsi, %r11
	movq	%rax, %rsi
	movl	4(%rsp), %eax                   # 4-byte Reload
.LBB1_101:                              # %do.body3939
	movl	%r12d, %edx
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	movq	%r11, %r12
	ja	.LBB1_104
# %bb.102:                              # %if.then3943
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_639
# %bb.103:                              # %if.end3948
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	jmp	.LBB1_105
.LBB1_104:
	movl	%ebx, %ecx
.LBB1_105:                              # %do.end3960
	movl	%ecx, %ebx
	shrl	$11, %ebx
	movl	%edx, %r10d
	movzwl	24984(%rdi,%r10,2), %r11d
	imull	%r11d, %ebx
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_115
# %bb.106:                              # %do.body3971
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r11d, %ecx
	shrl	$5, %ecx
	addl	%r11d, %ecx
	movw	%cx, 24984(%rdi,%r10,2)
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_107:                              # %do.body3988
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_110
# %bb.108:                              # %if.then3992
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_593
# %bb.109:                              # %if.end3997
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	jmp	.LBB1_111
.LBB1_110:
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
.LBB1_111:                              # %do.end4009
	movl	%ecx, %ebx
	shrl	$11, %ebx
	movl	%edx, %r9d
	shlq	$5, %r9
	addq	%rdi, %r9
	movl	%eax, %r11d
	leaq	(%r9,%r11,2), %r10
	addq	$25056, %r10                    # imm = 0x61E0
	movzwl	25056(%r9,%r11,2), %r11d
	imull	%r11d, %ebx
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_122
# %bb.112:                              # %do.body4022
	movl	$2048, %eax                     # imm = 0x800
	subl	%r11d, %eax
	shrl	$5, %eax
	addl	%r11d, %eax
	movw	%ax, (%r10)
	xorl	%eax, %eax
	cmpl	$7, %edx
	setae	%al
	leal	9(,%rax,2), %eax
	movq	%r12, %r11
	movl	%eax, %r12d
.LBB1_113:                              # %sw.bb4045
	movl	108(%rsp), %r10d                # 4-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpq	112(%rsp), %rax                 # 8-byte Folded Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	je	.LBB1_578
# %bb.114:                              # %if.end.i7863
	movq	%r8, %rdx
	addq	%rcx, %rax
	movq	%rcx, %rsi
	movl	%ebp, %ecx
	movq	%rcx, %r9
	notq	%r9
	addq	%rax, %r9
	xorl	%eax, %eax
	cmpq	%rcx, 56(%rsp)                  # 8-byte Folded Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %r8                   # 8-byte Reload
	cmovbeq	%r8, %rax
	movzbl	(%rax,%r9), %eax
	movb	%al, (%rsi,%rcx)
	movq	%r8, %rsi
	incq	%rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%rdx, %r8
	movl	%r10d, %eax
	jmp	.LBB1_15
.LBB1_115:                              # %do.body4075
	subl	%ebx, %ecx
	movl	%r11d, %ebx
	shrl	$5, %ebx
	subl	%ebx, %r11d
	movw	%r11w, 24984(%rdi,%r10,2)
	movl	%ecx, %ebx
	movl	%r9d, %r15d
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_116:                              # %do.body4094
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_119
# %bb.117:                              # %if.then4098
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_650
# %bb.118:                              # %if.end4103
	movl	%r12d, %edx
	movq	%r11, %r12
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	jmp	.LBB1_120
.LBB1_119:
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%r15d, %r9d
.LBB1_120:                              # %do.end4115
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%edx, %r10d
	movzwl	25008(%rdi,%r10,2), %r11d
	imull	%r11d, %ecx
	subl	%ecx, %r15d
	jae	.LBB1_123
# %bb.121:                              # %do.body4126
	movl	$2048, %ebx                     # imm = 0x800
	subl	%r11d, %ebx
	shrl	$5, %ebx
	addl	%r11d, %ebx
	movw	%bx, 25008(%rdi,%r10,2)
	movl	52(%rsp), %r10d                 # 4-byte Reload
	movl	(%rsp), %r11d                   # 4-byte Reload
	jmp	.LBB1_132
.LBB1_122:                              # %do.body4052
	subl	%ebx, %ecx
	movl	%r11d, %ebx
	shrl	$5, %ebx
	subl	%ebx, %r11d
	movw	%r11w, (%r10)
	movl	%ebp, %r10d
	movl	52(%rsp), %r11d                 # 4-byte Reload
	movl	%r11d, %ebp
	movl	(%rsp), %r11d                   # 4-byte Reload
	jmp	.LBB1_132
.LBB1_123:                              # %do.body4143
	subl	%ecx, %ebx
	movl	%r11d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r11d
	movw	%r11w, 25008(%rdi,%r10,2)
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_124:                              # %do.body4162
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_127
# %bb.125:                              # %if.then4166
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_615
# %bb.126:                              # %if.end4171
	movq	%rbp, %rsi
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	jmp	.LBB1_128
.LBB1_127:
	movq	%r11, %r12
	movq	%rbp, %rsi
	movl	%r15d, %r9d
.LBB1_128:                              # %do.end4183
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	4(%rsp), %r10d                  # 4-byte Reload
	movzwl	25032(%rdi,%r10,2), %ebp
	imull	%ebp, %ecx
	movl	%r9d, %r11d
	subl	%ecx, %r11d
	jae	.LBB1_130
# %bb.129:                              # %do.body4194
	movl	$2048, %r11d                    # imm = 0x800
	subl	%ebp, %r11d
	shrl	$5, %r11d
	addl	%ebp, %r11d
	movw	%r11w, 25032(%rdi,%r10,2)
	movl	(%rsp), %r10d                   # 4-byte Reload
	jmp	.LBB1_131
.LBB1_130:                              # %do.body4212
	subl	%ecx, %ebx
	movl	%ebp, %ecx
	shrl	$5, %ecx
	subl	%ecx, %ebp
	movw	%bp, 25032(%rdi,%r10,2)
	movl	92(%rsp), %r10d                 # 4-byte Reload
	movl	(%rsp), %ecx                    # 4-byte Reload
	movl	%ecx, 92(%rsp)                  # 4-byte Spill
	movl	%ebx, %ecx
	movl	%r11d, %r9d
.LBB1_131:                              # %if.end4233
	movl	52(%rsp), %r11d                 # 4-byte Reload
	movq	%rsi, %rbp
	movl	4(%rsp), %edx                   # 4-byte Reload
	movq	80(%rsp), %rsi                  # 8-byte Reload
.LBB1_132:                              # %if.end4233
	movl	%r11d, (%rsp)                   # 4-byte Spill
	movl	%ebp, 52(%rsp)                  # 4-byte Spill
	xorl	%r11d, %r11d
	cmpl	$7, %edx
	setae	%r11b
	leal	8(%r11,%r11,2), %edx
	movl	$1, %r13d
	movl	%r10d, %ebp
	movl	%ecx, %ebx
	movl	%r9d, %r15d
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_133:                              # %do.body4239
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_136
# %bb.134:                              # %if.then4243
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_598
# %bb.135:                              # %if.end4248
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	jmp	.LBB1_137
.LBB1_136:
	movl	%ebx, %ecx
.LBB1_137:                              # %do.end4260
	movl	%ecx, %ebx
	shrl	$11, %ebx
	movzwl	27240(%rdi), %r10d
	imull	%r10d, %ebx
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_163
# %bb.138:                              # %do.body4270
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r10d, %ecx
	shrl	$5, %ecx
	addl	%r10d, %ecx
	movw	%cx, 27240(%rdi)
.LBB1_139:                              # %do.body4286
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_142
# %bb.140:                              # %if.then4290
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_644
# %bb.141:                              # %if.end4295
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	jmp	.LBB1_143
.LBB1_142:
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
.LBB1_143:                              # %do.end4307
	movl	%ecx, %ebx
	shrl	$11, %ebx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r11d
	leaq	(%r9,%r11,2), %r10
	addq	$27244, %r10                    # imm = 0x6A6C
	movzwl	27244(%r9,%r11,2), %r11d
	imull	%r11d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_145
# %bb.144:                              # %do.body4322
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r11d, %ecx
	shrl	$5, %ecx
	addl	%r11d, %ecx
	movw	%cx, (%r10)
	jmp	.LBB1_146
.LBB1_145:                              # %do.body4346
	subl	%ebx, %ecx
	movl	%r11d, %ebx
	shrl	$5, %ebx
	subl	%ebx, %r11d
	movw	%r11w, (%r10)
	orl	$1, %r13d
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_146:                              # %do.body4377
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_147:                              # %do.body4377
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_150
# %bb.148:                              # %if.then4381
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_592
# %bb.149:                              # %if.end4386
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	jmp	.LBB1_151
.LBB1_150:
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
.LBB1_151:                              # %do.end4398
	movl	%ecx, %ebx
	shrl	$11, %ebx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r11d
	leaq	(%r9,%r11,2), %r10
	addq	$27244, %r10                    # imm = 0x6A6C
	movzwl	27244(%r9,%r11,2), %r11d
	imull	%r11d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_153
# %bb.152:                              # %do.body4413
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r11d, %ecx
	shrl	$5, %ecx
	addl	%r11d, %ecx
	movw	%cx, (%r10)
	jmp	.LBB1_154
.LBB1_153:                              # %do.body4437
	subl	%ebx, %ecx
	movl	%r11d, %ebx
	shrl	$5, %ebx
	subl	%ebx, %r11d
	movw	%r11w, (%r10)
	orl	$1, %r13d
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_154:                              # %do.body4468
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_155:                              # %do.body4468
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_158
# %bb.156:                              # %if.then4472
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_640
# %bb.157:                              # %if.end4477
	movq	%r11, %rdx
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_159
.LBB1_158:
	movq	%r11, %rdx
.LBB1_159:                              # %do.end4489
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r10d
	leaq	(%r9,%r10,2), %rax
	addq	$27244, %rax                    # imm = 0x6A6C
	movzwl	27244(%r9,%r10,2), %r9d
	imull	%r9d, %ecx
	addl	%r13d, %r13d
	movl	%r15d, %r11d
	subl	%ecx, %r11d
	jae	.LBB1_161
# %bb.160:                              # %do.body4504
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r9d, %r10d
	shrl	$5, %r10d
	addl	%r9d, %r10d
	jmp	.LBB1_162
.LBB1_161:                              # %do.body4528
	subl	%ecx, %ebx
	movl	%r9d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r9d
	orl	$1, %r13d
	movl	%r9d, %r10d
	movl	%ebx, %ecx
	movl	%r11d, %r15d
.LBB1_162:                              # %do.end4556
	movq	%rdx, %r11
	movw	%r10w, (%rax)
	leal	-6(%r13), %eax
	jmp	.LBB1_410
.LBB1_163:                              # %do.body4560
	subl	%ebx, %ecx
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 27240(%rdi)
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_164:                              # %do.body4577
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_167
# %bb.165:                              # %if.then4581
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_597
# %bb.166:                              # %if.end4586
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	jmp	.LBB1_168
.LBB1_167:
	movl	%ebx, %ecx
.LBB1_168:                              # %do.end4598
	movl	%ecx, %ebx
	shrl	$11, %ebx
	movzwl	27242(%rdi), %r10d
	imull	%r10d, %ebx
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_176
# %bb.169:                              # %do.body4609
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r10d, %ecx
	shrl	$5, %ecx
	addl	%r10d, %ecx
	movw	%cx, 27242(%rdi)
.LBB1_170:                              # %do.body4625
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_173
# %bb.171:                              # %if.then4629
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_619
# %bb.172:                              # %if.end4634
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	jmp	.LBB1_174
.LBB1_173:
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
.LBB1_174:                              # %do.end4646
	movl	%ecx, %ebx
	shrl	$11, %ebx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r11d
	leaq	(%r9,%r11,2), %r10
	addq	$27500, %r10                    # imm = 0x6B6C
	movzwl	27500(%r9,%r11,2), %r11d
	imull	%r11d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_392
# %bb.175:                              # %do.body4661
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r11d, %ecx
	shrl	$5, %ecx
	addl	%r11d, %ecx
	movw	%cx, (%r10)
	jmp	.LBB1_393
.LBB1_176:                              # %do.body4900
	subl	%ebx, %ecx
	movl	%r10d, %eax
	shrl	$5, %eax
	subl	%eax, %r10d
	movw	%r10w, 27242(%rdi)
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_177:                              # %do.body4918
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_180
# %bb.178:                              # %if.then4922
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_649
# %bb.179:                              # %if.end4927
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_181
.LBB1_180:
	movl	%ebx, %eax
.LBB1_181:                              # %do.end4939
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	27756(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_186
# %bb.182:                              # %do.body4952
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 27756(%rdi,%r9,2)
.LBB1_183:                              # %do.body4999
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_187
.LBB1_184:                              # %if.then5003
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_630
# %bb.185:                              # %if.end5008
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_188
.LBB1_186:                              # %do.body4972
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 27756(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_184
.LBB1_187:
	movl	%ebx, %eax
.LBB1_188:                              # %do.end5020
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	27756(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_285
# %bb.189:                              # %do.body5033
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 27756(%rdi,%r9,2)
.LBB1_190:                              # %do.body5080
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_286
.LBB1_191:                              # %if.then5084
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_610
# %bb.192:                              # %if.end5089
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_287
.LBB1_193:                              # %do.body1482
	subl	%ebx, %ecx
	movl	%r11d, %ebx
	shrl	$5, %ebx
	subl	%ebx, %r11d
	movw	%r11w, (%r10)
	orl	$1, %r13d
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_194:                              # %do.body1513
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_195:                              # %do.body1513
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_198
# %bb.196:                              # %if.then1517
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_628
# %bb.197:                              # %if.end1522
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	movl	%ecx, %ebx
	jmp	.LBB1_199
.LBB1_198:
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
.LBB1_199:                              # %do.end1534
	shrl	$11, %ebx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r11d
	leaq	(%r9,%r11,2), %r10
	addq	$26216, %r10                    # imm = 0x6668
	movzwl	26216(%r9,%r11,2), %r11d
	imull	%r11d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_201
# %bb.200:                              # %do.body1549
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r11d, %ecx
	shrl	$5, %ecx
	addl	%r11d, %ecx
	movw	%cx, (%r10)
	jmp	.LBB1_202
.LBB1_201:                              # %do.body1573
	subl	%ebx, %ecx
	movl	%r11d, %ebx
	shrl	$5, %ebx
	subl	%ebx, %r11d
	movw	%r11w, (%r10)
	orl	$1, %r13d
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_202:                              # %do.body1604
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_203:                              # %do.body1604
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_206
# %bb.204:                              # %if.then1608
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_637
# %bb.205:                              # %if.end1613
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
.LBB1_206:                              # %do.end1625
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r10d
	leaq	(%r9,%r10,2), %rax
	addq	$26216, %rax                    # imm = 0x6668
	movzwl	26216(%r9,%r10,2), %r9d
	imull	%r9d, %ecx
	addl	%r13d, %r13d
	movl	%r15d, %r11d
	subl	%ecx, %r11d
	jae	.LBB1_208
# %bb.207:                              # %do.body1640
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r9d, %r10d
	shrl	$5, %r10d
	addl	%r9d, %r10d
	jmp	.LBB1_209
.LBB1_208:                              # %do.body1664
	subl	%ecx, %ebx
	movl	%r9d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r9d
	orl	$1, %r13d
	movl	%r9d, %r10d
	movl	%ebx, %ecx
	movl	%r11d, %r15d
.LBB1_209:                              # %do.end1692
	movw	%r10w, (%rax)
	addl	$-6, %r13d
	jmp	.LBB1_325
.LBB1_210:                              # %do.body1696
	subl	%ebx, %ecx
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 26212(%rdi)
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_211:                              # %do.body1713
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_214
# %bb.212:                              # %if.then1717
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_604
# %bb.213:                              # %if.end1722
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	movl	%ecx, %ebx
	jmp	.LBB1_215
.LBB1_214:
	movl	%ebx, %ecx
.LBB1_215:                              # %do.end1734
	shrl	$11, %ebx
	movzwl	26214(%rdi), %r10d
	imull	%r10d, %ebx
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_238
# %bb.216:                              # %do.body1744
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r10d, %ecx
	shrl	$5, %ecx
	addl	%r10d, %ecx
	movw	%cx, 26214(%rdi)
.LBB1_217:                              # %do.body1760
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_220
# %bb.218:                              # %if.then1764
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_634
# %bb.219:                              # %if.end1769
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	movl	%ecx, %ebx
	jmp	.LBB1_221
.LBB1_220:
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
.LBB1_221:                              # %do.end1781
	shrl	$11, %ebx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r11d
	leaq	(%r9,%r11,2), %r10
	addq	$26472, %r10                    # imm = 0x6768
	movzwl	26472(%r9,%r11,2), %r11d
	imull	%r11d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_223
# %bb.222:                              # %do.body1795
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r11d, %ecx
	shrl	$5, %ecx
	addl	%r11d, %ecx
	movw	%cx, (%r10)
	jmp	.LBB1_224
.LBB1_223:                              # %do.body1819
	subl	%ebx, %ecx
	movl	%r11d, %ebx
	shrl	$5, %ebx
	subl	%ebx, %r11d
	movw	%r11w, (%r10)
	orl	$1, %r13d
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_224:                              # %do.body1850
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_225:                              # %do.body1850
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_228
# %bb.226:                              # %if.then1854
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_614
# %bb.227:                              # %if.end1859
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	jmp	.LBB1_229
.LBB1_228:
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
.LBB1_229:                              # %do.end1871
	movl	%ecx, %ebx
	shrl	$11, %ebx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r11d
	leaq	(%r9,%r11,2), %r10
	addq	$26472, %r10                    # imm = 0x6768
	movzwl	26472(%r9,%r11,2), %r11d
	imull	%r11d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_231
# %bb.230:                              # %do.body1886
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r11d, %ecx
	shrl	$5, %ecx
	addl	%r11d, %ecx
	movw	%cx, (%r10)
	jmp	.LBB1_232
.LBB1_231:                              # %do.body1910
	subl	%ebx, %ecx
	movl	%r11d, %ebx
	shrl	$5, %ebx
	subl	%ebx, %r11d
	movw	%r11w, (%r10)
	orl	$1, %r13d
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_232:                              # %do.body1941
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_233:                              # %do.body1941
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_236
# %bb.234:                              # %if.then1945
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_642
# %bb.235:                              # %if.end1950
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
.LBB1_236:                              # %do.end1962
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r10d
	leaq	(%r9,%r10,2), %rax
	addq	$26472, %rax                    # imm = 0x6768
	movzwl	26472(%r9,%r10,2), %r9d
	imull	%r9d, %ecx
	addl	%r13d, %r13d
	movl	%r15d, %r11d
	subl	%ecx, %r11d
	jae	.LBB1_255
# %bb.237:                              # %do.body1977
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r9d, %r10d
	shrl	$5, %r10d
	addl	%r9d, %r10d
	jmp	.LBB1_256
.LBB1_238:                              # %do.body2034
	subl	%ebx, %ecx
	movl	%r10d, %eax
	shrl	$5, %eax
	subl	%eax, %r10d
	movw	%r10w, 26214(%rdi)
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_239:                              # %do.body2052
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_242
# %bb.240:                              # %if.then2056
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_647
# %bb.241:                              # %if.end2061
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_243
.LBB1_242:
	movl	%ebx, %eax
.LBB1_243:                              # %do.end2073
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	26728(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_248
# %bb.244:                              # %do.body2085
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 26728(%rdi,%r9,2)
.LBB1_245:                              # %do.body2132
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_249
.LBB1_246:                              # %if.then2136
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_600
# %bb.247:                              # %if.end2141
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_250
.LBB1_248:                              # %do.body2105
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 26728(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_246
.LBB1_249:
	movl	%ebx, %eax
.LBB1_250:                              # %do.end2153
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	26728(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_257
# %bb.251:                              # %do.body2166
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 26728(%rdi,%r9,2)
.LBB1_252:                              # %do.body2213
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_258
.LBB1_253:                              # %if.then2217
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_646
# %bb.254:                              # %if.end2222
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_259
.LBB1_255:                              # %do.body2001
	subl	%ecx, %ebx
	movl	%r9d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r9d
	orl	$1, %r13d
	movl	%r9d, %r10d
	movl	%ebx, %ecx
	movl	%r11d, %r15d
.LBB1_256:                              # %do.end2029
	movw	%r10w, (%rax)
	addl	$2, %r13d
	jmp	.LBB1_325
.LBB1_257:                              # %do.body2186
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 26728(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_253
.LBB1_258:
	movl	%ebx, %eax
.LBB1_259:                              # %do.end2234
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	26728(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_264
# %bb.260:                              # %do.body2247
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 26728(%rdi,%r9,2)
.LBB1_261:                              # %do.body2294
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_265
.LBB1_262:                              # %if.then2298
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_648
# %bb.263:                              # %if.end2303
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_266
.LBB1_264:                              # %do.body2267
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 26728(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_262
.LBB1_265:
	movl	%ebx, %eax
.LBB1_266:                              # %do.end2315
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	26728(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_271
# %bb.267:                              # %do.body2328
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 26728(%rdi,%r9,2)
.LBB1_268:                              # %do.body2375
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_272
.LBB1_269:                              # %if.then2379
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_602
# %bb.270:                              # %if.end2384
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_273
.LBB1_271:                              # %do.body2348
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 26728(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_269
.LBB1_272:
	movl	%ebx, %eax
.LBB1_273:                              # %do.end2396
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	26728(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_278
# %bb.274:                              # %do.body2409
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 26728(%rdi,%r9,2)
.LBB1_275:                              # %do.body2456
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_279
.LBB1_276:                              # %if.then2460
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_594
# %bb.277:                              # %if.end2465
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_280
.LBB1_278:                              # %do.body2429
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 26728(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_276
.LBB1_279:
	movl	%ebx, %eax
.LBB1_280:                              # %do.end2477
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	26728(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_313
# %bb.281:                              # %do.body2490
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 26728(%rdi,%r9,2)
.LBB1_282:                              # %do.body2537
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_314
.LBB1_283:                              # %if.then2541
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_645
# %bb.284:                              # %if.end2546
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_315
.LBB1_285:                              # %do.body5053
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 27756(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_191
.LBB1_286:
	movl	%ebx, %eax
.LBB1_287:                              # %do.end5101
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	27756(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_292
# %bb.288:                              # %do.body5114
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 27756(%rdi,%r9,2)
.LBB1_289:                              # %do.body5161
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_293
.LBB1_290:                              # %if.then5165
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_595
# %bb.291:                              # %if.end5170
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_294
.LBB1_292:                              # %do.body5134
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 27756(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_290
.LBB1_293:
	movl	%ebx, %eax
.LBB1_294:                              # %do.end5182
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	27756(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_299
# %bb.295:                              # %do.body5195
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 27756(%rdi,%r9,2)
.LBB1_296:                              # %do.body5242
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_300
.LBB1_297:                              # %if.then5246
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_652
# %bb.298:                              # %if.end5251
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_301
.LBB1_299:                              # %do.body5215
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 27756(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_297
.LBB1_300:
	movl	%ebx, %eax
.LBB1_301:                              # %do.end5263
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	27756(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_306
# %bb.302:                              # %do.body5276
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 27756(%rdi,%r9,2)
.LBB1_303:                              # %do.body5323
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_307
.LBB1_304:                              # %if.then5327
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_591
# %bb.305:                              # %if.end5332
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_308
.LBB1_306:                              # %do.body5296
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 27756(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_304
.LBB1_307:
	movl	%ebx, %eax
.LBB1_308:                              # %do.end5344
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	27756(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_379
# %bb.309:                              # %do.body5357
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 27756(%rdi,%r9,2)
.LBB1_310:                              # %do.body5404
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_380
.LBB1_311:                              # %if.then5408
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_651
# %bb.312:                              # %if.end5413
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_381
.LBB1_313:                              # %do.body2510
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 26728(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_283
.LBB1_314:
	movl	%ebx, %eax
.LBB1_315:                              # %do.end2558
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	26728(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_318
# %bb.316:                              # %do.body2571
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 26728(%rdi,%r9,2)
.LBB1_317:                              # %do.body2618
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_319
	jmp	.LBB1_321
.LBB1_318:                              # %do.body2591
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 26728(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_321
.LBB1_319:                              # %if.then2622
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_641
# %bb.320:                              # %if.end2627
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%r15d, %eax
	movl	%eax, %r15d
.LBB1_321:                              # %do.end2639
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%r13d, %eax
	movzwl	26728(%rdi,%rax,2), %r9d
	imull	%r9d, %ecx
	addl	%r13d, %r13d
	movl	%r15d, %r11d
	subl	%ecx, %r11d
	jae	.LBB1_323
# %bb.322:                              # %do.body2652
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r9d, %r10d
	shrl	$5, %r10d
	addl	%r9d, %r10d
	jmp	.LBB1_324
.LBB1_323:                              # %do.body2672
	subl	%ecx, %ebx
	movl	%r9d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r9d
	orl	$1, %r13d
	movl	%r9d, %r10d
	movl	%ebx, %ecx
	movl	%r11d, %r15d
.LBB1_324:                              # %do.end2696
	movw	%r10w, 26728(%rdi,%rax,2)
	addl	$-238, %r13d
.LBB1_325:                              # %do.end2704
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	leal	-2(%r13), %eax
	movq	%r13, 40(%rsp)                  # 8-byte Spill
	cmpl	$6, %r13d
	movl	$3, %r9d
	cmovbl	%eax, %r9d
	shlq	$7, %r9
	leaq	(%rdi,%r9), %r11
	addq	$25440, %r11                    # imm = 0x6360
	movl	$1, %r13d
	movl	%ecx, %ebx
.LBB1_326:                              # %do.body2714
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_329
# %bb.327:                              # %if.then2718
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_603
# %bb.328:                              # %if.end2723
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_330
.LBB1_329:
	movl	%ebx, %eax
.LBB1_330:                              # %do.end2735
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_335
# %bb.331:                              # %do.body2746
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_332:                              # %do.body2785
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_336
.LBB1_333:                              # %if.then2789
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_607
# %bb.334:                              # %if.end2794
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_337
.LBB1_335:                              # %do.body2762
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_333
.LBB1_336:
	movl	%ebx, %eax
.LBB1_337:                              # %do.end2806
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_342
# %bb.338:                              # %do.body2817
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_339:                              # %do.body2856
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_343
.LBB1_340:                              # %if.then2860
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_633
# %bb.341:                              # %if.end2865
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_344
.LBB1_342:                              # %do.body2833
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_340
.LBB1_343:
	movl	%ebx, %eax
.LBB1_344:                              # %do.end2877
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_349
# %bb.345:                              # %do.body2888
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_346:                              # %do.body2927
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_350
.LBB1_347:                              # %if.then2931
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_613
# %bb.348:                              # %if.end2936
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_351
.LBB1_349:                              # %do.body2904
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_347
.LBB1_350:
	movl	%ebx, %eax
.LBB1_351:                              # %do.end2948
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_356
# %bb.352:                              # %do.body2959
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_353:                              # %do.body2998
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_357
.LBB1_354:                              # %if.then3002
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_631
# %bb.355:                              # %if.end3007
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_358
.LBB1_356:                              # %do.body2975
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_354
.LBB1_357:
	movl	%ebx, %eax
.LBB1_358:                              # %do.end3019
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	(%r11,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_363
# %bb.359:                              # %do.body3030
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%r9,2)
.LBB1_360:                              # %do.body3069
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_364
.LBB1_361:                              # %if.then3073
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_638
# %bb.362:                              # %if.end3078
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%r15d, %eax
	movl	%eax, %r15d
	jmp	.LBB1_365
.LBB1_363:                              # %do.body3046
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_361
.LBB1_364:
	movl	%ebx, %ecx
.LBB1_365:                              # %do.end3090
	movl	%ecx, %ebx
	shrl	$11, %ebx
	movl	%r13d, %eax
	movq	%r11, %rdx
	movzwl	(%r11,%rax,2), %r9d
	imull	%r9d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %r11d
	subl	%ebx, %r11d
	jae	.LBB1_367
# %bb.366:                              # %do.body3101
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r9d, %r10d
	shrl	$5, %r10d
	addl	%r9d, %r10d
	jmp	.LBB1_368
.LBB1_367:                              # %do.body3117
	subl	%ebx, %ecx
	movl	%r9d, %r10d
	shrl	$5, %r10d
	subl	%r10d, %r9d
	orl	$1, %r13d
	movl	%r9d, %r10d
	movl	%ecx, %ebx
	movl	%r11d, %r15d
.LBB1_368:                              # %do.end3137
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%rax,2)
	leal	-64(%r13), %eax
	cmpl	$4, %eax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	jae	.LBB1_370
# %bb.369:
	movl	%eax, %ebp
	movl	%eax, %r13d
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%ebp, %eax
	cmpq	%rax, 72(%rsp)                  # 8-byte Folded Reload
	ja	.LBB1_448
	jmp	.LBB1_574
.LBB1_370:                              # %if.else3142
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1, %r13d
	movl	%r13d, %ebp
	orl	$2, %ebp
	cmpl	$13, %eax
	ja	.LBB1_411
# %bb.371:                              # %if.then3149
	decl	%ecx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %ebp
	leaq	(%rdi,%rbp,2), %r11
	movl	%eax, %eax
	addq	%rax, %rax
	subq	%rax, %r11
	addq	$25950, %r11                    # imm = 0x655E
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
	movl	$1, %r13d
.LBB1_372:                              # %sw.bb3155
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leal	-1(%rcx), %eax
	cmpl	$4, %eax
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	ja	.LBB1_447
# %bb.373:                              # %sw.bb3155
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_374:                              # %do.body3158
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_377
# %bb.375:                              # %if.then3162
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_660
# %bb.376:                              # %if.end3167
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%r15d, %eax
	movl	%eax, %r15d
.LBB1_377:                              # %do.end3179
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%r13d, %eax
	movq	%r11, %rdx
	movzwl	(%r11,%rax,2), %r9d
	imull	%r9d, %ecx
	addl	%r13d, %r13d
	movl	%r15d, %r11d
	subl	%ecx, %r11d
	jae	.LBB1_543
# %bb.378:                              # %do.body3190
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r9d, %r10d
	shrl	$5, %r10d
	addl	%r9d, %r10d
	jmp	.LBB1_544
.LBB1_379:                              # %do.body5377
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 27756(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_311
.LBB1_380:
	movl	%ebx, %eax
.LBB1_381:                              # %do.end5425
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	27756(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_386
# %bb.382:                              # %do.body5438
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 27756(%rdi,%r9,2)
.LBB1_383:                              # %do.body5485
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_387
.LBB1_384:                              # %if.then5489
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_643
# %bb.385:                              # %if.end5494
	movq	%r11, %rdx
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%r15d, %eax
	movl	%eax, %r15d
	jmp	.LBB1_388
.LBB1_386:                              # %do.body5458
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 27756(%rdi,%r9,2)
	orl	$1, %r13d
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_384
.LBB1_387:
	movq	%r11, %rdx
.LBB1_388:                              # %do.end5506
	movl	%ebx, %eax
	shrl	$11, %eax
	movl	%r13d, %ecx
	movzwl	27756(%rdi,%rcx,2), %r9d
	imull	%r9d, %eax
	addl	%r13d, %r13d
	movl	%r15d, %r11d
	subl	%eax, %r11d
	jae	.LBB1_390
# %bb.389:                              # %do.body5519
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r9d, %r10d
	shrl	$5, %r10d
	addl	%r9d, %r10d
	jmp	.LBB1_391
.LBB1_390:                              # %do.body5539
	subl	%eax, %ebx
	movl	%r9d, %eax
	shrl	$5, %eax
	subl	%eax, %r9d
	orl	$1, %r13d
	movl	%r9d, %r10d
	movl	%ebx, %eax
	movl	%r11d, %r15d
.LBB1_391:                              # %do.end5563
	movq	%rdx, %r11
	movw	%r10w, 27756(%rdi,%rcx,2)
	leal	-238(%r13), %ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movl	%eax, %ebx
	jmp	.LBB1_448
.LBB1_392:                              # %do.body4685
	subl	%ebx, %ecx
	movl	%r11d, %ebx
	shrl	$5, %ebx
	subl	%ebx, %r11d
	movw	%r11w, (%r10)
	orl	$1, %r13d
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_393:                              # %do.body4716
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_394:                              # %do.body4716
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_397
# %bb.395:                              # %if.then4720
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_608
# %bb.396:                              # %if.end4725
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	movl	%r9d, %r15d
	jmp	.LBB1_398
.LBB1_397:
	movl	%r12d, %edx
	movq	%r11, %r12
	movl	%ebx, %ecx
.LBB1_398:                              # %do.end4737
	movl	%ecx, %ebx
	shrl	$11, %ebx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r11d
	leaq	(%r9,%r11,2), %r10
	addq	$27500, %r10                    # imm = 0x6B6C
	movzwl	27500(%r9,%r11,2), %r11d
	imull	%r11d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_400
# %bb.399:                              # %do.body4752
	movl	$2048, %ecx                     # imm = 0x800
	subl	%r11d, %ecx
	shrl	$5, %ecx
	addl	%r11d, %ecx
	movw	%cx, (%r10)
	jmp	.LBB1_401
.LBB1_400:                              # %do.body4776
	subl	%ebx, %ecx
	movl	%r11d, %ebx
	shrl	$5, %ebx
	subl	%ebx, %r11d
	movw	%r11w, (%r10)
	orl	$1, %r13d
	movl	%ecx, %ebx
	movl	%r9d, %r15d
.LBB1_401:                              # %do.body4807
	movq	%r12, %r11
	movl	%edx, %r12d
.LBB1_402:                              # %do.body4807
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_405
# %bb.403:                              # %if.then4811
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_590
# %bb.404:                              # %if.end4816
	movq	%r11, %rdx
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_406
.LBB1_405:
	movq	%r11, %rdx
.LBB1_406:                              # %do.end4828
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%eax, %r9d
	shlq	$4, %r9
	addq	%rdi, %r9
	movl	%r13d, %r10d
	leaq	(%r9,%r10,2), %rax
	addq	$27500, %rax                    # imm = 0x6B6C
	movzwl	27500(%r9,%r10,2), %r9d
	imull	%r9d, %ecx
	addl	%r13d, %r13d
	movl	%r15d, %r11d
	subl	%ecx, %r11d
	jae	.LBB1_408
# %bb.407:                              # %do.body4843
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r9d, %r10d
	shrl	$5, %r10d
	addl	%r9d, %r10d
	jmp	.LBB1_409
.LBB1_408:                              # %do.body4867
	subl	%ecx, %ebx
	movl	%r9d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r9d
	orl	$1, %r13d
	movl	%r9d, %r10d
	movl	%ebx, %ecx
	movl	%r11d, %r15d
.LBB1_409:                              # %do.end4895
	movq	%rdx, %r11
	movw	%r10w, (%rax)
	leal	2(%r13), %eax
.LBB1_410:                              # %sw.bb5573
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	%ecx, %ebx
	jmp	.LBB1_448
.LBB1_411:                              # %if.else3524
	addl	$-5, %ecx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%eax, %r13d
.LBB1_412:                              # %sw.bb3526
	movq	64(%rsp), %r9                   # 8-byte Reload
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	jmp	.LBB1_414
	.p2align	4, 0x90
.LBB1_413:                              # %do.end3550
                                        #   in Loop: Header=BB1_414 Depth=1
	shrl	%ebx
	movl	%r15d, %eax
	subl	%ebx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	leal	(%rcx,%rbp,2), %ebp
	incl	%ebp
	movl	%ecx, %r15d
	andl	%ebx, %r15d
	addl	%eax, %r15d
	decl	%r9d
	je	.LBB1_417
.LBB1_414:                              # %do.body3527
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_413
# %bb.415:                              # %if.then3533
                                        #   in Loop: Header=BB1_414 Depth=1
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_453
# %bb.416:                              # %if.end3538
                                        #   in Loop: Header=BB1_414 Depth=1
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%eax, %r15d
	jmp	.LBB1_413
.LBB1_417:                              # %do.end3572
	shll	$4, %ebp
	movq	$0, 64(%rsp)                    # 8-byte Folded Spill
	movl	$1, %r13d
.LBB1_418:                              # %do.body3576
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_421
# %bb.419:                              # %if.then3580
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_601
# %bb.420:                              # %if.end3585
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_422
.LBB1_421:
	movl	%ebx, %eax
.LBB1_422:                              # %do.end3597
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	26180(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_427
# %bb.423:                              # %do.body3608
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 26180(%rdi,%r9,2)
.LBB1_424:                              # %do.body3652
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_428
.LBB1_425:                              # %if.then3656
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_599
# %bb.426:                              # %if.end3661
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_429
.LBB1_427:                              # %do.body3626
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 26180(%rdi,%r9,2)
	orl	$1, %r13d
	incl	%ebp
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_425
.LBB1_428:
	movl	%ebx, %eax
.LBB1_429:                              # %do.end3673
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	26180(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_434
# %bb.430:                              # %do.body3685
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 26180(%rdi,%r9,2)
.LBB1_431:                              # %do.body3729
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_435
.LBB1_432:                              # %if.then3733
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_636
# %bb.433:                              # %if.end3738
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_436
.LBB1_434:                              # %do.body3703
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 26180(%rdi,%r9,2)
	orl	$1, %r13d
	addl	$2, %ebp
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_432
.LBB1_435:
	movl	%ebx, %eax
.LBB1_436:                              # %do.end3750
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %r9d
	movzwl	26180(%rdi,%r9,2), %r10d
	imull	%r10d, %ebx
	addl	%r13d, %r13d
	movl	%r15d, %ecx
	subl	%ebx, %ecx
	jae	.LBB1_441
# %bb.437:                              # %do.body3762
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, 26180(%rdi,%r9,2)
.LBB1_438:                              # %do.body3806
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_442
.LBB1_439:                              # %if.then3810
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_596
# %bb.440:                              # %if.end3815
	movq	%r11, %rdx
	movl	%ebx, %ecx
	shll	$8, %ecx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%r15d, %eax
	movl	%eax, %r15d
	jmp	.LBB1_443
.LBB1_441:                              # %do.body3780
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, 26180(%rdi,%r9,2)
	orl	$1, %r13d
	addl	$4, %ebp
	movl	%eax, %ebx
	movl	%ecx, %r15d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	jbe	.LBB1_439
.LBB1_442:
	movq	%r11, %rdx
	movl	%ebx, %ecx
.LBB1_443:                              # %do.end3827
	movl	%ecx, %ebx
	shrl	$11, %ebx
	movl	%r13d, %eax
	movzwl	26180(%rdi,%rax,2), %r9d
	imull	%r9d, %ebx
	movl	%r15d, %r11d
	subl	%ebx, %r11d
	jae	.LBB1_445
# %bb.444:                              # %do.body3839
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r9d, %r10d
	shrl	$5, %r10d
	addl	%r9d, %r10d
	jmp	.LBB1_446
.LBB1_445:                              # %do.body3856
	subl	%ebx, %ecx
	movl	%r9d, %r10d
	shrl	$5, %r10d
	subl	%r10d, %r9d
	addl	$8, %ebp
	movl	%r9d, %r10d
	movl	%ecx, %ebx
	movl	%r11d, %r15d
.LBB1_446:                              # %do.end3877
	movw	%r10w, 26180(%rdi,%rax,2)
	cmpl	$-1, %ebp
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, %r11
	je	.LBB1_580
.LBB1_447:                              # %if.end3911
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%ebp, %eax
	cmpq	%rax, 72(%rsp)                  # 8-byte Folded Reload
	jbe	.LBB1_574
.LBB1_448:                              # %sw.bb5573
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%rbp, %rcx
	movq	112(%rsp), %rbp                 # 8-byte Reload
	movq	40(%rsp), %r9                   # 8-byte Reload
	movq	56(%rsp), %r12                  # 8-byte Reload
	subq	%r12, %rbp
	movl	%r9d, %eax
	cmpq	%rax, %rbp
	cmovael	%r9d, %ebp
	subl	%ebp, %r9d
	movl	%ecx, %r13d
	cmpl	%ecx, %ebp
	jbe	.LBB1_451
# %bb.449:                              # %do.body.preheader.i
	movq	%r8, 120(%rsp)                  # 8-byte Spill
	movq	%r9, 40(%rsp)                   # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%r13, %rax
	notq	%rax
	testb	$1, %bpl
	jne	.LBB1_466
# %bb.450:
	movq	%r11, %rdx
	movl	%ebp, %ecx
	jmp	.LBB1_467
.LBB1_451:                              # %if.else.i
	movq	%r9, 40(%rsp)                   # 8-byte Spill
	movq	%r11, 136(%rsp)                 # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	cmpq	%r13, %r12
	movq	%r8, 120(%rsp)                  # 8-byte Spill
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
	jbe	.LBB1_470
# %bb.452:                              # %if.then15.i
	movq	96(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r12), %rdi
	notq	%r13
	addq	%rdi, %r13
	movl	%ebp, %ebp
	movq	%r13, %rsi
	jmp	.LBB1_472
.LBB1_453:                              # %if.then3536
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$43, 28320(%rdi)
.LBB1_454:                              # %out
	xorl	%ecx, %ecx
	movb	$1, %dl
.LBB1_455:                              # %out
	xorl	%eax, %eax
.LBB1_456:                              # %out
	movl	(%rsp), %ebp                    # 4-byte Reload
.LBB1_457:                              # %out
	movq	8(%rsp), %r11                   # 8-byte Reload
.LBB1_458:                              # %out
	movq	56(%rsp), %r9                   # 8-byte Reload
	movq	184(%rsp), %rsi                 # 8-byte Reload
	movq	%r9, 8(%rsi)
	movq	72(%rsp), %r10                  # 8-byte Reload
	movq	%r10, 16(%rsi)
	movl	%ebx, 28268(%rdi)
	movl	%r15d, 28272(%rdi)
	movl	$0, 28276(%rdi)
	movq	176(%rsp), %rsi                 # 8-byte Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	%r8, (%rsi)
	movl	4(%rsp), %esi                   # 4-byte Reload
	movl	%esi, 28280(%rdi)
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%esi, 28284(%rdi)
	movl	52(%rsp), %esi                  # 4-byte Reload
	movl	%esi, 28288(%rdi)
	movl	%ebp, 28292(%rdi)
	movl	92(%rsp), %esi                  # 4-byte Reload
	movl	%esi, 28296(%rdi)
	movq	%r12, 28328(%rdi)
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	%esi, 28336(%rdi)
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movl	%esi, 28340(%rdi)
	movl	%r11d, 28344(%rdi)
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	%esi, 28348(%rdi)
	movq	28312(%rdi), %rsi
	cmpq	$-1, %rsi
	je	.LBB1_463
# %bb.459:                              # %if.then5622
	movq	168(%rsp), %r8                  # 8-byte Reload
	subq	%r9, %r8
	addq	%r8, %rsi
	movq	%rsi, 28312(%rdi)
	setne	%sil
	xorb	$1, %dl
	orb	%sil, %dl
	jne	.LBB1_463
# %bb.460:                              # %land.lhs.true5633
	movl	28320(%rdi), %eax
	testl	%eax, %eax
	je	.LBB1_465
# %bb.461:                              # %land.lhs.true5633
	cmpl	$1, %eax
	je	.LBB1_464
# %bb.462:                              # %cleanup.fold.split
	movl	$9, %eax
	jmp	.LBB1_465
.LBB1_463:                              # %if.end5643
	testb	%cl, %cl
	je	.LBB1_465
.LBB1_464:                              # %if.then5646
	xorl	%eax, %eax
	testl	%r15d, %r15d
	setne	%al
	leal	1(,%rax,8), %eax
	movl	$4294967295, %ecx               # imm = 0xFFFFFFFF
	movq	%rcx, 28268(%rdi)
	movl	$5, 28276(%rdi)
.LBB1_465:                              # %cleanup
	addq	$200, %rsp
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
.LBB1_466:                              # %do.body.i.prol
	.cfi_def_cfa_offset 256
	xorl	%ecx, %ecx
	movq	%rsi, %rdx
	movq	56(%rsp), %rsi                  # 8-byte Reload
	cmpq	%r13, %rsi
	cmovbeq	%rdx, %rcx
	movq	96(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rsi), %r9
	addq	%rax, %r9
	movzbl	(%rcx,%r9), %ecx
	movb	%cl, (%r8,%rsi)
	incq	%rsi
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	movq	%r11, %rdx
	leal	-1(%rbp), %ecx
.LBB1_467:                              # %do.body.i.prol.loopexit
	cmpl	$1, %ebp
	movq	56(%rsp), %r12                  # 8-byte Reload
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	80(%rsp), %r8                   # 8-byte Reload
	je	.LBB1_541
# %bb.468:                              # %do.body.i.preheader
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB1_469:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r13, %r12
	movq	%r8, %r10
	cmovaq	%r9, %r10
	leaq	(%rsi,%r12), %r11
	addq	%rax, %r11
	leaq	1(%r12), %rbp
	cmpq	%r13, %rbp
	movq	%r8, %rbp
	cmovaq	%r9, %rbp
	movzbl	(%r10,%r11), %r10d
	movb	%r10b, (%rsi,%r12)
	leaq	(%rsi,%r12), %r10
	incq	%r10
	addq	%rax, %r10
	movzbl	(%rbp,%r10), %r10d
	movb	%r10b, 1(%rsi,%r12)
	addq	$2, %r12
	addl	$-2, %ecx
	jne	.LBB1_469
	jmp	.LBB1_541
.LBB1_470:                              # %if.else26.i
	notl	%r13d
	addl	%r12d, %r13d
	addl	%r13d, %esi
	movl	%r13d, %eax
	negl	%eax
	movq	96(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%r12), %rdi
	addq	%rcx, %rsi
	cmpl	%eax, %ebp
	jbe	.LBB1_539
# %bb.471:                              # %if.then39.i
	movl	%eax, %edx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	callq	memmove@PLT
	addq	128(%rsp), %r12                 # 8-byte Folded Reload
	addl	%r13d, %ebp
	movq	96(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rsi,%r12), %rdi
.LBB1_472:                              # %if.end71.sink.split.i
	movq	%rbp, %rdx
	callq	memcpy@PLT
	jmp	.LBB1_540
.LBB1_473:                              # %if.else666
	movl	%ebp, %ecx
	xorl	%r9d, %r9d
	cmpq	%rcx, %r11
	cmovbeq	%rsi, %r9
	notq	%rcx
	addq	%rcx, %rax
	movzbl	(%r9,%rax), %eax
	addl	%eax, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	$256, %eax                      # imm = 0x100
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	$1, %r13d
	movq	%rdx, %r11
.LBB1_474:                              # %sw.bb670
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%ecx, %eax
	movq	40(%rsp), %rsi                  # 8-byte Reload
	andl	%esi, %eax
	leal	(%rcx,%r13), %r9d
	addl	%eax, %r9d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_477
# %bb.475:                              # %if.then679
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_629
# %bb.476:                              # %if.end684
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
.LBB1_477:                              # %do.end696
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%r9d, %r9d
	movq	%r11, %rdx
	movzwl	(%r11,%r9,2), %r11d
	imull	%r11d, %ecx
	addl	%r13d, %r13d
	movl	%r15d, %ebp
	subl	%ecx, %ebp
	jae	.LBB1_479
# %bb.478:                              # %do.body707
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r11d, %r10d
	shrl	$5, %r10d
	addl	%r11d, %r10d
	xorl	8(%rsp), %eax                   # 4-byte Folded Reload
	jmp	.LBB1_480
.LBB1_479:                              # %do.body724
	subl	%ecx, %ebx
	movl	%r11d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r11d
	orl	$1, %r13d
	movl	%r11d, %r10d
	movl	%ebx, %ecx
	movl	%ebp, %r15d
.LBB1_480:                              # %do.end745
	movq	24(%rsp), %rbp                  # 8-byte Reload
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%r9,2)
	addl	%esi, %esi
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%ecx, %ebx
.LBB1_481:                              # %sw.bb747
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%ecx, %eax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	andl	%edx, %eax
	leal	(%rcx,%r13), %r9d
	addl	%eax, %r9d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r11, %r12
	ja	.LBB1_484
# %bb.482:                              # %if.then756
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_611
# %bb.483:                              # %if.end761
	movq	%rbp, %rsi
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_485
.LBB1_484:
	movq	%rbp, %rsi
.LBB1_485:                              # %do.end773
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%r9d, %r9d
	movzwl	(%r12,%r9,2), %r11d
	imull	%r11d, %ecx
	movq	16(%rsp), %r13                  # 8-byte Reload
	addl	%r13d, %r13d
	movl	%r15d, %ebp
	subl	%ecx, %ebp
	jae	.LBB1_487
# %bb.486:                              # %do.body784
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r11d, %r10d
	shrl	$5, %r10d
	addl	%r11d, %r10d
	xorl	8(%rsp), %eax                   # 4-byte Folded Reload
	jmp	.LBB1_488
.LBB1_487:                              # %do.body802
	subl	%ecx, %ebx
	movl	%r11d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r11d
	orl	$1, %r13d
	movl	%r11d, %r10d
	movl	%ebx, %ecx
	movl	%ebp, %r15d
.LBB1_488:                              # %do.end823
	movq	%rsi, %rbp
	movq	%r12, %r11
	movw	%r10w, (%r12,%r9,2)
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addl	%edx, %edx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%ecx, %ebx
	movl	4(%rsp), %r12d                  # 4-byte Reload
.LBB1_489:                              # %sw.bb825
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%ecx, %eax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	andl	%edx, %eax
	leal	(%rcx,%rax), %r9d
	addl	%r13d, %r9d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r11, %r12
	ja	.LBB1_492
# %bb.490:                              # %if.then834
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_606
# %bb.491:                              # %if.end839
	movq	%rbp, %rsi
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_493
.LBB1_492:
	movq	%rbp, %rsi
.LBB1_493:                              # %do.end851
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%r9d, %r9d
	movzwl	(%r12,%r9,2), %r11d
	imull	%r11d, %ecx
	movq	16(%rsp), %r13                  # 8-byte Reload
	addl	%r13d, %r13d
	movl	%r15d, %ebp
	subl	%ecx, %ebp
	jae	.LBB1_495
# %bb.494:                              # %do.body862
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r11d, %r10d
	shrl	$5, %r10d
	addl	%r11d, %r10d
	xorl	8(%rsp), %eax                   # 4-byte Folded Reload
	jmp	.LBB1_496
.LBB1_495:                              # %do.body880
	subl	%ecx, %ebx
	movl	%r11d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r11d
	orl	$1, %r13d
	movl	%r11d, %r10d
	movl	%ebx, %ecx
	movl	%ebp, %r15d
.LBB1_496:                              # %do.end901
	movq	%rsi, %rbp
	movq	%r12, %r11
	movw	%r10w, (%r12,%r9,2)
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addl	%edx, %edx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%ecx, %ebx
	movl	4(%rsp), %r12d                  # 4-byte Reload
.LBB1_497:                              # %sw.bb903
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%ecx, %eax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	andl	%edx, %eax
	leal	(%rcx,%r13), %r9d
	addl	%eax, %r9d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r11, %r12
	ja	.LBB1_500
# %bb.498:                              # %if.then912
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_626
# %bb.499:                              # %if.end917
	movq	%rbp, %rsi
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_501
.LBB1_500:
	movq	%rbp, %rsi
.LBB1_501:                              # %do.end929
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%r9d, %r9d
	movzwl	(%r12,%r9,2), %r11d
	imull	%r11d, %ecx
	movq	16(%rsp), %r13                  # 8-byte Reload
	addl	%r13d, %r13d
	movl	%r15d, %ebp
	subl	%ecx, %ebp
	jae	.LBB1_503
# %bb.502:                              # %do.body940
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r11d, %r10d
	shrl	$5, %r10d
	addl	%r11d, %r10d
	xorl	8(%rsp), %eax                   # 4-byte Folded Reload
	jmp	.LBB1_504
.LBB1_503:                              # %do.body958
	subl	%ecx, %ebx
	movl	%r11d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r11d
	orl	$1, %r13d
	movl	%r11d, %r10d
	movl	%ebx, %ecx
	movl	%ebp, %r15d
.LBB1_504:                              # %do.end979
	movq	%rsi, %rbp
	movq	%r12, %r11
	movw	%r10w, (%r12,%r9,2)
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addl	%edx, %edx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%ecx, %ebx
	movl	4(%rsp), %r12d                  # 4-byte Reload
.LBB1_505:                              # %sw.bb981
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%ecx, %eax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	andl	%edx, %eax
	leal	(%rcx,%r13), %r9d
	addl	%eax, %r9d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r11, %r12
	ja	.LBB1_508
# %bb.506:                              # %if.then990
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_609
# %bb.507:                              # %if.end995
	movq	%rbp, %rsi
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_509
.LBB1_508:
	movq	%rbp, %rsi
.LBB1_509:                              # %do.end1007
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%r9d, %r9d
	movzwl	(%r12,%r9,2), %r11d
	imull	%r11d, %ecx
	movq	16(%rsp), %r13                  # 8-byte Reload
	addl	%r13d, %r13d
	movl	%r15d, %ebp
	subl	%ecx, %ebp
	jae	.LBB1_511
# %bb.510:                              # %do.body1018
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r11d, %r10d
	shrl	$5, %r10d
	addl	%r11d, %r10d
	xorl	8(%rsp), %eax                   # 4-byte Folded Reload
	jmp	.LBB1_512
.LBB1_511:                              # %do.body1036
	subl	%ecx, %ebx
	movl	%r11d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r11d
	orl	$1, %r13d
	movl	%r11d, %r10d
	movl	%ebx, %ecx
	movl	%ebp, %r15d
.LBB1_512:                              # %do.end1057
	movq	%rsi, %rbp
	movq	%r12, %r11
	movw	%r10w, (%r12,%r9,2)
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addl	%edx, %edx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%ecx, %ebx
	movl	4(%rsp), %r12d                  # 4-byte Reload
.LBB1_513:                              # %sw.bb1059
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%ecx, %eax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	andl	%edx, %eax
	leal	(%rcx,%r13), %r9d
	addl	%eax, %r9d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r11, %r12
	ja	.LBB1_516
# %bb.514:                              # %if.then1068
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_605
# %bb.515:                              # %if.end1073
	movq	%rbp, %rsi
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_517
.LBB1_516:
	movq	%rbp, %rsi
.LBB1_517:                              # %do.end1085
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%r9d, %r9d
	movzwl	(%r12,%r9,2), %r11d
	imull	%r11d, %ecx
	movq	16(%rsp), %r13                  # 8-byte Reload
	addl	%r13d, %r13d
	movl	%r15d, %ebp
	subl	%ecx, %ebp
	jae	.LBB1_519
# %bb.518:                              # %do.body1096
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r11d, %r10d
	shrl	$5, %r10d
	addl	%r11d, %r10d
	xorl	8(%rsp), %eax                   # 4-byte Folded Reload
	jmp	.LBB1_520
.LBB1_519:                              # %do.body1114
	subl	%ecx, %ebx
	movl	%r11d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r11d
	orl	$1, %r13d
	movl	%r11d, %r10d
	movl	%ebx, %ecx
	movl	%ebp, %r15d
.LBB1_520:                              # %do.end1135
	movq	%rsi, %rbp
	movq	%r12, %r11
	movw	%r10w, (%r12,%r9,2)
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addl	%edx, %edx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%ecx, %ebx
	movl	4(%rsp), %r12d                  # 4-byte Reload
.LBB1_521:                              # %sw.bb1137
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%ecx, %eax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	andl	%edx, %eax
	leal	(%rcx,%r13), %r9d
	addl	%eax, %r9d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r11, %r12
	ja	.LBB1_524
# %bb.522:                              # %if.then1146
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_622
# %bb.523:                              # %if.end1151
	movq	%rbp, %rsi
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_525
.LBB1_524:
	movq	%rbp, %rsi
.LBB1_525:                              # %do.end1163
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%r9d, %r9d
	movzwl	(%r12,%r9,2), %r11d
	imull	%r11d, %ecx
	movq	16(%rsp), %r13                  # 8-byte Reload
	addl	%r13d, %r13d
	movl	%r15d, %ebp
	subl	%ecx, %ebp
	jae	.LBB1_527
# %bb.526:                              # %do.body1174
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r11d, %r10d
	shrl	$5, %r10d
	addl	%r11d, %r10d
	xorl	8(%rsp), %eax                   # 4-byte Folded Reload
	jmp	.LBB1_528
.LBB1_527:                              # %do.body1192
	subl	%ecx, %ebx
	movl	%r11d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r11d
	orl	$1, %r13d
	movl	%r11d, %r10d
	movl	%ebx, %ecx
	movl	%ebp, %r15d
.LBB1_528:                              # %do.end1213
	movq	%rsi, %rbp
	movq	%r12, %r11
	movw	%r10w, (%r12,%r9,2)
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addl	%edx, %edx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%ecx, %ebx
	movl	4(%rsp), %r12d                  # 4-byte Reload
	movq	80(%rsp), %rsi                  # 8-byte Reload
.LBB1_529:                              # %sw.bb1215
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	%eax, %ecx
	andl	40(%rsp), %ecx                  # 4-byte Folded Reload
	leal	(%rax,%r13), %r9d
	addl	%ecx, %r9d
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_532
# %bb.530:                              # %if.then1224
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_621
# %bb.531:                              # %if.end1229
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%r15d, %eax
	movl	%eax, %r15d
.LBB1_532:                              # %do.end1241
	movl	%ebx, %eax
	shrl	$11, %eax
	movl	%r9d, %r10d
	movq	%r11, %rdx
	movzwl	(%r11,%r10,2), %r11d
	imull	%r11d, %eax
	addl	%r13d, %r13d
	movl	%r15d, %r9d
	subl	%eax, %r9d
	jae	.LBB1_534
# %bb.533:                              # %do.body1252
	movl	$2048, %r9d                     # imm = 0x800
	subl	%r11d, %r9d
	shrl	$5, %r9d
	addl	%r11d, %r9d
	movw	%r9w, (%rdx,%r10,2)
	xorl	8(%rsp), %ecx                   # 4-byte Folded Reload
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB1_535
.LBB1_534:                              # %do.body1270
	subl	%eax, %ebx
	movl	%r11d, %eax
	shrl	$5, %eax
	subl	%eax, %r11d
	movw	%r11w, (%rdx,%r10,2)
	orl	$1, %r13d
	movl	%ecx, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%ebx, %eax
	movl	%r9d, %r15d
.LBB1_535:                              # %if.end1292
	movq	%rdx, %r11
.LBB1_536:                              # %if.end1292
	movl	%r12d, %ecx
	movl	lzma_decode.next_state(,%rcx,4), %r12d
	movl	%eax, %ebx
.LBB1_537:                              # %sw.bb1295
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB1_577
# %bb.538:                              # %if.end.i7847
	movq	96(%rsp), %rax                  # 8-byte Reload
	movb	%r13b, (%rax,%rcx)
	incq	%rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	%rax, %rcx
	cmovaq	%rcx, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movl	108(%rsp), %eax                 # 4-byte Reload
	jmp	.LBB1_15
.LBB1_539:                              # %if.else59.i
	movl	%ebp, %ebp
	movq	%rbp, %rdx
	callq	memmove@PLT
.LBB1_540:                              # %if.end71.sink.split.i
	addq	%rbp, %r12
	movq	144(%rsp), %rdi                 # 8-byte Reload
	movq	136(%rsp), %rdx                 # 8-byte Reload
.LBB1_541:                              # %if.end71.i
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpq	%r12, %rax
	cmovbeq	%r12, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	testl	%eax, %eax
	movq	%r12, %rcx
	jne	.LBB1_575
# %bb.542:
	movq	$0, 40(%rsp)                    # 8-byte Folded Spill
	movl	4(%rsp), %r12d                  # 4-byte Reload
	movq	24(%rsp), %rbp                  # 8-byte Reload
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	120(%rsp), %r8                  # 8-byte Reload
	movl	108(%rsp), %eax                 # 4-byte Reload
	movq	%rdx, %r11
	jmp	.LBB1_15
.LBB1_543:                              # %do.body3206
	subl	%ecx, %ebx
	movl	%r9d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r9d
	orl	$1, %r13d
	incl	%ebp
	movl	%r9d, %r10d
	movl	%ebx, %ecx
	movl	%r11d, %r15d
.LBB1_544:                              # %do.end3227
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%rax,2)
	movq	8(%rsp), %rax                   # 8-byte Reload
	incl	%eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%ecx, %ebx
.LBB1_545:                              # %do.body3231
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_548
# %bb.546:                              # %if.then3235
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_659
# %bb.547:                              # %if.end3240
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%r15d, %eax
	movl	%eax, %r15d
.LBB1_548:                              # %do.end3252
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	%r13d, %eax
	movzwl	(%r11,%rax,2), %r9d
	imull	%r9d, %ecx
	addl	%r13d, %r13d
	movl	%r15d, %r10d
	subl	%ecx, %r10d
	jae	.LBB1_550
# %bb.549:                              # %do.body3263
	movq	%r11, %rdx
	movl	$2048, %r11d                    # imm = 0x800
	subl	%r9d, %r11d
	shrl	$5, %r11d
	addl	%r9d, %r11d
	movq	8(%rsp), %r12                   # 8-byte Reload
	jmp	.LBB1_551
.LBB1_550:                              # %do.body3279
	subl	%ecx, %ebx
	movl	%r9d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r9d
	orl	$1, %r13d
	movq	%rbp, %rsi
	movl	$1, %ebp
	movq	8(%rsp), %r12                   # 8-byte Reload
	movl	%r12d, %ecx
	shll	%cl, %ebp
	addl	%esi, %ebp
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	%r11, %rdx
	movl	%r9d, %r11d
                                        # kill: def $ebp killed $ebp def $rbp
	movl	%ebx, %ecx
	movl	%r10d, %r15d
.LBB1_551:                              # %do.end3301
	movw	%r11w, (%rdx,%rax,2)
	incl	%r12d
	movq	%r12, 8(%rsp)                   # 8-byte Spill
	movl	%ecx, %ebx
	movq	%rdx, %r11
.LBB1_552:                              # %do.body3306
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_555
# %bb.553:                              # %if.then3310
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_658
# %bb.554:                              # %if.end3315
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%r15d, %eax
	movl	%eax, %r15d
.LBB1_555:                              # %do.end3327
	movl	%ebx, %r12d
	shrl	$11, %r12d
	movl	%r13d, %eax
	movzwl	(%r11,%rax,2), %r9d
	imull	%r9d, %r12d
	addl	%r13d, %r13d
	movl	%r15d, %r10d
	subl	%r12d, %r10d
	jae	.LBB1_557
# %bb.556:                              # %do.body3338
	movq	%r11, %rdx
	movl	$2048, %r11d                    # imm = 0x800
	subl	%r9d, %r11d
	shrl	$5, %r11d
	addl	%r9d, %r11d
	movq	8(%rsp), %rcx                   # 8-byte Reload
	jmp	.LBB1_558
.LBB1_557:                              # %do.body3354
	subl	%r12d, %ebx
	movl	%r9d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r9d
	orl	$1, %r13d
	movq	%rbp, %rsi
	movl	$1, %ebp
	movq	8(%rsp), %rcx                   # 8-byte Reload
	shll	%cl, %ebp
	addl	%esi, %ebp
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	%r11, %rdx
	movl	%r9d, %r11d
                                        # kill: def $ebp killed $ebp def $rbp
	movl	%ebx, %r12d
	movl	%r10d, %r15d
.LBB1_558:                              # %do.end3376
	movw	%r11w, (%rdx,%rax,2)
	incl	%ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movl	%r12d, %ebx
	movq	%rdx, %r11
.LBB1_559:                              # %do.body3381
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_562
# %bb.560:                              # %if.then3385
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_656
# %bb.561:                              # %if.end3390
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %eax
	incq	%r14
	orl	%r15d, %eax
	movl	%eax, %r15d
.LBB1_562:                              # %do.end3402
	movl	%ebx, %r12d
	shrl	$11, %r12d
	movl	%r13d, %eax
	movzwl	(%r11,%rax,2), %r9d
	imull	%r9d, %r12d
	addl	%r13d, %r13d
	movl	%r15d, %r10d
	subl	%r12d, %r10d
	jae	.LBB1_564
# %bb.563:                              # %do.body3413
	movq	%r11, %rdx
	movl	$2048, %r11d                    # imm = 0x800
	subl	%r9d, %r11d
	shrl	$5, %r11d
	addl	%r9d, %r11d
	movq	8(%rsp), %rcx                   # 8-byte Reload
	jmp	.LBB1_565
.LBB1_564:                              # %do.body3429
	subl	%r12d, %ebx
	movl	%r9d, %ecx
	shrl	$5, %ecx
	subl	%ecx, %r9d
	orl	$1, %r13d
	movq	%rbp, %rsi
	movl	$1, %ebp
	movq	8(%rsp), %rcx                   # 8-byte Reload
	shll	%cl, %ebp
	addl	%esi, %ebp
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	%r11, %rdx
	movl	%r9d, %r11d
                                        # kill: def $ebp killed $ebp def $rbp
	movl	%ebx, %r12d
	movl	%r10d, %r15d
.LBB1_565:                              # %do.end3451
	movw	%r11w, (%rdx,%rax,2)
	incl	%ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movl	%r12d, %ebx
	movq	%rdx, %r11
	movl	4(%rsp), %r12d                  # 4-byte Reload
.LBB1_566:                              # %do.body3456
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	ja	.LBB1_569
# %bb.567:                              # %if.then3460
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB1_655
# %bb.568:                              # %if.end3465
	movl	%ebx, %eax
	shll	$8, %eax
	shll	$8, %r15d
	movzbl	(%r8,%r14), %ecx
	incq	%r14
	orl	%r15d, %ecx
	movl	%ecx, %r15d
	jmp	.LBB1_570
.LBB1_569:
	movl	%ebx, %eax
.LBB1_570:                              # %do.end3477
	movl	%eax, %ebx
	shrl	$11, %ebx
	movl	%r13d, %ecx
	movzwl	(%r11,%rcx,2), %r10d
	imull	%r10d, %ebx
	movl	%r15d, %r9d
	subl	%ebx, %r9d
	jae	.LBB1_572
# %bb.571:                              # %do.body3488
	movl	$2048, %eax                     # imm = 0x800
	subl	%r10d, %eax
	shrl	$5, %eax
	addl	%r10d, %eax
	movw	%ax, (%r11,%rcx,2)
	jmp	.LBB1_573
.LBB1_572:                              # %do.body3503
	subl	%ebx, %eax
	movq	%r11, %rdx
	movl	%r10d, %r11d
	shrl	$5, %r11d
	subl	%r11d, %r10d
	movq	%rdx, %r11
	movw	%r10w, (%rdx,%rcx,2)
	movl	$1, %r10d
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %r10d
	addl	%ebp, %r10d
	movl	%r10d, %ebp
	movl	%eax, %ebx
	movl	%r9d, %r15d
.LBB1_573:                              # %if.end3911
	movl	$1, %ecx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%ebp, %eax
	cmpq	%rax, 72(%rsp)                  # 8-byte Folded Reload
	ja	.LBB1_448
.LBB1_574:
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB1_582
.LBB1_575:                              # %if.then5575
	movq	%rdx, %r12
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movl	$70, 28320(%rdi)
	xorl	%ecx, %ecx
	movb	$1, %dl
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB1_455
.LBB1_576:
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	112(%rsp), %rsi                 # 8-byte Reload
	jmp	.LBB1_9
.LBB1_577:                              # %if.then1298
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$18, 28320(%rdi)
	xorl	%ecx, %ecx
	movb	$1, %dl
	jmp	.LBB1_579
.LBB1_578:                              # %if.then4048
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$50, 28320(%rdi)
	xorl	%ecx, %ecx
	movb	$1, %dl
	movq	112(%rsp), %rax                 # 8-byte Reload
.LBB1_579:                              # %out
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB1_455
.LBB1_580:                              # %if.then3880
	movl	$-1, %ebp
	cmpq	$-1, 28312(%rdi)
	je	.LBB1_583
# %bb.581:
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movl	$-1, %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
.LBB1_582:                              # %out
	movl	$9, %eax
	xorl	%edx, %edx
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB1_456
.LBB1_583:                              # %do.body3887
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movl	$1, %eax
	movb	$1, %cl
	cmpl	$16777215, %ebx                 # imm = 0xFFFFFF
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	ja	.LBB1_589
# %bb.584:                              # %if.then3891
	cmpq	32(%rsp), %r14                  # 8-byte Folded Reload
	movq	8(%rsp), %r11                   # 8-byte Reload
	jne	.LBB1_657
# %bb.585:                              # %if.then3894
	movl	$48, 28320(%rdi)
.LBB1_586:                              # %out
	xorl	%ecx, %ecx
	movb	$1, %dl
.LBB1_587:                              # %out
	xorl	%eax, %eax
.LBB1_588:                              # %out
	movl	(%rsp), %ebp                    # 4-byte Reload
	jmp	.LBB1_458
.LBB1_589:
	xorl	%edx, %edx
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB1_456
.LBB1_590:                              # %if.then4814
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$61, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_591:                              # %if.then5330
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$67, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_592:                              # %if.then4384
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$56, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_593:                              # %if.then3995
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$51, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_594:                              # %if.then2463
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$33, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_595:                              # %if.then5168
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$65, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_596:                              # %if.then3813
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$47, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_597:                              # %if.then4584
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$58, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_598:                              # %if.then4246
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$54, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_599:                              # %if.then3659
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$45, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_600:                              # %if.then2139
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$29, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_601:                              # %if.then3583
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$44, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_602:                              # %if.then2382
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$32, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_603:                              # %if.then2721
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$36, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_604:                              # %if.then1720
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$24, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_605:                              # %if.then1071
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$15, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_606:                              # %if.then837
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$12, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_607:                              # %if.then2792
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$37, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_608:                              # %if.then4723
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$60, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_609:                              # %if.then993
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$14, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_610:                              # %if.then5087
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$64, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_611:                              # %if.then759
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$11, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_612:                              # %if.then1332
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movl	$19, 28320(%rdi)
	xorl	%ecx, %ecx
	movb	$1, %dl
	movl	(%rsp), %eax                    # 4-byte Reload
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	movl	%r9d, %ebp
	xorl	%eax, %eax
	jmp	.LBB1_457
.LBB1_613:                              # %if.then2934
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$39, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_614:                              # %if.then1857
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$26, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_615:                              # %if.then4169
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$53, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_616:                              # %if.then462
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$7, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_617:                              # %if.then533
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$8, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_618:                              # %if.then249
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$4, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_619:                              # %if.then4632
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$59, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_620:                              # %if.then320
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$5, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_621:                              # %if.then1227
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$17, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_622:                              # %if.then1149
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$16, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_623:                              # %if.then391
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$6, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_624:                              # %if.then604
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$9, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_625:                              # %if.then108
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$2, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_626:                              # %if.then915
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$13, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_627:                              # %if.then178
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$3, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_628:                              # %if.then1520
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$22, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_629:                              # %if.then682
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movl	$10, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_630:                              # %if.then5006
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$63, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_631:                              # %if.then3005
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$40, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_632:                              # %if.then1430
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$21, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_633:                              # %if.then2863
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$38, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_634:                              # %if.then1767
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$25, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_635:                              # %if.then1384
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$20, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_636:                              # %if.then3736
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$46, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_637:                              # %if.then1611
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$23, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_638:                              # %if.then3076
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$41, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_639:                              # %if.then3946
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$49, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_640:                              # %if.then4475
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$57, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_641:                              # %if.then2625
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$35, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_642:                              # %if.then1948
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$27, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_643:                              # %if.then5492
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$69, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_644:                              # %if.then4293
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$55, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_645:                              # %if.then2544
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$34, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_646:                              # %if.then2220
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$30, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_647:                              # %if.then2059
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$28, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_648:                              # %if.then2301
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$31, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_649:                              # %if.then4925
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$62, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_650:                              # %if.then4101
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$52, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_651:                              # %if.then5411
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$68, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_652:                              # %if.then5249
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$66, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_653:
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, %r12
	movl	$9, %eax
	movq	$0, 72(%rsp)                    # 8-byte Folded Spill
	movl	(%rsp), %ecx                    # 4-byte Reload
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movl	%r9d, %ebp
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%r10d, %ebx
	movl	%r11d, %r15d
	jmp	.LBB1_457
.LBB1_654:                              # %if.then48
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$1, 28320(%rdi)
	jmp	.LBB1_454
.LBB1_655:                              # %if.then3463
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$42, 28320(%rdi)
	xorl	%ecx, %ecx
	movb	$1, %dl
	movl	$1, %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB1_455
.LBB1_656:                              # %if.then3388
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$42, 28320(%rdi)
	xorl	%ecx, %ecx
	movb	$1, %dl
	movl	$2, %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB1_455
.LBB1_657:                              # %if.end3896
	shll	$8, %ebx
	shll	$8, %r15d
	movzbl	(%r8,%r14), %r9d
	incq	%r14
	orl	%r15d, %r9d
	xorl	%edx, %edx
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movl	%r9d, %r15d
	jmp	.LBB1_588
.LBB1_658:                              # %if.then3313
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$42, 28320(%rdi)
	xorl	%ecx, %ecx
	movb	$1, %dl
	movl	$3, %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB1_455
.LBB1_659:                              # %if.then3238
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$42, 28320(%rdi)
	xorl	%ecx, %ecx
	movb	$1, %dl
	movl	$4, %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB1_455
.LBB1_660:                              # %if.then3165
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r11, %r12
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movl	$42, 28320(%rdi)
	xorl	%ecx, %ecx
	movb	$1, %dl
	movl	$5, %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB1_455
.Lfunc_end1:
	.size	lzma_decode, .Lfunc_end1-lzma_decode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_16
	.quad	.LBB1_16
	.quad	.LBB1_25
	.quad	.LBB1_31
	.quad	.LBB1_38
	.quad	.LBB1_45
	.quad	.LBB1_52
	.quad	.LBB1_59
	.quad	.LBB1_66
	.quad	.LBB1_73
	.quad	.LBB1_474
	.quad	.LBB1_481
	.quad	.LBB1_489
	.quad	.LBB1_497
	.quad	.LBB1_505
	.quad	.LBB1_513
	.quad	.LBB1_521
	.quad	.LBB1_529
	.quad	.LBB1_537
	.quad	.LBB1_81
	.quad	.LBB1_87
	.quad	.LBB1_93
	.quad	.LBB1_195
	.quad	.LBB1_203
	.quad	.LBB1_211
	.quad	.LBB1_217
	.quad	.LBB1_225
	.quad	.LBB1_233
	.quad	.LBB1_239
	.quad	.LBB1_245
	.quad	.LBB1_252
	.quad	.LBB1_261
	.quad	.LBB1_268
	.quad	.LBB1_275
	.quad	.LBB1_282
	.quad	.LBB1_317
	.quad	.LBB1_326
	.quad	.LBB1_332
	.quad	.LBB1_339
	.quad	.LBB1_346
	.quad	.LBB1_353
	.quad	.LBB1_360
	.quad	.LBB1_372
	.quad	.LBB1_412
	.quad	.LBB1_418
	.quad	.LBB1_424
	.quad	.LBB1_431
	.quad	.LBB1_438
	.quad	.LBB1_583
	.quad	.LBB1_101
	.quad	.LBB1_113
	.quad	.LBB1_107
	.quad	.LBB1_116
	.quad	.LBB1_124
	.quad	.LBB1_133
	.quad	.LBB1_139
	.quad	.LBB1_147
	.quad	.LBB1_155
	.quad	.LBB1_164
	.quad	.LBB1_170
	.quad	.LBB1_394
	.quad	.LBB1_402
	.quad	.LBB1_177
	.quad	.LBB1_183
	.quad	.LBB1_190
	.quad	.LBB1_289
	.quad	.LBB1_296
	.quad	.LBB1_303
	.quad	.LBB1_310
	.quad	.LBB1_383
	.quad	.LBB1_448
.LJTI1_1:
	.quad	.LBB1_566
	.quad	.LBB1_559
	.quad	.LBB1_552
	.quad	.LBB1_545
	.quad	.LBB1_374
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_decoder_reset
.LCPI2_0:
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.short	1024                            # 0x400
	.text
	.p2align	4, 0x90
	.type	lzma_decoder_reset,@function
lzma_decoder_reset:                     # @lzma_decoder_reset
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	28(%rsi), %ecx
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	movl	%eax, 28300(%rdi)
	movl	24(%rsi), %ecx
	addl	20(%rsi), %ecx
	movl	$1, %eax
	movaps	.LCPI2_0(%rip), %xmm0           # xmm0 = [1024,1024,1024,1024,1024,1024,1024,1024]
	.p2align	4, 0x90
.LBB2_1:                                # %for.cond1.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rax), %edx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$9, %rdx
	movups	%xmm0, (%rdi,%rdx)
	movups	%xmm0, 16(%rdi,%rdx)
	movups	%xmm0, 32(%rdi,%rdx)
	movups	%xmm0, 48(%rdi,%rdx)
	movups	%xmm0, 64(%rdi,%rdx)
	movups	%xmm0, 80(%rdi,%rdx)
	movups	%xmm0, 96(%rdi,%rdx)
	movups	%xmm0, 112(%rdi,%rdx)
	movups	%xmm0, 128(%rdi,%rdx)
	movups	%xmm0, 144(%rdi,%rdx)
	movups	%xmm0, 160(%rdi,%rdx)
	movups	%xmm0, 176(%rdi,%rdx)
	movups	%xmm0, 192(%rdi,%rdx)
	movups	%xmm0, 208(%rdi,%rdx)
	movups	%xmm0, 224(%rdi,%rdx)
	movups	%xmm0, 240(%rdi,%rdx)
	movups	%xmm0, 256(%rdi,%rdx)
	movups	%xmm0, 272(%rdi,%rdx)
	movups	%xmm0, 288(%rdi,%rdx)
	movups	%xmm0, 304(%rdi,%rdx)
	movups	%xmm0, 320(%rdi,%rdx)
	movups	%xmm0, 336(%rdi,%rdx)
	movups	%xmm0, 352(%rdi,%rdx)
	movups	%xmm0, 368(%rdi,%rdx)
	movups	%xmm0, 384(%rdi,%rdx)
	movups	%xmm0, 400(%rdi,%rdx)
	movups	%xmm0, 416(%rdi,%rdx)
	movups	%xmm0, 432(%rdi,%rdx)
	movups	%xmm0, 448(%rdi,%rdx)
	movups	%xmm0, 464(%rdi,%rdx)
	movups	%xmm0, 480(%rdi,%rdx)
	movups	%xmm0, 496(%rdi,%rdx)
	movups	%xmm0, 512(%rdi,%rdx)
	movups	%xmm0, 528(%rdi,%rdx)
	movups	%xmm0, 544(%rdi,%rdx)
	movups	%xmm0, 560(%rdi,%rdx)
	movups	%xmm0, 576(%rdi,%rdx)
	movups	%xmm0, 592(%rdi,%rdx)
	movups	%xmm0, 608(%rdi,%rdx)
	movups	%xmm0, 624(%rdi,%rdx)
	movups	%xmm0, 640(%rdi,%rdx)
	movups	%xmm0, 656(%rdi,%rdx)
	movups	%xmm0, 672(%rdi,%rdx)
	movups	%xmm0, 688(%rdi,%rdx)
	movups	%xmm0, 704(%rdi,%rdx)
	movups	%xmm0, 720(%rdi,%rdx)
	movups	%xmm0, 736(%rdi,%rdx)
	movups	%xmm0, 752(%rdi,%rdx)
	movups	%xmm0, 768(%rdi,%rdx)
	movups	%xmm0, 784(%rdi,%rdx)
	movups	%xmm0, 800(%rdi,%rdx)
	movups	%xmm0, 816(%rdi,%rdx)
	movups	%xmm0, 832(%rdi,%rdx)
	movups	%xmm0, 848(%rdi,%rdx)
	movups	%xmm0, 864(%rdi,%rdx)
	movups	%xmm0, 880(%rdi,%rdx)
	movups	%xmm0, 896(%rdi,%rdx)
	movups	%xmm0, 912(%rdi,%rdx)
	movups	%xmm0, 928(%rdi,%rdx)
	movups	%xmm0, 944(%rdi,%rdx)
	movups	%xmm0, 960(%rdi,%rdx)
	movups	%xmm0, 976(%rdi,%rdx)
	movups	%xmm0, 992(%rdi,%rdx)
	movups	%xmm0, 1008(%rdi,%rdx)
	movups	%xmm0, 1024(%rdi,%rdx)
	movups	%xmm0, 1040(%rdi,%rdx)
	movups	%xmm0, 1056(%rdi,%rdx)
	movups	%xmm0, 1072(%rdi,%rdx)
	movups	%xmm0, 1088(%rdi,%rdx)
	movups	%xmm0, 1104(%rdi,%rdx)
	movups	%xmm0, 1120(%rdi,%rdx)
	movups	%xmm0, 1136(%rdi,%rdx)
	movups	%xmm0, 1152(%rdi,%rdx)
	movups	%xmm0, 1168(%rdi,%rdx)
	movups	%xmm0, 1184(%rdi,%rdx)
	movups	%xmm0, 1200(%rdi,%rdx)
	movups	%xmm0, 1216(%rdi,%rdx)
	movups	%xmm0, 1232(%rdi,%rdx)
	movups	%xmm0, 1248(%rdi,%rdx)
	movups	%xmm0, 1264(%rdi,%rdx)
	movups	%xmm0, 1280(%rdi,%rdx)
	movups	%xmm0, 1296(%rdi,%rdx)
	movups	%xmm0, 1312(%rdi,%rdx)
	movups	%xmm0, 1328(%rdi,%rdx)
	movups	%xmm0, 1344(%rdi,%rdx)
	movups	%xmm0, 1360(%rdi,%rdx)
	movups	%xmm0, 1376(%rdi,%rdx)
	movups	%xmm0, 1392(%rdi,%rdx)
	movups	%xmm0, 1408(%rdi,%rdx)
	movups	%xmm0, 1424(%rdi,%rdx)
	movups	%xmm0, 1440(%rdi,%rdx)
	movups	%xmm0, 1456(%rdi,%rdx)
	movups	%xmm0, 1472(%rdi,%rdx)
	movups	%xmm0, 1488(%rdi,%rdx)
	movl	%eax, %r8d
	shrl	%cl, %r8d
	movups	%xmm0, 1504(%rdi,%rdx)
	movups	%xmm0, 1520(%rdi,%rdx)
	incl	%eax
	testl	%r8d, %r8d
	je	.LBB2_1
# %bb.2:                                # %literal_init.exit
	movl	20(%rsi), %eax
	movl	%eax, 28304(%rdi)
	movzbl	24(%rsi), %ecx
	movl	$-1, %eax
	shll	%cl, %eax
	movl	$-1, %edx
	notl	%eax
	movl	%eax, 28308(%rdi)
	xorps	%xmm1, %xmm1
	movups	%xmm1, 28280(%rdi)
	movl	$0, 28296(%rdi)
	movzbl	28(%rsi), %ecx
	shll	%cl, %edx
	notl	%edx
	movl	%edx, 28300(%rdi)
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movq	%rax, 28268(%rdi)
	movl	$5, 28276(%rdi)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_3:                                # %for.body15
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24576(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25056(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_3
# %bb.4:                                # %for.cond.cleanup14
	movw	$1024, 24960(%rdi)              # imm = 0x400
	movw	$1024, 24984(%rdi)              # imm = 0x400
	movw	$1024, 25008(%rdi)              # imm = 0x400
	movw	$1024, 25032(%rdi)              # imm = 0x400
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_5:                                # %for.body15.1
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24608(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25088(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_5
# %bb.6:                                # %for.cond.cleanup14.1
	movw	$1024, 24962(%rdi)              # imm = 0x400
	movw	$1024, 24986(%rdi)              # imm = 0x400
	movw	$1024, 25010(%rdi)              # imm = 0x400
	movw	$1024, 25034(%rdi)              # imm = 0x400
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_7:                                # %for.body15.2
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24640(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25120(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_7
# %bb.8:                                # %for.cond.cleanup14.2
	movw	$1024, 24964(%rdi)              # imm = 0x400
	movw	$1024, 24988(%rdi)              # imm = 0x400
	movw	$1024, 25012(%rdi)              # imm = 0x400
	movw	$1024, 25036(%rdi)              # imm = 0x400
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_9:                                # %for.body15.3
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24672(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25152(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_9
# %bb.10:                               # %for.cond.cleanup14.3
	movw	$1024, 24966(%rdi)              # imm = 0x400
	movw	$1024, 24990(%rdi)              # imm = 0x400
	movw	$1024, 25014(%rdi)              # imm = 0x400
	movw	$1024, 25038(%rdi)              # imm = 0x400
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_11:                               # %for.body15.4
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24704(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25184(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_11
# %bb.12:                               # %for.cond.cleanup14.4
	movw	$1024, 24968(%rdi)              # imm = 0x400
	movw	$1024, 24992(%rdi)              # imm = 0x400
	movw	$1024, 25016(%rdi)              # imm = 0x400
	movw	$1024, 25040(%rdi)              # imm = 0x400
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_13:                               # %for.body15.5
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24736(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25216(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_13
# %bb.14:                               # %for.cond.cleanup14.5
	movw	$1024, 24970(%rdi)              # imm = 0x400
	movw	$1024, 24994(%rdi)              # imm = 0x400
	movw	$1024, 25018(%rdi)              # imm = 0x400
	movw	$1024, 25042(%rdi)              # imm = 0x400
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_15:                               # %for.body15.6
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24768(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25248(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_15
# %bb.16:                               # %for.cond.cleanup14.6
	movw	$1024, 24972(%rdi)              # imm = 0x400
	movw	$1024, 24996(%rdi)              # imm = 0x400
	movw	$1024, 25020(%rdi)              # imm = 0x400
	movw	$1024, 25044(%rdi)              # imm = 0x400
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_17:                               # %for.body15.7
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24800(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25280(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_17
# %bb.18:                               # %for.cond.cleanup14.7
	movw	$1024, 24974(%rdi)              # imm = 0x400
	movw	$1024, 24998(%rdi)              # imm = 0x400
	movw	$1024, 25022(%rdi)              # imm = 0x400
	movw	$1024, 25046(%rdi)              # imm = 0x400
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_19:                               # %for.body15.8
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24832(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25312(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_19
# %bb.20:                               # %for.cond.cleanup14.8
	movw	$1024, 24976(%rdi)              # imm = 0x400
	movw	$1024, 25000(%rdi)              # imm = 0x400
	movw	$1024, 25024(%rdi)              # imm = 0x400
	movw	$1024, 25048(%rdi)              # imm = 0x400
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_21:                               # %for.body15.9
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24864(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25344(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_21
# %bb.22:                               # %for.cond.cleanup14.9
	movw	$1024, 24978(%rdi)              # imm = 0x400
	movw	$1024, 25002(%rdi)              # imm = 0x400
	movw	$1024, 25026(%rdi)              # imm = 0x400
	movw	$1024, 25050(%rdi)              # imm = 0x400
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_23:                               # %for.body15.10
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24896(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25376(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_23
# %bb.24:                               # %for.cond.cleanup14.10
	movw	$1024, 24980(%rdi)              # imm = 0x400
	movw	$1024, 25004(%rdi)              # imm = 0x400
	movw	$1024, 25028(%rdi)              # imm = 0x400
	movw	$1024, 25052(%rdi)              # imm = 0x400
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_25:                               # %for.body15.11
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movw	$1024, 24928(%rdi,%rcx,2)       # imm = 0x400
	movw	$1024, 25408(%rdi,%rcx,2)       # imm = 0x400
	incl	%eax
	cmpl	28300(%rdi), %eax
	jbe	.LBB2_25
# %bb.26:                               # %for.cond.cleanup14.11
	movw	$1024, 24982(%rdi)              # imm = 0x400
	movw	$1024, 25006(%rdi)              # imm = 0x400
	movw	$1024, 25030(%rdi)              # imm = 0x400
	movw	$1024, 25054(%rdi)              # imm = 0x400
	movups	%xmm0, 25440(%rdi)
	movups	%xmm0, 25456(%rdi)
	movups	%xmm0, 25472(%rdi)
	movups	%xmm0, 25488(%rdi)
	movups	%xmm0, 25504(%rdi)
	movups	%xmm0, 25520(%rdi)
	movups	%xmm0, 25536(%rdi)
	movups	%xmm0, 25552(%rdi)
	movups	%xmm0, 25568(%rdi)
	movups	%xmm0, 25584(%rdi)
	movups	%xmm0, 25600(%rdi)
	movups	%xmm0, 25616(%rdi)
	movups	%xmm0, 25632(%rdi)
	movups	%xmm0, 25648(%rdi)
	movups	%xmm0, 25664(%rdi)
	movups	%xmm0, 25680(%rdi)
	movups	%xmm0, 25696(%rdi)
	movups	%xmm0, 25712(%rdi)
	movups	%xmm0, 25728(%rdi)
	movups	%xmm0, 25744(%rdi)
	movups	%xmm0, 25760(%rdi)
	movups	%xmm0, 25776(%rdi)
	movups	%xmm0, 25792(%rdi)
	movups	%xmm0, 25808(%rdi)
	movups	%xmm0, 25824(%rdi)
	movups	%xmm0, 25840(%rdi)
	movups	%xmm0, 25856(%rdi)
	movups	%xmm0, 25872(%rdi)
	movups	%xmm0, 25888(%rdi)
	movups	%xmm0, 25904(%rdi)
	movups	%xmm0, 25920(%rdi)
	movups	%xmm0, 25936(%rdi)
	movups	%xmm0, 25952(%rdi)
	movups	%xmm0, 25968(%rdi)
	movups	%xmm0, 25984(%rdi)
	movups	%xmm0, 26000(%rdi)
	movups	%xmm0, 26016(%rdi)
	movups	%xmm0, 26032(%rdi)
	movups	%xmm0, 26048(%rdi)
	movups	%xmm0, 26064(%rdi)
	movups	%xmm0, 26080(%rdi)
	movups	%xmm0, 26096(%rdi)
	movups	%xmm0, 26112(%rdi)
	movups	%xmm0, 26128(%rdi)
	movups	%xmm0, 26144(%rdi)
	movups	%xmm0, 26160(%rdi)
	movl	$67109888, 26176(%rdi)          # imm = 0x4000400
	movups	%xmm0, 26180(%rdi)
	movups	%xmm0, 26196(%rdi)
	movl	28(%rsi), %ecx
	movl	$67109888, 26212(%rdi)          # imm = 0x4000400
	movl	$67109888, 27240(%rdi)          # imm = 0x4000400
	leaq	26216(%rdi), %rax
	leaq	26472(%rdi), %rdx
	leaq	27244(%rdi), %rsi
	leaq	27500(%rdi), %r8
	movl	$1, %r9d
	.p2align	4, 0x90
.LBB2_27:                               # %for.cond83.preheader
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%r9), %r10d
	shlq	$4, %r10
	movups	%xmm0, (%rax,%r10)
	movups	%xmm0, (%rdx,%r10)
	movl	%r9d, %r11d
	shrl	%cl, %r11d
	movups	%xmm0, (%rsi,%r10)
	movups	%xmm0, (%r8,%r10)
	incl	%r9d
	testl	%r11d, %r11d
	je	.LBB2_27
# %bb.28:                               # %vector.body315
	movups	%xmm0, 26728(%rdi)
	movups	%xmm0, 26744(%rdi)
	movups	%xmm0, 26760(%rdi)
	movups	%xmm0, 26776(%rdi)
	movups	%xmm0, 26792(%rdi)
	movups	%xmm0, 26808(%rdi)
	movups	%xmm0, 26824(%rdi)
	movups	%xmm0, 26840(%rdi)
	movups	%xmm0, 26856(%rdi)
	movups	%xmm0, 26872(%rdi)
	movups	%xmm0, 26888(%rdi)
	movups	%xmm0, 26904(%rdi)
	movups	%xmm0, 26920(%rdi)
	movups	%xmm0, 26936(%rdi)
	movups	%xmm0, 26952(%rdi)
	movups	%xmm0, 26968(%rdi)
	movups	%xmm0, 26984(%rdi)
	movups	%xmm0, 27000(%rdi)
	movups	%xmm0, 27016(%rdi)
	movups	%xmm0, 27032(%rdi)
	movups	%xmm0, 27048(%rdi)
	movups	%xmm0, 27064(%rdi)
	movups	%xmm0, 27080(%rdi)
	movups	%xmm0, 27096(%rdi)
	movups	%xmm0, 27112(%rdi)
	movups	%xmm0, 27128(%rdi)
	movups	%xmm0, 27144(%rdi)
	movups	%xmm0, 27160(%rdi)
	movups	%xmm0, 27176(%rdi)
	movups	%xmm0, 27192(%rdi)
	movups	%xmm0, 27208(%rdi)
	movups	%xmm0, 27224(%rdi)
	movups	%xmm0, 27756(%rdi)
	movups	%xmm0, 27772(%rdi)
	movups	%xmm0, 27788(%rdi)
	movups	%xmm0, 27804(%rdi)
	movups	%xmm0, 27820(%rdi)
	movups	%xmm0, 27836(%rdi)
	movups	%xmm0, 27852(%rdi)
	movups	%xmm0, 27868(%rdi)
	movups	%xmm0, 27884(%rdi)
	movups	%xmm0, 27900(%rdi)
	movups	%xmm0, 27916(%rdi)
	movups	%xmm0, 27932(%rdi)
	movups	%xmm0, 27948(%rdi)
	movups	%xmm0, 27964(%rdi)
	movups	%xmm0, 27980(%rdi)
	movups	%xmm0, 27996(%rdi)
	movups	%xmm0, 28012(%rdi)
	movups	%xmm0, 28028(%rdi)
	movups	%xmm0, 28044(%rdi)
	movups	%xmm0, 28060(%rdi)
	movups	%xmm0, 28076(%rdi)
	movups	%xmm0, 28092(%rdi)
	movups	%xmm0, 28108(%rdi)
	movups	%xmm0, 28124(%rdi)
	movups	%xmm0, 28140(%rdi)
	movups	%xmm0, 28156(%rdi)
	movups	%xmm0, 28172(%rdi)
	movups	%xmm0, 28188(%rdi)
	movups	%xmm0, 28204(%rdi)
	movups	%xmm0, 28220(%rdi)
	movups	%xmm0, 28236(%rdi)
	movups	%xmm0, 28252(%rdi)
	movl	$1, 28320(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 28328(%rdi)
	movq	$0, 28344(%rdi)
	retq
.Lfunc_end2:
	.size	lzma_decoder_reset, .Lfunc_end2-lzma_decoder_reset
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma_decoder_uncompressed
	.type	lzma_decoder_uncompressed,@function
lzma_decoder_uncompressed:              # @lzma_decoder_uncompressed
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rsi, 28312(%rdi)
	retq
.Lfunc_end3:
	.size	lzma_decoder_uncompressed, .Lfunc_end3-lzma_decoder_uncompressed
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_decoder_init          # -- Begin function lzma_lzma_decoder_init
	.p2align	4, 0x90
	.type	lzma_lzma_decoder_init,@function
lzma_lzma_decoder_init:                 # @lzma_lzma_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$lzma_decoder_init, %ecx
	jmp	lzma_lz_decoder_init@PLT        # TAILCALL
.Lfunc_end4:
	.size	lzma_lzma_decoder_init, .Lfunc_end4-lzma_lzma_decoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma_decoder_init
	.type	lzma_decoder_init,@function
lzma_decoder_init:                      # @lzma_decoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	20(%rdx), %r8d
	movl	$11, %eax
	cmpl	$4, %r8d
	ja	.LBB5_9
# %bb.1:                                # %land.lhs.true.i
	movl	24(%rdx), %r9d
	cmpl	$5, %r9d
	setb	%r10b
	addl	%r9d, %r8d
	cmpl	$5, %r8d
	setb	%r8b
	andb	%r10b, %r8b
	cmpb	$1, %r8b
	jne	.LBB5_9
# %bb.2:                                # %is_lclppb_valid.exit
	cmpl	$4, 28(%rdx)
	ja	.LBB5_9
# %bb.3:                                # %do.body
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpq	$0, (%rdi)
	jne	.LBB5_7
# %bb.4:                                # %if.then.i
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rdi, %r15
	movl	$28352, %edi                    # imm = 0x6EC0
	callq	lzma_alloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB5_5
# %bb.6:                                # %if.end.i
	movq	%r15, %rdi
	movq	$lzma_decode, 8(%r15)
	movq	$lzma_decoder_reset, 16(%r15)
	movq	$lzma_decoder_uncompressed, 24(%r15)
	movq	%r14, %rdx
	movq	%rbx, %rcx
.LBB5_7:                                # %do.end
	movl	(%rdx), %eax
	movq	%rax, (%rcx)
	movq	8(%rdx), %rax
	movq	%rax, 8(%rcx)
	movl	16(%rdx), %eax
	movq	%rax, 16(%rcx)
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	lzma_decoder_reset
	movq	(%rbx), %rax
	movq	$-1, 28312(%rax)
	xorl	%eax, %eax
.LBB5_8:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB5_9:                                # %return
	retq
.LBB5_5:
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$5, %eax
	jmp	.LBB5_8
.Lfunc_end5:
	.size	lzma_decoder_init, .Lfunc_end5-lzma_decoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_lclppb_decode         # -- Begin function lzma_lzma_lclppb_decode
	.p2align	4, 0x90
	.type	lzma_lzma_lclppb_decode,@function
lzma_lzma_lclppb_decode:                # @lzma_lzma_lclppb_decode
	.cfi_startproc
# %bb.0:                                # %entry
	movb	$1, %al
	cmpb	$-32, %sil
	ja	.LBB6_2
# %bb.1:                                # %if.end
	movzbl	%sil, %eax
	imull	$109, %eax, %eax
	shrl	$8, %eax
	movl	%esi, %ecx
	subb	%al, %cl
	shrb	%cl
	addb	%al, %cl
	shrb	$5, %cl
	movzbl	%cl, %eax
	movl	%eax, 28(%rdi)
	imull	$-45, %eax, %eax
	addb	%sil, %al
	movzbl	%al, %eax
	imull	$57, %eax, %ecx
	shrl	$9, %ecx
	movl	%ecx, 24(%rdi)
	leal	(%rcx,%rcx,8), %edx
	subl	%edx, %eax
	movl	%eax, 20(%rdi)
	addl	%ecx, %eax
	cmpl	$5, %eax
	setae	%al
.LBB6_2:                                # %return
	retq
.Lfunc_end6:
	.size	lzma_lzma_lclppb_decode, .Lfunc_end6-lzma_lzma_lclppb_decode
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_decoder_memusage_nocheck # -- Begin function lzma_lzma_decoder_memusage_nocheck
	.p2align	4, 0x90
	.type	lzma_lzma_decoder_memusage_nocheck,@function
lzma_lzma_decoder_memusage_nocheck:     # @lzma_lzma_decoder_memusage_nocheck
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	(%rdi), %edi
	callq	lzma_lz_decoder_memusage@PLT
	addq	$28352, %rax                    # imm = 0x6EC0
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	lzma_lzma_decoder_memusage_nocheck, .Lfunc_end7-lzma_lzma_decoder_memusage_nocheck
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_decoder_memusage      # -- Begin function lzma_lzma_decoder_memusage
	.p2align	4, 0x90
	.type	lzma_lzma_decoder_memusage,@function
lzma_lzma_decoder_memusage:             # @lzma_lzma_decoder_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	movl	20(%rdi), %ecx
	movq	$-1, %rax
	cmpl	$4, %ecx
	ja	.LBB8_4
# %bb.1:                                # %land.lhs.true.i
	movl	24(%rdi), %edx
	cmpl	$5, %edx
	setb	%sil
	addl	%edx, %ecx
	cmpl	$5, %ecx
	setb	%cl
	andb	%sil, %cl
	cmpb	$1, %cl
	jne	.LBB8_4
# %bb.2:                                # %is_lclppb_valid.exit
	cmpl	$4, 28(%rdi)
	ja	.LBB8_4
# %bb.3:                                # %if.end
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	(%rdi), %edi
	callq	lzma_lz_decoder_memusage@PLT
	addq	$28352, %rax                    # imm = 0x6EC0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB8_4:                                # %return
	retq
.Lfunc_end8:
	.size	lzma_lzma_decoder_memusage, .Lfunc_end8-lzma_lzma_decoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_props_decode          # -- Begin function lzma_lzma_props_decode
	.p2align	4, 0x90
	.type	lzma_lzma_props_decode,@function
lzma_lzma_props_decode:                 # @lzma_lzma_props_decode
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$8, %eax
	cmpq	$5, %rcx
	jne	.LBB9_8
# %bb.1:                                # %if.end
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movl	$112, %edi
	movq	%rsi, %r14
	callq	lzma_alloc@PLT
	testq	%rax, %rax
	je	.LBB9_2
# %bb.3:                                # %if.end3
	movzbl	(%rbx), %ecx
	cmpb	$-32, %cl
	ja	.LBB9_6
# %bb.4:                                # %lzma_lzma_lclppb_decode.exit
	movzbl	%cl, %edx
	imull	$109, %edx, %edx
	shrl	$8, %edx
	movl	%ecx, %esi
	subb	%dl, %sil
	shrb	%sil
	addb	%dl, %sil
	shrb	$5, %sil
	movzbl	%sil, %edx
	movl	%edx, 28(%rax)
	imull	$-45, %edx, %edx
	addb	%cl, %dl
	movzbl	%dl, %ecx
	imull	$57, %ecx, %edx
	shrl	$9, %edx
	movl	%edx, 24(%rax)
	leal	(%rdx,%rdx,8), %esi
	subl	%esi, %ecx
	movl	%ecx, 20(%rax)
	addl	%edx, %ecx
	cmpl	$4, %ecx
	jbe	.LBB9_5
.LBB9_6:                                # %error
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	lzma_free@PLT
	movl	$8, %eax
	jmp	.LBB9_7
.LBB9_2:
	movl	$5, %eax
	jmp	.LBB9_7
.LBB9_5:                                # %if.end6
	movl	1(%rbx), %ecx
	movl	%ecx, (%rax)
	movq	$0, 8(%rax)
	movl	$0, 16(%rax)
	movq	%rax, (%r15)
	xorl	%eax, %eax
.LBB9_7:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB9_8:                                # %return
	retq
.Lfunc_end9:
	.size	lzma_lzma_props_decode, .Lfunc_end9-lzma_lzma_props_decode
	.cfi_endproc
                                        # -- End function
	.type	lzma_decode.next_state,@object  # @lzma_decode.next_state
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
lzma_decode.next_state:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	4                               # 0x4
	.long	5                               # 0x5
	.size	lzma_decode.next_state, 48

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
