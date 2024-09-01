	.text
	.file	"file_io.c"
	.globl	io_init                         # -- Begin function io_init
	.p2align	4, 0x90
	.type	io_init,@function
io_init:                                # @io_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %edi
	jmp	tuklib_open_stdxxx@PLT          # TAILCALL
.Lfunc_end0:
	.size	io_init, .Lfunc_end0-io_init
	.cfi_endproc
                                        # -- End function
	.globl	io_no_sparse                    # -- Begin function io_no_sparse
	.p2align	4, 0x90
	.type	io_no_sparse,@function
io_no_sparse:                           # @io_no_sparse
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end1:
	.size	io_no_sparse, .Lfunc_end1-io_no_sparse
	.cfi_endproc
                                        # -- End function
	.globl	io_open_src                     # -- Begin function io_open_src
	.p2align	4, 0x90
	.type	io_open_src,@function
io_open_src:                            # @io_open_src
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
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	is_empty_filename@PLT
	testb	%al, %al
	je	.LBB2_2
# %bb.1:
	xorl	%ebx, %ebx
	jmp	.LBB2_15
.LBB2_2:                                # %if.end
	movq	%rbx, io_open_src.pair(%rip)
	movq	$0, io_open_src.pair+8(%rip)
	movq	$-1, io_open_src.pair+16(%rip)
	movw	$0, io_open_src.pair+24(%rip)
	movq	$0, io_open_src.pair+32(%rip)
	callq	signals_block@PLT
	movq	opt_stdout@GOTPCREL(%rip), %rax
	movzbl	(%rax), %ebx
	cmpb	$1, %bl
	jne	.LBB2_4
# %bb.3:                                # %if.then.i
	callq	signals_unblock@PLT
.LBB2_4:                                # %do.body.i.preheader
	movq	spec_fd@GOTPCREL(%rip), %r14
	movq	user_abort@GOTPCREL(%rip), %r15
	.p2align	4, 0x90
.LBB2_5:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	io_open_src.pair(%rip), %rdx
	movl	$3, %esi
	movl	$256, %ecx                      # imm = 0x100
	callq	spec_mem_open@PLT
	movl	%eax, %ebp
	movl	%eax, io_open_src.pair+16(%rip)
	cmpl	$-1, %eax
	jne	.LBB2_8
# %bb.6:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_5 Depth=1
	callq	__errno_location@PLT
	cmpl	$4, (%rax)
	jne	.LBB2_8
# %bb.7:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r15)
	je	.LBB2_5
.LBB2_8:                                # %do.end.i
	testb	%bl, %bl
	je	.LBB2_10
# %bb.9:                                # %if.then7.i
	callq	signals_block@PLT
	movl	io_open_src.pair+16(%rip), %ebp
.LBB2_10:                               # %if.end8.i
	movl	$io_open_src.pair, %ebx
	cmpl	$-1, %ebp
	jne	.LBB2_14
# %bb.11:                               # %if.then11.i
	callq	__errno_location@PLT
	movl	(%rax), %edi
	cmpl	$4, %edi
	jne	.LBB2_13
# %bb.12:
	xorl	%ebx, %ebx
	jmp	.LBB2_14
.LBB2_13:                               # %if.end15.i
	movq	io_open_src.pair(%rip), %r14
	callq	strerror@PLT
	xorl	%ebx, %ebx
	movl	$.L.str.4, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.LBB2_14:                               # %io_open_src_real.exit
	callq	signals_unblock@PLT
.LBB2_15:                               # %return
	movq	%rbx, %rax
	addq	$8, %rsp
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
.Lfunc_end2:
	.size	io_open_src, .Lfunc_end2-io_open_src
	.cfi_endproc
                                        # -- End function
	.globl	io_open_dest                    # -- Begin function io_open_dest
	.p2align	4, 0x90
	.type	io_open_dest,@function
