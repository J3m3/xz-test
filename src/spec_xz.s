	.text
	.file	"spec_xz.c"
	.globl	init_encoder                    # -- Begin function init_encoder
	.p2align	4, 0x90
	.type	init_encoder,@function
init_encoder:                           # @init_encoder
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$200, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rdi, %r14
	testq	%rsi, %rsi
	leaq	88(%rsp), %r15
	cmovneq	%rsi, %r15
	cmpl	$16, %ecx
	movl	$4, %ebp
	cmovbl	%ecx, %ebp
	movq	%r15, %rdi
	movl	%edx, %esi
	callq	lzma_lzma_preset@PLT
	movq	$33, (%rsp)
	movq	%r15, 8(%rsp)
	movq	$-1, 16(%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	lzma_stream_encoder@PLT
	cmpl	$8, %eax
	ja	.LBB0_5
# %bb.1:                                # %entry
	movl	$.L.str.5, %ecx
	movl	%eax, %edx
	jmpq	*.LJTI0_0(,%rdx,8)
.LBB0_2:
	movb	$1, %r14b
	jmp	.LBB0_7
.LBB0_3:                                # %sw.bb9
	movq	%r14, %rdi
	movl	%eax, %r14d
	callq	lzma_get_check@PLT
	movl	$.L.str.5, %ecx
	movl	%r14d, %eax
	jmp	.LBB0_6
.LBB0_4:                                # %sw.bb16
	movl	$.L.str.6, %ecx
	jmp	.LBB0_6
.LBB0_5:                                # %sw.default17
	movl	$.L.str.7, %ecx
.LBB0_6:                                # %sw.epilog18
	xorl	%r14d, %r14d
	movl	$.L.str.8, %edi
	movl	%ebx, %esi
	movl	%ebp, %edx
	movl	%eax, %r8d
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_7:                                # %cleanup
	movl	%r14d, %eax
	addq	$200, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	init_encoder, .Lfunc_end0-init_encoder
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_5
	.quad	.LBB0_5
	.quad	.LBB0_3
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_5
	.quad	.LBB0_5
	.quad	.LBB0_4
                                        # -- End function
	.text
	.globl	uncompressStream                # -- Begin function uncompressStream
	.p2align	4, 0x90
	.type	uncompressStream,@function
uncompressStream:                       # @uncompressStream
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
	subq	$16552, %rsp                    # imm = 0x40A8
	.cfi_def_cfa_offset 16608
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	movl	%edi, %ebp
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 144(%rsp)
	leaq	16(%rsp), %rdi
	movq	$-1, %rsi
	movl	$10, %edx
	callq	lzma_stream_decoder@PLT
	cmpl	$8, %eax
	ja	.LBB1_10
# %bb.1:                                # %entry
	movl	%eax, %ecx
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_3:                                # %sw.bb1.i
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	leaq	16(%rsp), %rdi
	callq	lzma_get_check@PLT
	cmpl	$10, %eax
	ja	.LBB1_8
# %bb.4:                                # %sw.bb1.i
	movl	%eax, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_12:
	movl	$.Lstr.29, %edi
	jmp	.LBB1_13
.LBB1_2:
	movl	$.L.str.5, %esi
	jmp	.LBB1_11
.LBB1_9:                                # %sw.bb14.i
	movl	$.L.str.25, %esi
	jmp	.LBB1_11
.LBB1_10:                               # %sw.default15.i
	movl	$.L.str.14, %esi
.LBB1_11:                               # %init_decoder.exit
	movl	$.L.str.26, %edi
	movl	%eax, %edx
	jmp	.LBB1_35
.LBB1_6:                                # %sw.bb8.i
	movl	$.Lstr.27, %edi
	jmp	.LBB1_13
.LBB1_5:                                # %sw.bb6.i
	movl	$.Lstr.28, %edi
	jmp	.LBB1_13
.LBB1_7:                                # %sw.bb10.i
	movl	$.Lstr, %edi
	jmp	.LBB1_13
.LBB1_8:                                # %sw.default.i
	movl	$.Lstr.30, %edi
.LBB1_13:                               # %if.end.sink.split
	callq	puts@PLT
.LBB1_14:                               # %if.end
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	leaq	160(%rsp), %r12
	movq	%r12, 40(%rsp)
	movq	$8192, 48(%rsp)                 # imm = 0x2000
	xorl	%eax, %eax
	leaq	16(%rsp), %rbx
	xorl	%r13d, %r13d
	testq	%rax, %rax
	jne	.LBB1_20
	.p2align	4, 0x90
.LBB1_17:                               # %land.lhs.true
	movq	spec_fd@GOTPCREL(%rip), %r15
	movq	(%r15), %rdi
	movl	$3, %esi
	movl	%ebp, %edx
	callq	spec_mem_feof@PLT
	testl	%eax, %eax
	jne	.LBB1_20
# %bb.18:                               # %if.then3
	leaq	8352(%rsp), %rdx
	movq	%rdx, 16(%rsp)
	movq	(%r15), %rdi
	movl	$1, %ecx
	movl	$3, %esi
	movl	$8192, %r8d                     # imm = 0x2000
	movl	%ebp, %r9d
	callq	spec_mem_fread@PLT
	movq	%rax, 24(%rsp)
	movq	(%r15), %rdi
	movl	$3, %esi
	movl	%ebp, %edx
	callq	spec_mem_feof@PLT
	testl	%eax, %eax
	je	.LBB1_20
# %bb.19:                               # %if.then3
	movl	$3, %r13d
	.p2align	4, 0x90
.LBB1_20:                               # %if.end13
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	lzma_code@PLT
	movl	%eax, %r15d
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.LBB1_22
# %bb.21:                               # %if.end13
                                        #   in Loop: Header=BB1_20 Depth=1
	cmpl	$1, %r15d
	jne	.LBB1_24
.LBB1_22:                               # %if.then18
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	%rbx, %r14
	movl	$8192, %ebx                     # imm = 0x2000
	subq	%rax, %rbx
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$1, %ecx
	movl	$3, %esi
	movq	%r12, %rdx
	movl	%ebx, %r8d
	movl	12(%rsp), %r9d                  # 4-byte Reload
	callq	spec_mem_fwrite@PLT
	cmpq	%rbx, %rax
	jne	.LBB1_37
# %bb.23:                               # %cleanup.thread
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	%r12, 40(%rsp)
	movq	$8192, 48(%rsp)                 # imm = 0x2000
	movq	%r14, %rbx
.LBB1_24:                               # %if.end32
                                        #   in Loop: Header=BB1_20 Depth=1
	testl	%r15d, %r15d
	jne	.LBB1_25
# %bb.15:                               # %while.condthread-pre-split
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	24(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB1_20
	jmp	.LBB1_17
.LBB1_25:                               # %if.end32
	leal	-1(%r15), %eax
	cmpl	$9, %eax
	ja	.LBB1_33
# %bb.26:                               # %if.end32
	jmpq	*.LJTI1_2(,%rax,8)
.LBB1_27:                               # %sw.bb
	leaq	16(%rsp), %rdi
	callq	lzma_end@PLT
	jmp	.LBB1_36
.LBB1_28:                               # %sw.epilog.loopexit
	movl	$.L.str.5, %esi
	jmp	.LBB1_34
.LBB1_30:                               # %sw.epilog.loopexit78
	movl	$.L.str.11, %esi
	jmp	.LBB1_34
.LBB1_29:                               # %sw.epilog.loopexit69
	movl	$.L.str.10, %esi
	jmp	.LBB1_34
.LBB1_32:                               # %sw.epilog.loopexit96
	movl	$.L.str.13, %esi
	jmp	.LBB1_34
.LBB1_31:                               # %sw.epilog.loopexit87
	movl	$.L.str.12, %esi
	jmp	.LBB1_34
.LBB1_33:                               # %sw.epilog.loopexit1
	movl	$.L.str.14, %esi
.LBB1_34:                               # %sw.epilog
	movl	$.L.str.15, %edi
	movl	%r15d, %edx
.LBB1_35:                               # %cleanup47
	xorl	%eax, %eax
	callq	printf@PLT
.LBB1_36:                               # %cleanup47
	addq	$16552, %rsp                    # imm = 0x40A8
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
.LBB1_37:                               # %cleanup
	.cfi_def_cfa_offset 16608
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	$.L.str.9, %edi
	movl	12(%rsp), %esi                  # 4-byte Reload
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB1_36
.Lfunc_end1:
	.size	uncompressStream, .Lfunc_end1-uncompressStream
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_14
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_3
	.quad	.LBB1_10
	.quad	.LBB1_2
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_9
.LJTI1_1:
	.quad	.LBB1_12
	.quad	.LBB1_5
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_6
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_8
	.quad	.LBB1_7
.LJTI1_2:
	.quad	.LBB1_27
	.quad	.LBB1_33
	.quad	.LBB1_33
	.quad	.LBB1_33
	.quad	.LBB1_28
	.quad	.LBB1_33
	.quad	.LBB1_29
	.quad	.LBB1_30
	.quad	.LBB1_31
	.quad	.LBB1_32
                                        # -- End function
	.text
	.globl	compressStream                  # -- Begin function compressStream
	.p2align	4, 0x90
	.type	compressStream,@function
compressStream:                         # @compressStream
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
	subq	$16552, %rsp                    # imm = 0x40A8
	.cfi_def_cfa_offset 16608
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	movl	%edi, %ebp
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 144(%rsp)
	testl	%edx, %edx
	movl	$4, %eax
	movl	$10, %r13d
	cmovnsl	%eax, %r13d
	leaq	8352(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%edx, %esi
	callq	lzma_lzma_preset@PLT
	movq	$33, 160(%rsp)
	movq	%rbx, 168(%rsp)
	movq	$-1, 176(%rsp)
	leaq	16(%rsp), %rdi
	leaq	160(%rsp), %r15
	movq	%r15, %rsi
	movl	%r13d, %edx
	callq	lzma_stream_encoder@PLT
	movl	%eax, %ebx
	cmpl	$8, %eax
	ja	.LBB2_4
# %bb.1:                                # %entry
	movl	$.L.str.5, %r14d
	movl	%ebx, %eax
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_6:                                # %if.end
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	%r15, 40(%rsp)
	movq	$8192, 48(%rsp)                 # imm = 0x2000
	xorl	%eax, %eax
	movq	spec_fd@GOTPCREL(%rip), %r14
	leaq	16(%rsp), %rbx
	xorl	%r13d, %r13d
	testq	%rax, %rax
	jne	.LBB2_12
	.p2align	4, 0x90
.LBB2_9:                                # %land.lhs.true
	movq	(%r14), %rdi
	movl	$3, %esi
	movl	%ebp, %edx
	callq	spec_mem_feof@PLT
	testl	%eax, %eax
	jne	.LBB2_12
# %bb.10:                               # %if.then4
	leaq	8352(%rsp), %rdx
	movq	%rdx, 16(%rsp)
	movq	(%r14), %rdi
	movl	$1, %ecx
	movl	$3, %esi
	movl	$8192, %r8d                     # imm = 0x2000
	movl	%ebp, %r9d
	callq	spec_mem_fread@PLT
	movq	%rax, 24(%rsp)
	movq	(%r14), %rdi
	movl	$3, %esi
	movl	%ebp, %edx
	callq	spec_mem_feof@PLT
	testl	%eax, %eax
	je	.LBB2_12
# %bb.11:                               # %if.then4
	movl	$3, %r13d
	.p2align	4, 0x90
.LBB2_12:                               # %if.end14
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	lzma_code@PLT
	movl	%eax, %r12d
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.LBB2_14
# %bb.13:                               # %if.end14
                                        #   in Loop: Header=BB2_12 Depth=1
	cmpl	$1, %r12d
	jne	.LBB2_16
.LBB2_14:                               # %if.then19
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	%rbx, %r14
	movl	$8192, %ebx                     # imm = 0x2000
	subq	%rax, %rbx
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$1, %ecx
	movl	$3, %esi
	movq	%r15, %rdx
	movl	%ebx, %r8d
	movl	12(%rsp), %r9d                  # 4-byte Reload
	callq	spec_mem_fwrite@PLT
	cmpq	%rbx, %rax
	jne	.LBB2_26
# %bb.15:                               # %cleanup.thread
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	%r15, 40(%rsp)
	movq	$8192, 48(%rsp)                 # imm = 0x2000
	movq	%r14, %rbx
.LBB2_16:                               # %if.end33
                                        #   in Loop: Header=BB2_12 Depth=1
	testl	%r12d, %r12d
	jne	.LBB2_17
# %bb.7:                                # %while.condthread-pre-split
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	24(%rsp), %rax
	movq	spec_fd@GOTPCREL(%rip), %r14
	testq	%rax, %rax
	jne	.LBB2_12
	jmp	.LBB2_9
.LBB2_2:                                # %sw.bb9.i
	leaq	16(%rsp), %rdi
	callq	lzma_get_check@PLT
	jmp	.LBB2_5
.LBB2_3:                                # %sw.bb16.i
	movl	$.L.str.6, %r14d
	jmp	.LBB2_5
.LBB2_4:                                # %sw.default17.i
	movl	$.L.str.7, %r14d
.LBB2_5:                                # %init_encoder.exit
	movl	$.L.str.8, %edi
	movl	%r12d, %esi
	movl	%r13d, %edx
	movq	%r14, %rcx
	movl	%ebx, %r8d
	xorl	%eax, %eax
	callq	printf@PLT
.LBB2_25:                               # %cleanup45
	addq	$16552, %rsp                    # imm = 0x40A8
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
.LBB2_17:                               # %if.end33
	.cfi_def_cfa_offset 16608
	cmpl	$9, %r12d
	je	.LBB2_22
# %bb.18:                               # %if.end33
	cmpl	$5, %r12d
	je	.LBB2_21
# %bb.19:                               # %if.end33
	cmpl	$1, %r12d
	jne	.LBB2_23
# %bb.20:                               # %sw.bb
	leaq	16(%rsp), %rdi
	callq	lzma_end@PLT
	jmp	.LBB2_25
.LBB2_22:                               # %sw.epilog.loopexit84
	movl	$.L.str.17, %esi
	jmp	.LBB2_24
.LBB2_21:                               # %sw.epilog.loopexit
	movl	$.L.str.5, %esi
	jmp	.LBB2_24
.LBB2_23:                               # %sw.epilog.loopexit1
	movl	$.L.str.14, %esi
.LBB2_24:                               # %sw.epilog
	movl	$.L.str.18, %edi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB2_25
.LBB2_26:                               # %cleanup
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	$.L.str.16, %edi
	movl	12(%rsp), %esi                  # 4-byte Reload
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB2_25
.Lfunc_end2:
	.size	compressStream, .Lfunc_end2-compressStream
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI2_0:
	.quad	.LBB2_6
	.quad	.LBB2_4
	.quad	.LBB2_4
	.quad	.LBB2_2
	.quad	.LBB2_4
	.quad	.LBB2_5
	.quad	.LBB2_4
	.quad	.LBB2_4
	.quad	.LBB2_3
                                        # -- End function
	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Memory allocation failed"
	.size	.L.str.5, 25

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Specified preset is not supported"
	.size	.L.str.6, 34

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Unknown error"
	.size	.L.str.7, 14

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Error initializing encoder with preset=%u check=%u: %s (code %u)\n"
	.size	.L.str.8, 66

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Decompress write error on %d: %s\n"
	.size	.L.str.9, 34

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Input not in XZ format"
	.size	.L.str.10, 23

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Unsupported compression options"
	.size	.L.str.11, 32

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Compressed data is corrupt"
	.size	.L.str.12, 27

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Compressed data is truncated or otherwise corrupt"
	.size	.L.str.13, 50

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Unknown return code"
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Decompression decoder error: %s (code %u)\n"
	.size	.L.str.15, 43

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Compress write error on %d: %s\n"
	.size	.L.str.16, 32

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"File size limits exceeded"
	.size	.L.str.17, 26

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Compression encoder error: %s (code %u)\n"
	.size	.L.str.18, 41

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"lzma_stream_decoder reports an unsupported check method: "
	.size	.L.str.19, 58

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Unsupported decompression flags"
	.size	.L.str.25, 32

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Error initializing decoder: %s (code %u)\n"
	.size	.L.str.26, 42

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"SHA256"
	.size	.Lstr, 7

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"CRC64"
	.size	.Lstr.27, 6

	.type	.Lstr.28,@object                # @str.28
.Lstr.28:
	.asciz	"CRC32"
	.size	.Lstr.28, 6

	.type	.Lstr.29,@object                # @str.29
.Lstr.29:
	.asciz	"NONE"
	.size	.Lstr.29, 5

	.type	.Lstr.30,@object                # @str.30
.Lstr.30:
	.asciz	"unknown!  This shouldn't happen."
	.size	.Lstr.30, 33

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
