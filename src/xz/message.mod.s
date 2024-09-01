	.text
	.file	"message.c"
	.globl	message_init                    # -- Begin function message_init
	.p2align	4, 0x90
	.type	message_init,@function
message_init:                           # @message_init
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end0:
	.size	message_init, .Lfunc_end0-message_init
	.cfi_endproc
                                        # -- End function
	.globl	message_verbosity_increase      # -- Begin function message_verbosity_increase
	.p2align	4, 0x90
	.type	message_verbosity_increase,@function
message_verbosity_increase:             # @message_verbosity_increase
	.cfi_startproc
# %bb.0:                                # %entry
	movl	verbosity(%rip), %eax
	cmpl	$3, %eax
	ja	.LBB1_2
# %bb.1:                                # %if.then
	incl	%eax
	movl	%eax, verbosity(%rip)
.LBB1_2:                                # %if.end
	retq
.Lfunc_end1:
	.size	message_verbosity_increase, .Lfunc_end1-message_verbosity_increase
	.cfi_endproc
                                        # -- End function
	.globl	message_verbosity_decrease      # -- Begin function message_verbosity_decrease
	.p2align	4, 0x90
	.type	message_verbosity_decrease,@function
message_verbosity_decrease:             # @message_verbosity_decrease
	.cfi_startproc
# %bb.0:                                # %entry
	movl	verbosity(%rip), %eax
	testl	%eax, %eax
	je	.LBB2_2
# %bb.1:                                # %if.then
	decl	%eax
	movl	%eax, verbosity(%rip)
.LBB2_2:                                # %if.end
	retq
.Lfunc_end2:
	.size	message_verbosity_decrease, .Lfunc_end2-message_verbosity_decrease
	.cfi_endproc
                                        # -- End function
	.globl	message_verbosity_get           # -- Begin function message_verbosity_get
	.p2align	4, 0x90
	.type	message_verbosity_get,@function
message_verbosity_get:                  # @message_verbosity_get
	.cfi_startproc
# %bb.0:                                # %entry
	movl	verbosity(%rip), %eax
	retq
.Lfunc_end3:
	.size	message_verbosity_get, .Lfunc_end3-message_verbosity_get
	.cfi_endproc
                                        # -- End function
	.globl	message_set_files               # -- Begin function message_set_files
	.p2align	4, 0x90
	.type	message_set_files,@function
message_set_files:                      # @message_set_files
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end4:
	.size	message_set_files, .Lfunc_end4-message_set_files
	.cfi_endproc
                                        # -- End function
	.globl	message_filename                # -- Begin function message_filename
	.p2align	4, 0x90
	.type	message_filename,@function
message_filename:                       # @message_filename
	.cfi_startproc
# %bb.0:                                # %entry
	incl	files_pos(%rip)
	retq
.Lfunc_end5:
	.size	message_filename, .Lfunc_end5-message_filename
	.cfi_endproc
                                        # -- End function
	.globl	message_progress_start          # -- Begin function message_progress_start
	.p2align	4, 0x90
	.type	message_progress_start,@function
message_progress_start:                 # @message_progress_start
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end6:
	.size	message_progress_start, .Lfunc_end6-message_progress_start
	.cfi_endproc
                                        # -- End function
	.globl	message_progress_update         # -- Begin function message_progress_update
	.p2align	4, 0x90
	.type	message_progress_update,@function
message_progress_update:                # @message_progress_update
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end7:
	.size	message_progress_update, .Lfunc_end7-message_progress_update
	.cfi_endproc
                                        # -- End function
	.globl	message_progress_end            # -- Begin function message_progress_end
	.p2align	4, 0x90
	.type	message_progress_end,@function
message_progress_end:                   # @message_progress_end
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end8:
	.size	message_progress_end, .Lfunc_end8-message_progress_end
	.cfi_endproc
                                        # -- End function
	.globl	message                         # -- Begin function message
	.p2align	4, 0x90
	.type	message,@function
message:                                # @message
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end9:
	.size	message, .Lfunc_end9-message
	.cfi_endproc
                                        # -- End function
	.globl	message_warning                 # -- Begin function message_warning
	.p2align	4, 0x90
	.type	message_warning,@function
message_warning:                        # @message_warning
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$2, %edi
	jmp	set_exit_status@PLT             # TAILCALL