io_open_dest:                           # @io_open_dest
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	signals_block@PLT
	movq	$.L.str.5, 8(%rbx)
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.5, %edx
	movl	$3, %esi
	xorl	%ecx, %ecx
	callq	spec_mem_open@PLT
	movl	%eax, %ebp
	movl	%eax, 20(%rbx)
	cmpl	$-1, %eax
	jne	.LBB3_2
# %bb.1:                                # %if.then5.i
	movq	8(%rbx), %r14
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	$.L.str.4, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
	movq	8(%rbx), %rdi
	callq	free@PLT
.LBB3_2:                                # %io_open_dest_real.exit
	cmpl	$-1, %ebp
	sete	%bl
	callq	signals_unblock@PLT
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	io_open_dest, .Lfunc_end3-io_open_dest
	.cfi_endproc
                                        # -- End function
	.globl	io_close                        # -- Begin function io_close
	.p2align	4, 0x90
	.type	io_close,@function
io_close:                               # @io_close
	.cfi_startproc
# %bb.0:                                # %entry
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	testl	%esi, %esi
	je	.LBB4_13
# %bb.1:                                # %land.lhs.true
	cmpb	$1, 25(%rbx)
	jne	.LBB4_13
# %bb.2:                                # %land.lhs.true2
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	jle	.LBB4_13
# %bb.3:                                # %if.then
	movq	spec_fd@GOTPCREL(%rip), %r12
	movq	(%r12), %rdi
	movl	20(%rbx), %edx
	decq	%rcx
	movl	$3, %esi
	movl	$1, %r8d
	callq	spec_mem_lseek@PLT
	cmpq	$-1, %rax
	je	.LBB4_4
# %bb.5:                                # %if.else
	movb	$0, 15(%rsp)
	leaq	15(%rsp), %r14
	movl	$1, %r15d
	movq	user_abort@GOTPCREL(%rip), %r13
	jmp	.LBB4_6
	.p2align	4, 0x90
.LBB4_11:                               # %if.end13.i
                                        #   in Loop: Header=BB4_6 Depth=1
	addq	%rax, %r14
	subq	%rax, %r15
.LBB4_12:                               # %cleanup.i
                                        #   in Loop: Header=BB4_6 Depth=1
	testq	%r15, %r15
	je	.LBB4_13
.LBB4_6:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rdi
	movl	20(%rbx), %edx
	movl	$3, %esi
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	spec_mem_write@PLT
	cmpq	$-1, %rax
	jne	.LBB4_11
# %bb.7:                                # %if.then.i
                                        #   in Loop: Header=BB4_6 Depth=1
	callq	__errno_location@PLT
	movl	(%rax), %edi
	cmpl	$4, %edi
	jne	.LBB4_8
# %bb.19:                               # %if.then4.i
                                        #   in Loop: Header=BB4_6 Depth=1
	cmpl	$0, (%r13)
	je	.LBB4_12
	jmp	.LBB4_13
.LBB4_4:                                # %if.then5
	movq	8(%rbx), %r14
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	$.L.str, %edi
	jmp	.LBB4_10
.LBB4_8:                                # %if.then.i
	cmpl	$32, %edi
	je	.LBB4_13
# %bb.9:                                # %if.then9.i
	movq	8(%rbx), %r14
	callq	strerror@PLT
	movl	$.L.str.7, %edi
.LBB4_10:                               # %if.end11
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.LBB4_13:                               # %if.end11
	callq	signals_block@PLT
	movl	20(%rbx), %edx
	cmpl	$-1, %edx
	je	.LBB4_18
# %bb.14:                               # %if.end11
	cmpl	$1, %edx
	je	.LBB4_18
# %bb.15:                               # %if.end.i
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$3, %esi
	callq	spec_mem_close@PLT
	movq	8(%rbx), %r14
	testl	%eax, %eax
	je	.LBB4_17
