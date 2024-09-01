	.text
	.file	"hardware.c"
	.globl	hardware_threadlimit_set        # -- Begin function hardware_threadlimit_set
	.p2align	4, 0x90
	.type	hardware_threadlimit_set,@function
hardware_threadlimit_set:               # @hardware_threadlimit_set
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$1, %edi
	adcl	$0, %edi
	movl	%edi, threadlimit(%rip)
	retq
.Lfunc_end0:
	.size	hardware_threadlimit_set, .Lfunc_end0-hardware_threadlimit_set
	.cfi_endproc
                                        # -- End function
	.globl	hardware_threadlimit_get        # -- Begin function hardware_threadlimit_get
	.p2align	4, 0x90
	.type	hardware_threadlimit_get,@function
hardware_threadlimit_get:               # @hardware_threadlimit_get
	.cfi_startproc
# %bb.0:                                # %entry
	movl	threadlimit(%rip), %eax
	retq
.Lfunc_end1:
	.size	hardware_threadlimit_get, .Lfunc_end1-hardware_threadlimit_get
	.cfi_endproc
                                        # -- End function
	.globl	hardware_memlimit_set           # -- Begin function hardware_memlimit_set
	.p2align	4, 0x90
	.type	hardware_memlimit_set,@function
hardware_memlimit_set:                  # @hardware_memlimit_set
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edx, %r8d
	testl	%ecx, %ecx
	jne	.LBB2_1
# %bb.2:                                # %if.end
	testb	%sil, %sil
	jne	.LBB2_3
.LBB2_4:                                # %if.end6
	testb	%r8b, %r8b
	jne	.LBB2_5
.LBB2_6:                                # %if.end9
	retq
.LBB2_1:                                # %if.then
	xorl	%ecx, %ecx
	cmpb	$0, total_ram(%rip)
	movl	$943718400, %eax                # imm = 0x38400000
	cmoveq	%rcx, %rax
	movl	%edi, %ecx
	imulq	%rcx, %rax
	movabsq	$2951479051793528259, %rcx      # imm = 0x28F5C28F5C28F5C3
	mulq	%rcx
	movq	%rdx, %rdi
	shrq	$4, %rdi
	testb	%sil, %sil
	je	.LBB2_4
.LBB2_3:                                # %if.then5
	movq	%rdi, memlimit_compress(%rip)
	testb	%r8b, %r8b
	je	.LBB2_6
.LBB2_5:                                # %if.then8
	movq	%rdi, memlimit_decompress(%rip)
	retq
.Lfunc_end2:
	.size	hardware_memlimit_set, .Lfunc_end2-hardware_memlimit_set
	.cfi_endproc
                                        # -- End function
	.globl	hardware_memlimit_get           # -- Begin function hardware_memlimit_get
	.p2align	4, 0x90
	.type	hardware_memlimit_get,@function
hardware_memlimit_get:                  # @hardware_memlimit_get
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%edi, %edi
	movl	$memlimit_compress, %eax
	movl	$memlimit_decompress, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rcx
	xorl	%eax, %eax
	cmpq	$1, %rcx
	sbbq	%rax, %rax
	orq	%rcx, %rax
	retq
.Lfunc_end3:
	.size	hardware_memlimit_get, .Lfunc_end3-hardware_memlimit_get
	.cfi_endproc
                                        # -- End function
	.globl	hardware_memlimit_show          # -- Begin function hardware_memlimit_show
	.p2align	4, 0x90
	.type	hardware_memlimit_show,@function
hardware_memlimit_show:                 # @hardware_memlimit_show
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	message_verbosity_get@PLT
	xorl	%edx, %edx
	testl	%eax, %eax
	setne	%dl
	xorl	%edi, %edi
	movl	$1, %esi
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	tuklib_exit@PLT                 # TAILCALL
.Lfunc_end4:
	.size	hardware_memlimit_show, .Lfunc_end4-hardware_memlimit_show
	.cfi_endproc
                                        # -- End function
	.globl	hardware_init                   # -- Begin function hardware_init
	.p2align	4, 0x90
	.type	hardware_init,@function
hardware_init:                          # @hardware_init
	.cfi_startproc
# %bb.0:                                # %entry
	movb	$1, total_ram(%rip)
	movq	$0, memlimit_compress(%rip)
	movq	$0, memlimit_decompress(%rip)
	movl	$1, threadlimit(%rip)
	retq
.Lfunc_end5:
	.size	hardware_init, .Lfunc_end5-hardware_init
	.cfi_endproc
                                        # -- End function
	.type	threadlimit,@object             # @threadlimit
	.local	threadlimit
	.comm	threadlimit,4,4
	.type	total_ram,@object               # @total_ram
	.local	total_ram
	.comm	total_ram,1,8
	.type	memlimit_compress,@object       # @memlimit_compress
	.local	memlimit_compress
	.comm	memlimit_compress,8,8
	.type	memlimit_decompress,@object     # @memlimit_decompress
	.local	memlimit_decompress
	.comm	memlimit_decompress,8,8
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