.Lfunc_end10:
	.size	message_warning, .Lfunc_end10-message_warning
	.cfi_endproc
                                        # -- End function
	.globl	message_error                   # -- Begin function message_error
	.p2align	4, 0x90
	.type	message_error,@function
message_error:                          # @message_error
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %edi
	jmp	set_exit_status@PLT             # TAILCALL
.Lfunc_end11:
	.size	message_error, .Lfunc_end11-message_error
	.cfi_endproc
                                        # -- End function
	.globl	message_fatal                   # -- Begin function message_fatal
	.p2align	4, 0x90
	.type	message_fatal,@function
message_fatal:                          # @message_fatal
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	tuklib_exit@PLT                 # TAILCALL
.Lfunc_end12:
	.size	message_fatal, .Lfunc_end12-message_fatal
	.cfi_endproc
                                        # -- End function
	.globl	message_bug                     # -- Begin function message_bug
	.p2align	4, 0x90
	.type	message_bug,@function
message_bug:                            # @message_bug
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	tuklib_exit@PLT                 # TAILCALL
.Lfunc_end13:
	.size	message_bug, .Lfunc_end13-message_bug
	.cfi_endproc
                                        # -- End function
	.globl	message_signal_handler          # -- Begin function message_signal_handler
	.p2align	4, 0x90
	.type	message_signal_handler,@function
message_signal_handler:                 # @message_signal_handler
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	tuklib_exit@PLT                 # TAILCALL
.Lfunc_end14:
	.size	message_signal_handler, .Lfunc_end14-message_signal_handler
	.cfi_endproc
                                        # -- End function
	.globl	message_strm                    # -- Begin function message_strm
	.p2align	4, 0x90
	.type	message_strm,@function
message_strm:                           # @message_strm
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edi killed $edi def $rdi
	addl	$-2, %edi
	cmpl	$8, %edi
	ja	.LBB15_10
# %bb.1:                                # %entry
	jmpq	*.LJTI15_0(,%rdi,8)
.LBB15_2:
	movl	$.L.str.2, %eax
	retq
.LBB15_10:                              # %sw.epilog
	movl	$.L.str, %eax
	retq
.LBB15_7:                               # %sw.bb5
	movl	$.L.str.6, %eax
	retq
.LBB15_3:                               # %sw.bb1
	movl	$.L.str.3, %eax
	retq
.LBB15_8:                               # %sw.bb6
	movl	$.L.str.7, %eax
	retq
.LBB15_9:                               # %sw.bb7
	movl	$.L.str.8, %eax
	retq
.LBB15_4:                               # %sw.bb2
	movl	$12, %edi
	jmp	strerror@PLT                    # TAILCALL
.LBB15_5:                               # %sw.bb3
	movl	$.L.str.4, %eax
	retq
.LBB15_6:                               # %sw.bb4
	movl	$.L.str.5, %eax
	retq
.Lfunc_end15:
	.size	message_strm, .Lfunc_end15-message_strm
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI15_0:
	.quad	.LBB15_2
	.quad	.LBB15_3
	.quad	.LBB15_10
	.quad	.LBB15_4
	.quad	.LBB15_5
	.quad	.LBB15_6
	.quad	.LBB15_7
	.quad	.LBB15_8
	.quad	.LBB15_9
                                        # -- End function
	.text
	.globl	message_mem_needed              # -- Begin function message_mem_needed
	.p2align	4, 0x90
	.type	message_mem_needed,@function
message_mem_needed:                     # @message_mem_needed
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpl	%edi, verbosity(%rip)
	jb	.LBB16_5
# %bb.1:                                # %if.end
	movq	%rsi, %rdi
	callq	round_up_to_mib@PLT
	movq	%rax, %rbx
	movq	opt_mode@GOTPCREL(%rip), %rax
	movl	(%rax), %edi
	callq	hardware_memlimit_get@PLT
	cmpq	$-1, %rax
	je	.LBB16_6
# %bb.2:                                # %if.end5
	movl	$.L.str.10, %r14d
	cmpq	$1048576, %rax                  # imm = 0x100000
	jb	.LBB16_4
# %bb.3:                                # %if.else
	movq	%rax, %rdi
	callq	round_up_to_mib@PLT
	movl	$.L.str.11, %r14d