# %bb.16:
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	$.L.str.6, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
	movq	8(%rbx), %r14
.LBB4_17:                               # %io_close_dest.exit.thread.sink.split
	movq	%r14, %rdi
	callq	free@PLT
.LBB4_18:                               # %io_close_dest.exit.thread
	movl	16(%rbx), %edx
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$3, %esi
	callq	spec_mem_close@PLT
	callq	signals_unblock@PLT
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
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
	retq
.Lfunc_end4:
	.size	io_close, .Lfunc_end4-io_close
	.cfi_endproc
                                        # -- End function
	.globl	io_read                         # -- Begin function io_read
	.p2align	4, 0x90
	.type	io_read,@function
io_read:                                # @io_read
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
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.LBB5_11
# %bb.1:                                # %while.body.lr.ph
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	spec_fd@GOTPCREL(%rip), %r13
	movq	user_abort@GOTPCREL(%rip), %rbp
	movq	%rbx, %r15
	jmp	.LBB5_2
	.p2align	4, 0x90
.LBB5_10:                               # %cleanup
                                        #   in Loop: Header=BB5_2 Depth=1
	testq	%r15, %r15
	je	.LBB5_11
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movl	16(%r14), %edx
	movl	$3, %esi
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	spec_mem_read@PLT
	cmpq	$-1, %rax
	je	.LBB5_5
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB5_2 Depth=1
	testq	%rax, %rax
	je	.LBB5_4
# %bb.9:                                # %if.end13
                                        #   in Loop: Header=BB5_2 Depth=1
	addq	%rax, %r12
	subq	%rax, %r15
	jmp	.LBB5_10
	.p2align	4, 0x90
.LBB5_5:                                # %if.then3
                                        #   in Loop: Header=BB5_2 Depth=1
	callq	__errno_location@PLT
	movl	(%rax), %edi
	cmpl	$4, %edi
	jne	.LBB5_8
# %bb.6:                                # %if.then6
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$0, (%rbp)
	je	.LBB5_10
# %bb.7:
	movq	$-1, %rbx
	jmp	.LBB5_13
.LBB5_11:
	xorl	%r15d, %r15d
.LBB5_12:                               # %while.end
	subq	%r15, %rbx
.LBB5_13:                               # %cleanup15
	movq	%rbx, %rax
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
.LBB5_4:                                # %cleanup.thread31
	.cfi_def_cfa_offset 64
	movb	$1, 24(%r14)
	jmp	.LBB5_12
.LBB5_8:                                # %if.end9
	movq	(%r14), %rbx
	callq	strerror@PLT
	movl	$.L.str.1, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
	movb	$1, 24(%r14)
	movq	$-1, %rbx
	jmp	.LBB5_13
.Lfunc_end5:
	.size	io_read, .Lfunc_end5-io_read
	.cfi_endproc
                                        # -- End function
	.globl	io_pread                        # -- Begin function io_pread
	.p2align	4, 0x90
	.type	io_pread,@function
io_pread:                               # @io_pread
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
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	spec_fd@GOTPCREL(%rip), %r13
	movq	(%r13), %rdi
	movl	16(%rbx), %edx
	movl	$3, %esi
	xorl	%r8d, %r8d
	callq	spec_mem_lseek@PLT
	cmpq	%r12, %rax
	jne	.LBB6_10
# %bb.1:                                # %if.end
	testq	%r14, %r14
	je	.LBB6_11
# %bb.2:                                # %while.body.i.preheader
	movq	user_abort@GOTPCREL(%rip), %rbp
	movq	%r14, %r12
	jmp	.LBB6_4
	.p2align	4, 0x90
.LBB6_3:                                # %cleanup.i
                                        #   in Loop: Header=BB6_4 Depth=1
	testq	%r12, %r12
	je	.LBB6_11
.LBB6_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movl	16(%rbx), %edx
	movl	$3, %esi
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	spec_mem_read@PLT
	cmpq	$-1, %rax
	je	.LBB6_7
