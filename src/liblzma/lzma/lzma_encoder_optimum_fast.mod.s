	.text
	.file	"lzma_encoder_optimum_fast.c"
	.globl	lzma_lzma_optimum_fast          # -- Begin function lzma_lzma_optimum_fast
	.p2align	4, 0x90
	.type	lzma_lzma_optimum_fast,@function
lzma_lzma_optimum_fast:                 # @lzma_lzma_optimum_fast
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
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movl	96(%rsi), %r15d
	cmpl	$0, 28(%rsi)
	je	.LBB0_1
# %bb.2:                                # %if.else
	movl	2948(%r13), %eax
	movl	2952(%r13), %r12d
	movl	%eax, 28(%rsp)
	jmp	.LBB0_3
.LBB0_1:                                # %if.then
	leaq	756(%r13), %rdx
	leaq	28(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%rcx, %r14
	callq	lzma_mf_find@PLT
	movq	%r14, %rcx
	movl	%eax, %r12d
.LBB0_3:                                # %if.end
	movl	24(%rbx), %r14d
	movl	36(%rbx), %eax
	subl	%r14d, %eax
	incl	%eax
	cmpl	$273, %eax                      # imm = 0x111
	movl	$273, %r11d                     # imm = 0x111
	cmovbl	%eax, %r11d
	cmpl	$2, %eax
	jae	.LBB0_4
# %bb.53:                               # %if.then9
	movl	$-1, (%rbp)
	movl	$1, (%rcx)
	jmp	.LBB0_119
.LBB0_4:                                # %for.cond.preheader
	movl	%r15d, 16(%rsp)                 # 4-byte Spill
	movq	(%rbx), %rdx
	leaq	(%rdx,%r14), %r15
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	addq	%r14, %rdx
	decq	%rdx
	movzbl	(%rdx), %esi
	movl	740(%r13), %r9d
	movq	%r9, %r8
	negq	%r8
	movq	%r9, %rdi
	notq	%rdi
	movzbl	(%rdi,%rdx), %r10d
	cmpl	$2, %eax
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	jne	.LBB0_5
# %bb.39:                               # %for.cond.preheader.split
	cmpl	$2, 16(%rsp)                    # 4-byte Folded Reload
	jbe	.LBB0_40
# %bb.43:                               # %for.body.us445.preheader
	xorl	%r11d, %r11d
	movl	$1, %edi
	movl	$0, %r14d
	cmpb	%r10b, %sil
	jne	.LBB0_45
# %bb.44:                               # %lor.lhs.false.us456
	movzbl	(%r15), %r9d
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	cmpb	-1(%r15,%r8), %r9b
	sete	%r14b
	setne	%dil
	addl	%r14d, %r14d
.LBB0_45:                               # %for.inc48.us462
	movl	744(%r13), %r8d
	movq	%r8, %r9
	notq	%r9
	cmpb	(%r9,%rdx), %sil
	jne	.LBB0_47
# %bb.46:                               # %lor.lhs.false.us456.1
	negq	%r8
	movzbl	(%r15), %r9d
	xorl	%r11d, %r11d
	cmpb	-1(%r15,%r8), %r9b
	cmovel	%edi, %r11d
	movl	$2, %edi
	cmovel	%edi, %r14d
.LBB0_47:                               # %for.inc48.us462.1
	movl	748(%r13), %edi
	movq	%rdi, %r8
	notq	%r8
	cmpb	(%r8,%rdx), %sil
	jne	.LBB0_50
# %bb.48:                               # %lor.lhs.false.us456.2
	negq	%rdi
	movzbl	(%r15), %r8d
	cmpb	-1(%r15,%rdi), %r8b
	jne	.LBB0_50
# %bb.49:                               # %for.cond27.preheader.us467.2
	cmpl	$2, %r14d
	movl	$2, %r14d
	cmovbl	%r14d, %r11d
.LBB0_50:                               # %for.inc48.us462.2
	movl	752(%r13), %edi
	movq	%rdi, %r8
	notq	%r8
	cmpb	(%r8,%rdx), %sil
	jne	.LBB0_61
# %bb.51:                               # %lor.lhs.false.us456.3
	negq	%rdi
	movzbl	(%r15), %edx
	cmpb	-1(%r15,%rdi), %dl
	jne	.LBB0_61
# %bb.52:                               # %for.cond27.preheader.us467.3
	cmpl	$2, %r14d
	movl	$3, %edx
	cmovbl	%edx, %r11d
	movl	$2, %r14d
	jmp	.LBB0_61
.LBB0_5:                                # %for.body.us.preheader
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	cmpl	$4, %r11d
	movl	$3, %edi
	cmovael	%r11d, %edi
	xorl	%r11d, %r11d
	movl	$0, %r14d
	cmpb	%r10b, %sil
	jne	.LBB0_10
# %bb.6:                                # %lor.lhs.false.us
	movzbl	(%r15), %r10d
	movl	$0, %r14d
	cmpb	-1(%r15,%r8), %r10b
	jne	.LBB0_10
# %bb.7:                                # %land.rhs.us.preheader
	movl	%edi, %r8d
	movq	40(%rsp), %r10                  # 8-byte Reload
	subq	%r9, %r10
	addq	32(%rsp), %r10                  # 8-byte Folded Reload
	movl	$2, %r14d
	.p2align	4, 0x90
.LBB0_8:                                # %land.rhs.us
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r15,%r14), %r9d
	cmpb	-2(%r10,%r14), %r9b
	jne	.LBB0_9