.LBB16_4:                               # %if.end14
	movq	%rax, %rdi
	movl	$1, %esi
	callq	uint64_to_str@PLT
	movq	%rsp, %rdi
	movl	$128, %esi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
.LBB16_5:                               # %return
	addq	$136, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB16_6:                               # %if.then3
	.cfi_def_cfa_offset 160
	movq	%rbx, %rdi
	xorl	%esi, %esi
	addq	$136, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	uint64_to_str@PLT               # TAILCALL
.Lfunc_end16:
	.size	message_mem_needed, .Lfunc_end16-message_mem_needed
	.cfi_endproc
                                        # -- End function
	.globl	message_filters_to_str          # -- Begin function message_filters_to_str
	.p2align	4, 0x90
	.type	message_filters_to_str,@function
message_filters_to_str:                 # @message_filters_to_str
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
	movq	%rdi, 24(%rsp)
	movq	$512, 16(%rsp)                  # imm = 0x200
	cmpq	$-1, (%rsi)
	je	.LBB17_32
# %bb.1:                                # %for.body.preheader
	movl	%edx, %ebp
	movq	%rsi, %r14
	addq	$16, %r14
	movl	$.L.str.14, %r12d
	xorl	%ebx, %ebx
	movl	%edx, 36(%rsp)                  # 4-byte Spill
	jmp	.LBB17_2
.LBB17_4:                               # %for.body
                                        #   in Loop: Header=BB17_2 Depth=1
	cmpq	$3, %rax
	jne	.LBB17_30
# %bb.5:                                # %sw.bb35
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-8(%r14), %rax
	movl	4(%rax), %ecx
	movl	$.L.str.27, %edx
.LBB17_29:                              # %for.inc
                                        #   in Loop: Header=BB17_2 Depth=1
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rsi
	xorl	%eax, %eax
	callq	my_snprintf@PLT
.LBB17_31:                              # %for.inc
                                        #   in Loop: Header=BB17_2 Depth=1
	cmpq	$-1, (%r14)
	leaq	16(%r14), %r14
	je	.LBB17_32
.LBB17_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	subq	$1, %rbx
	movl	$.L.str.15, %ecx
	cmovbq	%r12, %rcx
	movl	$.L.str.13, %edx
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rsi
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movq	-16(%r14), %rax
	cmpq	$32, %rax
	jg	.LBB17_6
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB17_2 Depth=1
	leaq	-4(%rax), %rcx
	cmpq	$6, %rcx
	jae	.LBB17_4
# %bb.26:                               # %sw.bb23
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-8(%r14), %r15
	leaq	(%rax,%rax,8), %rcx
	addq	$message_filters_to_str.bcj_names-36, %rcx
	movl	$.L.str.13, %edx
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rsi
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	testq	%r15, %r15
	je	.LBB17_31
# %bb.27:                               # %land.lhs.true
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	(%r15), %ecx
	testl	%ecx, %ecx
	je	.LBB17_31
# %bb.28:                               # %if.then32
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$.L.str.26, %edx
	jmp	.LBB17_29
	.p2align	4, 0x90
.LBB17_6:                               # %for.body
                                        #   in Loop: Header=BB17_2 Depth=1
	movabsq	$4611686018427387905, %rcx      # imm = 0x4000000000000001
	cmpq	%rcx, %rax
	je	.LBB17_8
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB17_2 Depth=1
	cmpq	$33, %rax
	jne	.LBB17_30
.LBB17_8:                               # %sw.bb
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-8(%r14), %r15
	testb	%bpl, %bpl
	je	.LBB17_9
# %bb.10:                               # %if.then
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	32(%r15), %edx
	movl	40(%r15), %ecx
	cmpl	$2, %edx
	movl	$.L.str.18, %r13d
	movl	$.L.str.17, %esi
	cmoveq	%rsi, %r13
	cmpl	$1, %edx
	movl	$.L.str.16, %edx
	cmoveq	%rdx, %r13
	addl	$-3, %ecx
	cmpl	$17, %ecx
	ja	.LBB17_17
# %bb.11:                               # %if.then
                                        #   in Loop: Header=BB17_2 Depth=1
	jmpq	*.LJTI17_0(,%rcx,8)
.LBB17_12:                              #   in Loop: Header=BB17_2 Depth=1
	movl	$.L.str.19, %ecx
	jmp	.LBB17_18
