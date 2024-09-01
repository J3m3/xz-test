	.text
	.file	"spec.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	movq	%rsi, %r13
	movl	%edi, %r14d
	movl	$64, %edi
	callq	malloc@PLT
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	je	.LBB0_39
# %bb.1:                                # %if.end
	movq	$-1, (%rsp)                     # 8-byte Folded Spill
	xorl	%ebx, %ebx
	cmpl	$2, %r14d
	jl	.LBB0_7
# %bb.2:                                # %if.end4
	movq	8(%r13), %rbp
	xorl	%ebx, %ebx
	cmpl	$2, %r14d
	je	.LBB0_8
# %bb.3:                                # %if.end9
	movq	16(%r13), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %r12
	cmpl	$4, %r14d
	jb	.LBB0_9
# %bb.4:                                # %if.then11
	movq	24(%r13), %rbx
	movq	%rbx, %rdi
	callq	strlen@PLT
	movabsq	$4611686018427387903, %rcx      # imm = 0x3FFFFFFFFFFFFFFF
	andq	%rax, %rcx
	cmpq	$128, %rcx
	jne	.LBB0_42
# %bb.5:                                # %if.end23
	movq	%rbx, %rdi
	movl	$512, %esi                      # imm = 0x200
	callq	sum_str_to_hex@PLT
	movq	%rax, %rbx
	cmpl	$4, %r14d
	je	.LBB0_9
# %bb.34:                               # %if.end29
	movq	32(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %r15
	cmpl	$6, %r14d
	movq	%rax, (%rsp)                    # 8-byte Spill
	jb	.LBB0_10
# %bb.35:                               # %if.end35
	movq	40(%r13), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	testq	%rax, %rax
	cmovnsq	%rax, %r15
	jmp	.LBB0_10
.LBB0_7:
	xorl	%ebp, %ebp
.LBB0_8:
	xorl	%r12d, %r12d
.LBB0_9:                                # %if.end35.thread
	movq	$-1, %r15
.LBB0_10:                               # %if.end35.thread
	cmpl	$6, %r14d
	jl	.LBB0_40
# %bb.11:                               # %if.end35.thread
	testq	%rbp, %rbp
	je	.LBB0_40
# %bb.12:                               # %if.end35.thread
	testq	%r12, %r12
	jle	.LBB0_40
# %bb.13:                               # %if.end35.thread
	testq	%rbx, %rbx
	je	.LBB0_40
# %bb.14:                               # %if.end35.thread
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	je	.LBB0_40
# %bb.15:                               # %if.end35.thread
	testq	%r15, %r15
	je	.LBB0_40
# %bb.16:                               # %if.end59
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	movl	$.L.str.3, %edi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$3, %edi
	callq	spec_mem_alloc_fds@PLT
	movq	spec_fd@GOTPCREL(%rip), %r15
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_41
# %bb.17:                               # %if.end66
	movq	%r12, %rcx
	shlq	$20, %r12
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	cmpq	$254, %rcx
	movl	$266338304, %ecx                # imm = 0xFE00000
	cmovaeq	%r12, %rcx
	movq	%rcx, 40(%rax)
	movq	%rcx, (%rax)
	movq	(%r15), %rdi
	movl	$3, %esi
	movl	$1, %edx
	callq	spec_mem_init@PLT
	callq	debug_time@PLT
	movl	$.Lstr, %edi
	callq	puts@PLT
	movq	(%r15), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	movq	%r12, %r8
	movl	$1, %r9d
	pushq	$512                            # imm = 0x200
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	spec_mem_load@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	(%r15), %rax
	movq	8(%rax), %rsi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	(%r15), %rax
	movl	$1, 104(%rax)
	movl	$1, 64(%rax)
	movl	$1, 24(%rax)
	xorl	%eax, %eax
	callq	spec_initbufs@PLT
	cmpl	$7, %r14d
	jb	.LBB0_32
# %bb.18:                               # %for.body.lr.ph
	movl	%r14d, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	$6, %r12d
	movq	%r13, 8(%rsp)                   # 8-byte Spill
.LBB0_19:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%r12,8), %rsi
	movzbl	(%rsi), %ebp
	leal	-58(%rbp), %eax
	cmpb	$-11, %al
	jbe	.LBB0_36
# %bb.20:                               # %if.end118
                                        #   in Loop: Header=BB0_19 Depth=1
	xorl	%r13d, %r13d
	cmpb	$101, 1(%rsi)
	sete	%r13b
	movl	$.L.str.10, %ebx
	movl	$.L.str.9, %eax
	cmoveq	%rax, %rbx
	shll	$31, %r13d
	leal	-48(%rbp), %r14d
	callq	debug_time@PLT
	movl	$.L.str.8, %edi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	leal	-48(%r13,%rbp), %edx
	xorl	%edi, %edi
	movl	$1, %esi
	callq	spec_compress@PLT
	callq	debug_time@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r15), %rax
	movq	48(%rax), %rdx
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	(%rsp), %rdx                    # 8-byte Reload
	testq	%rdx, %rdx
	jle	.LBB0_30
# %bb.21:                               # %if.then127
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	(%r15), %rax
	movq	48(%rax), %rsi
	cmpq	%rdx, %rsi
	movq	32(%rsp), %rax                  # 8-byte Reload
	jl	.LBB0_25
# %bb.22:                               # %if.then127
                                        #   in Loop: Header=BB0_19 Depth=1
	cmpq	%rax, %rsi
	jg	.LBB0_25
# %bb.23:                               # %if.then136
                                        #   in Loop: Header=BB0_19 Depth=1
	cmpq	%rax, %rdx
	jne	.LBB0_28
