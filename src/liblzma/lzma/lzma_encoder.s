	.text
	.file	"lzma_encoder.c"
	.globl	lzma_lzma_encode                # -- Begin function lzma_lzma_encode
	.p2align	4, 0x90
	.type	lzma_lzma_encode,@function
lzma_lzma_encode:                       # @lzma_lzma_encode
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%rcx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbx
	cmpb	$0, 2957(%rdi)
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	jne	.LBB0_6
# %bb.1:                                # %land.lhs.true
	movq	%r8, %r14
	movl	24(%r13), %eax
	cmpl	32(%r13), %eax
	jne	.LBB0_4
# %bb.2:                                # %if.then.i
	cmpl	$0, 104(%r13)
	jne	.LBB0_5
.LBB0_48:
	xorl	%ecx, %ecx
	jmp	.LBB0_49
.LBB0_4:                                # %if.else.i
	movq	%r13, %rdi
	movl	$1, %esi
	callq	*56(%r13)
	movl	$0, 28(%r13)
	leaq	27548(%rbx), %rax
	movq	24(%rbx), %rcx
	movl	$0, 40(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rax, 272(%rbx,%rcx,8)
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, 24(%rbx)
	movq	(%r13), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	shrl	$7, %edx
	leaq	2974(%rbx), %rsi
	movl	%edx, 44(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rsi, 272(%rbx,%rcx,8)
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rsi
	movq	%rsi, 24(%rbx)
	movl	%eax, %esi
	shrl	$6, %esi
	andl	$1, %esi
	leal	4(,%rdx,2), %edi
	addq	%rbx, %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
	movl	%esi, 44(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rdi, 272(%rbx,%rcx,8)
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
	movq	%rdi, 24(%rbx)
	leal	(%rsi,%rdx,2), %edx
	addl	$4, %edx
	movl	%eax, %esi
	shrl	$5, %esi
	andl	$1, %esi
	leal	(%rdx,%rdx), %edi
	addq	%rbx, %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
	movl	%esi, 44(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rdi, 272(%rbx,%rcx,8)
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
	movq	%rdi, 24(%rbx)
	leal	(%rsi,%rdx,2), %edx
	movl	%eax, %esi
	shrl	$4, %esi
	andl	$1, %esi
	leaq	(%rbx,%rdx,2), %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
	movl	%esi, 44(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rdi, 272(%rbx,%rcx,8)
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
	movq	%rdi, 24(%rbx)
	leal	(%rsi,%rdx,2), %edx
	movl	%eax, %esi
	shrl	$3, %esi
	andl	$1, %esi
	leaq	(%rbx,%rdx,2), %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
	movl	%esi, 44(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rdi, 272(%rbx,%rcx,8)
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
	movq	%rdi, 24(%rbx)
	leal	(%rsi,%rdx,2), %edx
	movl	%eax, %esi
	shrl	$2, %esi
	andl	$1, %esi
	leaq	(%rbx,%rdx,2), %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
	movl	%esi, 44(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rdi, 272(%rbx,%rcx,8)
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
	movq	%rdi, 24(%rbx)
	leal	(%rsi,%rdx,2), %edx
	movl	%eax, %esi
	shrl	%esi
	andl	$1, %esi
	leaq	(%rbx,%rdx,2), %rdi
	addq	$2972, %rdi                     # imm = 0xB9C
	movl	%esi, 44(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rdi, 272(%rbx,%rcx,8)
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdi
	movq	%rdi, 24(%rbx)
	leal	(%rsi,%rdx,2), %edx
	andl	$1, %eax
	leaq	(%rbx,%rdx,2), %rdx
	addq	$2972, %rdx                     # imm = 0xB9C
	movl	%eax, 44(%rbx,%rcx,4)
	movq	24(%rbx), %rax
	movq	%rdx, 272(%rbx,%rax,8)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	incq	24(%rbx)
.LBB0_5:                                # %encode_init.exit.thread
	movb	$1, 2957(%rbx)
	movq	%r14, %r8
.LBB0_6:                                # %if.end
	movl	24(%r13), %r14d
	movl	28(%r13), %r12d
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	movq	%r15, %rdx
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	%r8, %rcx
	callq	rc_encode
	xorl	%ecx, %ecx
	testb	%al, %al
	jne	.LBB0_49
# %bb.7:                                # %if.end4.lr.ph
	subl	%r12d, %r14d
	leaq	27548(%rbx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	27932(%rbx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	27956(%rbx), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	27980(%rbx), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	leaq	28004(%rbx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leaq	28028(%rbx), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	47688(%rbx), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	2972(%rbx), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jmp	.LBB0_12
.LBB0_8:                                # %cond.false35.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	addl	$-6, %eax
.LBB0_9:                                # %literal.exit.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	%eax, %ecx
.LBB0_10:                               # %literal.exit.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	%ecx, 736(%rbx)
	movl	12(%rsp), %eax
.LBB0_11:                               # %encode_symbol.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	subl	%r12d, 28(%r13)
	addl	%eax, %r14d
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	rc_encode
	testb	%al, %al
	jne	.LBB0_48
.LBB0_12:                               # %if.end4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
	movl	24(%r13), %eax
	cmpl	$-1, %ebp
	je	.LBB0_15
# %bb.13:                               # %land.lhs.true5
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	%eax, %ecx
	subl	28(%r13), %ecx
	cmpl	%ebp, %ecx
	jae	.LBB0_42
# %bb.14:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	(%r15), %rcx
	movq	8(%rbx), %rdx
	addq	%rdx, %rcx
	addq	$4, %rcx
	cmpq	$61438, %rcx                    # imm = 0xEFFE
	ja	.LBB0_42
.LBB0_15:                               # %if.end11
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	32(%r13), %eax
	jb	.LBB0_18
# %bb.16:                               # %if.then14
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$0, 104(%r13)
	je	.LBB0_48
# %bb.17:                               # %if.end17
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$0, 28(%r13)
	je	.LBB0_42
.LBB0_18:                               # %if.end22
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpb	$1, 2956(%rbx)
	jne	.LBB0_20
# %bb.19:                               # %if.then24
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	leaq	28(%rsp), %rdx
	leaq	12(%rsp), %rcx
	callq	lzma_lzma_optimum_fast@PLT
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_20:                               # %if.else
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	leaq	28(%rsp), %rdx
	leaq	12(%rsp), %rcx
	movl	%r14d, %r8d
	callq	lzma_lzma_optimum_normal@PLT
.LBB0_21:                               # %if.end25
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	28(%rsp), %edx
	movl	2960(%rbx), %eax
	andl	%r14d, %eax
	movl	736(%rbx), %ecx
	shlq	$5, %rcx
	addq	48(%rsp), %rcx                  # 8-byte Folded Reload
	movl	12(%rsp), %r12d
	leaq	(%rcx,%rax,2), %rcx
	movq	24(%rbx), %rsi
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	cmpq	%rdi, %rdx
	je	.LBB0_26
# %bb.22:                               # %if.else.i81
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$1, 40(%rbx,%rsi,4)
	movq	24(%rbx), %rsi
	movq	%rcx, 272(%rbx,%rsi,8)
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rsi
	movq	%rsi, 24(%rbx)
	movl	736(%rbx), %esi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rdi,%rsi,2), %rsi
	cmpl	$3, %edx
	ja	.LBB0_28
# %bb.23:                               # %if.then11.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$1, 44(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rsi, 272(%rbx,%rcx,8)
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %rcx
	movq	%rcx, 24(%rbx)
	testq	%rdx, %rdx
	je	.LBB0_34
# %bb.24:                               # %if.else.i63.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	740(%rbx,%rdx,4), %ecx
	movl	736(%rbx), %edi
	movq	32(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rdi,2), %rdi
	movl	$1, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rsi
	movq	%rdi, 272(%rbx,%rsi,8)
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, 24(%rbx)
	movl	736(%rbx), %edi
	movq	88(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rdi,2), %rdi
	cmpq	$1, %rdx
	jne	.LBB0_35
# %bb.25:                               # %if.then17.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$0, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rdx
	movq	%rdi, 272(%rbx,%rdx,8)
	incq	24(%rbx)
	jmp	.LBB0_38
	.p2align	4, 0x90
.LBB0_26:                               # %if.then.i85
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$0, 40(%rbx,%rsi,4)
	movq	24(%rbx), %rax
	movq	%rcx, 272(%rbx,%rax,8)
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %rdx
	movq	%rdx, 24(%rbx)
	movl	24(%r13), %edi
	subl	28(%r13), %edi
	movq	(%r13), %r8
	movl	2968(%rbx), %r9d
	andl	%r14d, %r9d
	movzbl	2964(%rbx), %ecx
	shll	%cl, %r9d
	leal	-1(%rdi), %eax
	movzbl	(%r8,%rax), %r10d
	movb	$8, %al
	subb	%cl, %al
	movl	%eax, %ecx
	shrl	%cl, %r10d
	movzbl	(%r8,%rdi), %eax
	addl	%r9d, %r10d
	leaq	(%r10,%r10,2), %rcx
	shlq	$9, %rcx
	addq	96(%rsp), %rcx                  # 8-byte Folded Reload
	cmpl	$6, 736(%rbx)
	ja	.LBB0_29
# %bb.27:                               # %if.then.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	%eax, %edx
	shrl	$7, %edx
	leaq	2(%rcx), %rdi
	movl	%edx, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rsi
	movq	%rdi, 272(%rbx,%rsi,8)
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, 24(%rbx)
	movl	%eax, %edi
	shrl	$6, %edi
	andl	$1, %edi
	leal	4(,%rdx,2), %r8d
	addq	%rcx, %r8
	movl	%edi, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rsi
	movq	%r8, 272(%rbx,%rsi,8)
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rbx)
	leal	(%rdi,%rdx,2), %edx
	addl	$4, %edx
	movl	%eax, %edi
	shrl	$5, %edi
	andl	$1, %edi
	leal	(%rdx,%rdx), %r8d
	addq	%rcx, %r8
	movl	%edi, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rsi
	movq	%r8, 272(%rbx,%rsi,8)
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rbx)
	leal	(%rdi,%rdx,2), %edx
	movl	%eax, %edi
	shrl	$4, %edi
	andl	$1, %edi
	leaq	(%rcx,%rdx,2), %r8
	movl	%edi, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rsi
	movq	%r8, 272(%rbx,%rsi,8)
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rbx)
	leal	(%rdi,%rdx,2), %edx
	movl	%eax, %edi
	shrl	$3, %edi
	andl	$1, %edi
	leaq	(%rcx,%rdx,2), %r8
	movl	%edi, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rsi
	movq	%r8, 272(%rbx,%rsi,8)
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rbx)
	leal	(%rdi,%rdx,2), %edx
	movl	%eax, %edi
	shrl	$2, %edi
	andl	$1, %edi
	leaq	(%rcx,%rdx,2), %r8
	movl	%edi, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rsi
	movq	%r8, 272(%rbx,%rsi,8)
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rbx)
	leal	(%rdi,%rdx,2), %edx
	movl	%eax, %edi
	shrl	%edi
	andl	$1, %edi
	leaq	(%rcx,%rdx,2), %r8
	movl	%edi, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rsi
	movq	%r8, 272(%rbx,%rsi,8)
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rbx)
	leal	(%rdi,%rdx,2), %edx
	andl	$1, %eax
	leaq	(%rcx,%rdx,2), %rcx
	movl	%eax, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rax
	movq	%rcx, 272(%rbx,%rax,8)
	incq	24(%rbx)
	jmp	.LBB0_31
	.p2align	4, 0x90
.LBB0_28:                               # %if.else16.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$0, 44(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rsi, 272(%rbx,%rcx,8)
	incq	24(%rbx)
	addl	$-4, %edx
	movq	%rbx, %rdi
	movl	%eax, %esi
                                        # kill: def $edx killed $edx killed $rdx
	movl	%r12d, %ecx
	callq	match
	jmp	.LBB0_41
.LBB0_29:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	740(%rbx), %esi
	notl	%esi
	addl	%esi, %edi
	movzbl	(%r8,%rdi), %esi
	orl	$256, %eax                      # imm = 0x100
	movl	$256, %edi                      # imm = 0x100
	.p2align	4, 0x90
.LBB0_30:                               # %do.body.i68.i.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%esi, %esi
	movl	%esi, %r8d
	andl	%edi, %r8d
	movl	%eax, %r9d
	shrl	$8, %r9d
	addl	%edi, %r9d
	addl	%r8d, %r9d
	movl	%eax, %r8d
	shrl	$7, %r8d
	andl	$1, %r8d
	leaq	(%rcx,%r9,2), %r9
	movl	%r8d, 40(%rbx,%rdx,4)
	movq	24(%rbx), %rdx
	movq	%r9, 272(%rbx,%rdx,8)
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
	leal	(%rax,%rax), %r8d
	movl	%r8d, %r9d
	xorl	%esi, %r9d
	notl	%r9d
	andl	%r9d, %edi
	cmpl	$32768, %eax                    # imm = 0x8000
	movl	%r8d, %eax
	jb	.LBB0_30
.LBB0_31:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	736(%rbx), %eax
	xorl	%ecx, %ecx
	cmpl	$4, %eax
	movq	16(%rsp), %rsi                  # 8-byte Reload
	jb	.LBB0_10
# %bb.32:                               # %cond.false.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$9, %eax
	ja	.LBB0_8
# %bb.33:                               # %cond.true32.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	addl	$-3, %eax
	jmp	.LBB0_9
.LBB0_34:                               # %if.then.i67.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	736(%rbx), %ecx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	leaq	(%rdx,%rcx,2), %rcx
	movl	$0, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rdx
	movq	%rcx, 272(%rbx,%rdx,8)
	movq	24(%rbx), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%rbx)
	movl	736(%rbx), %edx
	shlq	$5, %rdx
	addq	72(%rsp), %rdx                  # 8-byte Folded Reload
	leaq	(%rdx,%rax,2), %rdx
	xorl	%esi, %esi
	cmpl	$1, %r12d
	setne	%sil
	movl	%esi, 44(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rdx, 272(%rbx,%rcx,8)
	incq	24(%rbx)
	movl	$9, %ecx
	cmpl	$1, %r12d
	jne	.LBB0_39
	jmp	.LBB0_40
.LBB0_35:                               # %if.else22.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$1, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rsi
	movq	%rdi, 272(%rbx,%rsi,8)
	movq	24(%rbx), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, 24(%rbx)
	movl	736(%rbx), %edi
	movq	64(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rdi,2), %rdi
	leal	-2(%rdx), %r8d
	movl	%r8d, 44(%rbx,%rsi,4)
	movq	24(%rbx), %rsi
	movq	%rdi, 272(%rbx,%rsi,8)
	incq	24(%rbx)
	cmpq	$3, %rdx
	jne	.LBB0_37
# %bb.36:                               # %if.then34.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	748(%rbx), %edx
	movl	%edx, 752(%rbx)
.LBB0_37:                               # %if.end.i66.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	744(%rbx), %edx
	movl	%edx, 748(%rbx)
.LBB0_38:                               # %if.end43.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	740(%rbx), %edx
	movl	%edx, 744(%rbx)
	movl	%ecx, 740(%rbx)
	movl	$9, %ecx
	cmpl	$1, %r12d
	je	.LBB0_40
.LBB0_39:                               # %if.else58.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	movzbl	2956(%rbx), %r8d
	movq	%rbx, %rdi
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movl	%eax, %edx
	movl	%r12d, %ecx
	callq	length
	movl	$8, %ecx
.LBB0_40:                               # %rep_match.exit.i
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$7, 736(%rbx)
	movl	$11, %eax
	cmovael	%eax, %ecx
	movl	%ecx, 736(%rbx)
.LBB0_41:                               # %encode_symbol.exit
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	%r12d, %eax
	movq	16(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB0_11
.LBB0_42:                               # %while.end
	cmpb	$0, 2958(%rbx)
	jne	.LBB0_46
# %bb.43:                               # %if.then28
	movb	$1, 2958(%rbx)
	cmpl	$-1, %ebp
	jne	.LBB0_45
# %bb.44:                               # %if.then31
	andl	2960(%rbx), %r14d
	movl	736(%rbx), %eax
	shlq	$5, %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addq	%rax, %rcx
	leaq	(%rcx,%r14,2), %rax
	movq	24(%rbx), %rcx
	movl	$1, 40(%rbx,%rcx,4)
	movq	24(%rbx), %rcx
	movq	%rax, 272(%rbx,%rcx,8)
	movq	24(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
	movl	736(%rbx), %ecx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	leaq	(%rdx,%rcx,2), %rcx
	movl	$0, 44(%rbx,%rax,4)
	movq	24(%rbx), %rax
	movq	%rcx, 272(%rbx,%rax,8)
	incq	24(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$-1, %edx
	movl	$2, %ecx
	callq	match
.LBB0_45:                               # %if.end32
	movq	24(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
	movl	$4, 40(%rbx,%rax,4)
	movq	24(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
	movl	$4, 40(%rbx,%rax,4)
	movq	24(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
	movl	$4, 40(%rbx,%rax,4)
	movq	24(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
	movl	$4, 40(%rbx,%rax,4)
	movq	24(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rbx)
	movl	$4, 40(%rbx,%rax,4)
	movq	%rbx, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rcx                  # 8-byte Reload
	callq	rc_encode
	testb	%al, %al
	movl	$0, %ecx
	jne	.LBB0_49
.LBB0_46:                               # %if.end38
	movb	$0, 2958(%rbx)
	movl	$1, %ecx
.LBB0_49:                               # %cleanup40
	movl	%ecx, %eax
	addq	$104, %rsp
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
	.size	lzma_lzma_encode, .Lfunc_end0-lzma_lzma_encode
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function rc_encode
	.type	rc_encode,@function
rc_encode:                              # @rc_encode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	24(%rdi), %rax
	movq	32(%rdi), %r9
	cmpq	24(%rdi), %r9
	jae	.LBB1_25
# %bb.1:                                # %while.body.lr.ph
	movl	$4278190080, %r8d               # imm = 0xFF000000
	jmp	.LBB1_4
.LBB1_2:                                # %sw.bb38
                                        #   in Loop: Header=BB1_4 Depth=1
	shrl	%r10d
	movl	%r10d, 16(%rdi)
	.p2align	4, 0x90
.LBB1_3:                                # %sw.epilog
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	32(%rdi), %r9
	incq	%r9
	movq	%r9, 32(%rdi)
	cmpq	24(%rdi), %r9
	jae	.LBB1_25
.LBB1_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	movl	16(%rdi), %r10d
	cmpl	$16777215, %r10d                # imm = 0xFFFFFF
	ja	.LBB1_11
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	(%rdi), %r11
	movq	%r11, %rbx
	andq	$-16777216, %rbx                # imm = 0xFF000000
	cmpq	%r8, %rbx
	jne	.LBB1_7
# %bb.6:                                # %entry.if.end22_crit_edge.i
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	8(%rdi), %rbx
	incq	%rbx
	jmp	.LBB1_10
	.p2align	4, 0x90
.LBB1_7:                                # %do.body.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %r9
	cmpq	%rcx, %r9
	je	.LBB1_16
# %bb.8:                                # %if.end.i
                                        #   in Loop: Header=BB1_7 Depth=2
	movzbl	20(%rdi), %r10d
	addb	4(%rdi), %r10b
	movb	%r10b, (%rsi,%r9)
	incq	(%rdx)
	movb	$-1, 20(%rdi)
	decq	8(%rdi)
	jne	.LBB1_7
# %bb.9:                                # %do.end.i
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	(%rdi), %r11
	movl	%r11d, %r9d
	shrl	$24, %r9d
	movb	%r9b, 20(%rdi)
	movl	16(%rdi), %r10d
	movq	32(%rdi), %r9
	movl	$1, %ebx
.LBB1_10:                               # %if.end
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, 8(%rdi)
	shll	$8, %r11d
	movq	%r11, (%rdi)
	shll	$8, %r10d
	movl	%r10d, 16(%rdi)
.LBB1_11:                               # %if.end4
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	40(%rdi,%r9,4), %r11d
	cmpq	$4, %r11
	ja	.LBB1_3
# %bb.12:                               # %if.end4
                                        #   in Loop: Header=BB1_4 Depth=1
	jmpq	*.LJTI1_0(,%r11,8)
.LBB1_13:                               # %sw.bb
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	272(%rdi,%r9,8), %r11
	movzwl	(%r11), %r11d
	shrl	$11, %r10d
	imull	%r11d, %r10d
	movl	%r10d, 16(%rdi)
	movl	$2048, %r10d                    # imm = 0x800
	subl	%r11d, %r10d
	shrl	$5, %r10d
	addl	%r11d, %r10d
	movq	272(%rdi,%r9,8), %r9
	movw	%r10w, (%r9)
	jmp	.LBB1_3
.LBB1_14:                               # %sw.bb41
                                        #   in Loop: Header=BB1_4 Depth=1
	shrl	%r10d
	movl	%r10d, 16(%rdi)
	addq	%r10, (%rdi)
	jmp	.LBB1_3
.LBB1_15:                               # %sw.bb17
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	272(%rdi,%r9,8), %r11
	movzwl	(%r11), %r11d
	movl	%r10d, %ebx
	shrl	$11, %ebx
	imull	%r11d, %ebx
	addq	%rbx, (%rdi)
	subl	%ebx, %r10d
	movl	%r10d, 16(%rdi)
	movl	%r11d, %r10d
	shrl	$5, %r10d
	subl	%r10d, %r11d
	movq	272(%rdi,%r9,8), %r9
	movw	%r11w, (%r9)
	jmp	.LBB1_3
.LBB1_17:                               # %sw.bb48
	movl	$-1, 16(%rdi)
	movq	(%rdi), %r10
.LBB1_18:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
	movq	%r10, %r11
	andq	$-16777216, %r11                # imm = 0xFF000000
	cmpq	%r8, %r11
	jne	.LBB1_20
# %bb.19:                               # %entry.if.end22_crit_edge.i125
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	8(%rdi), %r11
	incq	%r11
	jmp	.LBB1_23
	.p2align	4, 0x90
.LBB1_20:                               # %do.body.i106
                                        #   Parent Loop BB1_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %r9
	cmpq	%rcx, %r9
	je	.LBB1_16
# %bb.21:                               # %if.end.i108
                                        #   in Loop: Header=BB1_20 Depth=2
	movzbl	20(%rdi), %r10d
	addb	4(%rdi), %r10b
	movb	%r10b, (%rsi,%r9)
	incq	(%rdx)
	movb	$-1, 20(%rdi)
	decq	8(%rdi)
	jne	.LBB1_20
# %bb.22:                               # %do.end.i116
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	(%rdi), %r10
	movq	32(%rdi), %r9
	movl	%r10d, %r11d
	shrl	$24, %r11d
	movb	%r11b, 20(%rdi)
	movl	$1, %r11d
.LBB1_23:                               # %do.cond
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	%r11, 8(%rdi)
	shll	$8, %r10d
	movq	%r10, (%rdi)
	incq	%r9
	movq	%r9, 32(%rdi)
	cmpq	24(%rdi), %r9
	jb	.LBB1_18
# %bb.24:                               # %do.end
	movq	$0, (%rdi)
	movq	$1, 8(%rdi)
	movl	$-1, 16(%rdi)
	movb	$0, 20(%rdi)
.LBB1_25:                               # %while.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB1_16:
	.cfi_def_cfa_offset 16
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	rc_encode, .Lfunc_end1-rc_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_13
	.quad	.LBB1_15
	.quad	.LBB1_2
	.quad	.LBB1_14
	.quad	.LBB1_17
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_lzma_encoder_reset
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
	.globl	lzma_lzma_encoder_reset
	.p2align	4, 0x90
	.type	lzma_lzma_encoder_reset,@function
lzma_lzma_encoder_reset:                # @lzma_lzma_encoder_reset
	.cfi_startproc
# %bb.0:                                # %entry
	movl	20(%rsi), %ecx
	movl	$8, %eax
	cmpl	$4, %ecx
	ja	.LBB2_117
# %bb.1:                                # %land.lhs.true.i.i
	movl	24(%rsi), %edx
	cmpl	$5, %edx
	setb	%r8b
	addl	%edx, %ecx
	cmpl	$5, %ecx
	setb	%cl
	andb	%r8b, %cl
	cmpb	$1, %cl
	jne	.LBB2_117
# %bb.2:                                # %is_lclppb_valid.exit.i
	movl	28(%rsi), %ecx
	cmpl	$4, %ecx
	ja	.LBB2_117
# %bb.3:                                # %land.lhs.true.i
	movl	36(%rsi), %edx
	addl	$-2, %edx
	cmpl	$271, %edx                      # imm = 0x10F
	ja	.LBB2_117
# %bb.4:                                # %is_options_valid.exit
	movl	32(%rsi), %edx
	decl	%edx
	cmpl	$1, %edx
	ja	.LBB2_117
# %bb.5:                                # %if.end
	movl	$-1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movl	$-1, %r8d
	movl	%eax, %edx
	notl	%edx
	movl	%edx, 2960(%rdi)
	movl	20(%rsi), %ecx
	movl	%ecx, 2964(%rdi)
	movzbl	24(%rsi), %ecx
	shll	%cl, %r8d
	notl	%r8d
	movl	%r8d, 2968(%rdi)
	movq	$0, (%rdi)
	movq	$1, 8(%rdi)
	movl	$-1, 16(%rdi)
	movb	$0, 20(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rdi)
	leaq	2972(%rdi), %r8
	movups	%xmm0, 736(%rdi)
	movl	$0, 752(%rdi)
	movl	24(%rsi), %ecx
	addl	20(%rsi), %ecx
	movl	$1, %r9d
	movaps	.LCPI2_0(%rip), %xmm0           # xmm0 = [1024,1024,1024,1024,1024,1024,1024,1024]
	.p2align	4, 0x90
.LBB2_6:                                # %for.cond1.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%r9), %r10d
	leaq	(%r10,%r10,2), %r10
	shlq	$9, %r10
	movups	%xmm0, (%r8,%r10)
	movups	%xmm0, 16(%r8,%r10)
	movups	%xmm0, 32(%r8,%r10)
	movups	%xmm0, 48(%r8,%r10)
	movups	%xmm0, 64(%r8,%r10)
	movups	%xmm0, 80(%r8,%r10)
	movups	%xmm0, 96(%r8,%r10)
	movups	%xmm0, 112(%r8,%r10)
	movups	%xmm0, 128(%r8,%r10)
	movups	%xmm0, 144(%r8,%r10)
	movups	%xmm0, 160(%r8,%r10)
	movups	%xmm0, 176(%r8,%r10)
	movups	%xmm0, 192(%r8,%r10)
	movups	%xmm0, 208(%r8,%r10)
	movups	%xmm0, 224(%r8,%r10)
	movups	%xmm0, 240(%r8,%r10)
	movups	%xmm0, 256(%r8,%r10)
	movups	%xmm0, 272(%r8,%r10)
	movups	%xmm0, 288(%r8,%r10)
	movups	%xmm0, 304(%r8,%r10)
	movups	%xmm0, 320(%r8,%r10)
	movups	%xmm0, 336(%r8,%r10)
	movups	%xmm0, 352(%r8,%r10)
	movups	%xmm0, 368(%r8,%r10)
	movups	%xmm0, 384(%r8,%r10)
	movups	%xmm0, 400(%r8,%r10)
	movups	%xmm0, 416(%r8,%r10)
	movups	%xmm0, 432(%r8,%r10)
	movups	%xmm0, 448(%r8,%r10)
	movups	%xmm0, 464(%r8,%r10)
	movups	%xmm0, 480(%r8,%r10)
	movups	%xmm0, 496(%r8,%r10)
	movups	%xmm0, 512(%r8,%r10)
	movups	%xmm0, 528(%r8,%r10)
	movups	%xmm0, 544(%r8,%r10)
	movups	%xmm0, 560(%r8,%r10)
	movups	%xmm0, 576(%r8,%r10)
	movups	%xmm0, 592(%r8,%r10)
	movups	%xmm0, 608(%r8,%r10)
	movups	%xmm0, 624(%r8,%r10)
	movups	%xmm0, 640(%r8,%r10)
	movups	%xmm0, 656(%r8,%r10)
	movups	%xmm0, 672(%r8,%r10)
	movups	%xmm0, 688(%r8,%r10)
	movups	%xmm0, 704(%r8,%r10)
	movups	%xmm0, 720(%r8,%r10)
	movups	%xmm0, 736(%r8,%r10)
	movups	%xmm0, 752(%r8,%r10)
	movups	%xmm0, 768(%r8,%r10)
	movups	%xmm0, 784(%r8,%r10)
	movups	%xmm0, 800(%r8,%r10)
	movups	%xmm0, 816(%r8,%r10)
	movups	%xmm0, 832(%r8,%r10)
	movups	%xmm0, 848(%r8,%r10)
	movups	%xmm0, 864(%r8,%r10)
	movups	%xmm0, 880(%r8,%r10)
	movups	%xmm0, 896(%r8,%r10)
	movups	%xmm0, 912(%r8,%r10)
	movups	%xmm0, 928(%r8,%r10)
	movups	%xmm0, 944(%r8,%r10)
	movups	%xmm0, 960(%r8,%r10)
	movups	%xmm0, 976(%r8,%r10)
	movups	%xmm0, 992(%r8,%r10)
	movups	%xmm0, 1008(%r8,%r10)
	movups	%xmm0, 1024(%r8,%r10)
	movups	%xmm0, 1040(%r8,%r10)
	movups	%xmm0, 1056(%r8,%r10)
	movups	%xmm0, 1072(%r8,%r10)
	movups	%xmm0, 1088(%r8,%r10)
	movups	%xmm0, 1104(%r8,%r10)
	movups	%xmm0, 1120(%r8,%r10)
	movups	%xmm0, 1136(%r8,%r10)
	movups	%xmm0, 1152(%r8,%r10)
	movups	%xmm0, 1168(%r8,%r10)
	movups	%xmm0, 1184(%r8,%r10)
	movups	%xmm0, 1200(%r8,%r10)
	movups	%xmm0, 1216(%r8,%r10)
	movups	%xmm0, 1232(%r8,%r10)
	movups	%xmm0, 1248(%r8,%r10)
	movups	%xmm0, 1264(%r8,%r10)
	movups	%xmm0, 1280(%r8,%r10)
	movups	%xmm0, 1296(%r8,%r10)
	movups	%xmm0, 1312(%r8,%r10)
	movups	%xmm0, 1328(%r8,%r10)
	movups	%xmm0, 1344(%r8,%r10)
	movups	%xmm0, 1360(%r8,%r10)
	movups	%xmm0, 1376(%r8,%r10)
	movups	%xmm0, 1392(%r8,%r10)
	movups	%xmm0, 1408(%r8,%r10)
	movups	%xmm0, 1424(%r8,%r10)
	movups	%xmm0, 1440(%r8,%r10)
	movups	%xmm0, 1456(%r8,%r10)
	movups	%xmm0, 1472(%r8,%r10)
	movups	%xmm0, 1488(%r8,%r10)
	movl	%r9d, %r11d
	shrl	%cl, %r11d
	movups	%xmm0, 1504(%r8,%r10)
	movups	%xmm0, 1520(%r8,%r10)
	incl	%r9d
	testl	%r11d, %r11d
	je	.LBB2_6
# %bb.7:                                # %for.cond6.preheader
	movl	%edx, %ecx
	leaq	1(%rcx), %rdx
	cmpl	$-31, %eax
	jb	.LBB2_11
# %bb.8:
	xorl	%r8d, %r8d
	jmp	.LBB2_9
.LBB2_11:                               # %vector.ph184
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_12:                               # %vector.body186
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27548(%rdi,%r9,2)
	movups	%xmm0, 27564(%rdi,%r9,2)
	movups	%xmm0, 27580(%rdi,%r9,2)
	movups	%xmm0, 27596(%rdi,%r9,2)
	movups	%xmm0, 28028(%rdi,%r9,2)
	movups	%xmm0, 28044(%rdi,%r9,2)
	movups	%xmm0, 28060(%rdi,%r9,2)
	movups	%xmm0, 28076(%rdi,%r9,2)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_12
# %bb.13:                               # %middle.block182
	cmpl	%r8d, %edx
	je	.LBB2_14
.LBB2_9:                                # %for.body15.preheader
	decq	%r8
	.p2align	4, 0x90
.LBB2_10:                               # %for.body15
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27550(%rdi,%r8,2)        # imm = 0x400
	movw	$1024, 28030(%rdi,%r8,2)        # imm = 0x400
	incq	%r8
	cmpq	%rcx, %r8
	jb	.LBB2_10
.LBB2_14:                               # %for.cond.cleanup14
	movw	$1024, 27932(%rdi)              # imm = 0x400
	movw	$1024, 27956(%rdi)              # imm = 0x400
	movw	$1024, 27980(%rdi)              # imm = 0x400
	movw	$1024, 28004(%rdi)              # imm = 0x400
	cmpl	$-32, %eax
	jbe	.LBB2_16
# %bb.15:
	xorl	%r8d, %r8d
	jmp	.LBB2_19
.LBB2_16:                               # %vector.ph192
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_17:                               # %vector.body196
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27580(%rdi,%r9,2)
	movups	%xmm0, 27596(%rdi,%r9,2)
	movups	%xmm0, 27612(%rdi,%r9,2)
	movups	%xmm0, 27628(%rdi,%r9,2)
	movups	%xmm0, 28060(%rdi,%r9,2)
	movups	%xmm0, 28076(%rdi,%r9,2)
	movups	%xmm0, 28092(%rdi,%r9,2)
	movups	%xmm0, 28108(%rdi,%r9,2)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_17
# %bb.18:                               # %middle.block189
	cmpl	%r8d, %edx
	je	.LBB2_21
.LBB2_19:                               # %for.body15.1.preheader
	decq	%r8
	.p2align	4, 0x90
.LBB2_20:                               # %for.body15.1
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27582(%rdi,%r8,2)        # imm = 0x400
	movw	$1024, 28062(%rdi,%r8,2)        # imm = 0x400
	incq	%r8
	cmpq	%rcx, %r8
	jb	.LBB2_20
.LBB2_21:                               # %for.cond.cleanup14.1
	movw	$1024, 27934(%rdi)              # imm = 0x400
	movw	$1024, 27958(%rdi)              # imm = 0x400
	movw	$1024, 27982(%rdi)              # imm = 0x400
	movw	$1024, 28006(%rdi)              # imm = 0x400
	cmpl	$-32, %eax
	jbe	.LBB2_23
# %bb.22:
	xorl	%r8d, %r8d
	jmp	.LBB2_26
.LBB2_23:                               # %vector.ph203
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_24:                               # %vector.body207
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27612(%rdi,%r9,2)
	movups	%xmm0, 27628(%rdi,%r9,2)
	movups	%xmm0, 27644(%rdi,%r9,2)
	movups	%xmm0, 27660(%rdi,%r9,2)
	movups	%xmm0, 28092(%rdi,%r9,2)
	movups	%xmm0, 28108(%rdi,%r9,2)
	movups	%xmm0, 28124(%rdi,%r9,2)
	movups	%xmm0, 28140(%rdi,%r9,2)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_24
# %bb.25:                               # %middle.block200
	cmpl	%r8d, %edx
	je	.LBB2_28
.LBB2_26:                               # %for.body15.2.preheader
	decq	%r8
	.p2align	4, 0x90
.LBB2_27:                               # %for.body15.2
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27614(%rdi,%r8,2)        # imm = 0x400
	movw	$1024, 28094(%rdi,%r8,2)        # imm = 0x400
	incq	%r8
	cmpq	%rcx, %r8
	jb	.LBB2_27
.LBB2_28:                               # %for.cond.cleanup14.2
	movw	$1024, 27936(%rdi)              # imm = 0x400
	movw	$1024, 27960(%rdi)              # imm = 0x400
	movw	$1024, 27984(%rdi)              # imm = 0x400
	movw	$1024, 28008(%rdi)              # imm = 0x400
	cmpl	$-32, %eax
	jbe	.LBB2_30
# %bb.29:
	xorl	%r8d, %r8d
	jmp	.LBB2_33
.LBB2_30:                               # %vector.ph214
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_31:                               # %vector.body218
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27644(%rdi,%r9,2)
	movups	%xmm0, 27660(%rdi,%r9,2)
	movups	%xmm0, 27676(%rdi,%r9,2)
	movups	%xmm0, 27692(%rdi,%r9,2)
	movups	%xmm0, 28124(%rdi,%r9,2)
	movups	%xmm0, 28140(%rdi,%r9,2)
	movups	%xmm0, 28156(%rdi,%r9,2)
	movups	%xmm0, 28172(%rdi,%r9,2)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_31
# %bb.32:                               # %middle.block211
	cmpl	%r8d, %edx
	je	.LBB2_35
.LBB2_33:                               # %for.body15.3.preheader
	decq	%r8
	.p2align	4, 0x90
.LBB2_34:                               # %for.body15.3
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27646(%rdi,%r8,2)        # imm = 0x400
	movw	$1024, 28126(%rdi,%r8,2)        # imm = 0x400
	incq	%r8
	cmpq	%rcx, %r8
	jb	.LBB2_34
.LBB2_35:                               # %for.cond.cleanup14.3
	movw	$1024, 27938(%rdi)              # imm = 0x400
	movw	$1024, 27962(%rdi)              # imm = 0x400
	movw	$1024, 27986(%rdi)              # imm = 0x400
	movw	$1024, 28010(%rdi)              # imm = 0x400
	cmpl	$-32, %eax
	jbe	.LBB2_37
# %bb.36:
	xorl	%r8d, %r8d
	jmp	.LBB2_40
.LBB2_37:                               # %vector.ph225
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_38:                               # %vector.body229
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27676(%rdi,%r9,2)
	movups	%xmm0, 27692(%rdi,%r9,2)
	movups	%xmm0, 27708(%rdi,%r9,2)
	movups	%xmm0, 27724(%rdi,%r9,2)
	movups	%xmm0, 28156(%rdi,%r9,2)
	movups	%xmm0, 28172(%rdi,%r9,2)
	movups	%xmm0, 28188(%rdi,%r9,2)
	movups	%xmm0, 28204(%rdi,%r9,2)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_38
# %bb.39:                               # %middle.block222
	cmpl	%r8d, %edx
	je	.LBB2_42
.LBB2_40:                               # %for.body15.4.preheader
	decq	%r8
	.p2align	4, 0x90
.LBB2_41:                               # %for.body15.4
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27678(%rdi,%r8,2)        # imm = 0x400
	movw	$1024, 28158(%rdi,%r8,2)        # imm = 0x400
	incq	%r8
	cmpq	%rcx, %r8
	jb	.LBB2_41
.LBB2_42:                               # %for.cond.cleanup14.4
	movw	$1024, 27940(%rdi)              # imm = 0x400
	movw	$1024, 27964(%rdi)              # imm = 0x400
	movw	$1024, 27988(%rdi)              # imm = 0x400
	movw	$1024, 28012(%rdi)              # imm = 0x400
	cmpl	$-32, %eax
	jbe	.LBB2_44
# %bb.43:
	xorl	%r8d, %r8d
	jmp	.LBB2_47
.LBB2_44:                               # %vector.ph236
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_45:                               # %vector.body240
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27708(%rdi,%r9,2)
	movups	%xmm0, 27724(%rdi,%r9,2)
	movups	%xmm0, 27740(%rdi,%r9,2)
	movups	%xmm0, 27756(%rdi,%r9,2)
	movups	%xmm0, 28188(%rdi,%r9,2)
	movups	%xmm0, 28204(%rdi,%r9,2)
	movups	%xmm0, 28220(%rdi,%r9,2)
	movups	%xmm0, 28236(%rdi,%r9,2)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_45
# %bb.46:                               # %middle.block233
	cmpl	%r8d, %edx
	je	.LBB2_49
.LBB2_47:                               # %for.body15.5.preheader
	decq	%r8
	.p2align	4, 0x90
.LBB2_48:                               # %for.body15.5
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27710(%rdi,%r8,2)        # imm = 0x400
	movw	$1024, 28190(%rdi,%r8,2)        # imm = 0x400
	incq	%r8
	cmpq	%rcx, %r8
	jb	.LBB2_48
.LBB2_49:                               # %for.cond.cleanup14.5
	movw	$1024, 27942(%rdi)              # imm = 0x400
	movw	$1024, 27966(%rdi)              # imm = 0x400
	movw	$1024, 27990(%rdi)              # imm = 0x400
	movw	$1024, 28014(%rdi)              # imm = 0x400
	cmpl	$-32, %eax
	jbe	.LBB2_51
# %bb.50:
	xorl	%r8d, %r8d
	jmp	.LBB2_54
.LBB2_51:                               # %vector.ph247
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_52:                               # %vector.body251
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27740(%rdi,%r9,2)
	movups	%xmm0, 27756(%rdi,%r9,2)
	movups	%xmm0, 27772(%rdi,%r9,2)
	movups	%xmm0, 27788(%rdi,%r9,2)
	movups	%xmm0, 28220(%rdi,%r9,2)
	movups	%xmm0, 28236(%rdi,%r9,2)
	movups	%xmm0, 28252(%rdi,%r9,2)
	movups	%xmm0, 28268(%rdi,%r9,2)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_52
# %bb.53:                               # %middle.block244
	cmpl	%r8d, %edx
	je	.LBB2_56
.LBB2_54:                               # %for.body15.6.preheader
	decq	%r8
	.p2align	4, 0x90
.LBB2_55:                               # %for.body15.6
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27742(%rdi,%r8,2)        # imm = 0x400
	movw	$1024, 28222(%rdi,%r8,2)        # imm = 0x400
	incq	%r8
	cmpq	%rcx, %r8
	jb	.LBB2_55
.LBB2_56:                               # %for.cond.cleanup14.6
	movw	$1024, 27944(%rdi)              # imm = 0x400
	movw	$1024, 27968(%rdi)              # imm = 0x400
	movw	$1024, 27992(%rdi)              # imm = 0x400
	movw	$1024, 28016(%rdi)              # imm = 0x400
	cmpl	$-32, %eax
	jbe	.LBB2_58
# %bb.57:
	xorl	%r8d, %r8d
	jmp	.LBB2_61
.LBB2_58:                               # %vector.ph258
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_59:                               # %vector.body262
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27772(%rdi,%r9,2)
	movups	%xmm0, 27788(%rdi,%r9,2)
	movups	%xmm0, 27804(%rdi,%r9,2)
	movups	%xmm0, 27820(%rdi,%r9,2)
	movups	%xmm0, 28252(%rdi,%r9,2)
	movups	%xmm0, 28268(%rdi,%r9,2)
	movups	%xmm0, 28284(%rdi,%r9,2)
	movups	%xmm0, 28300(%rdi,%r9,2)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_59
# %bb.60:                               # %middle.block255
	cmpl	%r8d, %edx
	je	.LBB2_63
.LBB2_61:                               # %for.body15.7.preheader
	decq	%r8
	.p2align	4, 0x90
.LBB2_62:                               # %for.body15.7
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27774(%rdi,%r8,2)        # imm = 0x400
	movw	$1024, 28254(%rdi,%r8,2)        # imm = 0x400
	incq	%r8
	cmpq	%rcx, %r8
	jb	.LBB2_62
.LBB2_63:                               # %for.cond.cleanup14.7
	movw	$1024, 27946(%rdi)              # imm = 0x400
	movw	$1024, 27970(%rdi)              # imm = 0x400
	movw	$1024, 27994(%rdi)              # imm = 0x400
	movw	$1024, 28018(%rdi)              # imm = 0x400
	cmpl	$-32, %eax
	jbe	.LBB2_65
# %bb.64:
	xorl	%r8d, %r8d
	jmp	.LBB2_68
.LBB2_65:                               # %vector.ph269
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_66:                               # %vector.body273
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27804(%rdi,%r9,2)
	movups	%xmm0, 27820(%rdi,%r9,2)
	movups	%xmm0, 27836(%rdi,%r9,2)
	movups	%xmm0, 27852(%rdi,%r9,2)
	movups	%xmm0, 28284(%rdi,%r9,2)
	movups	%xmm0, 28300(%rdi,%r9,2)
	movups	%xmm0, 28316(%rdi,%r9,2)
	movups	%xmm0, 28332(%rdi,%r9,2)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_66
# %bb.67:                               # %middle.block266
	cmpl	%r8d, %edx
	je	.LBB2_70
.LBB2_68:                               # %for.body15.8.preheader
	decq	%r8
	.p2align	4, 0x90
.LBB2_69:                               # %for.body15.8
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27806(%rdi,%r8,2)        # imm = 0x400
	movw	$1024, 28286(%rdi,%r8,2)        # imm = 0x400
	incq	%r8
	cmpq	%rcx, %r8
	jb	.LBB2_69
.LBB2_70:                               # %for.cond.cleanup14.8
	movw	$1024, 27948(%rdi)              # imm = 0x400
	movw	$1024, 27972(%rdi)              # imm = 0x400
	movw	$1024, 27996(%rdi)              # imm = 0x400
	movw	$1024, 28020(%rdi)              # imm = 0x400
	cmpl	$-32, %eax
	jbe	.LBB2_72
# %bb.71:
	xorl	%r8d, %r8d
	jmp	.LBB2_75
.LBB2_72:                               # %vector.ph280
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_73:                               # %vector.body284
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27836(%rdi,%r9,2)
	movups	%xmm0, 27852(%rdi,%r9,2)
	movups	%xmm0, 27868(%rdi,%r9,2)
	movups	%xmm0, 27884(%rdi,%r9,2)
	movups	%xmm0, 28316(%rdi,%r9,2)
	movups	%xmm0, 28332(%rdi,%r9,2)
	movups	%xmm0, 28348(%rdi,%r9,2)
	movups	%xmm0, 28364(%rdi,%r9,2)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_73
# %bb.74:                               # %middle.block277
	cmpl	%r8d, %edx
	je	.LBB2_77
.LBB2_75:                               # %for.body15.9.preheader
	decq	%r8
	.p2align	4, 0x90
.LBB2_76:                               # %for.body15.9
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27838(%rdi,%r8,2)        # imm = 0x400
	movw	$1024, 28318(%rdi,%r8,2)        # imm = 0x400
	incq	%r8
	cmpq	%rcx, %r8
	jb	.LBB2_76
.LBB2_77:                               # %for.cond.cleanup14.9
	movw	$1024, 27950(%rdi)              # imm = 0x400
	movw	$1024, 27974(%rdi)              # imm = 0x400
	movw	$1024, 27998(%rdi)              # imm = 0x400
	movw	$1024, 28022(%rdi)              # imm = 0x400
	cmpl	$-32, %eax
	jbe	.LBB2_79
# %bb.78:
	xorl	%r8d, %r8d
	jmp	.LBB2_82
.LBB2_79:                               # %vector.ph291
	movl	%edx, %r8d
	andl	$224, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_80:                               # %vector.body295
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27868(%rdi,%r9,2)
	movups	%xmm0, 27884(%rdi,%r9,2)
	movups	%xmm0, 27900(%rdi,%r9,2)
	movups	%xmm0, 27916(%rdi,%r9,2)
	movups	%xmm0, 28348(%rdi,%r9,2)
	movups	%xmm0, 28364(%rdi,%r9,2)
	movups	%xmm0, 28380(%rdi,%r9,2)
	movups	%xmm0, 28396(%rdi,%r9,2)
	addq	$32, %r9
	cmpq	%r9, %r8
	jne	.LBB2_80
# %bb.81:                               # %middle.block288
	cmpl	%r8d, %edx
	je	.LBB2_84
.LBB2_82:                               # %for.body15.10.preheader
	decq	%r8
	.p2align	4, 0x90
.LBB2_83:                               # %for.body15.10
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27870(%rdi,%r8,2)        # imm = 0x400
	movw	$1024, 28350(%rdi,%r8,2)        # imm = 0x400
	incq	%r8
	cmpq	%rcx, %r8
	jb	.LBB2_83
.LBB2_84:                               # %for.cond.cleanup14.10
	movw	$1024, 27952(%rdi)              # imm = 0x400
	movw	$1024, 27976(%rdi)              # imm = 0x400
	movw	$1024, 28000(%rdi)              # imm = 0x400
	movw	$1024, 28024(%rdi)              # imm = 0x400
	cmpl	$-32, %eax
	jbe	.LBB2_86
# %bb.85:
	xorl	%eax, %eax
	jmp	.LBB2_89
.LBB2_86:                               # %vector.ph302
	movl	%edx, %eax
	andl	$224, %eax
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB2_87:                               # %vector.body306
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 27900(%rdi,%r8,2)
	movups	%xmm0, 27916(%rdi,%r8,2)
	movups	%xmm0, 27932(%rdi,%r8,2)
	movups	%xmm0, 27948(%rdi,%r8,2)
	movups	%xmm0, 28380(%rdi,%r8,2)
	movups	%xmm0, 28396(%rdi,%r8,2)
	movups	%xmm0, 28412(%rdi,%r8,2)
	movups	%xmm0, 28428(%rdi,%r8,2)
	addq	$32, %r8
	cmpq	%r8, %rax
	jne	.LBB2_87
# %bb.88:                               # %middle.block299
	cmpl	%eax, %edx
	je	.LBB2_91
.LBB2_89:                               # %for.body15.11.preheader
	decq	%rax
	.p2align	4, 0x90
.LBB2_90:                               # %for.body15.11
                                        # =>This Inner Loop Header: Depth=1
	movw	$1024, 27902(%rdi,%rax,2)       # imm = 0x400
	movw	$1024, 28382(%rdi,%rax,2)       # imm = 0x400
	incq	%rax
	cmpq	%rcx, %rax
	jb	.LBB2_90
.LBB2_91:                               # %for.cond.cleanup14.11
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movw	$1024, 27954(%rdi)              # imm = 0x400
	movw	$1024, 27978(%rdi)              # imm = 0x400
	movw	$1024, 28002(%rdi)              # imm = 0x400
	movw	$1024, 28026(%rdi)              # imm = 0x400
	movups	%xmm0, 28924(%rdi)
	movups	%xmm0, 28940(%rdi)
	movups	%xmm0, 28956(%rdi)
	movups	%xmm0, 28972(%rdi)
	movups	%xmm0, 28988(%rdi)
	movups	%xmm0, 29004(%rdi)
	movups	%xmm0, 29020(%rdi)
	movups	%xmm0, 29036(%rdi)
	movups	%xmm0, 29052(%rdi)
	movups	%xmm0, 29068(%rdi)
	movups	%xmm0, 29084(%rdi)
	movups	%xmm0, 29100(%rdi)
	movups	%xmm0, 29116(%rdi)
	movups	%xmm0, 29132(%rdi)
	movl	$67109888, 29148(%rdi)          # imm = 0x4000400
	movups	%xmm0, 28412(%rdi)
	movups	%xmm0, 28428(%rdi)
	movups	%xmm0, 28444(%rdi)
	movups	%xmm0, 28460(%rdi)
	movups	%xmm0, 28476(%rdi)
	movups	%xmm0, 28492(%rdi)
	movups	%xmm0, 28508(%rdi)
	movups	%xmm0, 28524(%rdi)
	movups	%xmm0, 28540(%rdi)
	movups	%xmm0, 28556(%rdi)
	movups	%xmm0, 28572(%rdi)
	movups	%xmm0, 28588(%rdi)
	movups	%xmm0, 28604(%rdi)
	movups	%xmm0, 28620(%rdi)
	movups	%xmm0, 28636(%rdi)
	movups	%xmm0, 28652(%rdi)
	movups	%xmm0, 28668(%rdi)
	movups	%xmm0, 28684(%rdi)
	movups	%xmm0, 28700(%rdi)
	movups	%xmm0, 28716(%rdi)
	movups	%xmm0, 28732(%rdi)
	movups	%xmm0, 28748(%rdi)
	movups	%xmm0, 28764(%rdi)
	movups	%xmm0, 28780(%rdi)
	movups	%xmm0, 28796(%rdi)
	movups	%xmm0, 28812(%rdi)
	movups	%xmm0, 28828(%rdi)
	movups	%xmm0, 28844(%rdi)
	movups	%xmm0, 28860(%rdi)
	movups	%xmm0, 28876(%rdi)
	movups	%xmm0, 28892(%rdi)
	movups	%xmm0, 28908(%rdi)
	movups	%xmm0, 29152(%rdi)
	movups	%xmm0, 29168(%rdi)
	movl	28(%rsi), %ecx
	movl	$1, %r12d
	shlq	%cl, %r12
	movzbl	2956(%rdi), %eax
	movl	$67109888, 29184(%rdi)          # imm = 0x4000400
	cmpl	$2, %ecx
	jae	.LBB2_94
# %bb.92:                               # %for.cond2.preheader.i.preheader
	testl	%ecx, %ecx
	je	.LBB2_93
# %bb.96:                               # %for.cond2.preheader.i.preheader2
	leaq	29460(%rdi), %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_97:                               # %for.cond2.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -272(%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, -256(%rdx)
	movups	%xmm0, (%rdx)
	addq	$2, %rcx
	addq	$32, %rdx
	cmpq	$2, %rcx
	jne	.LBB2_97
	jmp	.LBB2_98
.LBB2_94:                               # %vector.ph333
	movl	%r12d, %ecx
	andl	$-4, %ecx
	leaq	29492(%rdi), %rdx
	.p2align	4, 0x90
.LBB2_95:                               # %vector.body337
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -304(%rdx)
	movups	%xmm0, -288(%rdx)
	movups	%xmm0, -272(%rdx)
	movups	%xmm0, -256(%rdx)
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, (%rdx)
	addq	$64, %rdx
	addq	$-4, %rcx
	jne	.LBB2_95
	jmp	.LBB2_100
.LBB2_93:
	xorl	%ecx, %ecx
.LBB2_98:                               # %for.cond24.preheader.i.loopexit.unr-lcssa
	testb	$1, %r12b
	je	.LBB2_100
# %bb.99:                               # %for.cond2.preheader.i.epil
	leaq	29188(%rdi), %rdx
	leaq	29444(%rdi), %r8
	shlq	$4, %rcx
	movups	%xmm0, (%rdx,%rcx)
	movups	%xmm0, (%r8,%rcx)
.LBB2_100:                              # %vector.body345
	movups	%xmm0, 29700(%rdi)
	movups	%xmm0, 29716(%rdi)
	movups	%xmm0, 29732(%rdi)
	movups	%xmm0, 29748(%rdi)
	movups	%xmm0, 29764(%rdi)
	movups	%xmm0, 29780(%rdi)
	movups	%xmm0, 29796(%rdi)
	movups	%xmm0, 29812(%rdi)
	movups	%xmm0, 29828(%rdi)
	movups	%xmm0, 29844(%rdi)
	movups	%xmm0, 29860(%rdi)
	movups	%xmm0, 29876(%rdi)
	movups	%xmm0, 29892(%rdi)
	movups	%xmm0, 29908(%rdi)
	movups	%xmm0, 29924(%rdi)
	movups	%xmm0, 29940(%rdi)
	movups	%xmm0, 29956(%rdi)
	movups	%xmm0, 29972(%rdi)
	movups	%xmm0, 29988(%rdi)
	movups	%xmm0, 30004(%rdi)
	movups	%xmm0, 30020(%rdi)
	movups	%xmm0, 30036(%rdi)
	movups	%xmm0, 30052(%rdi)
	movups	%xmm0, 30068(%rdi)
	movups	%xmm0, 30084(%rdi)
	movups	%xmm0, 30100(%rdi)
	movups	%xmm0, 30116(%rdi)
	movups	%xmm0, 30132(%rdi)
	movups	%xmm0, 30148(%rdi)
	movups	%xmm0, 30164(%rdi)
	movups	%xmm0, 30180(%rdi)
	movups	%xmm0, 30196(%rdi)
	testb	%al, %al
	movq	%rdi, %r15
	jne	.LBB2_104
# %bb.101:                              # %for.body40.i.preheader
	movq	%rsi, %r13
	leaq	29184(%rdi), %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_102:                              # %for.body40.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	length_update_prices
	incq	%r14
	cmpq	%r14, %r12
	jne	.LBB2_102
# %bb.103:                              # %length_encoder_reset.exit.loopexit
	movq	%r15, %rdi
	movzbl	2956(%r15), %eax
	movq	%r13, %rsi
	movaps	.LCPI2_0(%rip), %xmm0           # xmm0 = [1024,1024,1024,1024,1024,1024,1024,1024]
.LBB2_104:                              # %length_encoder_reset.exit
	movl	28(%rsi), %ecx
	movl	$1, %r12d
	shlq	%cl, %r12
	movl	$67109888, 47688(%rdi)          # imm = 0x4000400
	cmpl	$1, %ecx
	ja	.LBB2_107
# %bb.105:                              # %for.cond2.preheader.i135.preheader
	testl	%ecx, %ecx
	je	.LBB2_106
# %bb.109:                              # %for.cond2.preheader.i135.preheader1
	leaq	47964(%rdi), %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_110:                              # %for.cond2.preheader.i135
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -272(%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, -256(%rdx)
	movups	%xmm0, (%rdx)
	addq	$2, %rcx
	addq	$32, %rdx
	cmpq	$2, %rcx
	jne	.LBB2_110
	jmp	.LBB2_111
.LBB2_107:                              # %vector.ph351
	movl	%r12d, %ecx
	andl	$-4, %ecx
	leaq	47996(%rdi), %rdx
	.p2align	4, 0x90
.LBB2_108:                              # %vector.body355
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -304(%rdx)
	movups	%xmm0, -288(%rdx)
	movups	%xmm0, -272(%rdx)
	movups	%xmm0, -256(%rdx)
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, (%rdx)
	addq	$64, %rdx
	addq	$-4, %rcx
	jne	.LBB2_108
	jmp	.LBB2_113
.LBB2_106:
	xorl	%ecx, %ecx
.LBB2_111:                              # %for.cond24.preheader.i155.loopexit.unr-lcssa
	testb	$1, %r12b
	je	.LBB2_113
# %bb.112:                              # %for.cond2.preheader.i135.epil
	leaq	47692(%rdi), %rdx
	leaq	47948(%rdi), %rsi
	shlq	$4, %rcx
	movups	%xmm0, (%rdx,%rcx)
	movups	%xmm0, (%rsi,%rcx)
.LBB2_113:                              # %vector.body363
	movups	%xmm0, 48204(%rdi)
	movups	%xmm0, 48220(%rdi)
	movups	%xmm0, 48236(%rdi)
	movups	%xmm0, 48252(%rdi)
	movups	%xmm0, 48268(%rdi)
	movups	%xmm0, 48284(%rdi)
	movups	%xmm0, 48300(%rdi)
	movups	%xmm0, 48316(%rdi)
	movups	%xmm0, 48332(%rdi)
	movups	%xmm0, 48348(%rdi)
	movups	%xmm0, 48364(%rdi)
	movups	%xmm0, 48380(%rdi)
	movups	%xmm0, 48396(%rdi)
	movups	%xmm0, 48412(%rdi)
	movups	%xmm0, 48428(%rdi)
	movups	%xmm0, 48444(%rdi)
	movups	%xmm0, 48460(%rdi)
	movups	%xmm0, 48476(%rdi)
	movups	%xmm0, 48492(%rdi)
	movups	%xmm0, 48508(%rdi)
	movups	%xmm0, 48524(%rdi)
	movups	%xmm0, 48540(%rdi)
	movups	%xmm0, 48556(%rdi)
	movups	%xmm0, 48572(%rdi)
	movups	%xmm0, 48588(%rdi)
	movups	%xmm0, 48604(%rdi)
	movups	%xmm0, 48620(%rdi)
	movups	%xmm0, 48636(%rdi)
	movups	%xmm0, 48652(%rdi)
	movups	%xmm0, 48668(%rdi)
	movups	%xmm0, 48684(%rdi)
	movups	%xmm0, 48700(%rdi)
	testb	$1, %al
	jne	.LBB2_116
# %bb.114:                              # %for.body40.i163.preheader
	leaq	47688(%r15), %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_115:                              # %for.body40.i163
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	length_update_prices
	incq	%r14
	cmpq	%r14, %r12
	jne	.LBB2_115
.LBB2_116:                              # %length_encoder_reset.exit168
	movl	$2147483647, 69268(%r15)        # imm = 0x7FFFFFFF
	movq	$2147483647, 69336(%r15)        # imm = 0x7FFFFFFF
	movl	$0, 69344(%r15)
	xorl	%eax, %eax
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
.LBB2_117:                              # %cleanup
	retq
.Lfunc_end2:
	.size	lzma_lzma_encoder_reset, .Lfunc_end2-lzma_lzma_encoder_reset
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_encoder_create        # -- Begin function lzma_lzma_encoder_create
	.p2align	4, 0x90
	.type	lzma_lzma_encoder_create,@function
lzma_lzma_encoder_create:               # @lzma_lzma_encoder_create
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
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB3_4
# %bb.1:                                # %if.then
	movl	$249576, %edi                   # imm = 0x3CEE8
	movq	%rdx, %r15
	callq	lzma_alloc@PLT
	movq	%r15, %rdx
	movq	%rax, %rdi
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB3_2
.LBB3_4:                                # %if.end3
	movl	32(%rdx), %ecx
	cmpl	$2, %ecx
	je	.LBB3_7
# %bb.5:                                # %if.end3
	movl	$8, %eax
	cmpl	$1, %ecx
	jne	.LBB3_3
# %bb.6:                                # %sw.bb
	movb	$1, 2956(%rdi)
	cmpq	$0, 8(%rdx)
	je	.LBB3_11
.LBB3_12:                               # %land.rhs
	cmpl	$0, 16(%rdx)
	setne	%al
	jmp	.LBB3_13
.LBB3_7:                                # %sw.bb4
	movb	$0, 2956(%rdi)
	movl	(%rdx), %eax
	xorl	%ecx, %ecx
	movl	$-2, %esi
	.p2align	4, 0x90
.LBB3_8:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %r8d
	shll	%cl, %r8d
	incl	%ecx
	addl	$2, %esi
	cmpl	%eax, %r8d
	jb	.LBB3_8
# %bb.9:                                # %while.end
	movl	%esi, 69264(%rdi)
	movl	36(%rdx), %eax
	decl	%eax
	movl	%eax, 47620(%rdi)
	movl	36(%rdx), %eax
	decl	%eax
	movl	%eax, 66124(%rdi)
	cmpq	$0, 8(%rdx)
	jne	.LBB3_12
.LBB3_11:
	xorl	%eax, %eax
.LBB3_13:                               # %land.end
	movb	%al, 2957(%rdi)
	movb	$0, 2958(%rdi)
	movq	$4096, (%rbx)                   # imm = 0x1000
	movl	(%rdx), %eax
	movq	%rax, 8(%rbx)
	movq	$4097, 16(%rbx)                 # imm = 0x1001
	movq	$273, 24(%rbx)                  # imm = 0x111
	movl	36(%rdx), %eax
	movq	%rax, 32(%rbx)
	movl	40(%rdx), %eax
	movl	%eax, 40(%rbx)
	movl	44(%rdx), %eax
	movl	%eax, 44(%rbx)
	movq	8(%rdx), %rax
	movq	%rax, 48(%rbx)
	movl	16(%rdx), %eax
	movl	%eax, 56(%rbx)
	movq	%rdx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	lzma_lzma_encoder_reset         # TAILCALL
.LBB3_2:
	.cfi_def_cfa_offset 32
	movl	$5, %eax
.LBB3_3:                                # %return
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	lzma_lzma_encoder_create, .Lfunc_end3-lzma_lzma_encoder_create
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_encoder_init          # -- Begin function lzma_lzma_encoder_init
	.p2align	4, 0x90
	.type	lzma_lzma_encoder_init,@function
lzma_lzma_encoder_init:                 # @lzma_lzma_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$lzma_encoder_init, %ecx
	jmp	lzma_lz_encoder_init@PLT        # TAILCALL
.Lfunc_end4:
	.size	lzma_lzma_encoder_init, .Lfunc_end4-lzma_lzma_encoder_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma_encoder_init
	.type	lzma_encoder_init,@function
lzma_encoder_init:                      # @lzma_encoder_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$lzma_encode, 8(%rdi)
	jmp	lzma_lzma_encoder_create        # TAILCALL
.Lfunc_end5:
	.size	lzma_encoder_init, .Lfunc_end5-lzma_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_encoder_memusage      # -- Begin function lzma_lzma_encoder_memusage
	.p2align	4, 0x90
	.type	lzma_lzma_encoder_memusage,@function
lzma_lzma_encoder_memusage:             # @lzma_lzma_encoder_memusage
	.cfi_startproc
# %bb.0:                                # %entry
	movl	20(%rdi), %ecx
	movq	$-1, %rax
	cmpl	$4, %ecx
	ja	.LBB6_6
# %bb.1:                                # %land.lhs.true.i.i
	movl	24(%rdi), %edx
	cmpl	$5, %edx
	setb	%sil
	addl	%edx, %ecx
	cmpl	$5, %ecx
	setb	%cl
	andb	%sil, %cl
	cmpb	$1, %cl
	jne	.LBB6_6
# %bb.2:                                # %is_lclppb_valid.exit.i
	cmpl	$4, 28(%rdi)
	ja	.LBB6_6
# %bb.3:                                # %land.lhs.true.i
	movl	36(%rdi), %ecx
	leal	-2(%rcx), %edx
	cmpl	$271, %edx                      # imm = 0x10F
	ja	.LBB6_6
# %bb.4:                                # %is_options_valid.exit
	movl	32(%rdi), %edx
	decl	%edx
	cmpl	$1, %edx
	ja	.LBB6_6
# %bb.5:                                # %if.end
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	$4096, 8(%rsp)                  # imm = 0x1000
	movl	(%rdi), %eax
	movq	%rax, 16(%rsp)
	movq	$4097, 24(%rsp)                 # imm = 0x1001
	movq	$273, 32(%rsp)                  # imm = 0x111
	movq	%rcx, 40(%rsp)
	movq	40(%rdi), %rax
	movq	%rax, 48(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 56(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 64(%rsp)
	leaq	8(%rsp), %rdi
	callq	lzma_lz_encoder_memusage@PLT
	movq	%rax, %rcx
	addq	$249576, %rax                   # imm = 0x3CEE8
	cmpq	$-1, %rcx
	cmoveq	%rcx, %rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
.LBB6_6:                                # %return
	retq
.Lfunc_end6:
	.size	lzma_lzma_encoder_memusage, .Lfunc_end6-lzma_lzma_encoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_lclppb_encode         # -- Begin function lzma_lzma_lclppb_encode
	.p2align	4, 0x90
	.type	lzma_lzma_lclppb_encode,@function
lzma_lzma_lclppb_encode:                # @lzma_lzma_lclppb_encode
	.cfi_startproc
# %bb.0:                                # %entry
	movl	20(%rdi), %ecx
	movb	$1, %al
	cmpl	$4, %ecx
	ja	.LBB7_4
# %bb.1:                                # %land.lhs.true.i
	movl	24(%rdi), %edx
	cmpl	$5, %edx
	setb	%r8b
	leal	(%rdx,%rcx), %r9d
	cmpl	$5, %r9d
	setb	%r9b
	andb	%r8b, %r9b
	cmpb	$1, %r9b
	jne	.LBB7_4
# %bb.2:                                # %is_lclppb_valid.exit
	movl	28(%rdi), %edi
	cmpl	$4, %edi
	ja	.LBB7_4
# %bb.3:                                # %if.end
	leal	(%rdi,%rdi,4), %eax
	addl	%edx, %eax
	leal	(%rax,%rax,8), %eax
	addl	%ecx, %eax
	movb	%al, (%rsi)
	xorl	%eax, %eax
.LBB7_4:                                # %return
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end7:
	.size	lzma_lzma_lclppb_encode, .Lfunc_end7-lzma_lzma_lclppb_encode
	.cfi_endproc
                                        # -- End function
	.globl	lzma_lzma_props_encode          # -- Begin function lzma_lzma_props_encode
	.p2align	4, 0x90
	.type	lzma_lzma_props_encode,@function
lzma_lzma_props_encode:                 # @lzma_lzma_props_encode
	.cfi_startproc
# %bb.0:                                # %entry
	movl	20(%rdi), %ecx
	movl	$11, %eax
	cmpl	$4, %ecx
	ja	.LBB8_4
# %bb.1:                                # %land.lhs.true.i.i
	movl	24(%rdi), %edx
	cmpl	$5, %edx
	setb	%r8b
	leal	(%rdx,%rcx), %r9d
	cmpl	$5, %r9d
	setb	%r9b
	andb	%r8b, %r9b
	cmpb	$1, %r9b
	jne	.LBB8_4
# %bb.2:                                # %is_lclppb_valid.exit.i
	movl	28(%rdi), %r8d
	cmpl	$4, %r8d
	ja	.LBB8_4
# %bb.3:                                # %if.end
	leal	(%r8,%r8,4), %eax
	addl	%edx, %eax
	leal	(%rax,%rax,8), %eax
	addl	%ecx, %eax
	movb	%al, (%rsi)
	movl	(%rdi), %eax
	movl	%eax, 1(%rsi)
	xorl	%eax, %eax
.LBB8_4:                                # %cleanup
	retq
.Lfunc_end8:
	.size	lzma_lzma_props_encode, .Lfunc_end8-lzma_lzma_props_encode
	.cfi_endproc
                                        # -- End function
	.globl	lzma_mode_is_supported          # -- Begin function lzma_mode_is_supported
	.p2align	4, 0x90
	.type	lzma_mode_is_supported,@function
lzma_mode_is_supported:                 # @lzma_mode_is_supported
	.cfi_startproc
# %bb.0:                                # %entry
	decl	%edi
	cmpl	$2, %edi
	setb	%al
	retq
.Lfunc_end9:
	.size	lzma_mode_is_supported, .Lfunc_end9-lzma_mode_is_supported
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function match
	.type	match,@function
match:                                  # @match
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
	movl	%ecx, %r15d
	movl	%edx, %ebx
	movl	%esi, %edx
	movq	%rdi, %r14
	xorl	%eax, %eax
	cmpl	$7, 736(%rdi)
	setae	%al
	leal	(%rax,%rax,2), %eax
	addl	$7, %eax
	movl	%eax, 736(%rdi)
	leaq	29184(%rdi), %rsi
	movzbl	2956(%rdi), %r8d
	callq	length
	cmpl	$8191, %ebx                     # imm = 0x1FFF
	ja	.LBB10_2
# %bb.1:                                # %if.then.i
	movl	%ebx, %eax
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%rax), %esi
	jmp	.LBB10_5
.LBB10_2:                               # %if.end.i
	movl	%ebx, %eax
	cmpl	$33554431, %ebx                 # imm = 0x1FFFFFF
	ja	.LBB10_4
# %bb.3:                                # %if.then3.i
	shrl	$12, %eax
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	$24, %esi
	jmp	.LBB10_5
.LBB10_4:                               # %if.end7.i
	shrl	$24, %eax
	movq	lzma_fastpos@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	$48, %esi
.LBB10_5:                               # %get_pos_slot.exit
	leal	-2(%r15), %eax
	cmpl	$6, %r15d
	movl	$3, %ecx
	cmovbl	%eax, %ecx
	shlq	$7, %rcx
	leaq	(%r14,%rcx), %rax
	movq	24(%r14), %rdx
	movl	%esi, %edi
	shrl	$5, %edi
	andl	$1, %edi
	addq	%r14, %rcx
	addq	$28414, %rcx                    # imm = 0x6EFE
	movl	%edi, 40(%r14,%rdx,4)
	movq	24(%r14), %rdx
	movq	%rcx, 272(%r14,%rdx,8)
	movq	24(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%r14)
	movl	%esi, %edx
	shrl	$4, %edx
	andl	$1, %edx
	leal	4(,%rdi,2), %r8d
	addq	%rax, %r8
	addq	$28412, %r8                     # imm = 0x6EFC
	movl	%edx, 44(%r14,%rcx,4)
	movq	24(%r14), %rcx
	movq	%r8, 272(%r14,%rcx,8)
	movq	24(%r14), %rcx
	leaq	1(%rcx), %r8
	movq	%r8, 24(%r14)
	leal	(%rdx,%rdi,2), %edx
	addl	$4, %edx
	movl	%esi, %edi
	shrl	$3, %edi
	andl	$1, %edi
	leal	(%rdx,%rdx), %r8d
	addq	%rax, %r8
	addq	$28412, %r8                     # imm = 0x6EFC
	movl	%edi, 44(%r14,%rcx,4)
	movq	24(%r14), %rcx
	movq	%r8, 272(%r14,%rcx,8)
	movq	24(%r14), %rcx
	leaq	1(%rcx), %r8
	movq	%r8, 24(%r14)
	leal	(%rdi,%rdx,2), %edx
	movl	%esi, %edi
	shrl	$2, %edi
	andl	$1, %edi
	leaq	(%rax,%rdx,2), %r8
	addq	$28412, %r8                     # imm = 0x6EFC
	movl	%edi, 44(%r14,%rcx,4)
	movq	24(%r14), %rcx
	movq	%r8, 272(%r14,%rcx,8)
	movq	24(%r14), %rcx
	leaq	1(%rcx), %r8
	movq	%r8, 24(%r14)
	leal	(%rdi,%rdx,2), %edi
	movl	%esi, %edx
	shrl	%edx
	movl	%edx, %r8d
	andl	$1, %r8d
	leaq	(%rax,%rdi,2), %r9
	addq	$28412, %r9                     # imm = 0x6EFC
	movl	%r8d, 44(%r14,%rcx,4)
	movq	24(%r14), %rcx
	movq	%r9, 272(%r14,%rcx,8)
	movq	24(%r14), %rcx
	leaq	1(%rcx), %r9
	movq	%r9, 24(%r14)
	leal	(%r8,%rdi,2), %edi
	movl	%esi, %r8d
	andl	$1, %r8d
	leaq	(%rax,%rdi,2), %rax
	addq	$28412, %rax                    # imm = 0x6EFC
	movl	%r8d, 44(%r14,%rcx,4)
	movq	24(%r14), %rcx
	movq	%rax, 272(%r14,%rcx,8)
	movq	24(%r14), %rdi
	leaq	1(%rdi), %rax
	movq	%rax, 24(%r14)
	cmpl	$4, %esi
	jb	.LBB10_18
# %bb.6:                                # %if.then
	orl	$2, %r8d
	leal	-1(%rdx), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r8d
	movl	%ebx, %eax
	subl	%r8d, %eax
	cmpl	$13, %esi
	ja	.LBB10_12
# %bb.7:                                # %if.then10
	movl	%r8d, %ecx
	leaq	(%r14,%rcx,2), %rcx
	addl	%esi, %esi
	subq	%rsi, %rcx
	leaq	28924(%rcx), %r8
	movl	%eax, %esi
	andl	$1, %esi
	movl	%esi, 44(%r14,%rdi,4)
	movq	24(%r14), %rdi
	movq	%r8, 272(%r14,%rdi,8)
	movq	24(%r14), %r8
	leaq	1(%r8), %rdi
	movq	%rdi, 24(%r14)
	cmpl	$2, %edx
	je	.LBB10_18
# %bb.8:                                # %do.body.i79.1
	addq	$28922, %rcx                    # imm = 0x70FA
	orl	$2, %esi
	movl	%eax, %edi
	shrl	%edi
	andl	$1, %edi
	leaq	(%rcx,%rsi,2), %r9
	movl	%edi, 44(%r14,%r8,4)
	movq	24(%r14), %r8
	movq	%r9, 272(%r14,%r8,8)
	movq	24(%r14), %r8
	leaq	1(%r8), %r9
	movq	%r9, 24(%r14)
	cmpl	$3, %edx
	je	.LBB10_18
# %bb.9:                                # %do.body.i79.2
	leal	(%rdi,%rsi,2), %esi
	movl	%eax, %edi
	shrl	$2, %edi
	andl	$1, %edi
	leaq	(%rcx,%rsi,2), %r9
	movl	%edi, 44(%r14,%r8,4)
	movq	24(%r14), %r8
	movq	%r9, 272(%r14,%r8,8)
	movq	24(%r14), %r8
	leaq	1(%r8), %r9
	movq	%r9, 24(%r14)
	cmpl	$4, %edx
	je	.LBB10_18
# %bb.10:                               # %do.body.i79.3
	leal	(%rdi,%rsi,2), %esi
	movl	%eax, %edi
	shrl	$3, %edi
	andl	$1, %edi
	leaq	(%rcx,%rsi,2), %r9
	movl	%edi, 44(%r14,%r8,4)
	movq	24(%r14), %r8
	movq	%r9, 272(%r14,%r8,8)
	movq	24(%r14), %r8
	leaq	1(%r8), %r9
	movq	%r9, 24(%r14)
	cmpl	$5, %edx
	je	.LBB10_18
# %bb.11:                               # %do.body.i79.4
	shrl	$4, %eax
	andl	$1, %eax
	addl	%edi, %edi
	leal	(%rdi,%rsi,4), %edx
	addq	%rdx, %rcx
	movl	%eax, 44(%r14,%r8,4)
	movq	24(%r14), %rax
	movq	%rcx, 272(%r14,%rax,8)
	incq	24(%r14)
	jmp	.LBB10_18
.LBB10_12:                              # %if.else
	movl	%eax, %ecx
	shrl	$4, %ecx
	leal	-5(%rdx), %esi
	testb	$1, %sil
	je	.LBB10_14
# %bb.13:                               # %do.body.i93.prol
	leal	-6(%rdx), %esi
	xorl	%edi, %edi
	btl	%esi, %ecx
	adcl	$2, %edi
	movq	24(%r14), %r8
	leaq	1(%r8), %r9
	movq	%r9, 24(%r14)
	movl	%edi, 40(%r14,%r8,4)
.LBB10_14:                              # %do.body.i93.prol.loopexit
	cmpl	$6, %edx
	je	.LBB10_17
# %bb.15:                               # %do.body.i93.preheader
	decl	%esi
	.p2align	4, 0x90
.LBB10_16:                              # %do.body.i93
                                        # =>This Inner Loop Header: Depth=1
	btl	%esi, %ecx
	movl	$0, %edx
	adcl	$2, %edx
	movq	24(%r14), %rdi
	leaq	1(%rdi), %r8
	movq	%r8, 24(%r14)
	movl	%edx, 40(%r14,%rdi,4)
	leal	-1(%rsi), %edx
	movzbl	%dl, %edx
	btl	%edx, %ecx
	movl	$0, %edx
	adcl	$2, %edx
	movq	24(%r14), %rdi
	leaq	1(%rdi), %r8
	movq	%r8, 24(%r14)
	movl	%edx, 40(%r14,%rdi,4)
	addl	$-2, %esi
	cmpl	$-1, %esi
	jne	.LBB10_16
.LBB10_17:                              # %rc_direct.exit
	movq	24(%r14), %rcx
	movl	%eax, %edx
	andl	$1, %edx
	movl	%eax, %esi
	shrl	%esi
	leaq	29154(%r14), %rdi
	movl	%edx, 40(%r14,%rcx,4)
	movq	24(%r14), %rcx
	movq	%rdi, 272(%r14,%rcx,8)
	movq	24(%r14), %rcx
	leaq	1(%rcx), %rdi
	movq	%rdi, 24(%r14)
	andl	$1, %esi
	movl	%eax, %edi
	shrl	$2, %edi
	leal	4(,%rdx,2), %r8d
	addq	%r14, %r8
	addq	$29152, %r8                     # imm = 0x71E0
	movl	%esi, 44(%r14,%rcx,4)
	movq	24(%r14), %rcx
	movq	%r8, 272(%r14,%rcx,8)
	movq	24(%r14), %rcx
	leaq	1(%rcx), %r8
	movq	%r8, 24(%r14)
	leal	(%rsi,%rdx,2), %edx
	addl	$4, %edx
	andl	$1, %edi
	shrl	$3, %eax
	leal	(%rdx,%rdx), %esi
	addq	%r14, %rsi
	addq	$29152, %rsi                    # imm = 0x71E0
	movl	%edi, 44(%r14,%rcx,4)
	movq	24(%r14), %rcx
	movq	%rsi, 272(%r14,%rcx,8)
	movq	24(%r14), %rcx
	leaq	1(%rcx), %rsi
	movq	%rsi, 24(%r14)
	leal	(%rdi,%rdx,2), %edx
	andl	$1, %eax
	leaq	(%r14,%rdx,2), %rdx
	addq	$29152, %rdx                    # imm = 0x71E0
	movl	%eax, 44(%r14,%rcx,4)
	movq	24(%r14), %rax
	movq	%rdx, 272(%r14,%rax,8)
	incq	24(%r14)
	incl	69336(%r14)
.LBB10_18:                              # %if.end22
	movl	748(%r14), %eax
	movl	%eax, 752(%r14)
	movq	740(%r14), %rax
	movq	%rax, 744(%r14)
	movl	%ebx, 740(%r14)
	incl	69268(%r14)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	match, .Lfunc_end10-match
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function length
	.type	length,@function
length:                                 # @length
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
                                        # kill: def $ecx killed $ecx def $rcx
	leal	-2(%rcx), %eax
	movq	24(%rdi), %r9
	cmpl	$7, %eax
	ja	.LBB11_3
# %bb.1:                                # %if.then
	movl	$0, 40(%rdi,%r9,4)
	movq	24(%rdi), %r9
	movq	%rsi, 272(%rdi,%r9,8)
	movq	24(%rdi), %r11
	leaq	1(%r11), %r9
	movq	%r9, 24(%rdi)
	movl	%edx, %ebx
	shlq	$4, %rbx
	leaq	(%rsi,%rbx), %r9
	addq	$4, %r9
	movl	%eax, %r10d
	shrl	$2, %r10d
	addq	%rsi, %rbx
	addq	$6, %rbx
	jmp	.LBB11_2
.LBB11_3:                               # %if.else
	movl	$1, 40(%rdi,%r9,4)
	movq	24(%rdi), %rax
	movq	%rsi, 272(%rdi,%rax,8)
	movq	24(%rdi), %r9
	leaq	1(%r9), %rax
	movq	%rax, 24(%rdi)
	leal	-10(%rcx), %eax
	leaq	2(%rsi), %r10
	cmpl	$7, %eax
	ja	.LBB11_5
# %bb.4:                                # %if.then4
	movl	$0, 44(%rdi,%r9,4)
	movq	24(%rdi), %r9
	movq	%r10, 272(%rdi,%r9,8)
	movq	24(%rdi), %r11
	leaq	1(%r11), %r9
	movq	%r9, 24(%rdi)
	movl	%edx, %ebx
	shlq	$4, %rbx
	leaq	(%rsi,%rbx), %r9
	addq	$260, %r9                       # imm = 0x104
	movl	%eax, %r10d
	shrl	$2, %r10d
	addq	%rsi, %rbx
	addq	$262, %rbx                      # imm = 0x106
.LBB11_2:                               # %if.end12
	movl	%r10d, 44(%rdi,%r11,4)
	movq	24(%rdi), %r11
	movq	%rbx, 272(%rdi,%r11,8)
	movq	24(%rdi), %r11
	incq	%r11
	movq	%r11, 24(%rdi)
	orl	$2, %r10d
	jmp	.LBB11_6
.LBB11_5:                               # %if.else8
	movl	$1, 44(%rdi,%r9,4)
	movq	24(%rdi), %rax
	movq	%r10, 272(%rdi,%rax,8)
	movq	24(%rdi), %r10
	leaq	1(%r10), %rax
	movq	%rax, 24(%rdi)
	leal	-18(%rcx), %eax
	leaq	516(%rsi), %r9
	movl	%eax, %r11d
	shrl	$7, %r11d
	andl	$1, %r11d
	leaq	518(%rsi), %rbx
	movl	%r11d, 44(%rdi,%r10,4)
	movq	24(%rdi), %r10
	movq	%rbx, 272(%rdi,%r10,8)
	movq	24(%rdi), %r10
	leaq	1(%r10), %rbx
	movq	%rbx, 24(%rdi)
	movl	%eax, %ebx
	shrl	$6, %ebx
	andl	$1, %ebx
	leal	4(,%r11,2), %r14d
	addq	%rsi, %r14
	addq	$516, %r14                      # imm = 0x204
	movl	%ebx, 44(%rdi,%r10,4)
	movq	24(%rdi), %r10
	movq	%r14, 272(%rdi,%r10,8)
	movq	24(%rdi), %r10
	leaq	1(%r10), %r14
	movq	%r14, 24(%rdi)
	leal	(%rbx,%r11,2), %r11d
	addl	$4, %r11d
	movl	%eax, %ebx
	shrl	$5, %ebx
	andl	$1, %ebx
	leal	(%r11,%r11), %r14d
	addq	%rsi, %r14
	addq	$516, %r14                      # imm = 0x204
	movl	%ebx, 44(%rdi,%r10,4)
	movq	24(%rdi), %r10
	movq	%r14, 272(%rdi,%r10,8)
	movq	24(%rdi), %r10
	leaq	1(%r10), %r14
	movq	%r14, 24(%rdi)
	leal	(%rbx,%r11,2), %r11d
	movl	%eax, %ebx
	shrl	$4, %ebx
	andl	$1, %ebx
	leaq	(%rsi,%r11,2), %r14
	addq	$516, %r14                      # imm = 0x204
	movl	%ebx, 44(%rdi,%r10,4)
	movq	24(%rdi), %r10
	movq	%r14, 272(%rdi,%r10,8)
	movq	24(%rdi), %r10
	leaq	1(%r10), %r14
	movq	%r14, 24(%rdi)
	leal	(%rbx,%r11,2), %r11d
	movl	%eax, %ebx
	shrl	$3, %ebx
	andl	$1, %ebx
	leaq	(%rsi,%r11,2), %r14
	addq	$516, %r14                      # imm = 0x204
	movl	%ebx, 44(%rdi,%r10,4)
	movq	24(%rdi), %r10
	movq	%r14, 272(%rdi,%r10,8)
	movq	24(%rdi), %r10
	leaq	1(%r10), %r14
	movq	%r14, 24(%rdi)
	leal	(%rbx,%r11,2), %ebx
	movl	%eax, %r14d
	shrl	$2, %r14d
	andl	$1, %r14d
	leaq	(%rsi,%rbx,2), %r11
	addq	$516, %r11                      # imm = 0x204
	movl	%r14d, 44(%rdi,%r10,4)
	movq	24(%rdi), %r10
	movq	%r11, 272(%rdi,%r10,8)
	movq	24(%rdi), %r11
	incq	%r11
	movq	%r11, 24(%rdi)
	leal	(%r14,%rbx,2), %r10d
.LBB11_6:                               # %if.end12
	shrl	%eax
	andl	$1, %eax
	leal	(%r10,%r10), %ebx
	addq	%r9, %rbx
	movl	%eax, 40(%rdi,%r11,4)
	movq	24(%rdi), %r11
	movq	%rbx, 272(%rdi,%r11,8)
	movq	24(%rdi), %r11
	leaq	1(%r11), %rbx
	movq	%rbx, 24(%rdi)
	leal	(%rax,%r10,2), %eax
	andl	$1, %ecx
	leaq	(%r9,%rax,2), %rax
	movl	%ecx, 44(%rdi,%r11,4)
	movq	24(%rdi), %rcx
	movq	%rax, 272(%rdi,%rcx,8)
	incq	24(%rdi)
	testb	%r8b, %r8b
	jne	.LBB11_8
# %bb.7:                                # %if.then13
	movl	%edx, %eax
	decl	18440(%rsi,%rax,4)
	je	.LBB11_9
.LBB11_8:                               # %if.end19
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB11_9:                               # %if.then17
	.cfi_def_cfa_offset 24
	movq	%rsi, %rdi
	movl	%edx, %esi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	length_update_prices            # TAILCALL
.Lfunc_end11:
	.size	length, .Lfunc_end11-length
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function length_update_prices
	.type	length_update_prices,@function
length_update_prices:                   # @length_update_prices
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
	movl	18436(%rdi), %eax
	movl	%esi, %r11d
	movl	%eax, 18440(%rdi,%r11,4)
	movzwl	(%rdi), %ebx
	shrl	$4, %ebx
	movq	lzma_rc_prices@GOTPCREL(%rip), %rcx
	movq	%rbx, %rdx
	xorq	$127, %rdx
	movzbl	(%rcx,%rdx), %r8d
	movzwl	2(%rdi), %r9d
	shrl	$4, %r9d
	movq	%r9, %rdx
	xorq	$127, %rdx
	movzbl	(%rcx,%rdx), %edx
	imulq	$1088, %r11, %rsi               # imm = 0x440
	cmpl	$8, %eax
	movl	$8, %r15d
	movl	$8, %r10d
	cmovbl	%eax, %r10d
	addq	%rdi, %rsi
	addq	$1028, %rsi                     # imm = 0x404
	testq	%rax, %rax
	je	.LBB12_1
# %bb.10:                               # %for.body.lr.ph
	movzbl	(%rcx,%r9), %r9d
	addl	%r8d, %r9d
	movzbl	(%rcx,%rbx), %ebx
	shlq	$4, %r11
	leaq	(%rdi,%r11), %r14
	addq	$4, %r14
	xorl	%ebp, %ebp
	movl	$8, %r12d
	.p2align	4, 0x90
.LBB12_11:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%r12d
	andl	$-2, %r15d
	movzwl	(%r14,%r15), %r15d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r15d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r15d
	addl	%r15d, %ebp
	movl	%r12d, %r15d
	cmpl	$1, %r12d
	jne	.LBB12_11
# %bb.12:                               # %rc_bittree_price.exit
	addl	%ebx, %ebp
	movl	%ebp, (%rsi)
	cmpl	$1, %eax
	je	.LBB12_8
# %bb.13:                               # %do.body.i.1.preheader
	movl	$9, %r12d
	xorl	%ebp, %ebp
	movl	$9, %r15d
	.p2align	4, 0x90
.LBB12_14:                              # %do.body.i.1
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%r15d
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %ebp
	movl	%r15d, %r12d
	cmpl	$1, %r15d
	jne	.LBB12_14
# %bb.15:                               # %rc_bittree_price.exit.1
	addl	%ebx, %ebp
	movl	%ebp, 4(%rsi)
	cmpl	$2, %eax
	je	.LBB12_8
# %bb.16:                               # %do.body.i.2.preheader
	movl	$10, %r12d
	xorl	%ebp, %ebp
	movl	$10, %r15d
	.p2align	4, 0x90
.LBB12_17:                              # %do.body.i.2
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%r15d
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %ebp
	movl	%r15d, %r12d
	cmpl	$1, %r15d
	jne	.LBB12_17
# %bb.18:                               # %rc_bittree_price.exit.2
	addl	%ebx, %ebp
	movl	%ebp, 8(%rsi)
	cmpl	$3, %eax
	je	.LBB12_8
# %bb.19:                               # %do.body.i.3.preheader
	movl	$11, %r12d
	xorl	%ebp, %ebp
	movl	$11, %r15d
	.p2align	4, 0x90
.LBB12_20:                              # %do.body.i.3
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%r15d
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %ebp
	movl	%r15d, %r12d
	cmpl	$1, %r15d
	jne	.LBB12_20
# %bb.21:                               # %rc_bittree_price.exit.3
	addl	%ebx, %ebp
	movl	%ebp, 12(%rsi)
	cmpl	$4, %eax
	je	.LBB12_8
# %bb.22:                               # %do.body.i.4.preheader
	movl	$12, %r12d
	xorl	%ebp, %ebp
	movl	$12, %r15d
	.p2align	4, 0x90
.LBB12_23:                              # %do.body.i.4
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%r15d
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %ebp
	movl	%r15d, %r12d
	cmpl	$1, %r15d
	jne	.LBB12_23
# %bb.24:                               # %rc_bittree_price.exit.4
	addl	%ebx, %ebp
	movl	%ebp, 16(%rsi)
	cmpl	$5, %eax
	je	.LBB12_8
# %bb.25:                               # %do.body.i.5.preheader
	movl	$13, %r12d
	xorl	%ebp, %ebp
	movl	$13, %r15d
	.p2align	4, 0x90
.LBB12_26:                              # %do.body.i.5
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%r15d
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %ebp
	movl	%r15d, %r12d
	cmpl	$1, %r15d
	jne	.LBB12_26
# %bb.27:                               # %rc_bittree_price.exit.5
	addl	%ebx, %ebp
	movl	%ebp, 20(%rsi)
	cmpl	$6, %eax
	je	.LBB12_8
# %bb.28:                               # %do.body.i.6.preheader
	movl	$14, %r12d
	xorl	%ebp, %ebp
	movl	$14, %r15d
	.p2align	4, 0x90
.LBB12_29:                              # %do.body.i.6
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%r15d
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %ebp
	movl	%r15d, %r12d
	cmpl	$1, %r15d
	jne	.LBB12_29
# %bb.30:                               # %rc_bittree_price.exit.6
	addl	%ebx, %ebp
	movl	%ebp, 24(%rsi)
	cmpl	$7, %eax
	je	.LBB12_8
# %bb.31:                               # %do.body.i.7.preheader
	movl	$15, %r12d
	xorl	%ebp, %ebp
	movl	$15, %r15d
.LBB12_32:                              # %do.body.i.7
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%r15d
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %ebp
	movl	%r15d, %r12d
	cmpl	$1, %r15d
	jne	.LBB12_32
# %bb.33:                               # %rc_bittree_price.exit.7
	addl	%ebx, %ebp
	movl	%ebp, 28(%rsi)
.LBB12_8:                               # %for.cond20.preheader
	cmpl	$16, %eax
	movl	$16, %ebx
	cmovbl	%eax, %ebx
	cmpl	$9, %eax
	jb	.LBB12_9
# %bb.34:                               # %for.body25.lr.ph
	leaq	(%rdi,%r11), %r14
	addq	$260, %r14                      # imm = 0x104
	movl	%r10d, %r11d
	movl	%ebx, %r15d
	xorl	%ebp, %ebp
	movl	%r10d, %r12d
	.p2align	4, 0x90
.LBB12_35:                              # %do.body.i92
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%r12d
	andl	$-2, %r10d
	movzwl	(%r14,%r10), %r10d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r10d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r10d
	addl	%r10d, %ebp
	movl	%r12d, %r10d
	cmpl	$1, %r12d
	jne	.LBB12_35
# %bb.36:                               # %rc_bittree_price.exit107
	addl	%r9d, %ebp
	movl	%ebp, (%rsi,%r11,4)
	leaq	1(%r11), %r12
	cmpq	%r15, %r12
	je	.LBB12_2
# %bb.37:                               # %for.body25.1
	xorl	%r10d, %r10d
	movl	%r12d, %ebp
	.p2align	4, 0x90
.LBB12_38:                              # %do.body.i92.1
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%ebp
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %r10d
	movl	%ebp, %r12d
	cmpl	$1, %ebp
	jne	.LBB12_38
# %bb.39:                               # %rc_bittree_price.exit107.1
	addl	%r9d, %r10d
	movl	%r10d, 4(%rsi,%r11,4)
	leaq	2(%r11), %r12
	cmpq	%r15, %r12
	je	.LBB12_2
# %bb.40:                               # %for.body25.2
	xorl	%r10d, %r10d
	movl	%r12d, %ebp
	.p2align	4, 0x90
.LBB12_41:                              # %do.body.i92.2
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%ebp
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %r10d
	movl	%ebp, %r12d
	cmpl	$1, %ebp
	jne	.LBB12_41
# %bb.42:                               # %rc_bittree_price.exit107.2
	addl	%r9d, %r10d
	movl	%r10d, 8(%rsi,%r11,4)
	leaq	3(%r11), %r12
	cmpq	%r15, %r12
	je	.LBB12_2
# %bb.43:                               # %for.body25.3
	xorl	%r10d, %r10d
	movl	%r12d, %ebp
	.p2align	4, 0x90
.LBB12_44:                              # %do.body.i92.3
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%ebp
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %r10d
	movl	%ebp, %r12d
	cmpl	$1, %ebp
	jne	.LBB12_44
# %bb.45:                               # %rc_bittree_price.exit107.3
	addl	%r9d, %r10d
	movl	%r10d, 12(%rsi,%r11,4)
	leaq	4(%r11), %r12
	cmpq	%r15, %r12
	je	.LBB12_2
# %bb.46:                               # %for.body25.4
	xorl	%r10d, %r10d
	movl	%r12d, %ebp
	.p2align	4, 0x90
.LBB12_47:                              # %do.body.i92.4
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%ebp
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %r10d
	movl	%ebp, %r12d
	cmpl	$1, %ebp
	jne	.LBB12_47
# %bb.48:                               # %rc_bittree_price.exit107.4
	addl	%r9d, %r10d
	movl	%r10d, 16(%rsi,%r11,4)
	leaq	5(%r11), %r12
	cmpq	%r15, %r12
	je	.LBB12_2
# %bb.49:                               # %for.body25.5
	xorl	%r10d, %r10d
	movl	%r12d, %ebp
	.p2align	4, 0x90
.LBB12_50:                              # %do.body.i92.5
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%ebp
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %r10d
	movl	%ebp, %r12d
	cmpl	$1, %ebp
	jne	.LBB12_50
# %bb.51:                               # %rc_bittree_price.exit107.5
	addl	%r9d, %r10d
	movl	%r10d, 20(%rsi,%r11,4)
	leaq	6(%r11), %r12
	cmpq	%r15, %r12
	je	.LBB12_2
# %bb.52:                               # %for.body25.6
	xorl	%r10d, %r10d
	movl	%r12d, %ebp
.LBB12_53:                              # %do.body.i92.6
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r13d
	andl	$1, %r13d
	negl	%r13d
	shrl	%ebp
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r13d                    # imm = 0x7F0
	xorl	%r12d, %r13d
	shrl	$4, %r13d
	movzbl	(%rcx,%r13), %r12d
	addl	%r12d, %r10d
	movl	%ebp, %r12d
	cmpl	$1, %ebp
	jne	.LBB12_53
# %bb.54:                               # %rc_bittree_price.exit107.6
	addl	%r9d, %r10d
	movl	%r10d, 24(%rsi,%r11,4)
	leaq	7(%r11), %r12
	cmpq	%r15, %r12
	je	.LBB12_2
# %bb.55:                               # %for.body25.7
	xorl	%r10d, %r10d
	movl	%r12d, %ebp
.LBB12_56:                              # %do.body.i92.7
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r15d
	andl	$1, %r15d
	negl	%r15d
	shrl	%ebp
	andl	$-2, %r12d
	movzwl	(%r14,%r12), %r12d
	andl	$2032, %r15d                    # imm = 0x7F0
	xorl	%r12d, %r15d
	shrl	$4, %r15d
	movzbl	(%rcx,%r15), %r15d
	addl	%r15d, %r10d
	movl	%ebp, %r12d
	cmpl	$1, %ebp
	jne	.LBB12_56
# %bb.57:                               # %rc_bittree_price.exit107.7
	addl	%r10d, %r9d
	movl	%r9d, 28(%rsi,%r11,4)
	cmpl	%eax, %ebx
	jb	.LBB12_3
	jmp	.LBB12_7
.LBB12_1:
	xorl	%ebx, %ebx
.LBB12_2:                               # %for.cond36.preheader
	cmpl	%eax, %ebx
	jb	.LBB12_3
	jmp	.LBB12_7
.LBB12_9:
	movl	%r10d, %ebx
	cmpl	%eax, %ebx
	jae	.LBB12_7
.LBB12_3:                               # %for.body38.lr.ph
	addl	%r8d, %edx
	movl	%ebx, %r8d
	.p2align	4, 0x90
.LBB12_4:                               # %for.body38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_5 Depth 2
	leal	240(%r8), %r11d
	xorl	%r9d, %r9d
	movl	%r11d, %r10d
	.p2align	4, 0x90
.LBB12_5:                               # %do.body.i109
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r11d, %ebx
	andl	$1, %ebx
	negl	%ebx
	shrl	%r10d
	andl	$-2, %r11d
	movzwl	516(%rdi,%r11), %r11d
	andl	$2032, %ebx                     # imm = 0x7F0
	xorl	%r11d, %ebx
	shrl	$4, %ebx
	movzbl	(%rcx,%rbx), %r11d
	addl	%r11d, %r9d
	movl	%r10d, %r11d
	cmpl	$1, %r10d
	jne	.LBB12_5
# %bb.6:                                # %rc_bittree_price.exit124
                                        #   in Loop: Header=BB12_4 Depth=1
	addl	%edx, %r9d
	movl	%r9d, (%rsi,%r8,4)
	incq	%r8
	cmpq	%rax, %r8
	jne	.LBB12_4
.LBB12_7:                               # %for.end48
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
.Lfunc_end12:
	.size	length_update_prices, .Lfunc_end12-length_update_prices
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function lzma_encode
	.type	lzma_encode,@function
lzma_encode:                            # @lzma_encode
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$1, 104(%rsi)
	jne	.LBB13_2
# %bb.1:                                # %cleanup
	movl	$8, %eax
	retq
.LBB13_2:                               # %if.end
	movl	$-1, %r9d
	jmp	lzma_lzma_encode                # TAILCALL
.Lfunc_end13:
	.size	lzma_encode, .Lfunc_end13-lzma_encode
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