# %bb.5:                                # %while.body.i
                                        #   in Loop: Header=BB6_4 Depth=1
	testq	%rax, %rax
	je	.LBB6_15
# %bb.6:                                # %if.end13.i
                                        #   in Loop: Header=BB6_4 Depth=1
	addq	%rax, %r15
	subq	%rax, %r12
	jmp	.LBB6_3
	.p2align	4, 0x90
.LBB6_7:                                # %if.then3.i
                                        #   in Loop: Header=BB6_4 Depth=1
	callq	__errno_location@PLT
	movl	(%rax), %edi
	cmpl	$4, %edi
	jne	.LBB6_16
# %bb.8:                                # %if.then6.i
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpl	$0, (%rbp)
	je	.LBB6_3
	jmp	.LBB6_17
.LBB6_10:                               # %if.then
	movq	(%rbx), %rbx
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	$.L.str.2, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.LBB6_17:                               # %return
	movb	$1, %bpl
.LBB6_18:                               # %return
	movl	%ebp, %eax
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
.LBB6_11:
	.cfi_def_cfa_offset 64
	xorl	%r12d, %r12d
	subq	%r12, %r14
	movb	$1, %bpl
	cmpq	$-1, %r14
	je	.LBB6_18
.LBB6_12:                               # %if.end6
	testq	%r12, %r12
	je	.LBB6_14
# %bb.13:                               # %if.then8
	movq	(%rbx), %rsi
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	message_error@PLT
	jmp	.LBB6_18
.LBB6_14:
	xorl	%ebp, %ebp
	jmp	.LBB6_18
.LBB6_15:                               # %cleanup.thread31.i
	movb	$1, 24(%rbx)
	subq	%r12, %r14
	movb	$1, %bpl
	cmpq	$-1, %r14
	jne	.LBB6_12
	jmp	.LBB6_18
.LBB6_16:                               # %if.end9.i
	movq	(%rbx), %r14
	callq	strerror@PLT
	movl	$.L.str.1, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
	movb	$1, 24(%rbx)
	jmp	.LBB6_17
.Lfunc_end6:
	.size	io_pread, .Lfunc_end6-io_pread
	.cfi_endproc
                                        # -- End function
	.globl	io_write                        # -- Begin function io_write
	.p2align	4, 0x90
	.type	io_write,@function
io_write:                               # @io_write
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	cmpb	$1, 25(%rdi)
	jne	.LBB7_20
# %bb.1:                                # %if.then
	testq	%r14, %r14
	je	.LBB7_28
# %bb.2:                                # %if.then
	cmpq	$8192, %r14                     # imm = 0x2000
	jne	.LBB7_16
# %bb.3:                                # %for.body.i.preheader
	cmpq	$0, (%r15)
	je	.LBB7_4
.LBB7_16:                               # %if.end6
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	jle	.LBB7_20
# %bb.17:                               # %if.then9
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	20(%rbx), %edx
	movl	$3, %esi
	movl	$1, %r8d
	callq	spec_mem_lseek@PLT
	cmpq	$-1, %rax
	je	.LBB7_18
# %bb.19:                               # %if.end16
	movq	$0, 32(%rbx)
.LBB7_20:                               # %if.end19
	testq	%r14, %r14
	je	.LBB7_28
# %bb.21:                               # %while.body.i.preheader
	movq	spec_fd@GOTPCREL(%rip), %r12
	movq	user_abort@GOTPCREL(%rip), %r13
	jmp	.LBB7_22
	.p2align	4, 0x90
.LBB7_26:                               # %if.end13.i
                                        #   in Loop: Header=BB7_22 Depth=1
	addq	%rax, %r15
	subq	%rax, %r14
.LBB7_27:                               # %cleanup.i
                                        #   in Loop: Header=BB7_22 Depth=1
	testq	%r14, %r14
	je	.LBB7_28