.LBB17_9:                               #   in Loop: Header=BB17_2 Depth=1
	xorl	%r13d, %r13d
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
	jmp	.LBB17_19
.LBB17_30:                              # %sw.default39
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$.L.str.18, %edx
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rsi
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	jmp	.LBB17_31
.LBB17_17:                              # %sw.default14
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$.L.str.18, %ecx
	jmp	.LBB17_18
.LBB17_14:                              # %sw.bb11
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$.L.str.21, %ecx
	jmp	.LBB17_18
.LBB17_13:                              # %sw.bb10
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$.L.str.20, %ecx
	jmp	.LBB17_18
.LBB17_15:                              # %sw.bb12
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$.L.str.22, %ecx
	jmp	.LBB17_18
.LBB17_16:                              # %sw.bb13
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$.L.str.23, %ecx
.LBB17_18:                              # %if.end
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
.LBB17_19:                              # %if.end
                                        #   in Loop: Header=BB17_2 Depth=1
	xorl	%ebp, %ebp
	cmpq	$33, %rax
	sete	%r12b
	movl	(%r15), %ecx
	testl	$1048575, %ecx                  # imm = 0xFFFFF
	je	.LBB17_20
# %bb.21:                               # %if.else.i
                                        #   in Loop: Header=BB17_2 Depth=1
	testl	$1023, %ecx                     # imm = 0x3FF
	je	.LBB17_22
# %bb.23:                               # %if.else6.i
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$uint32_to_optstr.buf, %edi
	movl	$16, %esi
	movl	$.L.str.67, %edx
	jmp	.LBB17_24
.LBB17_20:                              # %if.then.i
                                        #   in Loop: Header=BB17_2 Depth=1
	shrl	$20, %ecx
	movl	$uint32_to_optstr.buf, %edi
	movl	$16, %esi
	movl	$.L.str.65, %edx
	jmp	.LBB17_24
.LBB17_22:                              # %if.then3.i
                                        #   in Loop: Header=BB17_2 Depth=1
	shrl	$10, %ecx
	movl	$uint32_to_optstr.buf, %edi
	movl	$16, %esi
	movl	$.L.str.66, %edx
.LBB17_24:                              # %uint32_to_optstr.exit
                                        #   in Loop: Header=BB17_2 Depth=1
	xorl	%eax, %eax
	callq	snprintf@PLT
	movb	%r12b, %bpl
	addl	$49, %ebp
	movl	$.L.str.24, %edx
	movl	$uint32_to_optstr.buf, %r8d
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movl	%ebp, %ecx
	xorl	%eax, %eax
	callq	my_snprintf@PLT
	movl	36(%rsp), %ebp                  # 4-byte Reload
	testb	%bpl, %bpl
	movl	$.L.str.14, %r12d
	je	.LBB17_31
# %bb.25:                               # %if.then21
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	20(%r15), %ecx
	movl	24(%r15), %r8d
	movl	28(%r15), %r9d
	movl	36(%r15), %r10d
	movl	44(%r15), %r11d
	movl	$.L.str.25, %edx
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rsi
	xorl	%eax, %eax
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	my_snprintf@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	jmp	.LBB17_31
.LBB17_32:                              # %for.cond.cleanup
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
.Lfunc_end17:
	.size	message_filters_to_str, .Lfunc_end17-message_filters_to_str
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI17_0:
	.quad	.LBB17_12
	.quad	.LBB17_13
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_17
	.quad	.LBB17_14
	.quad	.LBB17_15
	.quad	.LBB17_16
                                        # -- End function
	.text
	.globl	message_filters_show            # -- Begin function message_filters_show
	.p2align	4, 0x90
	.type	message_filters_show,@function
message_filters_show:                   # @message_filters_show
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	%edi, verbosity(%rip)
	jae	.LBB18_1
# %bb.2:                                # %return
	retq
.LBB18_1:                               # %if.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$512, %rsp                      # imm = 0x200
	.cfi_def_cfa_offset 528
	.cfi_offset %rbx, -16
	movq	%rsp, %rbx
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	message_filters_to_str
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	progname@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movl	$.L.str.28, %esi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
	addq	$512, %rsp                      # imm = 0x200
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.Lfunc_end18:
	.size	message_filters_show, .Lfunc_end18-message_filters_show
	.cfi_endproc
                                        # -- End function
	.globl	message_try_help                # -- Begin function message_try_help
	.p2align	4, 0x90
	.type	message_try_help,@function