# %bb.37:                               # %for.inc.us
                                        #   in Loop: Header=BB0_8 Depth=1
	incq	%r14
	cmpq	%r14, %r8
	jne	.LBB0_8
# %bb.38:
	movl	%edi, %r14d
.LBB0_9:                                # %for.end.us
	xorl	%r8d, %r8d
	movl	%r14d, %ebp
	cmpl	16(%rsp), %r14d                 # 4-byte Folded Reload
	jae	.LBB0_34
.LBB0_10:                               # %for.inc48.us
	movl	744(%r13), %r9d
	movq	%r9, %r8
	notq	%r8
	cmpb	(%r8,%rdx), %sil
	jne	.LBB0_18
# %bb.11:                               # %lor.lhs.false.us.1
	movq	%r9, %r8
	negq	%r8
	movzbl	(%r15), %r10d
	cmpb	-1(%r15,%r8), %r10b
	jne	.LBB0_18
# %bb.12:                               # %land.rhs.us.preheader.1
	movl	%edi, %r10d
	movq	40(%rsp), %r8                   # 8-byte Reload
	subq	%r9, %r8
	addq	32(%rsp), %r8                   # 8-byte Folded Reload
	movl	$2, %ebp
	.p2align	4, 0x90
.LBB0_13:                               # %land.rhs.us.1
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r15,%rbp), %r9d
	cmpb	-2(%r8,%rbp), %r9b
	jne	.LBB0_16
# %bb.14:                               # %for.inc.us.1
                                        #   in Loop: Header=BB0_13 Depth=1
	incq	%rbp
	cmpq	%rbp, %r10
	jne	.LBB0_13
# %bb.15:
	movl	%edi, %ebp
.LBB0_16:                               # %for.end.us.1
	movl	$1, %r8d
	cmpl	16(%rsp), %ebp                  # 4-byte Folded Reload
	jae	.LBB0_34
# %bb.17:                               # %if.end42.us.1
	xorl	%r11d, %r11d
	cmpl	%r14d, %ebp
	seta	%r11b
	cmoval	%ebp, %r14d
.LBB0_18:                               # %for.inc48.us.1
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movl	748(%r13), %r10d
	movq	%r10, %r8
	notq	%r8
	cmpb	(%r8,%rdx), %sil
	jne	.LBB0_26
# %bb.19:                               # %lor.lhs.false.us.2
	movq	%r10, %r8
	negq	%r8
	movzbl	(%r15), %r9d
	cmpb	-1(%r15,%r8), %r9b
	jne	.LBB0_26
# %bb.20:                               # %land.rhs.us.preheader.2
	movl	%edi, %r8d
	movq	40(%rsp), %r9                   # 8-byte Reload
	subq	%r10, %r9
	addq	32(%rsp), %r9                   # 8-byte Folded Reload
	movl	$2, %ebp
	.p2align	4, 0x90
.LBB0_21:                               # %land.rhs.us.2
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r15,%rbp), %r10d
	cmpb	-2(%r9,%rbp), %r10b
	jne	.LBB0_24
# %bb.22:                               # %for.inc.us.2
                                        #   in Loop: Header=BB0_21 Depth=1
	incq	%rbp
	cmpq	%rbp, %r8
	jne	.LBB0_21