.LBB7_22:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rdi
	movl	20(%rbx), %edx
	movl	$3, %esi
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	spec_mem_write@PLT
	cmpq	$-1, %rax
	jne	.LBB7_26
# %bb.23:                               # %if.then.i
                                        #   in Loop: Header=BB7_22 Depth=1
	callq	__errno_location@PLT
	movl	(%rax), %edi
	movb	$1, %bpl
	cmpl	$4, %edi
	jne	.LBB7_24
# %bb.30:                               # %if.then4.i
                                        #   in Loop: Header=BB7_22 Depth=1
	cmpl	$0, (%r13)
	je	.LBB7_27
	jmp	.LBB7_29
.LBB7_24:                               # %if.then.i
	cmpl	$32, %edi
	je	.LBB7_29
# %bb.25:                               # %if.then9.i
	movq	8(%rbx), %rbx
	callq	strerror@PLT
	movl	$.L.str.7, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
	jmp	.LBB7_29
.LBB7_18:                               # %if.then13
	movq	8(%rbx), %rbx
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	strerror@PLT
	movl	$.L.str, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
	movb	$1, %bpl
	jmp	.LBB7_29
.LBB7_4:                                # %for.cond.i.preheader
	movq	$-1, %rax
	.p2align	4, 0x90
.LBB7_5:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 16(%r15,%rax,8)
	jne	.LBB7_12
# %bb.6:                                # %for.cond.i.1
                                        #   in Loop: Header=BB7_5 Depth=1
	cmpq	$0, 24(%r15,%rax,8)
	jne	.LBB7_10
# %bb.7:                                # %for.cond.i.2
                                        #   in Loop: Header=BB7_5 Depth=1
	cmpq	$0, 32(%r15,%rax,8)
	jne	.LBB7_11
# %bb.8:                                # %for.cond.i.3
                                        #   in Loop: Header=BB7_5 Depth=1
	cmpq	$1019, %rax                     # imm = 0x3FB
	je	.LBB7_15
# %bb.9:                                # %for.body.i.3
                                        #   in Loop: Header=BB7_5 Depth=1
	leaq	4(%rax), %rcx
	cmpq	$0, 40(%r15,%rax,8)
	movq	%rcx, %rax
	je	.LBB7_5
	jmp	.LBB7_14
.LBB7_12:                               # %for.cond.i.is_sparse.exit_crit_edge
	incq	%rax
	jmp	.LBB7_13
.LBB7_10:                               # %is_sparse.exitsplitsplitsplit
	addq	$2, %rax
	jmp	.LBB7_13
.LBB7_11:                               # %for.cond.i.2.is_sparse.exitsplitsplit_crit_edge
	addq	$3, %rax
.LBB7_13:                               # %is_sparse.exit
	movq	%rax, %rcx
.LBB7_14:                               # %is_sparse.exit
	cmpq	$1023, %rcx                     # imm = 0x3FF
	jb	.LBB7_16
.LBB7_15:                               # %if.then2
	addq	$8192, 32(%rbx)                 # imm = 0x2000
.LBB7_28:
	xorl	%ebp, %ebp
.LBB7_29:                               # %return
	movl	%ebp, %eax
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
.Lfunc_end7:
	.size	io_write, .Lfunc_end7-io_write
	.cfi_endproc
                                        # -- End function
	.type	io_open_src.pair,@object        # @io_open_src.pair
	.local	io_open_src.pair
	.comm	io_open_src.pair,40,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: Seeking failed when trying to create a sparse file: %s"
	.size	.L.str, 59

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s: Read error: %s"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s: Error seeking the file: %s"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s: Unexpected end of file"
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s: %s"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"(benchmark output)"
	.size	.L.str.5, 19

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s: Closing the file failed: %s"
	.size	.L.str.6, 32

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s: Write error: %s"
	.size	.L.str.7, 20

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