message_try_help:                       # @message_try_help
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end19:
	.size	message_try_help, .Lfunc_end19-message_try_help
	.cfi_endproc
                                        # -- End function
	.globl	message_version                 # -- Begin function message_version
	.p2align	4, 0x90
	.type	message_version,@function
message_version:                        # @message_version
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	opt_robot@GOTPCREL(%rip), %rax
	cmpb	$1, (%rax)
	jne	.LBB20_2
# %bb.1:                                # %if.then
	callq	lzma_version_number@PLT
	movl	$.L.str.30, %edi
	movl	$50000056, %esi                 # imm = 0x2FAF0B8
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB20_3
.LBB20_2:                               # %if.else
	movl	$.Lstr, %edi
	callq	puts@PLT
	callq	lzma_version_string@PLT
	movl	$.L.str.32, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB20_3:                               # %if.end
	xorl	%edx, %edx
	cmpl	$0, verbosity(%rip)
	setne	%dl
	xorl	%edi, %edi
	movl	$1, %esi
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	tuklib_exit@PLT                 # TAILCALL
.Lfunc_end20:
	.size	message_version, .Lfunc_end20-message_version
	.cfi_endproc
                                        # -- End function
	.globl	message_help                    # -- Begin function message_help
	.p2align	4, 0x90
	.type	message_help,@function
message_help:                           # @message_help
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	progname@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$.L.str.33, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	testl	%ebx, %ebx
	je	.LBB21_2
# %bb.1:                                # %if.then29
	movl	$.L.str.34, %edi
	callq	puts@PLT
	movl	$.L.str.35, %edi
	callq	puts@PLT
	movl	$.L.str.36, %edi
	callq	puts@PLT
	movl	$.L.str.37, %edi
	callq	puts@PLT
	movl	$.L.str.38, %edi
	callq	puts@PLT
	movl	$.L.str.39, %edi
	callq	puts@PLT
	movl	$.L.str.40, %edi
	callq	puts@PLT
	movl	$.L.str.41, %edi
	callq	puts@PLT
	movl	$.L.str.42, %edi
	callq	puts@PLT
	movl	$.L.str.43, %edi
	callq	puts@PLT
	movl	$.L.str.44, %edi
	callq	puts@PLT
	movl	$.L.str.45, %edi
	callq	puts@PLT
	movl	$.L.str.46, %edi
	callq	puts@PLT
	movl	$.L.str.47, %edi
	callq	puts@PLT
	movl	$.L.str.48, %edi
	callq	puts@PLT
	movl	$.L.str.49, %edi
	callq	puts@PLT
	movl	$.L.str.50, %edi
	callq	puts@PLT
	movl	$.L.str.51, %edi
	callq	puts@PLT
	movl	$.L.str.52, %edi
	callq	puts@PLT
	movl	$.L.str.53, %edi
	callq	puts@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.L.str.56, %ebx
	movl	$.L.str.55, %edi
	jmp	.LBB21_3
.LBB21_2:                               # %if.else.critedge
	movl	$.L.str.36, %edi
	callq	puts@PLT
	movl	$.L.str.38, %edi
	callq	puts@PLT
	movl	$.L.str.42, %edi
	callq	puts@PLT
	movl	$.L.str.43, %edi
	callq	puts@PLT
	movl	$.L.str.57, %ebx
	movl	$.L.str.51, %edi
.LBB21_3:                               # %if.end48
	callq	puts@PLT
	movq	%rbx, %rdi
	callq	puts@PLT
	movl	$.L.str.58, %edi
	callq	puts@PLT
	movl	$.L.str.59, %edi
	callq	puts@PLT
	movl	$.L.str.60, %edi
	movl	$.L.str.61, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.L.str.62, %edi
	movl	$.L.str.63, %esi
	movl	$.L.str.64, %edx
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%edx, %edx
	cmpl	$0, verbosity(%rip)
	setne	%dl
	xorl	%edi, %edi
	movl	$1, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	tuklib_exit@PLT                 # TAILCALL