# %bb.23:
	movl	%edi, %ebp
.LBB0_24:                               # %for.end.us.2
	movl	$2, %r8d
	cmpl	16(%rsp), %ebp                  # 4-byte Folded Reload
	jae	.LBB0_34
# %bb.25:                               # %if.end42.us.2
	cmpl	%r14d, %ebp
	cmoval	%r8d, %r11d
	cmoval	%ebp, %r14d
	movq	8(%rsp), %rbp                   # 8-byte Reload
.LBB0_26:                               # %for.inc48.us.2
	movl	752(%r13), %r8d
	movq	%r8, %r9
	notq	%r9
	cmpb	(%r9,%rdx), %sil
	jne	.LBB0_61
# %bb.27:                               # %lor.lhs.false.us.3
	movq	%r8, %rdx
	negq	%rdx
	movzbl	(%r15), %esi
	cmpb	-1(%r15,%rdx), %sil
	jne	.LBB0_61
# %bb.28:                               # %land.rhs.us.preheader.3
	movl	%edi, %edx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	subq	%r8, %rsi
	addq	32(%rsp), %rsi                  # 8-byte Folded Reload
	movl	$2, %r8d
	.p2align	4, 0x90
.LBB0_29:                               # %land.rhs.us.3
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r15,%r8), %r9d
	cmpb	-2(%rsi,%r8), %r9b
	jne	.LBB0_31
# %bb.30:                               # %for.inc.us.3
                                        #   in Loop: Header=BB0_29 Depth=1
	incq	%r8
	cmpq	%r8, %rdx
	jne	.LBB0_29
# %bb.32:                               # %for.end.us.3
	movl	$3, %r8d
	cmpl	16(%rsp), %edi                  # 4-byte Folded Reload
	jae	.LBB0_33
.LBB0_36:                               # %if.end42.us.3
	cmpl	%r14d, %edi
	movl	$3, %edx
	cmoval	%edx, %r11d
	cmoval	%edi, %r14d
	jmp	.LBB0_61
.LBB0_40:                               # %for.body.preheader
	cmpb	%r10b, %sil
	jne	.LBB0_54
# %bb.41:                               # %lor.lhs.false
	movzbl	(%r15), %r9d
	xorl	%edi, %edi
	cmpb	-1(%r15,%r8), %r9b
	je	.LBB0_42
.LBB0_54:                               # %for.inc48
	movl	744(%r13), %r9d
	movq	%r9, %rdi
	notq	%rdi
	cmpb	(%rdi,%rdx), %sil
	jne	.LBB0_56
# %bb.55:                               # %lor.lhs.false.1
	negq	%r9
	movzbl	(%r15), %r8d
	movl	$1, %edi
	cmpb	-1(%r15,%r9), %r8b
	je	.LBB0_42
.LBB0_56:                               # %for.inc48.1
	movl	748(%r13), %r9d
	movq	%r9, %rdi
	notq	%rdi
	cmpb	(%rdi,%rdx), %sil
	jne	.LBB0_58
# %bb.57:                               # %lor.lhs.false.2
	negq	%r9
	movzbl	(%r15), %r8d
	movl	$2, %edi
	cmpb	-1(%r15,%r9), %r8b
	je	.LBB0_42
.LBB0_58:                               # %for.inc48.2
	movl	752(%r13), %r8d
	movq	%r8, %rdi
	notq	%rdi
	xorl	%r11d, %r11d
	cmpb	(%rdi,%rdx), %sil
	jne	.LBB0_59
# %bb.60:                               # %lor.lhs.false.3
	negq	%r8
	movzbl	(%r15), %edx
	movl	$3, %edi
	movl	$0, %r14d
	cmpb	-1(%r15,%r8), %dl
	jne	.LBB0_61
.LBB0_42:                               # %if.then41.thread
	movl	%edi, (%rbp)
	movl	$2, (%rcx)
	movl	$1, %ebp
	jmp	.LBB0_35
.LBB0_59:
	xorl	%r14d, %r14d
.LBB0_61:                               # %for.end52
	cmpl	16(%rsp), %r12d                 # 4-byte Folded Reload
	jae	.LBB0_62
# %bb.63:                               # %if.end62
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	xorl	%ebp, %ebp
	cmpl	$2, %r12d
	jb	.LBB0_70
