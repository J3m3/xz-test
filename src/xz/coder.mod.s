	.text
	.file	"coder.c"
	.globl	coder_set_check                 # -- Begin function coder_set_check
	.p2align	4, 0x90
	.type	coder_set_check,@function
coder_set_check:                        # @coder_set_check
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edi, check(%rip)
	movb	$1, check_default(%rip)
	retq
.Lfunc_end0:
	.size	coder_set_check, .Lfunc_end0-coder_set_check
	.cfi_endproc
                                        # -- End function
	.globl	coder_set_preset                # -- Begin function coder_set_preset
	.p2align	4, 0x90
	.type	coder_set_preset,@function
coder_set_preset:                       # @coder_set_preset
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	preset_number(%rip), %eax
	andl	$-32, %eax
	orl	%edi, %eax
	movl	%eax, preset_number(%rip)
	movl	filters_count(%rip), %ebx
	testq	%rbx, %rbx
	je	.LBB1_4
# %bb.1:                                # %while.body.preheader.i
	shlq	$4, %rbx
	.p2align	4, 0x90
.LBB1_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	filters-8(%rbx), %rdi
	callq	free@PLT
	movq	$0, filters-8(%rbx)
	addq	$-16, %rbx
	jne	.LBB1_2
# %bb.3:                                # %while.cond.while.end_crit_edge.i
	movl	$0, filters_count(%rip)
.LBB1_4:                                # %forget_filter_chain.exit
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	coder_set_preset, .Lfunc_end1-coder_set_preset
	.cfi_endproc
                                        # -- End function
	.globl	coder_set_extreme               # -- Begin function coder_set_extreme
	.p2align	4, 0x90
	.type	coder_set_extreme,@function
coder_set_extreme:                      # @coder_set_extreme
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	orb	$-128, preset_number+3(%rip)
	movl	filters_count(%rip), %ebx
	testq	%rbx, %rbx
	je	.LBB2_4
# %bb.1:                                # %while.body.preheader.i
	shlq	$4, %rbx
	.p2align	4, 0x90
.LBB2_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	filters-8(%rbx), %rdi
	callq	free@PLT
	movq	$0, filters-8(%rbx)
	addq	$-16, %rbx
	jne	.LBB2_2
# %bb.3:                                # %while.cond.while.end_crit_edge.i
	movl	$0, filters_count(%rip)
.LBB2_4:                                # %forget_filter_chain.exit
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	coder_set_extreme, .Lfunc_end2-coder_set_extreme
	.cfi_endproc
                                        # -- End function
	.globl	coder_add_filter                # -- Begin function coder_add_filter
	.p2align	4, 0x90
	.type	coder_add_filter,@function
coder_add_filter:                       # @coder_add_filter
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	filters_count(%rip), %eax
	cmpl	$4, %eax
	jne	.LBB3_2
# %bb.1:                                # %if.then
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
	movl	filters_count(%rip), %eax