# %bb.24:                               # %if.then139
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	$.L.str.12, %edi
	movq	%rdx, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB0_30
	.p2align	4, 0x90
.LBB0_25:                               # %if.else144
                                        #   in Loop: Header=BB0_19 Depth=1
	cmpq	%rax, %rdx
	jne	.LBB0_27
# %bb.26:                               # %if.then147
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	$.L.str.14, %edi
	jmp	.LBB0_29
.LBB0_27:                               # %if.else151
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	$.L.str.15, %edi
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB0_30
.LBB0_28:                               # %if.else141
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	$.L.str.13, %edi
	movq	%rdx, %rsi
	movq	%rax, %rdx
.LBB0_29:                               # %if.end157
                                        #   in Loop: Header=BB0_19 Depth=1
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_30:                               # %if.end157
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	$.Lstr.25, %edi
	callq	puts@PLT
	movq	(%r15), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	spec_mem_reset@PLT
	movq	(%r15), %rdi
	movl	$3, %esi
	movl	$1, %edx
	callq	spec_mem_rewind@PLT
	callq	debug_time@PLT
	movl	$.Lstr.26, %edi
	callq	puts@PLT
	movl	$1, %edi
	xorl	%esi, %esi
	callq	spec_uncompress@PLT
	callq	debug_time@PLT
	movq	(%r15), %rax
	movq	8(%rax), %rsi
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	(%r15), %rdi
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rsi
	movl	$512, %edx                      # imm = 0x200
	callq	spec_mem_sum@PLT
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	%rbx, %rsi
	movl	$512, %edx                      # imm = 0x200
	callq	compare_sum@PLT
	testl	%eax, %eax
	jne	.LBB0_38
# %bb.31:                               # %if.end176
                                        #   in Loop: Header=BB0_19 Depth=1
	callq	debug_time@PLT
	movl	$.Lstr.27, %edi
	callq	puts@PLT
	movq	(%r15), %rdi
	movl	$3, %esi
	movl	$1, %edx
	callq	spec_mem_reset@PLT
	movq	(%r15), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	spec_mem_rewind@PLT
	movl	$.L.str.24, %edi
	movq	48(%rsp), %rsi                  # 8-byte Reload
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
	incq	%r12
	cmpq	%r12, 40(%rsp)                  # 8-byte Folded Reload
	movq	8(%rsp), %r13                   # 8-byte Reload
	jne	.LBB0_19
.LBB0_32:                               # %for.end
	xorl	%eax, %eax
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
.LBB0_36:                               # %if.then112
	.cfi_def_cfa_offset 112
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rsi
.LBB0_37:                               # %if.then56
	movl	$.L.str.2, %edi
	movl	$512, %edx                      # imm = 0x200
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_38:                               # %if.then170
	movl	$.L.str.19, %edi
	movl	$512, %esi                      # imm = 0x200
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	$512, %edx                      # imm = 0x200
	callq	print_sum@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.L.str.22, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	(%rbx), %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	$512, %edx                      # imm = 0x200
	callq	print_sum@PLT
	movl	$10, %edi
	callq	putchar@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_39:                               # %if.then
	movl	$.L.str, %edi
	movl	$512, %esi                      # imm = 0x200
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_40:                               # %if.then56
	movq	(%r13), %rsi
	jmp	.LBB0_37
.LBB0_41:                               # %if.then64
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.4, %edi
	movl	$44, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_42:                               # %if.then15
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.1, %esi
	movl	$512, %edx                      # imm = 0x200
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"main: Error mallocing memory for SHA-%d sum!\n"
	.size	.L.str, 46

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error: Supplied original hash value is not the correct length to be SHA-%d\n"
	.size	.L.str.1, 76

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Usage: %s <input filename> <input size> <input raw SHA-%d> <compressed minimum> <compressed maximum> <compression level, ...>\n"
	.size	.L.str.2, 127

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"SPEC CPU XZ driver: input=%s insize=%ld\n"
	.size	.L.str.3, 41

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Error allocating in-memory file descriptors\n"
	.size	.L.str.4, 45

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Input data %ld bytes in length\n"
	.size	.L.str.6, 32

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Error: compression level '%s' is not valid\n"
	.size	.L.str.7, 44

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Compressing Input Data, level %d%s\n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" (extreme)"
	.size	.L.str.9, 11

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.zero	1
	.size	.L.str.10, 1

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Compressed data %ld bytes in length\n"
	.size	.L.str.11, 37

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Compressed data length is %ld bytes in length\n"
	.size	.L.str.12, 47

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Compressed data is between %ld and %ld bytes in length\n"
	.size	.L.str.13, 56

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Compressed data length of %ld does not match expected length of %ld bytes\n"
	.size	.L.str.14, 75

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Compressed data length of %ld is outside the allowable range of %ld to %ld bytes\n"
	.size	.L.str.15, 82

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Uncompressed data %ld bytes in length\n"
	.size	.L.str.18, 39

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Computed SHA-%d sum for decompression step did not match expected\n"
	.size	.L.str.19, 67

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"  Generated: "
	.size	.L.str.20, 14

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"   Expected: "
	.size	.L.str.22, 14

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Tested %ld MiB buffer: OK!\n"
	.size	.L.str.24, 28

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Loading Input Data"
	.size	.Lstr, 19

	.type	.Lstr.25,@object                # @str.25
.Lstr.25:
	.asciz	"Finished compressing data"
	.size	.Lstr.25, 26

	.type	.Lstr.26,@object                # @str.26
.Lstr.26:
	.asciz	"Uncompressing previously compressed data"
	.size	.Lstr.26, 41

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"Uncompressed data compared correctly"
	.size	.Lstr.27, 37

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