# %bb.64:                               # %if.then65
	movl	28(%rsp), %edx
	leal	-1(%rdx), %esi
	movl	760(%r13,%rsi,8), %ebp
	cmpq	$2, %rdx
	jb	.LBB0_69
# %bb.65:                               # %land.rhs73.preheader
	leaq	744(,%rdx,8), %rsi
	addq	%r13, %rsi
	.p2align	4, 0x90
.LBB0_66:                               # %land.rhs73
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rsi), %edi
	leal	1(%rdi), %r8d
	cmpl	%r8d, %r12d
	jne	.LBB0_69
# %bb.67:                               # %while.body
                                        #   in Loop: Header=BB0_66 Depth=1
	movl	%ebp, %r9d
	shrl	$7, %r9d
	movl	(%rsi), %r8d
	cmpl	%r8d, %r9d
	jbe	.LBB0_69
# %bb.68:                               # %if.end91
                                        #   in Loop: Header=BB0_66 Depth=1
	decl	%edx
	movl	%edx, 28(%rsp)
	addq	$-8, %rsi
	movl	%r8d, %ebp
	movl	%edi, %r12d
	cmpl	$1, %edx
	ja	.LBB0_66
.LBB0_69:                               # %while.end
	cmpl	$127, %ebp
	movl	$1, %edx
	cmovbel	%r12d, %edx
	cmpl	$2, %r12d
	cmovnel	%r12d, %edx
	movl	%edx, %r12d
.LBB0_70:                               # %if.end108
	cmpl	$2, %r14d
	jb	.LBB0_77
# %bb.71:                               # %if.then111
	leal	1(%r14), %edx
	cmpl	%r12d, %edx
	jae	.LBB0_76
# %bb.72:                               # %lor.lhs.false115
	leal	2(%r14), %edx
	cmpl	%r12d, %edx
	jb	.LBB0_74
# %bb.73:                               # %lor.lhs.false115
	cmpl	$512, %ebp                      # imm = 0x200
	ja	.LBB0_76
.LBB0_74:                               # %lor.lhs.false122
	leal	3(%r14), %edx
	cmpl	%r12d, %edx
	jb	.LBB0_77
# %bb.75:                               # %lor.lhs.false122
	cmpl	$32769, %ebp                    # imm = 0x8001
	jb	.LBB0_77
.LBB0_76:                               # %mf_skip.exit409
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	%r11d, (%rax)
	movl	%r14d, (%rcx)
	decl	%r14d
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*56(%rbx)
	addl	%r14d, 28(%rbx)
	jmp	.LBB0_119
.LBB0_62:                               # %if.then55
	movl	28(%rsp), %eax
	decl	%eax
	movl	760(%r13,%rax,8), %eax
	addl	$4, %eax
	movl	%eax, (%rbp)
	movl	%r12d, (%rcx)
	decl	%r12d
	je	.LBB0_119
.LBB0_99:                               # %if.then.i411
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*56(%rbx)
	addl	%r12d, 28(%rbx)
	jmp	.LBB0_119
.LBB0_77:                               # %if.end132
	cmpl	$2, %eax
	je	.LBB0_79
# %bb.78:                               # %if.end132
	cmpl	$1, %r12d
	jbe	.LBB0_79
# %bb.80:                               # %if.end139
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	leaq	2948(%r13), %r14
	leaq	756(%r13), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	callq	lzma_mf_find@PLT
	movl	%eax, 2952(%r13)
	cmpl	$2, %eax
	jb	.LBB0_89
# %bb.81:                               # %if.then148
	movl	(%r14), %ecx
	decl	%ecx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movl	4(%rdx,%rcx,8), %ecx
	cmpl	%r12d, %eax
	jb	.LBB0_83
# %bb.82:                               # %if.then148
	cmpl	%ebp, %ecx
	jae	.LBB0_83
.LBB0_88:                               # %if.then187
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	$-1, (%rax)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	$1, (%rax)
	jmp	.LBB0_119
.LBB0_79:                               # %if.then138
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	$-1, (%rax)
	movl	$1, (%rcx)
	jmp	.LBB0_119
.LBB0_31:                               # %for.end.us.3.split.loop.exit544
	movl	%r8d, %edi
	movl	$3, %r8d
	cmpl	16(%rsp), %edi                  # 4-byte Folded Reload
	jb	.LBB0_36
.LBB0_33:
	movl	%edi, %ebp