.Lfunc_end21:
	.size	message_help, .Lfunc_end21-message_help
	.cfi_endproc
                                        # -- End function
	.type	verbosity,@object               # @verbosity
	.data
	.p2align	2, 0x0
verbosity:
	.long	2                               # 0x2
	.size	verbosity, 4

	.type	files_pos,@object               # @files_pos
	.local	files_pos
	.comm	files_pos,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Internal error (bug)"
	.size	.L.str, 21

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"No integrity check; not verifying file integrity"
	.size	.L.str.2, 49

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Unsupported type of integrity check; not verifying file integrity"
	.size	.L.str.3, 66

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Memory usage limit reached"
	.size	.L.str.4, 27

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"File format not recognized"
	.size	.L.str.5, 27

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Unsupported options"
	.size	.L.str.6, 20

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Compressed data is corrupt"
	.size	.L.str.7, 27

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Unexpected end of input"
	.size	.L.str.8, 24

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%s B"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%s MiB"
	.size	.L.str.11, 7

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%s"
	.size	.L.str.13, 3

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"--"
	.size	.L.str.14, 3

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	" --"
	.size	.L.str.15, 4

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"fast"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"normal"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"UNKNOWN"
	.size	.L.str.18, 8

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"hc3"
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"hc4"
	.size	.L.str.20, 4

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"bt2"
	.size	.L.str.21, 4

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"bt3"
	.size	.L.str.22, 4

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"bt4"
	.size	.L.str.23, 4

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"lzma%c=dict=%s"
	.size	.L.str.24, 15

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	",lc=%u,lp=%u,pb=%u,mode=%s,nice=%u,mf=%s,depth=%u"
	.size	.L.str.25, 50

	.type	message_filters_to_str.bcj_names,@object # @message_filters_to_str.bcj_names
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
message_filters_to_str.bcj_names:
	.asciz	"x86\000\000\000\000\000"
	.asciz	"powerpc\000"
	.asciz	"ia64\000\000\000\000"
	.asciz	"arm\000\000\000\000\000"
	.asciz	"armthumb"
	.asciz	"sparc\000\000\000"
	.size	message_filters_to_str.bcj_names, 54

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"=start=%u"
	.size	.L.str.26, 10

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"delta=dist=%u"
	.size	.L.str.27, 14

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"%s: Filter chain: %s\n"
	.size	.L.str.28, 22

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"XZ_VERSION=%u\nLIBLZMA_VERSION=%u\n"
	.size	.L.str.30, 34

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"liblzma %s\n"
	.size	.L.str.32, 12

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Usage: %s [OPTION]... [FILE]...\nCompress or decompress FILEs in the .xz format.\n\n"
	.size	.L.str.33, 82

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Mandatory arguments to long options are mandatory for short options too.\n"
	.size	.L.str.34, 74

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	" Operation mode:\n"
	.size	.L.str.35, 18

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"  -z, --compress      force compression\n  -d, --decompress    force decompression\n  -t, --test          test compressed file integrity\n  -l, --list          list information about .xz files"
	.size	.L.str.36, 190

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"\n Operation modifiers:\n"
	.size	.L.str.37, 24

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"  -k, --keep          keep (don't delete) input files\n  -f, --force         force overwrite of output file and (de)compress links\n  -c, --stdout        write to standard output and don't delete input files"
	.size	.L.str.38, 206

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"      --no-sparse     do not create sparse files when decompressing\n  -S, --suffix=.SUF   use the suffix `.SUF' on compressed files\n      --files[=FILE]  read filenames to process from FILE; if FILE is\n                      omitted, filenames are read from the standard input;\n                      filenames must be terminated with the newline character\n      --files0[=FILE] like --files but use the null character as terminator"
	.size	.L.str.39, 431

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"\n Basic file format and compression options:\n"
	.size	.L.str.40, 46

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"  -F, --format=FMT    file format to encode or decode; possible values are\n                      `auto' (default), `xz', `lzma', and `raw'\n  -C, --check=CHECK   integrity check type: `none' (use with caution),\n                      `crc32', `crc64' (default), or `sha256'"
	.size	.L.str.41, 272

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"  -0 ... -9           compression preset; default is 6; take compressor *and*\n                      decompressor memory usage into account before using 7-9!"
	.size	.L.str.42, 157

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"  -e, --extreme       try to improve compression ratio by using more CPU time;\n                      does not affect decompressor memory requirements"
	.size	.L.str.43, 150

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"      --memlimit-compress=LIMIT\n      --memlimit-decompress=LIMIT\n  -M, --memlimit=LIMIT\n                      set memory usage limit for compression, decompression,\n                      or both; LIMIT is in bytes, % of RAM, or 0 for defaults"
	.size	.L.str.44, 244

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"      --no-adjust     if compression settings exceed the memory usage limit,\n                      give an error instead of adjusting the settings downwards"
	.size	.L.str.45, 157

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"\n Custom filter chain for compression (alternative for using presets):"
	.size	.L.str.46, 71

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"\n  --lzma1[=OPTS]      LZMA1 or LZMA2; OPTS is a comma-separated list of zero or\n  --lzma2[=OPTS]      more of the following options (valid values; default):\n                        preset=PRE reset options to a preset (0-9[e])\n                        dict=NUM   dictionary size (4KiB - 1536MiB; 8MiB)\n                        lc=NUM     number of literal context bits (0-4; 3)\n                        lp=NUM     number of literal position bits (0-4; 0)\n                        pb=NUM     number of position bits (0-4; 2)\n                        mode=MODE  compression mode (fast, normal; normal)\n                        nice=NUM   nice length of a match (2-273; 64)\n                        mf=NAME    match finder (hc3, hc4, bt2, bt3, bt4; bt4)\n                        depth=NUM  maximum search depth; 0=automatic (default)"
	.size	.L.str.47, 824

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"\n  --x86[=OPTS]        x86 BCJ filter (32-bit and 64-bit)\n  --powerpc[=OPTS]    PowerPC BCJ filter (big endian only)\n  --ia64[=OPTS]       IA-64 (Itanium) BCJ filter\n  --arm[=OPTS]        ARM BCJ filter (little endian only)\n  --armthumb[=OPTS]   ARM-Thumb BCJ filter (little endian only)\n  --sparc[=OPTS]      SPARC BCJ filter\n                      Valid OPTS for all BCJ filters:\n                        start=NUM  start offset for conversions (default=0)"
	.size	.L.str.48, 457

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"\n  --delta[=OPTS]      Delta filter; valid OPTS (valid values; default):\n                        dist=NUM   distance between bytes being subtracted\n                                   from each other (1-256; 1)"
	.size	.L.str.49, 210

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"\n Other options:\n"
	.size	.L.str.50, 18

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"  -q, --quiet         suppress warnings; specify twice to suppress errors too\n  -v, --verbose       be verbose; specify twice for even more verbose"
	.size	.L.str.51, 148

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"  -Q, --no-warn       make warnings not affect the exit status"
	.size	.L.str.52, 63

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"      --robot         use machine-parsable messages (useful for scripts)"
	.size	.L.str.53, 73

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"      --info-memory   display the total amount of RAM and the currently active\n                      memory usage limits, and exit"
	.size	.L.str.55, 131

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"  -h, --help          display the short help (lists only the basic options)\n  -H, --long-help     display this long help and exit"
	.size	.L.str.56, 130

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"  -h, --help          display this short help and exit\n  -H, --long-help     display the long help (lists also the advanced options)"
	.size	.L.str.57, 133

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"  -V, --version       display the version number and exit"
	.size	.L.str.58, 58

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"\nWith no FILE, or when FILE is -, read standard input.\n"
	.size	.L.str.59, 56

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"Report bugs to <%s>.\n"
	.size	.L.str.60, 22

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"support@spec.org"
	.size	.L.str.61, 17

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"%s home page: <%s>\n"
	.size	.L.str.62, 20

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"CPU2017 xz benchmark"
	.size	.L.str.63, 21

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"http://www.spec.org/cpu2017/"
	.size	.L.str.64, 29

	.type	uint32_to_optstr.buf,@object    # @uint32_to_optstr.buf
	.local	uint32_to_optstr.buf
	.comm	uint32_to_optstr.buf,16,16
	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"%uMiB"
	.size	.L.str.65, 6

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"%uKiB"
	.size	.L.str.66, 6

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"%u"
	.size	.L.str.67, 3

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"xz (CPU2017 xz benchmark) 5.0.5benchmarkcpu2017"
	.size	.Lstr, 48

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
