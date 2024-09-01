	.text
	.file	"lzma_encoder_presets.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function lzma_lzma_preset
.LCPI0_0:
	.long	0                               # 0x0
	.long	3                               # 0x3
	.long	0                               # 0x0
	.long	2                               # 0x2
	.text
	.globl	lzma_lzma_preset
	.p2align	4, 0x90
	.type	lzma_lzma_preset,@function
lzma_lzma_preset:                       # @lzma_lzma_preset
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %edx
	andl	$31, %edx
	cmpl	$10, %edx
	setae	%cl
	testl	$2147483616, %esi               # imm = 0x7FFFFFE0
	setne	%r8b
	movb	$1, %al
	orb	%cl, %r8b
	jne	.LBB0_9
# %bb.1:                                # %if.end
	movq	$0, 8(%rdi)
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,3,0,2]
	movups	%xmm0, 16(%rdi)
	movabsq	$1735881565001815058, %rax      # imm = 0x1817171616151412
	movq	%rax, -16(%rsp)
	movw	$6681, -8(%rsp)                 # imm = 0x1A19
	movzbl	-16(%rsp,%rdx), %ecx
	movl	$1, %r8d
	shll	%cl, %r8d
	movl	$1, %eax
	movl	%r8d, (%rdi)
	cmpl	$3, %edx
	ja	.LBB0_3
# %bb.2:                                # %if.then13
	cmpl	$1, %edx
	movl	$4, %ecx
	sbbl	$0, %ecx
	cmpl	$2, %edx
	movl	$128, %r9d
	movl	$273, %r8d                      # imm = 0x111
	cmovbl	%r9d, %r8d
	movl	$806881284, -20(%rsp)           # imm = 0x30180804
	movzbl	-20(%rsp,%rdx), %r9d
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	xorl	%eax, %eax
	cmpl	$5, %edx
	setne	%al
	shll	$5, %eax
	addl	$32, %eax
	cmpl	$4, %edx
	movl	$16, %r8d
	cmovnel	%eax, %r8d
	xorl	%r9d, %r9d
	movl	$20, %ecx
	movl	$2, %eax
.LBB0_4:                                # %if.end36
	movl	%eax, 32(%rdi)
	movl	%ecx, 40(%rdi)
	movl	%r8d, 36(%rdi)
	movl	%r9d, 44(%rdi)
	xorl	%eax, %eax
	testl	%esi, %esi
	js	.LBB0_5
.LBB0_9:                                # %cleanup
                                        # kill: def $al killed $al killed $eax
	retq
.LBB0_5:                                # %if.then39
	movl	$2, 32(%rdi)
	movl	$20, 40(%rdi)
	movl	$192, %ecx
	cmpl	$3, %edx
	je	.LBB0_8
# %bb.6:                                # %if.then39
	cmpl	$5, %edx
	je	.LBB0_8
# %bb.7:                                # %if.else50
	movl	$512, %eax                      # imm = 0x200
	movl	$273, %ecx                      # imm = 0x111
.LBB0_8:                                # %cleanup.sink.split
	movl	%ecx, 36(%rdi)
	movl	%eax, 44(%rdi)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	lzma_lzma_preset, .Lfunc_end0-lzma_lzma_preset
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