.LBB0_34:                               # %if.then41
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	%r8d, (%rax)
	movl	%ebp, (%rcx)
	decl	%ebp
	je	.LBB0_119
.LBB0_35:                               # %if.then.i
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*56(%rbx)
	addl	%ebp, 28(%rbx)
.LBB0_119:                              # %cleanup260
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
.LBB0_83:                               # %lor.lhs.false161
	.cfi_def_cfa_offset 112
	leal	1(%r12), %edi
	cmpl	%edi, %eax
	sete	%dl
	movl	%ecx, %esi
	shrl	$7, %esi
	cmpl	%ebp, %esi
	setbe	%sil
	cmpl	%edi, %eax
	ja	.LBB0_88
# %bb.84:                               # %lor.lhs.false161
	andb	%sil, %dl
	jne	.LBB0_88
# %bb.85:                               # %lor.lhs.false175
	cmpl	$3, %r12d
	jb	.LBB0_89
# %bb.86:                               # %lor.lhs.false175
	incl	%eax
	cmpl	%r12d, %eax
	jb	.LBB0_89
# %bb.87:                               # %lor.lhs.false175
	movl	%ebp, %eax
	shrl	$7, %eax
	cmpl	%ecx, %eax
	ja	.LBB0_88
.LBB0_89:                               # %if.end192
	leal	-1(%r12), %ecx
	movzbl	(%r15), %eax
	movl	740(%r13), %esi
	movq	%rsi, %rdx
	negq	%rdx
	movq	%rsi, %rdi
	notq	%rdi
	movzbl	(%rdi,%r15), %edi
	cmpl	$2, %ecx
	movq	16(%rsp), %r10                  # 8-byte Reload
	jbe	.LBB0_90
# %bb.100:                              # %for.body199.us.preheader
	cmpb	%dil, %al
	movq	40(%rsp), %r11                  # 8-byte Reload
	jne	.LBB0_105
# %bb.101:                              # %lor.lhs.false214.us
	movzbl	1(%r15), %edi
	cmpb	(%r15,%rdx), %dil
	jne	.LBB0_105
# %bb.102:                              # %land.rhs227.us.preheader
	movl	%ecx, %edx
	movq	%r11, %rdi
	subq	%rsi, %rdi
	movq	32(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rdi), %rsi
	incq	%rsi
	leaq	(%r11,%r8), %rdi
	addq	$2, %rdi
	addq	$-2, %rdx
	xorl	%r8d, %r8d
.LBB0_104:                              # %land.rhs227.us
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r8), %r9d
	cmpb	(%rsi,%r8), %r9b
	jne	.LBB0_105
# %bb.103:                              # %for.cond224.us
                                        #   in Loop: Header=BB0_104 Depth=1
	incq	%r8
	cmpq	%r8, %rdx
	jne	.LBB0_104
	jmp	.LBB0_118
.LBB0_90:                               # %for.body199.preheader
	cmpb	%dil, %al
	jne	.LBB0_92
# %bb.91:                               # %lor.lhs.false214
	movzbl	1(%r15), %ecx
	cmpb	(%r15,%rdx), %cl
	je	.LBB0_118
.LBB0_92:                               # %for.inc249
	movl	744(%r13), %ecx
	movq	%rcx, %rdx
	notq	%rdx
	cmpb	(%rdx,%r15), %al
	jne	.LBB0_94
# %bb.93:                               # %lor.lhs.false214.1
	negq	%rcx
	movzbl	1(%r15), %edx
	cmpb	(%r15,%rcx), %dl
	je	.LBB0_118
.LBB0_94:                               # %for.inc249.1
	movl	748(%r13), %ecx
	movq	%rcx, %rdx
	notq	%rdx
	cmpb	(%rdx,%r15), %al
	jne	.LBB0_96
# %bb.95:                               # %lor.lhs.false214.2
	negq	%rcx
	movzbl	1(%r15), %edx
	cmpb	(%r15,%rcx), %dl
	je	.LBB0_118
.LBB0_96:                               # %for.inc249.2
	movl	752(%r13), %ecx
	movq	%rcx, %rdx
	notq	%rdx
	cmpb	(%rdx,%r15), %al
	jne	.LBB0_98
# %bb.97:                               # %lor.lhs.false214.3
	negq	%rcx
	movzbl	1(%r15), %eax
	cmpb	(%r15,%rcx), %al
	je	.LBB0_118
	jmp	.LBB0_98