.LBB3_2:                                # %if.end
	movl	%eax, %ecx
	shlq	$4, %rcx
	movq	%r14, filters(%rcx)
	movq	%rbx, filters+8(%rcx)
	incl	%eax
	movl	%eax, filters_count(%rip)
	movl	$6, preset_number(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	coder_add_filter, .Lfunc_end3-coder_add_filter
	.cfi_endproc
                                        # -- End function
	.globl	coder_set_compression_settings  # -- Begin function coder_set_compression_settings
	.p2align	4, 0x90
	.type	coder_set_compression_settings,@function
coder_set_compression_settings:         # @coder_set_compression_settings
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
	movabsq	$4611686018427387905, %r15      # imm = 0x4000000000000001
	movl	filters_count(%rip), %eax
	movl	opt_format(%rip), %ecx
	testl	%eax, %eax
	jne	.LBB4_6
# %bb.1:                                # %if.then
	cmpl	$3, %ecx
	jne	.LBB4_3
# %bb.2:                                # %if.then2
	movl	$.L.str.1, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	message@PLT
	movl	$.L.str.2, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	message@PLT
.LBB4_3:                                # %if.end
	movl	preset_number(%rip), %esi
	movl	$coder_set_compression_settings.opt_lzma, %edi
	callq	lzma_lzma_preset@PLT
	testb	%al, %al
	je	.LBB4_5
# %bb.4:                                # %if.then3
	callq	message_bug@PLT
.LBB4_5:                                # %if.end4
	movl	opt_format(%rip), %ecx
	cmpl	$2, %ecx
	movl	$33, %eax
	cmoveq	%r15, %rax
	movq	%rax, filters(%rip)
	movq	$coder_set_compression_settings.opt_lzma, filters+8(%rip)
	movl	$1, filters_count(%rip)
	movl	$1, %eax
.LBB4_6:                                # %if.end6
	movl	%eax, %edx
	shlq	$4, %rdx
	movq	$-1, filters(%rdx)
	cmpl	$2, %ecx
	jne	.LBB4_10
# %bb.7:                                # %land.lhs.true
	cmpl	$1, %eax
	jne	.LBB4_9
# %bb.8:                                # %land.lhs.true
	cmpq	%r15, filters(%rip)
	je	.LBB4_15
.LBB4_9:                                # %if.then10
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
	movl	opt_format(%rip), %ecx
	movl	filters_count(%rip), %eax
.LBB4_10:                               # %if.end11
	cmpl	$1, %ecx
	sete	%cl
	testl	%eax, %eax
	setne	%dl
	andb	%cl, %dl
	cmpb	$1, %dl
	jne	.LBB4_15
# %bb.11:                               # %for.body.preheader
	movl	$filters, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB4_12
	.p2align	4, 0x90
.LBB4_14:                               # %for.inc
                                        #   in Loop: Header=BB4_12 Depth=1
	incq	%r14
	movl	%eax, %ecx
	addq	$16, %rbx
	cmpq	%rcx, %r14
	jae	.LBB4_15
.LBB4_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r15, (%rbx)
	jne	.LBB4_14
# %bb.13:                               # %if.then20
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
	movl	filters_count(%rip), %eax
	jmp	.LBB4_14
.LBB4_15:                               # %if.end22
	movl	$filters, %esi
	movl	$4, %edi
	callq	message_filters_show@PLT
	movl	opt_mode(%rip), %edi
	callq	hardware_memlimit_get@PLT
	movq	%rax, %rbx
	cmpl	$0, opt_mode(%rip)
	je	.LBB4_16
# %bb.17:                               # %if.else
	movl	$filters, %edi
	callq	lzma_raw_decoder_memusage@PLT
	movq	%rax, %r14
	cmpq	$-1, %rax
	jne	.LBB4_20
.LBB4_19:                               # %if.then32
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.LBB4_20:                               # %if.end33
	movl	$4, %edi
	movq	%r14, %rsi
	callq	message_mem_needed@PLT
	cmpl	$0, opt_mode(%rip)
	jne	.LBB4_23
# %bb.21:                               # %if.then36
	movl	$filters, %edi
	callq	lzma_raw_decoder_memusage@PLT
	cmpq	$-1, %rax
	je	.LBB4_23
# %bb.22:                               # %if.then40
	movq	%rax, %rdi
	callq	round_up_to_mib@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movl	$.L.str.6, %esi
	movl	$4, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message@PLT
.LBB4_23:                               # %if.end44
	cmpq	%rbx, %r14
	jbe	.LBB4_41
# %bb.24:                               # %if.then47
	cmpb	$1, opt_auto_adjust(%rip)
	jne	.LBB4_26
# %bb.25:                               # %if.then47
	cmpl	$3, opt_format(%rip)
	jne	.LBB4_27
.LBB4_26:                               # %if.then51
	movl	$.L.str.8, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	message@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	callq	message_mem_needed@PLT
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	tuklib_exit@PLT
.LBB4_27:                               # %while.cond.preheader
	movl	$filters, %r12d
	jmp	.LBB4_28
	.p2align	4, 0x90
.LBB4_38:                               # %if.then66
                                        #   in Loop: Header=BB4_28 Depth=1
	movl	$.L.str.8, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	message@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	callq	message_mem_needed@PLT
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	tuklib_exit@PLT
.LBB4_39:                               # %if.end67
                                        #   in Loop: Header=BB4_28 Depth=1
	addq	$16, %r12
.LBB4_28:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rax
	cmpq	$-1, %rax
	je	.LBB4_38
# %bb.29:                               # %while.cond
                                        #   in Loop: Header=BB4_28 Depth=1
	cmpq	$33, %rax
	je	.LBB4_31
# %bb.30:                               # %while.cond
                                        #   in Loop: Header=BB4_28 Depth=1
	cmpq	%r15, %rax
	jne	.LBB4_39
.LBB4_31:                               # %while.end
	movq	8(%r12), %r13
	movl	(%r13), %r15d
	movl	%r15d, %eax
	andl	$-1048576, %eax                 # imm = 0xFFF00000
	movl	$-1048576, %ebp                 # imm = 0xFFF00000
	movl	%eax, (%r13)
	cmpl	$1048575, %eax                  # imm = 0xFFFFF
	ja	.LBB4_34
	.p2align	4, 0x90
.LBB4_33:                               # %if.then76
	movl	$.L.str.8, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	message@PLT
	movl	$1, %edi
	movq	%r14, %rsi
	callq	message_mem_needed@PLT
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	tuklib_exit@PLT
.LBB4_34:                               # %if.end77
                                        # =>This Inner Loop Header: Depth=1
	movl	$filters, %edi
	callq	lzma_raw_encoder_memusage@PLT
	movq	%rax, %r14
	cmpq	$-1, %rax
	jne	.LBB4_36
# %bb.35:                               # %if.then81
                                        #   in Loop: Header=BB4_34 Depth=1
	callq	message_bug@PLT
.LBB4_36:                               # %if.end82
                                        #   in Loop: Header=BB4_34 Depth=1
	cmpq	%rbx, %r14
	jbe	.LBB4_40
# %bb.37:                               # %if.end86
                                        #   in Loop: Header=BB4_34 Depth=1
	movl	(%r13), %eax
	addl	%ebp, %eax
	movl	%eax, (%r13)
	cmpl	$1048575, %eax                  # imm = 0xFFFFF
	jbe	.LBB4_33
	jmp	.LBB4_34
.LBB4_40:                               # %while.end88
	xorl	%ebp, %ebp
	cmpq	$33, (%r12)
	sete	%bpl
	addl	$49, %ebp
	shrl	$20, %r15d
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r14
	movl	(%r13), %edi
	shrl	$20, %edi
	movl	$1, %esi
	callq	uint64_to_str@PLT
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	round_up_to_mib@PLT
	movq	%rax, %rdi
	movl	$2, %esi
	callq	uint64_to_str@PLT
	movl	$.L.str.7, %esi
	movl	$2, %edi
	movl	%ebp, %edx
	movq	%r14, %rcx
	movq	%r15, %r8
	movq	%rax, %r9
	xorl	%eax, %eax
	callq	message@PLT
.LBB4_41:                               # %if.end102
	cmpb	$0, check_default(%rip)
	jne	.LBB4_44
# %bb.42:                               # %if.then104
	movl	$4, check(%rip)
	movl	$4, %edi
	callq	lzma_check_is_supported@PLT
	testb	%al, %al
	jne	.LBB4_44
# %bb.43:                               # %if.then107
	movl	$1, check(%rip)
.LBB4_44:                               # %if.end109
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
.LBB4_16:                               # %if.then26
	.cfi_def_cfa_offset 64
	movl	$filters, %edi
	callq	lzma_raw_encoder_memusage@PLT
	movq	%rax, %r14
	cmpq	$-1, %rax
	jne	.LBB4_20
	jmp	.LBB4_19
.Lfunc_end4:
	.size	coder_set_compression_settings, .Lfunc_end4-coder_set_compression_settings
	.cfi_endproc
                                        # -- End function
	.globl	coder_run                       # -- Begin function coder_run
	.p2align	4, 0x90
	.type	coder_run,@function
coder_run:                              # @coder_run
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
	movq	%rdi, %rbx
	callq	message_filename@PLT
	movq	%rbx, %rdi
	callq	io_open_src@PLT
	testq	%rax, %rax
	je	.LBB5_9
# %bb.1:                                # %if.end
	movq	%rax, %rbx
	movq	$in_buf, strm(%rip)
	movl	$in_buf, %esi
	movl	$8192, %edx                     # imm = 0x2000
	movq	%rax, %rdi
	callq	io_read@PLT
	movq	%rax, strm+8(%rip)
	cmpq	$-1, %rax
	je	.LBB5_10
# %bb.2:                                # %if.then3
	movl	opt_mode(%rip), %edx
	movl	opt_format(%rip), %ecx
	testl	%edx, %edx
	je	.LBB5_11
# %bb.3:                                # %if.else.i
	cmpl	$3, %ecx
	ja	.LBB5_18
# %bb.4:                                # %if.else.i
	movl	%ecx, %ecx
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_5:                                # %sw.bb6.i
	cmpq	$6, %rax
	jb	.LBB5_7
# %bb.6:                                # %is_format_xz.exit.i
	movl	$1484404733, %eax               # imm = 0x587A37FD
	xorl	in_buf(%rip), %eax
	movzwl	in_buf+4(%rip), %ecx
	xorl	$90, %ecx
	orl	%eax, %ecx
	je	.LBB5_25
.LBB5_7:                                # %sw.bb17.i
	callq	is_format_lzma
	testb	%al, %al
	je	.LBB5_17
# %bb.8:                                # %sw.bb32.i
	movl	$1, %edi
	callq	hardware_memlimit_get@PLT
	movl	$strm, %edi
	movq	%rax, %rsi
	callq	lzma_alone_decoder@PLT
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB5_27
	jmp	.LBB5_26
.LBB5_9:                                # %cleanup
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
.LBB5_11:                               # %if.then.i
	.cfi_def_cfa_offset 64
	cmpl	$3, %ecx
	je	.LBB5_24
# %bb.12:                               # %if.then.i
	cmpl	$2, %ecx
	je	.LBB5_23
# %bb.13:                               # %if.then.i
	movl	$11, %ebp
	cmpl	$1, %ecx
	jne	.LBB5_27
# %bb.14:                               # %sw.bb1.i
	movl	check(%rip), %edx
	movl	$strm, %edi
	movl	$filters, %esi
	callq	lzma_stream_encoder@PLT
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB5_27
	jmp	.LBB5_29
.LBB5_15:                               # %sw.bb13.i
	cmpq	$6, %rax
	jb	.LBB5_17
# %bb.16:                               # %is_format_xz.exit65.i
	movl	$1484404733, %eax               # imm = 0x587A37FD
	xorl	in_buf(%rip), %eax
	movzwl	in_buf+4(%rip), %ecx
	xorl	$90, %ecx
	orl	%eax, %ecx
	je	.LBB5_25
.LBB5_17:                               # %sw.bb23thread-pre-split.i
	movl	opt_mode(%rip), %edx
.LBB5_18:                               # %sw.bb23.i
	movl	$7, %ebp
	cmpl	$1, %edx
	jne	.LBB5_27
# %bb.19:                               # %land.lhs.true.i
	movq	opt_stdout@GOTPCREL(%rip), %rax
	cmpb	$1, (%rax)
	jne	.LBB5_27
# %bb.20:                               # %land.lhs.true25.i
	movq	opt_force@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	je	.LBB5_27
# %bb.21:
	xorl	%ebp, %ebp
	jmp	.LBB5_30
.LBB5_22:                               # %sw.bb35.i
	movl	$strm, %edi
	movl	$filters, %esi
	callq	lzma_raw_decoder@PLT
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB5_27
	jmp	.LBB5_29
.LBB5_23:                               # %sw.bb2.i
	movq	filters+8(%rip), %rsi
	movl	$strm, %edi
	callq	lzma_alone_encoder@PLT
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB5_27
	jmp	.LBB5_29
.LBB5_24:                               # %sw.bb4.i
	movl	$strm, %edi
	movl	$filters, %esi
	callq	lzma_raw_encoder@PLT
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB5_27
	jmp	.LBB5_29
.LBB5_25:                               # %sw.bb29.i
	movl	$1, %edi
	callq	hardware_memlimit_get@PLT
	movl	$strm, %edi
	movq	%rax, %rsi
	movl	$10, %edx
	callq	lzma_stream_decoder@PLT
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	.LBB5_27
.LBB5_26:                               # %if.then41.i
	xorps	%xmm0, %xmm0
	movups	%xmm0, strm+24(%rip)
	movl	$strm, %edi
	xorl	%esi, %esi
	callq	lzma_code@PLT
	movl	%eax, %ebp
	testl	%eax, %eax
	je	.LBB5_29
.LBB5_27:                               # %if.then47.i
	movq	(%rbx), %r14
	movl	%ebp, %edi
	callq	message_strm@PLT
	xorl	%r13d, %r13d
	movl	$.L.str.9, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
	cmpl	$6, %ebp
	jne	.LBB5_61
# %bb.28:                               # %if.then50.i
	movl	$strm, %edi
	callq	lzma_memusage@PLT
	movl	$1, %edi
	movq	%rax, %rsi
	callq	message_mem_needed@PLT
	xorl	%r13d, %r13d
	jmp	.LBB5_61
.LBB5_29:
	movb	$1, %bpl
.LBB5_30:                               # %coder_init.exit
	movq	user_abort@GOTPCREL(%rip), %r12
	cmpl	$0, (%r12)
	je	.LBB5_32
.LBB5_10:
	xorl	%r13d, %r13d
.LBB5_61:                               # %if.end18
	movzbl	%r13b, %esi
	movq	%rbx, %rdi
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
	jmp	io_close@PLT                    # TAILCALL
.LBB5_32:                               # %if.then6
	.cfi_def_cfa_offset 64
	cmpl	$2, opt_mode(%rip)
	je	.LBB5_35
# %bb.33:                               # %lor.lhs.false
	movq	%rbx, %rdi
	callq	io_open_dest@PLT
	testb	%al, %al
	jne	.LBB5_10
.LBB5_35:                               # %if.then9
	movl	$strm, %edi
	xorl	%esi, %esi
	callq	message_progress_start@PLT
	testb	%bpl, %bpl
	je	.LBB5_54
# %bb.36:                               # %if.then11
	movzbl	24(%rbx), %eax
	movq	$out_buf, strm+24(%rip)
	movq	$8192, strm+32(%rip)            # imm = 0x2000
	cmpl	$0, (%r12)
	jne	.LBB5_59
# %bb.37:                               # %while.body.preheader.i
	movzbl	%al, %eax
	leal	(%rax,%rax,2), %ebp
	movl	$3, %r13d
	jmp	.LBB5_40
.LBB5_38:                               # %if.end57.i
                                        #   in Loop: Header=BB5_40 Depth=1
	movq	(%rbx), %r15
	movl	%r14d, %edi
	callq	message_strm@PLT
	movl	$.L.str.9, %edi
	movq	%r15, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_warning@PLT
.LBB5_39:                               # %if.end61.i
                                        #   in Loop: Header=BB5_40 Depth=1
	callq	message_progress_update@PLT
	cmpl	$0, (%r12)
	jne	.LBB5_59
.LBB5_40:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, strm+8(%rip)
	jne	.LBB5_44
# %bb.41:                               # %land.lhs.true.i32
                                        #   in Loop: Header=BB5_40 Depth=1
	cmpb	$0, 24(%rbx)
	jne	.LBB5_44
# %bb.42:                               # %if.then.i33
                                        #   in Loop: Header=BB5_40 Depth=1
	movq	$in_buf, strm(%rip)
	movl	$in_buf, %esi
	movl	$8192, %edx                     # imm = 0x2000
	movq	%rbx, %rdi
	callq	io_read@PLT
	movq	%rax, strm+8(%rip)
	cmpq	$-1, %rax
	je	.LBB5_59
# %bb.43:                               # %if.end.i
                                        #   in Loop: Header=BB5_40 Depth=1
	cmpb	$0, 24(%rbx)
	cmovnel	%r13d, %ebp
.LBB5_44:                               # %if.end9.i
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	$strm, %edi
	movl	%ebp, %esi
	callq	lzma_code@PLT
	movl	%eax, %r14d
	movq	strm+32(%rip), %rax
	testq	%rax, %rax
	jne	.LBB5_48
# %bb.45:                               # %if.then12.i
                                        #   in Loop: Header=BB5_40 Depth=1
	cmpl	$2, opt_mode(%rip)
	je	.LBB5_47
# %bb.46:                               # %land.lhs.true14.i
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	$out_buf, %esi
	movl	$8192, %edx                     # imm = 0x2000
	movq	%rbx, %rdi
	callq	io_write@PLT
	testb	%al, %al
	jne	.LBB5_59
.LBB5_47:                               # %if.end17.i
                                        #   in Loop: Header=BB5_40 Depth=1
	movq	$out_buf, strm+24(%rip)
	movq	$8192, strm+32(%rip)            # imm = 0x2000
	movl	$8192, %eax                     # imm = 0x2000
.LBB5_48:                               # %if.end18.i
                                        #   in Loop: Header=BB5_40 Depth=1
	testl	%r14d, %r14d
	je	.LBB5_39
# %bb.49:                               # %if.then20.i
                                        #   in Loop: Header=BB5_40 Depth=1
	leal	-4(%r14), %r15d
	cmpl	$-3, %r15d
	ja	.LBB5_52
# %bb.50:                               # %if.then20.i
                                        #   in Loop: Header=BB5_40 Depth=1
	cmpl	$2, opt_mode(%rip)
	je	.LBB5_52
# %bb.51:                               # %land.lhs.true26.i
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	$8192, %edx                     # imm = 0x2000
	subq	%rax, %rdx
	movl	$out_buf, %esi
	movq	%rbx, %rdi
	callq	io_write@PLT
	testb	%al, %al
	jne	.LBB5_59
.LBB5_52:                               # %if.end31.i
                                        #   in Loop: Header=BB5_40 Depth=1
	cmpl	$1, %r14d
	je	.LBB5_62
# %bb.53:                               # %if.end47.i
                                        #   in Loop: Header=BB5_40 Depth=1
	cmpl	$-3, %r15d
	ja	.LBB5_38
	jmp	.LBB5_63
.LBB5_54:                               # %if.else
	movq	strm+8(%rip), %rax
.LBB5_55:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	sete	%r13b
	je	.LBB5_60
# %bb.56:                               # %while.cond.i
                                        #   in Loop: Header=BB5_55 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB5_60
# %bb.57:                               # %if.end.i36
                                        #   in Loop: Header=BB5_55 Depth=1
	movl	$in_buf, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	io_write@PLT
	testb	%al, %al
	jne	.LBB5_59
# %bb.58:                               # %if.end2.i
                                        #   in Loop: Header=BB5_55 Depth=1
	movq	strm+16(%rip), %rax
	addq	strm+8(%rip), %rax
	movq	%rax, strm+16(%rip)
	movq	%rax, strm+40(%rip)
	callq	message_progress_update@PLT
	movl	$in_buf, %esi
	movl	$8192, %edx                     # imm = 0x2000
	movq	%rbx, %rdi
	callq	io_read@PLT
	movq	%rax, strm+8(%rip)
	cmpq	$-1, %rax
	jne	.LBB5_55
.LBB5_59:
	xorl	%r13d, %r13d
.LBB5_60:                               # %if.end15
	movzbl	%r13b, %edi
	callq	message_progress_end@PLT
	jmp	.LBB5_61
.LBB5_62:                               # %if.then33.i
	movl	$9, %r14d
	cmpq	$0, strm+8(%rip)
	je	.LBB5_65
.LBB5_63:                               # %if.end53.i
	movq	(%rbx), %r15
	movl	%r14d, %edi
	callq	message_strm@PLT
	xorl	%r13d, %r13d
	movl	$.L.str.9, %edi
	movq	%r15, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
	cmpl	$6, %r14d
	jne	.LBB5_60
# %bb.64:                               # %if.then55.i
	movl	$strm, %edi
	callq	lzma_memusage@PLT
	movl	$1, %edi
	movq	%rax, %rsi
	callq	message_mem_needed@PLT
	jmp	.LBB5_59
.LBB5_65:                               # %land.lhs.true35.i
	movb	$1, %r13b
	cmpb	$0, 24(%rbx)
	jne	.LBB5_60
# %bb.66:                               # %if.then38.i
	movl	$in_buf, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	io_read@PLT
	movq	%rax, strm+8(%rip)
	cmpq	$-1, %rax
	je	.LBB5_59
# %bb.67:                               # %if.then38.i
	testq	%rax, %rax
	je	.LBB5_60
	jmp	.LBB5_63
.Lfunc_end5:
	.size	coder_run, .Lfunc_end5-coder_run
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI5_0:
	.quad	.LBB5_5
	.quad	.LBB5_15
	.quad	.LBB5_7
	.quad	.LBB5_22
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function is_format_lzma
	.type	is_format_lzma,@function
is_format_lzma:                         # @is_format_lzma
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpq	$13, strm+8(%rip)
	jae	.LBB6_2
# %bb.1:
	xorl	%ebx, %ebx
	jmp	.LBB6_7
.LBB6_2:                                # %if.end
	movups	.L__const.is_format_lzma.filter(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	xorl	%ebx, %ebx
	movq	%rsp, %rdi
	movl	$in_buf, %edx
	movl	$5, %ecx
	xorl	%esi, %esi
	callq	lzma_properties_decode@PLT
	testl	%eax, %eax
	jne	.LBB6_7
# %bb.3:                                # %if.end3
	movq	8(%rsp), %rdi
	movl	(%rdi), %r14d
	callq	free@PLT
	cmpl	$-1, %r14d
	je	.LBB6_6
# %bb.4:                                # %if.then6
	leal	-1(%r14), %eax
	xorl	%ebx, %ebx
	movl	%r14d, %ecx
	addl	$-1, %ecx
	jae	.LBB6_7
# %bb.5:                                # %if.then6
	movl	%eax, %ecx
	shrl	$2, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$8, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$16, %ecx
	orl	%eax, %ecx
	incl	%ecx
	cmpl	%r14d, %ecx
	jne	.LBB6_7
.LBB6_6:                                # %if.end19
	movq	in_buf+5(%rip), %rax
	incq	%rax
	movabsq	$274877906946, %rcx             # imm = 0x4000000002
	cmpq	%rcx, %rax
	setb	%bl
.LBB6_7:                                # %return
	movl	%ebx, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	is_format_lzma, .Lfunc_end6-is_format_lzma
	.cfi_endproc
                                        # -- End function
	.type	opt_mode,@object                # @opt_mode
	.bss
	.globl	opt_mode
	.p2align	2, 0x0
opt_mode:
	.long	0                               # 0x0
	.size	opt_mode, 4

	.type	opt_format,@object              # @opt_format
	.globl	opt_format
	.p2align	2, 0x0
opt_format:
	.long	0                               # 0x0
	.size	opt_format, 4

	.type	opt_auto_adjust,@object         # @opt_auto_adjust
	.data
	.globl	opt_auto_adjust
opt_auto_adjust:
	.byte	1                               # 0x1
	.size	opt_auto_adjust, 1

	.type	check,@object                   # @check
	.local	check
	.comm	check,4,4
	.type	check_default,@object           # @check_default
	.local	check_default
	.comm	check_default,1,1
	.type	preset_number,@object           # @preset_number
	.p2align	2, 0x0
preset_number:
	.long	6                               # 0x6
	.size	preset_number, 4

	.type	filters_count,@object           # @filters_count
	.local	filters_count
	.comm	filters_count,4,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Maximum number of filters is four"
	.size	.L.str, 34

	.type	filters,@object                 # @filters
	.local	filters
	.comm	filters,80,16
	.type	coder_set_compression_settings.opt_lzma,@object # @coder_set_compression_settings.opt_lzma
	.local	coder_set_compression_settings.opt_lzma
	.comm	coder_set_compression_settings.opt_lzma,112,8
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Using a preset in raw mode is discouraged."
	.size	.L.str.1, 43

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"The exact options of the presets may vary between software versions."
	.size	.L.str.2, 69

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"The .lzma format supports only the LZMA1 filter"
	.size	.L.str.3, 48

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"LZMA1 cannot be used with the .xz format"
	.size	.L.str.4, 41

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Unsupported filter chain or filter options"
	.size	.L.str.5, 43

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Decompression will need %s MiB of memory."
	.size	.L.str.6, 42

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Adjusted LZMA%c dictionary size from %s MiB to %s MiB to not exceed the memory usage limit of %s MiB"
	.size	.L.str.7, 101

	.type	in_buf,@object                  # @in_buf
	.local	in_buf
	.comm	in_buf,8192,8
	.type	strm,@object                    # @strm
	.local	strm
	.comm	strm,136,8
	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Memory usage limit is too low for the given filter setup."
	.size	.L.str.8, 58

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s: %s"
	.size	.L.str.9, 7

	.type	is_format_xz.magic,@object      # @is_format_xz.magic
	.section	.rodata,"a",@progbits
is_format_xz.magic:
	.asciz	"\3757zXZ"
	.size	is_format_xz.magic, 6

	.type	.L__const.is_format_lzma.filter,@object # @__const.is_format_lzma.filter
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.L__const.is_format_lzma.filter:
	.quad	4611686018427387905             # 0x4000000000000001
	.quad	0
	.size	.L__const.is_format_lzma.filter, 16

	.type	out_buf,@object                 # @out_buf
	.local	out_buf
	.comm	out_buf,8192,8
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