.LBB0_105:                              # %for.inc249.us
	movl	744(%r13), %esi
	movq	%rsi, %rdx
	notq	%rdx
	cmpb	(%rdx,%r15), %al
	jne	.LBB0_109
# %bb.106:                              # %lor.lhs.false214.us.1
	movq	%rsi, %rdx
	negq	%rdx
	movzbl	1(%r15), %edi
	cmpb	(%r15,%rdx), %dil
	jne	.LBB0_109
# %bb.107:                              # %land.rhs227.us.preheader.1
	movl	%ecx, %edx
	addq	$-2, %rdx
	movq	%r11, %rdi
	subq	%rsi, %rdi
	movq	32(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rdi), %rsi
	incq	%rsi
	leaq	(%r11,%r8), %rdi
	addq	$2, %rdi
	xorl	%r8d, %r8d
.LBB0_108:                              # %land.rhs227.us.1
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r8), %r9d
	cmpb	(%rsi,%r8), %r9b
	jne	.LBB0_109
# %bb.120:                              # %for.cond224.us.1
                                        #   in Loop: Header=BB0_108 Depth=1
	incq	%r8
	cmpq	%r8, %rdx
	jne	.LBB0_108
	jmp	.LBB0_118
.LBB0_109:                              # %for.inc249.us.1
	movl	748(%r13), %esi
	movq	%rsi, %rdx
	notq	%rdx
	cmpb	(%rdx,%r15), %al
	jne	.LBB0_113
# %bb.110:                              # %lor.lhs.false214.us.2
	movq	%rsi, %rdx
	negq	%rdx
	movzbl	1(%r15), %edi
	cmpb	(%r15,%rdx), %dil
	jne	.LBB0_113
# %bb.111:                              # %land.rhs227.us.preheader.2
	movl	%ecx, %edx
	addq	$-2, %rdx
	movq	%r11, %rdi
	subq	%rsi, %rdi
	movq	32(%rsp), %r8                   # 8-byte Reload
	leaq	(%r8,%rdi), %rsi
	incq	%rsi
	leaq	(%r11,%r8), %rdi
	addq	$2, %rdi
	xorl	%r8d, %r8d
.LBB0_112:                              # %land.rhs227.us.2
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r8), %r9d
	cmpb	(%rsi,%r8), %r9b
	jne	.LBB0_113
# %bb.121:                              # %for.cond224.us.2
                                        #   in Loop: Header=BB0_112 Depth=1
	incq	%r8
	cmpq	%r8, %rdx
	jne	.LBB0_112
	jmp	.LBB0_118
.LBB0_113:                              # %for.inc249.us.2
	movl	752(%r13), %edx
	movq	%rdx, %rsi
	notq	%rsi
	cmpb	(%rsi,%r15), %al
	jne	.LBB0_98
# %bb.114:                              # %lor.lhs.false214.us.3
	movq	%rdx, %rax
	negq	%rax
	movzbl	1(%r15), %esi
	cmpb	(%r15,%rax), %sil
	jne	.LBB0_98
# %bb.115:                              # %land.rhs227.us.preheader.3
	movl	%ecx, %eax
	addq	$-2, %rax
	movq	%r11, %rcx
	subq	%rdx, %rcx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addq	%rdx, %rcx
	incq	%rcx
	addq	%r11, %rdx
	addq	$2, %rdx
	xorl	%esi, %esi
.LBB0_116:                              # %land.rhs227.us.3
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx,%rsi), %edi
	cmpb	(%rcx,%rsi), %dil
	jne	.LBB0_98
# %bb.117:                              # %for.cond224.us.3
                                        #   in Loop: Header=BB0_116 Depth=1
	incq	%rsi
	cmpq	%rsi, %rax
	jne	.LBB0_116
.LBB0_118:                              # %cleanup251
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	$-1, (%rax)
	movl	$1, (%r10)
	jmp	.LBB0_119
.LBB0_98:                               # %for.end253
	addl	$4, %ebp
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	%ebp, (%rax)
	movl	%r12d, (%r10)
	addl	$-2, %r12d
	jne	.LBB0_99
	jmp	.LBB0_119
.Lfunc_end0:
	.size	lzma_lzma_optimum_fast, .Lfunc_end0-lzma_lzma_optimum_fast
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
