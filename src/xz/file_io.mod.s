	.text
	.file	"file_io.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "xz/file_io.c" md5 0x26a91f1c86306ef56fcbfd09c6826594
	.file	1 "xz" "file_io.h" md5 0x4b45406630bbddcbf05b6d0a795f1a7c
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	3 "/usr/include" "fcntl.h" md5 0x1a9bb91818c37dc7bc291ca6e49fc221
	.file	4 "xz" "main.h" md5 0xf54f82fff34a105635379e91892f4bd0
	.file	5 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.globl	io_init                         # -- Begin function io_init
	.p2align	4, 0x90
	.type	io_init,@function
io_init:                                # @io_init
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 65 2 prologue_end             # xz/file_io.c:65:2
	movl	$1, %edi
.Ltmp0:
	jmp	tuklib_open_stdxxx@PLT          # TAILCALL
.Ltmp1:
.Lfunc_end0:
	.size	io_init, .Lfunc_end0-io_init
	.cfi_endproc
	.file	6 "common" "tuklib_open_stdxxx.h" md5 0x17f0a285271ff1d01e768d40baa688ca
                                        # -- End function
	.globl	io_no_sparse                    # -- Begin function io_no_sparse
	.p2align	4, 0x90
	.type	io_no_sparse,@function
io_no_sparse:                           # @io_no_sparse
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 92 2 prologue_end             # xz/file_io.c:92:2
	retq
.Ltmp2:
.Lfunc_end1:
	.size	io_no_sparse, .Lfunc_end1-io_no_sparse
	.cfi_endproc
                                        # -- End function
	.globl	io_open_src                     # -- Begin function io_open_src
	.p2align	4, 0x90
	.type	io_open_src,@function
io_open_src:                            # @io_open_src
.Lfunc_begin2:
	.loc	0 529 0                         # xz/file_io.c:529:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: io_open_src:src_name <- $rdi
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
.Ltmp3:
	.loc	0 530 6 prologue_end            # xz/file_io.c:530:6
	callq	is_empty_filename@PLT
.Ltmp4:
	#DEBUG_VALUE: io_open_src:src_name <- $rbx
	.loc	0 530 6 is_stmt 0               # xz/file_io.c:530:6
	testb	%al, %al
	je	.LBB2_2
.Ltmp5:
# %bb.1:
	#DEBUG_VALUE: io_open_src:src_name <- $rbx
	.loc	0 0 6                           # xz/file_io.c:0:6
	xorl	%ebx, %ebx
.Ltmp6:
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 530 6                         # xz/file_io.c:530:6
	jmp	.LBB2_15
.Ltmp7:
.LBB2_2:                                # %if.end
	#DEBUG_VALUE: io_open_src:src_name <- $rbx
	.loc	0 537 9 is_stmt 1               # xz/file_io.c:537:9
	movq	%rbx, io_open_src.pair(%rip)
	movq	$0, io_open_src.pair+8(%rip)
	movq	$-1, io_open_src.pair+16(%rip)
	movw	$0, io_open_src.pair+24(%rip)
	movq	$0, io_open_src.pair+32(%rip)
	.loc	0 549 2                         # xz/file_io.c:549:2
	callq	signals_block@PLT
.Ltmp8:
	#DEBUG_VALUE: io_open_src_real:pair <- undef
	.loc	0 320 31                        # xz/file_io.c:320:31
	movq	opt_stdout@GOTPCREL(%rip), %rax
	movzbl	(%rax), %ebx
.Ltmp9:
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:reg_files_only <- [DW_OP_constu 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $bl
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	.loc	0 365 6                         # xz/file_io.c:365:6
	cmpb	$1, %bl
	jne	.LBB2_4
.Ltmp10:
# %bb.3:                                # %if.then.i
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:reg_files_only <- [DW_OP_constu 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $bl
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	.loc	0 366 3                         # xz/file_io.c:366:3
	callq	signals_unblock@PLT
.Ltmp11:
.LBB2_4:                                # %do.body.i.preheader
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:reg_files_only <- [DW_OP_constu 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $bl
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	.loc	0 0 3 is_stmt 0                 # xz/file_io.c:0:3
	movq	spec_fd@GOTPCREL(%rip), %r14
	movq	user_abort@GOTPCREL(%rip), %r15
.Ltmp12:
	.p2align	4, 0x90
.LBB2_5:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:reg_files_only <- [DW_OP_constu 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $bl
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	.loc	0 372 18 is_stmt 1              # xz/file_io.c:372:18
	movq	(%r14), %rdi
	movq	io_open_src.pair(%rip), %rdx
	movl	$3, %esi
	movl	$256, %ecx                      # imm = 0x100
	callq	spec_mem_open@PLT
.Ltmp13:
	movl	%eax, %ebp
	.loc	0 372 16 is_stmt 0              # xz/file_io.c:372:16
	movl	%eax, io_open_src.pair+16(%rip)
.Ltmp14:
	.loc	0 373 24 is_stmt 1              # xz/file_io.c:373:24
	cmpl	$-1, %eax
	.loc	0 373 30 is_stmt 0              # xz/file_io.c:373:30
	jne	.LBB2_8
.Ltmp15:
# %bb.6:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:reg_files_only <- [DW_OP_constu 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $bl
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	.loc	0 373 33                        # xz/file_io.c:373:33
	callq	__errno_location@PLT
.Ltmp16:
	.loc	0 373 39                        # xz/file_io.c:373:39
	cmpl	$4, (%rax)
	.loc	0 373 48                        # xz/file_io.c:373:48
	jne	.LBB2_8
.Ltmp17:
# %bb.7:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_5 Depth=1
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:reg_files_only <- [DW_OP_constu 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $bl
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	cmpl	$0, (%r15)
	je	.LBB2_5
.Ltmp18:
.LBB2_8:                                # %do.end.i
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:reg_files_only <- [DW_OP_constu 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $bl
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	.loc	0 375 6 is_stmt 1               # xz/file_io.c:375:6
	testb	%bl, %bl
	je	.LBB2_10
.Ltmp19:
# %bb.9:                                # %if.then7.i
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:reg_files_only <- [DW_OP_constu 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $bl
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	.loc	0 376 3                         # xz/file_io.c:376:3
	callq	signals_block@PLT
.Ltmp20:
	.loc	0 378 12                        # xz/file_io.c:378:12
	movl	io_open_src.pair+16(%rip), %ebp
.Ltmp21:
.LBB2_10:                               # %if.end8.i
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:reg_files_only <- [DW_OP_constu 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $bl
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	.loc	0 0 12 is_stmt 0                # xz/file_io.c:0:12
	movl	$io_open_src.pair, %ebx
.Ltmp22:
	.loc	0 378 19                        # xz/file_io.c:378:19
	cmpl	$-1, %ebp
.Ltmp23:
	.loc	0 378 6                         # xz/file_io.c:378:6
	jne	.LBB2_14
.Ltmp24:
# %bb.11:                               # %if.then11.i
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	.loc	0 380 7 is_stmt 1               # xz/file_io.c:380:7
	callq	__errno_location@PLT
.Ltmp25:
	movl	(%rax), %edi
	.loc	0 380 13 is_stmt 0              # xz/file_io.c:380:13
	cmpl	$4, %edi
.Ltmp26:
	.loc	0 380 7                         # xz/file_io.c:380:7
	jne	.LBB2_13
.Ltmp27:
# %bb.12:
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	.loc	0 0 7                           # xz/file_io.c:0:7
	xorl	%ebx, %ebx
	.loc	0 380 7                         # xz/file_io.c:380:7
	jmp	.LBB2_14
.Ltmp28:
.LBB2_13:                               # %if.end15.i
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src_real:flags <- 256
	.loc	0 440 34 is_stmt 1              # xz/file_io.c:440:34
	movq	io_open_src.pair(%rip), %r14
	.loc	0 441 6                         # xz/file_io.c:441:6
	callq	strerror@PLT
.Ltmp29:
	.loc	0 0 6 is_stmt 0                 # xz/file_io.c:0:6
	xorl	%ebx, %ebx
	.loc	0 440 4 is_stmt 1               # xz/file_io.c:440:4
	movl	$.L.str.4, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp30:
.LBB2_14:                               # %io_open_src_real.exit
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_src:error <- [DW_OP_constu 18446744073709551615, DW_OP_eq, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ebp
	.loc	0 551 2                         # xz/file_io.c:551:2
	callq	signals_unblock@PLT
.Ltmp31:
.LBB2_15:                               # %return
	#DEBUG_VALUE: io_open_src:src_name <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 554 1                         # xz/file_io.c:554:1
	movq	%rbx, %rax
	.loc	0 554 1 epilogue_begin is_stmt 0 # xz/file_io.c:554:1
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
.Ltmp32:
.Lfunc_end2:
	.size	io_open_src, .Lfunc_end2-io_open_src
	.cfi_endproc
	.file	7 "xz" "util.h" md5 0x36136e1fc433f9fd7b2b728f8484a043
	.file	8 "xz" "signals.h" md5 0x9e441aa48dc54d4f9b3691cef1f4c974
	.file	9 "spec_mem_io" "spec_mem_io.h" md5 0x20f82235716911ab040d2b344ceb3e0d
	.file	10 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.file	11 "/usr/include" "errno.h" md5 0x01c14bf4ab600a3884f5da68eb763170
	.file	12 "/usr/include" "string.h" md5 0xf443da8025a0b7c1498fb6c554ec788d
	.file	13 "xz" "message.h" md5 0x46ce4fae4ea23be71658f9b2e1a5aef3
                                        # -- End function
	.globl	io_open_dest                    # -- Begin function io_open_dest
	.p2align	4, 0x90
	.type	io_open_dest,@function
io_open_dest:                           # @io_open_dest
.Lfunc_begin3:
	.loc	0 721 0 is_stmt 1               # xz/file_io.c:721:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: io_open_dest:pair <- $rdi
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
.Ltmp33:
	.loc	0 722 2 prologue_end            # xz/file_io.c:722:2
	callq	signals_block@PLT
.Ltmp34:
	#DEBUG_VALUE: io_open_dest:pair <- $rbx
	#DEBUG_VALUE: io_open_dest_real:pair <- $rbx
	.loc	0 608 19                        # xz/file_io.c:608:19
	movq	$.L.str.5, 8(%rbx)
.Ltmp35:
	#DEBUG_VALUE: io_open_dest_real:flags <- 0
	.loc	0 630 19                        # xz/file_io.c:630:19
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.5, %edx
	movl	$3, %esi
	xorl	%ecx, %ecx
	callq	spec_mem_open@PLT
.Ltmp36:
	movl	%eax, %ebp
	.loc	0 630 17 is_stmt 0              # xz/file_io.c:630:17
	movl	%eax, 20(%rbx)
.Ltmp37:
	.loc	0 632 21 is_stmt 1              # xz/file_io.c:632:21
	cmpl	$-1, %eax
.Ltmp38:
	.loc	0 632 7 is_stmt 0               # xz/file_io.c:632:7
	jne	.LBB3_2
.Ltmp39:
# %bb.1:                                # %if.then5.i
	#DEBUG_VALUE: io_open_dest:pair <- $rbx
	#DEBUG_VALUE: io_open_dest_real:pair <- $rbx
	#DEBUG_VALUE: io_open_dest_real:flags <- 0
	.loc	0 633 34 is_stmt 1              # xz/file_io.c:633:34
	movq	8(%rbx), %r14
	.loc	0 634 15                        # xz/file_io.c:634:15
	callq	__errno_location@PLT
.Ltmp40:
	movl	(%rax), %edi
	.loc	0 634 6 is_stmt 0               # xz/file_io.c:634:6
	callq	strerror@PLT
.Ltmp41:
	.loc	0 633 4 is_stmt 1               # xz/file_io.c:633:4
	movl	$.L.str.4, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp42:
	.loc	0 635 15                        # xz/file_io.c:635:15
	movq	8(%rbx), %rdi
	.loc	0 635 4 is_stmt 0               # xz/file_io.c:635:4
	callq	free@PLT
.Ltmp43:
.LBB3_2:                                # %io_open_dest_real.exit
	#DEBUG_VALUE: io_open_dest:pair <- $rbx
	#DEBUG_VALUE: io_open_dest_real:pair <- $rbx
	#DEBUG_VALUE: io_open_dest_real:flags <- 0
	.loc	0 632 21 is_stmt 1              # xz/file_io.c:632:21
	cmpl	$-1, %ebp
	sete	%bl
.Ltmp44:
	#DEBUG_VALUE: io_open_dest:pair <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_open_dest:ret <- [DW_OP_constu 18446744073709551615, DW_OP_eq, DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ebp
	.loc	0 724 2                         # xz/file_io.c:724:2
	callq	signals_unblock@PLT
.Ltmp45:
	.loc	0 725 2                         # xz/file_io.c:725:2
	movl	%ebx, %eax
	.loc	0 725 2 epilogue_begin is_stmt 0 # xz/file_io.c:725:2
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 8
	retq
.Ltmp47:
.Lfunc_end3:
	.size	io_open_dest, .Lfunc_end3-io_open_dest
	.cfi_endproc
	.file	14 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
                                        # -- End function
	.globl	io_close                        # -- Begin function io_close
	.p2align	4, 0x90
	.type	io_close,@function
io_close:                               # @io_close
.Lfunc_begin4:
	.loc	0 790 0 is_stmt 1               # xz/file_io.c:790:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: io_close:pair <- $rdi
	#DEBUG_VALUE: io_close:success <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $esi
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
.Ltmp48:
	.loc	0 792 14 prologue_end           # xz/file_io.c:792:14
	testl	%esi, %esi
	je	.LBB4_13
.Ltmp49:
# %bb.1:                                # %land.lhs.true
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_close:success <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $esi
	.loc	0 793 4                         # xz/file_io.c:793:4
	cmpb	$1, 25(%rbx)
	jne	.LBB4_13
.Ltmp50:
# %bb.2:                                # %land.lhs.true2
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_close:success <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $esi
	.loc	0 793 13 is_stmt 0              # xz/file_io.c:793:13
	movq	32(%rbx), %rcx
	.loc	0 793 33                        # xz/file_io.c:793:33
	testq	%rcx, %rcx
.Ltmp51:
	.loc	0 792 6 is_stmt 1               # xz/file_io.c:792:6
	jle	.LBB4_13
.Ltmp52:
# %bb.3:                                # %if.then
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_close:success <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $esi
	.loc	0 801 7                         # xz/file_io.c:801:7
	movq	spec_fd@GOTPCREL(%rip), %r12
	movq	(%r12), %rdi
	movl	20(%rbx), %edx
	decq	%rcx
	movl	$3, %esi
.Ltmp53:
	movl	$1, %r8d
	callq	spec_mem_lseek@PLT
.Ltmp54:
	.loc	0 802 15                        # xz/file_io.c:802:15
	cmpq	$-1, %rax
.Ltmp55:
	.loc	0 801 7                         # xz/file_io.c:801:7
	je	.LBB4_4
.Ltmp56:
# %bb.5:                                # %if.else
	#DEBUG_VALUE: io_close:pair <- $rbx
	.loc	0 808 18                        # xz/file_io.c:808:18
	movb	$0, 15(%rsp)
	leaq	15(%rsp), %r14
	movl	$1, %r15d
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- [DW_OP_plus_uconst 15, DW_OP_stack_value] $rsp
	#DEBUG_VALUE: io_write_buf:size <- 1
	movq	user_abort@GOTPCREL(%rip), %r13
	jmp	.LBB4_6
.Ltmp57:
	.p2align	4, 0x90
.LBB4_11:                               # %if.end13.i
                                        #   in Loop: Header=BB4_6 Depth=1
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r14
	#DEBUG_VALUE: io_write_buf:size <- $r15
	#DEBUG_VALUE: amount <- $rax
	.loc	0 953 7                         # xz/file_io.c:953:7
	addq	%rax, %r14
.Ltmp58:
	#DEBUG_VALUE: io_write_buf:buf <- $r14
	.loc	0 954 8                         # xz/file_io.c:954:8
	subq	%rax, %r15
.Ltmp59:
	#DEBUG_VALUE: io_write_buf:size <- $r15
.LBB4_12:                               # %cleanup.i
                                        #   in Loop: Header=BB4_6 Depth=1
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r14
	#DEBUG_VALUE: io_write_buf:size <- $r15
	#DEBUG_VALUE: io_write_buf:size <- $r15
	#DEBUG_VALUE: io_write_buf:buf <- $r14
	.loc	0 924 14                        # xz/file_io.c:924:14
	testq	%r15, %r15
	.loc	0 924 2 is_stmt 0               # xz/file_io.c:924:2
	je	.LBB4_13
.Ltmp60:
.LBB4_6:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:size <- $r15
	#DEBUG_VALUE: io_write_buf:buf <- $r14
	.loc	0 925 26 is_stmt 1              # xz/file_io.c:925:26
	movq	(%r12), %rdi
	movl	20(%rbx), %edx
	movl	$3, %esi
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	spec_mem_write@PLT
.Ltmp61:
	#DEBUG_VALUE: amount <- $rax
	.loc	0 926 14                        # xz/file_io.c:926:14
	cmpq	$-1, %rax
.Ltmp62:
	.loc	0 926 7 is_stmt 0               # xz/file_io.c:926:7
	jne	.LBB4_11
.Ltmp63:
# %bb.7:                                # %if.then.i
                                        #   in Loop: Header=BB4_6 Depth=1
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r14
	#DEBUG_VALUE: io_write_buf:size <- $r15
	#DEBUG_VALUE: amount <- $rax
	.loc	0 927 8 is_stmt 1               # xz/file_io.c:927:8
	callq	__errno_location@PLT
.Ltmp64:
	movl	(%rax), %edi
.Ltmp65:
	.loc	0 927 8 is_stmt 0               # xz/file_io.c:927:8
	cmpl	$4, %edi
	jne	.LBB4_8
.Ltmp66:
# %bb.19:                               # %if.then4.i
                                        #   in Loop: Header=BB4_6 Depth=1
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r14
	#DEBUG_VALUE: io_write_buf:size <- $r15
	.loc	0 928 9 is_stmt 1               # xz/file_io.c:928:9
	cmpl	$0, (%r13)
	je	.LBB4_12
	jmp	.LBB4_13
.Ltmp67:
.LBB4_4:                                # %if.then5
	#DEBUG_VALUE: io_close:pair <- $rbx
	.loc	0 805 12                        # xz/file_io.c:805:12
	movq	8(%rbx), %r14
	.loc	0 805 32 is_stmt 0              # xz/file_io.c:805:32
	callq	__errno_location@PLT
.Ltmp68:
	movl	(%rax), %edi
	.loc	0 805 23                        # xz/file_io.c:805:23
	callq	strerror@PLT
.Ltmp69:
	.loc	0 803 4 is_stmt 1               # xz/file_io.c:803:4
	movl	$.L.str, %edi
	jmp	.LBB4_10
.Ltmp70:
.LBB4_8:                                # %if.then.i
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r14
	#DEBUG_VALUE: io_write_buf:size <- $r15
	.loc	0 927 8                         # xz/file_io.c:927:8
	cmpl	$32, %edi
	je	.LBB4_13
.Ltmp71:
# %bb.9:                                # %if.then9.i
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r14
	#DEBUG_VALUE: io_write_buf:size <- $r15
	.loc	0 948 12                        # xz/file_io.c:948:12
	movq	8(%rbx), %r14
.Ltmp72:
	.loc	0 948 23 is_stmt 0              # xz/file_io.c:948:23
	callq	strerror@PLT
.Ltmp73:
	.loc	0 947 5 is_stmt 1               # xz/file_io.c:947:5
	movl	$.L.str.7, %edi
.Ltmp74:
.LBB4_10:                               # %if.end11
	#DEBUG_VALUE: io_close:pair <- $rbx
	.loc	0 0 0 is_stmt 0                 # xz/file_io.c:0:0
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp75:
	#DEBUG_VALUE: io_close:success <- undef
.LBB4_13:                               # %if.end11
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_close:success <- undef
	.loc	0 814 2 is_stmt 1               # xz/file_io.c:814:2
	callq	signals_block@PLT
.Ltmp76:
	#DEBUG_VALUE: io_close_dest:pair <- $rbx
	#DEBUG_VALUE: io_close_dest:success <- undef
	.loc	0 759 12                        # xz/file_io.c:759:12
	movl	20(%rbx), %edx
	.loc	0 759 26 is_stmt 0              # xz/file_io.c:759:26
	cmpl	$-1, %edx
	je	.LBB4_18
.Ltmp77:
# %bb.14:                               # %if.end11
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_close_dest:pair <- $rbx
	cmpl	$1, %edx
	je	.LBB4_18
.Ltmp78:
# %bb.15:                               # %if.end.i
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_close_dest:pair <- $rbx
	.loc	0 762 6 is_stmt 1               # xz/file_io.c:762:6
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$3, %esi
	callq	spec_mem_close@PLT
.Ltmp79:
	.loc	0 0 0 is_stmt 0                 # xz/file_io.c:0:0
	movq	8(%rbx), %r14
.Ltmp80:
	.loc	0 762 6                         # xz/file_io.c:762:6
	testl	%eax, %eax
.Ltmp81:
	.loc	0 762 6                         # xz/file_io.c:762:6
	je	.LBB4_17
.Ltmp82:
# %bb.16:
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_close_dest:pair <- $rbx
	.loc	0 764 31 is_stmt 1              # xz/file_io.c:764:31
	callq	__errno_location@PLT
.Ltmp83:
	movl	(%rax), %edi
	.loc	0 764 22 is_stmt 0              # xz/file_io.c:764:22
	callq	strerror@PLT
.Ltmp84:
	.loc	0 763 3 is_stmt 1               # xz/file_io.c:763:3
	movl	$.L.str.6, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp85:
	.loc	0 771 14                        # xz/file_io.c:771:14
	movq	8(%rbx), %r14
.Ltmp86:
.LBB4_17:                               # %io_close_dest.exit.thread.sink.split
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_close_dest:pair <- $rbx
	.loc	0 0 0 is_stmt 0                 # xz/file_io.c:0:0
	movq	%r14, %rdi
	callq	free@PLT
.Ltmp87:
.LBB4_18:                               # %io_close_dest.exit.thread
	#DEBUG_VALUE: io_close:pair <- $rbx
	#DEBUG_VALUE: io_close:success <- undef
	.loc	0 831 2 is_stmt 1               # xz/file_io.c:831:2
	movl	16(%rbx), %edx
.Ltmp88:
	#DEBUG_VALUE: io_close_src:pair <- undef
	#DEBUG_VALUE: io_close_src:success <- undef
	.loc	0 566 15                        # xz/file_io.c:566:15
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$3, %esi
	callq	spec_mem_close@PLT
.Ltmp89:
	.loc	0 833 2                         # xz/file_io.c:833:2
	callq	signals_unblock@PLT
.Ltmp90:
	.loc	0 835 2 epilogue_begin          # xz/file_io.c:835:2
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
.Ltmp91:
	#DEBUG_VALUE: io_close:pair <- [DW_OP_LLVM_entry_value 1] $rdi
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
.Ltmp92:
.Lfunc_end4:
	.size	io_close, .Lfunc_end4-io_close
	.cfi_endproc
	.file	15 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	16 "/usr/include" "unistd.h" md5 0xed37c2e6f30ba31a8b41e4d70547c39c
                                        # -- End function
	.globl	io_read                         # -- Begin function io_read
	.p2align	4, 0x90
	.type	io_read,@function
io_read:                                # @io_read
.Lfunc_begin5:
	.loc	0 841 0                         # xz/file_io.c:841:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: io_read:pair <- $rdi
	#DEBUG_VALUE: io_read:buf_union <- $rsi
	#DEBUG_VALUE: io_read:size <- $rdx
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
.Ltmp93:
	#DEBUG_VALUE: io_read:buf <- $rsi
	#DEBUG_VALUE: io_read:left <- $rdx
	movq	%rdx, %rbx
.Ltmp94:
	.loc	0 848 14 prologue_end           # xz/file_io.c:848:14
	testq	%rdx, %rdx
	.loc	0 848 2 is_stmt 0               # xz/file_io.c:848:2
	je	.LBB5_11
.Ltmp95:
# %bb.1:                                # %while.body.lr.ph
	#DEBUG_VALUE: io_read:pair <- $rdi
	#DEBUG_VALUE: io_read:buf_union <- $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	#DEBUG_VALUE: io_read:buf <- $rsi
	#DEBUG_VALUE: io_read:left <- $rbx
	.loc	0 0 2                           # xz/file_io.c:0:2
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	spec_fd@GOTPCREL(%rip), %r13
	movq	user_abort@GOTPCREL(%rip), %rbp
	movq	%rbx, %r15
	jmp	.LBB5_2
.Ltmp96:
	.p2align	4, 0x90
.LBB5_10:                               # %cleanup
                                        #   in Loop: Header=BB5_2 Depth=1
	#DEBUG_VALUE: io_read:pair <- $r14
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	#DEBUG_VALUE: io_read:buf <- $r12
	#DEBUG_VALUE: io_read:left <- $r15
	#DEBUG_VALUE: io_read:left <- $r15
	#DEBUG_VALUE: io_read:buf <- $r12
	.loc	0 848 14                        # xz/file_io.c:848:14
	testq	%r15, %r15
	.loc	0 848 2                         # xz/file_io.c:848:2
	je	.LBB5_11
.Ltmp97:
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: io_read:pair <- $r14
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	#DEBUG_VALUE: io_read:buf <- $r12
	#DEBUG_VALUE: io_read:left <- $r15
	#DEBUG_VALUE: io_read:left <- $r15
	#DEBUG_VALUE: io_read:buf <- $r12
	.loc	0 849 26 is_stmt 1              # xz/file_io.c:849:26
	movq	(%r13), %rdi
	movl	16(%r14), %edx
	movl	$3, %esi
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	spec_mem_read@PLT
.Ltmp98:
	#DEBUG_VALUE: amount <- $rax
	.loc	0 851 7                         # xz/file_io.c:851:7
	cmpq	$-1, %rax
	je	.LBB5_5
.Ltmp99:
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB5_2 Depth=1
	#DEBUG_VALUE: io_read:pair <- $r14
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	#DEBUG_VALUE: io_read:buf <- $r12
	#DEBUG_VALUE: io_read:left <- $r15
	#DEBUG_VALUE: amount <- $rax
	testq	%rax, %rax
	je	.LBB5_4
.Ltmp100:
# %bb.9:                                # %if.end13
                                        #   in Loop: Header=BB5_2 Depth=1
	#DEBUG_VALUE: io_read:pair <- $r14
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	#DEBUG_VALUE: io_read:buf <- $r12
	#DEBUG_VALUE: io_read:left <- $r15
	#DEBUG_VALUE: amount <- $rax
	.loc	0 873 7                         # xz/file_io.c:873:7
	addq	%rax, %r12
.Ltmp101:
	#DEBUG_VALUE: io_read:buf <- $r12
	.loc	0 874 8                         # xz/file_io.c:874:8
	subq	%rax, %r15
.Ltmp102:
	#DEBUG_VALUE: io_read:left <- $r15
	.loc	0 0 8 is_stmt 0                 # xz/file_io.c:0:8
	jmp	.LBB5_10
.Ltmp103:
	.p2align	4, 0x90
.LBB5_5:                                # %if.then3
                                        #   in Loop: Header=BB5_2 Depth=1
	#DEBUG_VALUE: io_read:pair <- $r14
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	#DEBUG_VALUE: io_read:buf <- $r12
	#DEBUG_VALUE: io_read:left <- $r15
	#DEBUG_VALUE: amount <- $rax
	.loc	0 857 8 is_stmt 1               # xz/file_io.c:857:8
	callq	__errno_location@PLT
.Ltmp104:
	movl	(%rax), %edi
	.loc	0 857 14 is_stmt 0              # xz/file_io.c:857:14
	cmpl	$4, %edi
.Ltmp105:
	.loc	0 857 8                         # xz/file_io.c:857:8
	jne	.LBB5_8
.Ltmp106:
# %bb.6:                                # %if.then6
                                        #   in Loop: Header=BB5_2 Depth=1
	#DEBUG_VALUE: io_read:pair <- $r14
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	#DEBUG_VALUE: io_read:buf <- $r12
	#DEBUG_VALUE: io_read:left <- $r15
	.loc	0 858 9 is_stmt 1               # xz/file_io.c:858:9
	cmpl	$0, (%rbp)
.Ltmp107:
	.loc	0 0 0 is_stmt 0                 # xz/file_io.c:0:0
	je	.LBB5_10
.Ltmp108:
# %bb.7:
	#DEBUG_VALUE: io_read:pair <- $r14
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	#DEBUG_VALUE: io_read:buf <- $r12
	#DEBUG_VALUE: io_read:left <- $r15
	movq	$-1, %rbx
.Ltmp109:
	#DEBUG_VALUE: io_read:size <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 870 4 is_stmt 1               # xz/file_io.c:870:4
	jmp	.LBB5_13
.Ltmp110:
.LBB5_11:
	#DEBUG_VALUE: io_read:pair <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	.loc	0 0 4 is_stmt 0                 # xz/file_io.c:0:4
	xorl	%r15d, %r15d
.Ltmp111:
.LBB5_12:                               # %while.end
	#DEBUG_VALUE: io_read:pair <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	#DEBUG_VALUE: io_read:left <- $r15
	.loc	0 877 14 is_stmt 1              # xz/file_io.c:877:14
	subq	%r15, %rbx
.Ltmp112:
	#DEBUG_VALUE: io_read:size <- [DW_OP_LLVM_entry_value 1] $rdx
.LBB5_13:                               # %cleanup15
	#DEBUG_VALUE: io_read:pair <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_read:left <- $r15
	.loc	0 878 1                         # xz/file_io.c:878:1
	movq	%rbx, %rax
	.loc	0 878 1 epilogue_begin is_stmt 0 # xz/file_io.c:878:1
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
.Ltmp113:
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp114:
.LBB5_4:                                # %cleanup.thread31
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: io_read:pair <- $r14
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	#DEBUG_VALUE: io_read:buf <- $r12
	#DEBUG_VALUE: io_read:left <- $r15
	#DEBUG_VALUE: amount <- $rax
	.loc	0 852 18 is_stmt 1              # xz/file_io.c:852:18
	movb	$1, 24(%r14)
	#DEBUG_VALUE: io_read:left <- $r15
.Ltmp115:
	#DEBUG_VALUE: io_read:buf <- undef
	.loc	0 0 18 is_stmt 0                # xz/file_io.c:0:18
	jmp	.LBB5_12
.Ltmp116:
.LBB5_8:                                # %if.end9
	#DEBUG_VALUE: io_read:pair <- $r14
	#DEBUG_VALUE: io_read:buf_union <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_read:size <- $rbx
	#DEBUG_VALUE: io_read:buf <- $r12
	#DEBUG_VALUE: io_read:left <- $r15
	.loc	0 865 12 is_stmt 1              # xz/file_io.c:865:12
	movq	(%r14), %rbx
.Ltmp117:
	#DEBUG_VALUE: io_read:size <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 865 22 is_stmt 0              # xz/file_io.c:865:22
	callq	strerror@PLT
.Ltmp118:
	.loc	0 864 4 is_stmt 1               # xz/file_io.c:864:4
	movl	$.L.str.1, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp119:
	.loc	0 868 18                        # xz/file_io.c:868:18
	movb	$1, 24(%r14)
	movq	$-1, %rbx
	.loc	0 870 4                         # xz/file_io.c:870:4
	jmp	.LBB5_13
.Ltmp120:
.Lfunc_end5:
	.size	io_read, .Lfunc_end5-io_read
	.cfi_endproc
                                        # -- End function
	.globl	io_pread                        # -- Begin function io_pread
	.p2align	4, 0x90
	.type	io_pread,@function
io_pread:                               # @io_pread
.Lfunc_begin6:
	.loc	0 883 0                         # xz/file_io.c:883:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: io_pread:pair <- $rdi
	#DEBUG_VALUE: io_pread:buf <- $rsi
	#DEBUG_VALUE: io_pread:size <- $rdx
	#DEBUG_VALUE: io_pread:pos <- $rcx
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
.Ltmp121:
	.loc	0 886 6 prologue_end            # xz/file_io.c:886:6
	movq	spec_fd@GOTPCREL(%rip), %r13
	movq	(%r13), %rdi
.Ltmp122:
	#DEBUG_VALUE: io_pread:pair <- $rbx
	movl	16(%rbx), %edx
.Ltmp123:
	#DEBUG_VALUE: io_pread:size <- $r14
	movl	$3, %esi
.Ltmp124:
	#DEBUG_VALUE: io_pread:buf <- $r15
	xorl	%r8d, %r8d
	callq	spec_mem_lseek@PLT
.Ltmp125:
	#DEBUG_VALUE: io_pread:pos <- $r12
	.loc	0 886 41 is_stmt 0              # xz/file_io.c:886:41
	cmpq	%r12, %rax
.Ltmp126:
	.loc	0 886 6                         # xz/file_io.c:886:6
	jne	.LBB6_10
.Ltmp127:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- $r15
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- $r12
	#DEBUG_VALUE: io_read:pair <- $rbx
	#DEBUG_VALUE: io_read:buf_union <- $r15
	#DEBUG_VALUE: io_read:size <- $r14
	#DEBUG_VALUE: io_read:buf <- $r15
	#DEBUG_VALUE: io_read:left <- $r14
	.loc	0 848 14 is_stmt 1              # xz/file_io.c:848:14
	testq	%r14, %r14
	.loc	0 848 2 is_stmt 0               # xz/file_io.c:848:2
	je	.LBB6_11
.Ltmp128:
# %bb.2:                                # %while.body.i.preheader
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- $r15
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- $r12
	#DEBUG_VALUE: io_read:pair <- $rbx
	#DEBUG_VALUE: io_read:buf_union <- $r15
	#DEBUG_VALUE: io_read:size <- $r14
	#DEBUG_VALUE: io_read:buf <- $r15
	#DEBUG_VALUE: io_read:left <- $r14
	.loc	0 0 2                           # xz/file_io.c:0:2
	movq	user_abort@GOTPCREL(%rip), %rbp
	movq	%r14, %r12
.Ltmp129:
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	jmp	.LBB6_4
.Ltmp130:
	.p2align	4, 0x90
.LBB6_3:                                # %cleanup.i
                                        #   in Loop: Header=BB6_4 Depth=1
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: io_read:pair <- $rbx
	#DEBUG_VALUE: io_read:size <- $r14
	#DEBUG_VALUE: io_read:buf <- $r15
	#DEBUG_VALUE: io_read:left <- $r12
	#DEBUG_VALUE: io_read:left <- $r12
	#DEBUG_VALUE: io_read:buf <- $r15
	.loc	0 848 14                        # xz/file_io.c:848:14
	testq	%r12, %r12
	.loc	0 848 2                         # xz/file_io.c:848:2
	je	.LBB6_11
.Ltmp131:
.LBB6_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: io_read:pair <- $rbx
	#DEBUG_VALUE: io_read:size <- $r14
	#DEBUG_VALUE: io_read:buf <- $r15
	#DEBUG_VALUE: io_read:left <- $r12
	#DEBUG_VALUE: io_read:left <- $r12
	#DEBUG_VALUE: io_read:buf <- $r15
	.loc	0 849 26 is_stmt 1              # xz/file_io.c:849:26
	movq	(%r13), %rdi
	movl	16(%rbx), %edx
	movl	$3, %esi
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	spec_mem_read@PLT
.Ltmp132:
	#DEBUG_VALUE: amount <- $rax
	.loc	0 851 7                         # xz/file_io.c:851:7
	cmpq	$-1, %rax
	je	.LBB6_7
.Ltmp133:
# %bb.5:                                # %while.body.i
                                        #   in Loop: Header=BB6_4 Depth=1
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: io_read:pair <- $rbx
	#DEBUG_VALUE: io_read:size <- $r14
	#DEBUG_VALUE: io_read:buf <- $r15
	#DEBUG_VALUE: io_read:left <- $r12
	#DEBUG_VALUE: amount <- $rax
	testq	%rax, %rax
	je	.LBB6_15
.Ltmp134:
# %bb.6:                                # %if.end13.i
                                        #   in Loop: Header=BB6_4 Depth=1
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: io_read:pair <- $rbx
	#DEBUG_VALUE: io_read:size <- $r14
	#DEBUG_VALUE: io_read:buf <- $r15
	#DEBUG_VALUE: io_read:left <- $r12
	#DEBUG_VALUE: amount <- $rax
	.loc	0 873 7                         # xz/file_io.c:873:7
	addq	%rax, %r15
.Ltmp135:
	#DEBUG_VALUE: io_read:buf <- $r15
	.loc	0 874 8                         # xz/file_io.c:874:8
	subq	%rax, %r12
.Ltmp136:
	#DEBUG_VALUE: io_read:left <- $r12
	.loc	0 0 8 is_stmt 0                 # xz/file_io.c:0:8
	jmp	.LBB6_3
.Ltmp137:
	.p2align	4, 0x90
.LBB6_7:                                # %if.then3.i
                                        #   in Loop: Header=BB6_4 Depth=1
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: io_read:pair <- $rbx
	#DEBUG_VALUE: io_read:size <- $r14
	#DEBUG_VALUE: io_read:buf <- $r15
	#DEBUG_VALUE: io_read:left <- $r12
	#DEBUG_VALUE: amount <- $rax
	.loc	0 857 8 is_stmt 1               # xz/file_io.c:857:8
	callq	__errno_location@PLT
.Ltmp138:
	movl	(%rax), %edi
	.loc	0 857 14 is_stmt 0              # xz/file_io.c:857:14
	cmpl	$4, %edi
.Ltmp139:
	.loc	0 857 8                         # xz/file_io.c:857:8
	jne	.LBB6_16
.Ltmp140:
# %bb.8:                                # %if.then6.i
                                        #   in Loop: Header=BB6_4 Depth=1
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: io_read:pair <- $rbx
	#DEBUG_VALUE: io_read:size <- $r14
	#DEBUG_VALUE: io_read:buf <- $r15
	#DEBUG_VALUE: io_read:left <- $r12
	.loc	0 858 9 is_stmt 1               # xz/file_io.c:858:9
	cmpl	$0, (%rbp)
	je	.LBB6_3
	jmp	.LBB6_17
.Ltmp141:
.LBB6_10:                               # %if.then
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- $r15
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- $r12
	.loc	0 888 11                        # xz/file_io.c:888:11
	movq	(%rbx), %rbx
.Ltmp142:
	#DEBUG_VALUE: io_pread:pair <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 888 30 is_stmt 0              # xz/file_io.c:888:30
	callq	__errno_location@PLT
.Ltmp143:
	movl	(%rax), %edi
	.loc	0 888 21                        # xz/file_io.c:888:21
	callq	strerror@PLT
.Ltmp144:
	.loc	0 887 3 is_stmt 1               # xz/file_io.c:887:3
	movl	$.L.str.2, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp145:
.LBB6_17:                               # %return
	#DEBUG_VALUE: io_pread:pair <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 0 3 is_stmt 0                 # xz/file_io.c:0:3
	movb	$1, %bpl
.Ltmp146:
.LBB6_18:                               # %return
	#DEBUG_VALUE: io_pread:pair <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 903 1 is_stmt 1               # xz/file_io.c:903:1
	movl	%ebp, %eax
	.loc	0 903 1 epilogue_begin is_stmt 0 # xz/file_io.c:903:1
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
.Ltmp147:
.LBB6_11:
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: io_read:pair <- $rbx
	#DEBUG_VALUE: io_read:size <- $r14
	#DEBUG_VALUE: io_read:buf <- $r15
	.loc	0 0 1                           # xz/file_io.c:0:1
	xorl	%r12d, %r12d
.Ltmp148:
	#DEBUG_VALUE: io_read:left <- $r12
	.loc	0 877 14 is_stmt 1              # xz/file_io.c:877:14
	subq	%r12, %r14
.Ltmp149:
	#DEBUG_VALUE: io_pread:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_pread:amount <- $r14
	.loc	0 0 14 is_stmt 0                # xz/file_io.c:0:14
	movb	$1, %bpl
.Ltmp150:
	.loc	0 893 13 is_stmt 1              # xz/file_io.c:893:13
	cmpq	$-1, %r14
.Ltmp151:
	.loc	0 893 6 is_stmt 0               # xz/file_io.c:893:6
	je	.LBB6_18
.Ltmp152:
.LBB6_12:                               # %if.end6
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 896 13 is_stmt 1              # xz/file_io.c:896:13
	testq	%r12, %r12
.Ltmp153:
	.loc	0 896 6 is_stmt 0               # xz/file_io.c:896:6
	je	.LBB6_14
.Ltmp154:
# %bb.13:                               # %if.then8
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 898 11 is_stmt 1              # xz/file_io.c:898:11
	movq	(%rbx), %rsi
	.loc	0 897 3                         # xz/file_io.c:897:3
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp155:
	.loc	0 0 3 is_stmt 0                 # xz/file_io.c:0:3
	jmp	.LBB6_18
.Ltmp156:
.LBB6_14:
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	xorl	%ebp, %ebp
	.loc	0 896 6 is_stmt 1               # xz/file_io.c:896:6
	jmp	.LBB6_18
.Ltmp157:
.LBB6_15:                               # %cleanup.thread31.i
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: io_read:pair <- $rbx
	#DEBUG_VALUE: io_read:size <- $r14
	#DEBUG_VALUE: io_read:buf <- $r15
	#DEBUG_VALUE: io_read:left <- $r12
	#DEBUG_VALUE: amount <- $rax
	.loc	0 852 18                        # xz/file_io.c:852:18
	movb	$1, 24(%rbx)
.Ltmp158:
	#DEBUG_VALUE: io_read:left <- $r12
	#DEBUG_VALUE: io_read:buf <- undef
	#DEBUG_VALUE: io_read:left <- $r12
	.loc	0 877 14                        # xz/file_io.c:877:14
	subq	%r12, %r14
.Ltmp159:
	#DEBUG_VALUE: io_pread:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_pread:amount <- undef
	.loc	0 0 14 is_stmt 0                # xz/file_io.c:0:14
	movb	$1, %bpl
.Ltmp160:
	.loc	0 893 13 is_stmt 1              # xz/file_io.c:893:13
	cmpq	$-1, %r14
.Ltmp161:
	.loc	0 893 6 is_stmt 0               # xz/file_io.c:893:6
	jne	.LBB6_12
	jmp	.LBB6_18
.Ltmp162:
.LBB6_16:                               # %if.end9.i
	#DEBUG_VALUE: io_pread:pair <- $rbx
	#DEBUG_VALUE: io_pread:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_pread:size <- $r14
	#DEBUG_VALUE: io_pread:pos <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: io_read:pair <- $rbx
	#DEBUG_VALUE: io_read:size <- $r14
	#DEBUG_VALUE: io_read:buf <- $r15
	#DEBUG_VALUE: io_read:left <- $r12
	.loc	0 865 12 is_stmt 1              # xz/file_io.c:865:12
	movq	(%rbx), %r14
.Ltmp163:
	#DEBUG_VALUE: io_pread:size <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 865 22 is_stmt 0              # xz/file_io.c:865:22
	callq	strerror@PLT
.Ltmp164:
	.loc	0 864 4 is_stmt 1               # xz/file_io.c:864:4
	movl	$.L.str.1, %edi
	movq	%r14, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp165:
	.loc	0 868 18                        # xz/file_io.c:868:18
	movb	$1, 24(%rbx)
	jmp	.LBB6_17
.Ltmp166:
.Lfunc_end6:
	.size	io_pread, .Lfunc_end6-io_pread
	.cfi_endproc
                                        # -- End function
	.globl	io_write                        # -- Begin function io_write
	.p2align	4, 0x90
	.type	io_write,@function
io_write:                               # @io_write
.Lfunc_begin7:
	.loc	0 963 0                         # xz/file_io.c:963:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: io_write:pair <- $rdi
	#DEBUG_VALUE: io_write:buf <- $rsi
	#DEBUG_VALUE: io_write:size <- $rdx
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
.Ltmp167:
	.loc	0 966 6 prologue_end            # xz/file_io.c:966:6
	cmpb	$1, 25(%rdi)
	jne	.LBB7_20
.Ltmp168:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	.loc	0 975 7                         # xz/file_io.c:975:7
	testq	%r14, %r14
	je	.LBB7_28
.Ltmp169:
# %bb.2:                                # %if.then
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	cmpq	$8192, %r14                     # imm = 0x2000
	jne	.LBB7_16
.Ltmp170:
# %bb.3:                                # %for.body.i.preheader
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: i <- 0
	.loc	0 912 19                        # xz/file_io.c:912:19
	cmpq	$0, (%r15)
.Ltmp171:
	.loc	0 912 7 is_stmt 0               # xz/file_io.c:912:7
	je	.LBB7_4
.Ltmp172:
.LBB7_16:                               # %if.end6
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	.loc	0 986 13 is_stmt 1              # xz/file_io.c:986:13
	movq	32(%rbx), %rcx
	.loc	0 986 33 is_stmt 0              # xz/file_io.c:986:33
	testq	%rcx, %rcx
.Ltmp173:
	.loc	0 986 7                         # xz/file_io.c:986:7
	jle	.LBB7_20
.Ltmp174:
# %bb.17:                               # %if.then9
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	.loc	0 987 8 is_stmt 1               # xz/file_io.c:987:8
	movq	spec_fd@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	20(%rbx), %edx
	movl	$3, %esi
	movl	$1, %r8d
	callq	spec_mem_lseek@PLT
.Ltmp175:
	.loc	0 988 16                        # xz/file_io.c:988:16
	cmpq	$-1, %rax
.Ltmp176:
	.loc	0 987 8                         # xz/file_io.c:987:8
	je	.LBB7_18
.Ltmp177:
# %bb.19:                               # %if.end16
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	.loc	0 996 30                        # xz/file_io.c:996:30
	movq	$0, 32(%rbx)
.Ltmp178:
.LBB7_20:                               # %if.end19
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	#DEBUG_VALUE: io_write_buf:size <- $r14
	.loc	0 924 14                        # xz/file_io.c:924:14
	testq	%r14, %r14
	.loc	0 924 2 is_stmt 0               # xz/file_io.c:924:2
	je	.LBB7_28
.Ltmp179:
# %bb.21:                               # %while.body.i.preheader
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	#DEBUG_VALUE: io_write_buf:size <- $r14
	.loc	0 0 2                           # xz/file_io.c:0:2
	movq	spec_fd@GOTPCREL(%rip), %r12
	movq	user_abort@GOTPCREL(%rip), %r13
	jmp	.LBB7_22
.Ltmp180:
	.p2align	4, 0x90
.LBB7_26:                               # %if.end13.i
                                        #   in Loop: Header=BB7_22 Depth=1
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_write:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	#DEBUG_VALUE: io_write_buf:size <- $r14
	#DEBUG_VALUE: amount <- $rax
	.loc	0 953 7 is_stmt 1               # xz/file_io.c:953:7
	addq	%rax, %r15
.Ltmp181:
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	.loc	0 954 8                         # xz/file_io.c:954:8
	subq	%rax, %r14
.Ltmp182:
	#DEBUG_VALUE: io_write_buf:size <- $r14
.LBB7_27:                               # %cleanup.i
                                        #   in Loop: Header=BB7_22 Depth=1
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_write:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	#DEBUG_VALUE: io_write_buf:size <- $r14
	#DEBUG_VALUE: io_write_buf:size <- $r14
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	.loc	0 924 14                        # xz/file_io.c:924:14
	testq	%r14, %r14
	.loc	0 924 2 is_stmt 0               # xz/file_io.c:924:2
	je	.LBB7_28
.Ltmp183:
.LBB7_22:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_write:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	#DEBUG_VALUE: io_write_buf:size <- $r14
	#DEBUG_VALUE: io_write_buf:size <- $r14
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	.loc	0 925 26 is_stmt 1              # xz/file_io.c:925:26
	movq	(%r12), %rdi
	movl	20(%rbx), %edx
	movl	$3, %esi
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	spec_mem_write@PLT
.Ltmp184:
	#DEBUG_VALUE: amount <- $rax
	.loc	0 926 14                        # xz/file_io.c:926:14
	cmpq	$-1, %rax
.Ltmp185:
	.loc	0 926 7 is_stmt 0               # xz/file_io.c:926:7
	jne	.LBB7_26
.Ltmp186:
# %bb.23:                               # %if.then.i
                                        #   in Loop: Header=BB7_22 Depth=1
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_write:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	#DEBUG_VALUE: io_write_buf:size <- $r14
	#DEBUG_VALUE: amount <- $rax
	.loc	0 927 8 is_stmt 1               # xz/file_io.c:927:8
	callq	__errno_location@PLT
.Ltmp187:
	movl	(%rax), %edi
	movb	$1, %bpl
.Ltmp188:
	.loc	0 927 8 is_stmt 0               # xz/file_io.c:927:8
	cmpl	$4, %edi
	jne	.LBB7_24
.Ltmp189:
# %bb.30:                               # %if.then4.i
                                        #   in Loop: Header=BB7_22 Depth=1
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_write:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	#DEBUG_VALUE: io_write_buf:size <- $r14
	.loc	0 928 9 is_stmt 1               # xz/file_io.c:928:9
	cmpl	$0, (%r13)
	je	.LBB7_27
	jmp	.LBB7_29
.Ltmp190:
.LBB7_24:                               # %if.then.i
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_write:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	#DEBUG_VALUE: io_write_buf:size <- $r14
	.loc	0 927 8                         # xz/file_io.c:927:8
	cmpl	$32, %edi
	je	.LBB7_29
.Ltmp191:
# %bb.25:                               # %if.then9.i
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_write:size <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: io_write_buf:pair <- $rbx
	#DEBUG_VALUE: io_write_buf:buf <- $r15
	#DEBUG_VALUE: io_write_buf:size <- $r14
	.loc	0 948 12                        # xz/file_io.c:948:12
	movq	8(%rbx), %rbx
.Ltmp192:
	#DEBUG_VALUE: io_write:pair <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 948 23 is_stmt 0              # xz/file_io.c:948:23
	callq	strerror@PLT
.Ltmp193:
	.loc	0 947 5 is_stmt 1               # xz/file_io.c:947:5
	movl	$.L.str.7, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp194:
	jmp	.LBB7_29
.Ltmp195:
.LBB7_18:                               # %if.then13
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	.loc	0 991 26                        # xz/file_io.c:991:26
	movq	8(%rbx), %rbx
.Ltmp196:
	#DEBUG_VALUE: io_write:pair <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 992 16                        # xz/file_io.c:992:16
	callq	__errno_location@PLT
.Ltmp197:
	movl	(%rax), %edi
	.loc	0 992 7 is_stmt 0               # xz/file_io.c:992:7
	callq	strerror@PLT
.Ltmp198:
	.loc	0 989 5 is_stmt 1               # xz/file_io.c:989:5
	movl	$.L.str, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp199:
	.loc	0 0 5 is_stmt 0                 # xz/file_io.c:0:5
	movb	$1, %bpl
	.loc	0 993 5 is_stmt 1               # xz/file_io.c:993:5
	jmp	.LBB7_29
.Ltmp200:
.LBB7_4:                                # %for.cond.i.preheader
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: i <- 0
	.loc	0 0 5 is_stmt 0                 # xz/file_io.c:0:5
	movq	$-1, %rax
.Ltmp201:
	.p2align	4, 0x90
.LBB7_5:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $rax
	.loc	0 912 19 is_stmt 1              # xz/file_io.c:912:19
	cmpq	$0, 16(%r15,%rax,8)
.Ltmp202:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 912 7 is_stmt 0               # xz/file_io.c:912:7
	jne	.LBB7_12
.Ltmp203:
# %bb.6:                                # %for.cond.i.1
                                        #   in Loop: Header=BB7_5 Depth=1
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 3, DW_OP_stack_value] $rax
	.loc	0 912 19                        # xz/file_io.c:912:19
	cmpq	$0, 24(%r15,%rax,8)
.Ltmp204:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 912 7                         # xz/file_io.c:912:7
	jne	.LBB7_10
.Ltmp205:
# %bb.7:                                # %for.cond.i.2
                                        #   in Loop: Header=BB7_5 Depth=1
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $rax
	.loc	0 912 19                        # xz/file_io.c:912:19
	cmpq	$0, 32(%r15,%rax,8)
.Ltmp206:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 912 7                         # xz/file_io.c:912:7
	jne	.LBB7_11
.Ltmp207:
# %bb.8:                                # %for.cond.i.3
                                        #   in Loop: Header=BB7_5 Depth=1
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 5, DW_OP_stack_value] $rax
	.loc	0 911 23 is_stmt 1              # xz/file_io.c:911:23
	cmpq	$1019, %rax                     # imm = 0x3FB
.Ltmp208:
	.loc	0 911 2 is_stmt 0               # xz/file_io.c:911:2
	je	.LBB7_15
.Ltmp209:
# %bb.9:                                # %for.body.i.3
                                        #   in Loop: Header=BB7_5 Depth=1
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 5, DW_OP_stack_value] $rax
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 5, DW_OP_stack_value] $rax
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 912 7 is_stmt 1               # xz/file_io.c:912:7
	leaq	4(%rax), %rcx
.Ltmp210:
	.loc	0 912 19 is_stmt 0              # xz/file_io.c:912:19
	cmpq	$0, 40(%r15,%rax,8)
	movq	%rcx, %rax
.Ltmp211:
	.loc	0 912 7                         # xz/file_io.c:912:7
	je	.LBB7_5
	jmp	.LBB7_14
.Ltmp212:
.LBB7_12:                               # %for.cond.i.is_sparse.exit_crit_edge
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	incq	%rax
.Ltmp213:
	.loc	0 0 7                           # xz/file_io.c:0:7
	jmp	.LBB7_13
.Ltmp214:
.LBB7_10:                               # %is_sparse.exitsplitsplitsplit
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	addq	$2, %rax
.Ltmp215:
	jmp	.LBB7_13
.Ltmp216:
.LBB7_11:                               # %for.cond.i.2.is_sparse.exitsplitsplit_crit_edge
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rax
	.loc	0 912 7                         # xz/file_io.c:912:7
	addq	$3, %rax
.Ltmp217:
.LBB7_13:                               # %is_sparse.exit
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	.loc	0 0 7                           # xz/file_io.c:0:7
	movq	%rax, %rcx
.Ltmp218:
.LBB7_14:                               # %is_sparse.exit
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	cmpq	$1023, %rcx                     # imm = 0x3FF
	.loc	0 976 8 is_stmt 1               # xz/file_io.c:976:8
	jb	.LBB7_16
.Ltmp219:
.LBB7_15:                               # %if.then2
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- $r15
	#DEBUG_VALUE: io_write:size <- $r14
	.loc	0 977 31                        # xz/file_io.c:977:31
	addq	$8192, 32(%rbx)                 # imm = 0x2000
.Ltmp220:
.LBB7_28:
	#DEBUG_VALUE: io_write:pair <- $rbx
	#DEBUG_VALUE: io_write:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_write:size <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 0 31 is_stmt 0                # xz/file_io.c:0:31
	xorl	%ebp, %ebp
.Ltmp221:
.LBB7_29:                               # %return
	#DEBUG_VALUE: io_write:pair <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: io_write:buf <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: io_write:size <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 1001 1 is_stmt 1              # xz/file_io.c:1001:1
	movl	%ebp, %eax
	.loc	0 1001 1 epilogue_begin is_stmt 0 # xz/file_io.c:1001:1
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
.Ltmp222:
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

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	36                              # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
	.long	.Ldebug_loc5-.Lloclists_table_base0
	.long	.Ldebug_loc6-.Lloclists_table_base0
	.long	.Ldebug_loc7-.Lloclists_table_base0
	.long	.Ldebug_loc8-.Lloclists_table_base0
	.long	.Ldebug_loc9-.Lloclists_table_base0
	.long	.Ldebug_loc10-.Lloclists_table_base0
	.long	.Ldebug_loc11-.Lloclists_table_base0
	.long	.Ldebug_loc12-.Lloclists_table_base0
	.long	.Ldebug_loc13-.Lloclists_table_base0
	.long	.Ldebug_loc14-.Lloclists_table_base0
	.long	.Ldebug_loc15-.Lloclists_table_base0
	.long	.Ldebug_loc16-.Lloclists_table_base0
	.long	.Ldebug_loc17-.Lloclists_table_base0
	.long	.Ldebug_loc18-.Lloclists_table_base0
	.long	.Ldebug_loc19-.Lloclists_table_base0
	.long	.Ldebug_loc20-.Lloclists_table_base0
	.long	.Ldebug_loc21-.Lloclists_table_base0
	.long	.Ldebug_loc22-.Lloclists_table_base0
	.long	.Ldebug_loc23-.Lloclists_table_base0
	.long	.Ldebug_loc24-.Lloclists_table_base0
	.long	.Ldebug_loc25-.Lloclists_table_base0
	.long	.Ldebug_loc26-.Lloclists_table_base0
	.long	.Ldebug_loc27-.Lloclists_table_base0
	.long	.Ldebug_loc28-.Lloclists_table_base0
	.long	.Ldebug_loc29-.Lloclists_table_base0
	.long	.Ldebug_loc30-.Lloclists_table_base0
	.long	.Ldebug_loc31-.Lloclists_table_base0
	.long	.Ldebug_loc32-.Lloclists_table_base0
	.long	.Ldebug_loc33-.Lloclists_table_base0
	.long	.Ldebug_loc34-.Lloclists_table_base0
	.long	.Ldebug_loc35-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	20                              # Loc expr size
	.byte	115                             # DW_OP_breg3
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 255
	.byte	1                               # 
	.byte	26                              # DW_OP_and
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	39                              # DW_OP_xor
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	128                             # 256
	.byte	2                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	23                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	41                              # DW_OP_eq
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	23                              # Loc expr size
	.byte	118                             # DW_OP_breg6
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	41                              # DW_OP_eq
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	20                              # Loc expr size
	.byte	116                             # DW_OP_breg4
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp109-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp93-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp95-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp142-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp142-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp147-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp163-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp163-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp147-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp192-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp196-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp196-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp200-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp221-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp221-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp180-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp220-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp180-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp195-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp220-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp220-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp202-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	2                               # 2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp202-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp203-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp203-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp204-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	3                               # 3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp204-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp205-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp205-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp206-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	4                               # 4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp206-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp207-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp207-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp209-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	5                               # 5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp209-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp211-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp212-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp213-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp214-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp215-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp216-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp178-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp192-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp182-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp184-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp187-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	116                             # DW_AT_rnglists_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	46                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	48                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x80e DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	76                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	75                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0x88 DW_TAG_subprogram
	.byte	12                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	528                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	607                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x43:0xc DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	535                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	5                               # Abbrev [5] 0x4f:0xa DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	528                             # DW_AT_decl_line
	.long	263                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x59:0xa DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	612                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x63:0x1b DW_TAG_inlined_subroutine
	.long	570                             # DW_AT_abstract_origin
	.byte	13                              # DW_AT_low_pc
	.long	.Ltmp30-.Ltmp8                  # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	550                             # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	8                               # Abbrev [8] 0x71:0x6 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.long	588                             # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x77:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.long	597                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x7e:0x6 DW_TAG_call_site
	.long	617                             # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x84:0x6 DW_TAG_call_site
	.long	631                             # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x8a:0x6 DW_TAG_call_site
	.long	635                             # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x90:0x6 DW_TAG_call_site
	.long	639                             # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x96:0x6 DW_TAG_call_site
	.long	747                             # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x9c:0x6 DW_TAG_call_site
	.long	631                             # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0xa2:0x6 DW_TAG_call_site
	.long	747                             # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0xa8:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0xae:0x6 DW_TAG_call_site
	.long	775                             # DW_AT_call_origin
	.byte	21                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0xb4:0x6 DW_TAG_call_site
	.long	635                             # DW_AT_call_origin
	.byte	22                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xbb:0x8 DW_TAG_typedef
	.long	195                             # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc3:0x44 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xc7:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	263                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xd0:0x9 DW_TAG_member
	.byte	6                               # DW_AT_name
	.long	277                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xd9:0x9 DW_TAG_member
	.byte	7                               # DW_AT_name
	.long	282                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xe2:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	282                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xeb:0x9 DW_TAG_member
	.byte	10                              # DW_AT_name
	.long	286                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xf4:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	286                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	25                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xfd:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x107:0x5 DW_TAG_pointer_type
	.long	268                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x10c:0x5 DW_TAG_const_type
	.long	273                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0x111:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x115:0x5 DW_TAG_pointer_type
	.long	273                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0x11a:0x4 DW_TAG_base_type
	.byte	8                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x11e:0x4 DW_TAG_base_type
	.byte	11                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x122:0x8 DW_TAG_typedef
	.long	298                             # DW_AT_type
	.byte	16                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x12a:0x8 DW_TAG_typedef
	.long	306                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x132:0x4 DW_TAG_base_type
	.byte	14                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x136:0xb DW_TAG_variable
	.long	321                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	803                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	16                              # Abbrev [16] 0x141:0xc DW_TAG_array_type
	.long	273                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x146:0x6 DW_TAG_subrange_type
	.long	333                             # DW_AT_type
	.byte	59                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x14d:0x4 DW_TAG_base_type
	.byte	18                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	15                              # Abbrev [15] 0x151:0xb DW_TAG_variable
	.long	348                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	864                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	16                              # Abbrev [16] 0x15c:0xc DW_TAG_array_type
	.long	273                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x161:0x6 DW_TAG_subrange_type
	.long	333                             # DW_AT_type
	.byte	19                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x168:0xb DW_TAG_variable
	.long	371                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	887                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	16                              # Abbrev [16] 0x173:0xc DW_TAG_array_type
	.long	273                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x178:0x6 DW_TAG_subrange_type
	.long	333                             # DW_AT_type
	.byte	31                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x17f:0xb DW_TAG_variable
	.long	394                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	897                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	16                              # Abbrev [16] 0x18a:0xc DW_TAG_array_type
	.long	273                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x18f:0x6 DW_TAG_subrange_type
	.long	333                             # DW_AT_type
	.byte	27                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x196:0xb DW_TAG_variable
	.long	417                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	440                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	16                              # Abbrev [16] 0x1a1:0xc DW_TAG_array_type
	.long	273                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1a6:0x6 DW_TAG_subrange_type
	.long	333                             # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1ad:0xb DW_TAG_variable
	.long	348                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	608                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	15                              # Abbrev [15] 0x1b8:0xb DW_TAG_variable
	.long	451                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	763                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	16                              # Abbrev [16] 0x1c3:0xc DW_TAG_array_type
	.long	273                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1c8:0x6 DW_TAG_subrange_type
	.long	333                             # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1cf:0xb DW_TAG_variable
	.long	474                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	947                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	16                              # Abbrev [16] 0x1da:0xc DW_TAG_array_type
	.long	273                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1df:0x6 DW_TAG_subrange_type
	.long	333                             # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x1e6:0x13 DW_TAG_enumeration_type
	.long	505                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x1ef:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	20                              # Abbrev [20] 0x1f2:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	20                              # Abbrev [20] 0x1f5:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x1f9:0x4 DW_TAG_base_type
	.byte	19                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x1fd:0x8 DW_TAG_typedef
	.long	517                             # DW_AT_type
	.byte	25                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x205:0x4 DW_TAG_base_type
	.byte	24                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	21                              # Abbrev [21] 0x209:0x1 DW_TAG_pointer_type
	.byte	13                              # Abbrev [13] 0x20a:0x5 DW_TAG_pointer_type
	.long	527                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0x20f:0x4 DW_TAG_base_type
	.byte	26                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x213:0x12 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	23                              # Abbrev [23] 0x21e:0x6 DW_TAG_call_site
	.long	549                             # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	10                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x225:0xa DW_TAG_subprogram
	.byte	27                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x229:0x5 DW_TAG_formal_parameter
	.long	282                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x22f:0xb DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x23a:0x25 DW_TAG_subprogram
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	286                             # DW_AT_type
                                        # DW_AT_inline
	.byte	28                              # Abbrev [28] 0x243:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
	.long	607                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x24c:0x9 DW_TAG_variable
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	320                             # DW_AT_decl_line
	.long	612                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x255:0x9 DW_TAG_variable
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	323                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x25f:0x5 DW_TAG_pointer_type
	.long	187                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x264:0x5 DW_TAG_const_type
	.long	286                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x269:0xe DW_TAG_subprogram
	.byte	31                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	286                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x271:0x5 DW_TAG_formal_parameter
	.long	263                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x277:0x4 DW_TAG_subprogram
	.byte	32                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	31                              # Abbrev [31] 0x27b:0x4 DW_TAG_subprogram
	.byte	33                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	4                               # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	30                              # Abbrev [30] 0x27f:0x1d DW_TAG_subprogram
	.byte	34                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	282                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x287:0x5 DW_TAG_formal_parameter
	.long	668                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x28c:0x5 DW_TAG_formal_parameter
	.long	505                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x291:0x5 DW_TAG_formal_parameter
	.long	277                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x296:0x5 DW_TAG_formal_parameter
	.long	282                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x29c:0x5 DW_TAG_pointer_type
	.long	673                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2a1:0x8 DW_TAG_typedef
	.long	681                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2a9:0x32 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2ad:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2b6:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2bf:0x9 DW_TAG_member
	.byte	39                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2c8:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	282                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2d1:0x9 DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	522                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2db:0x8 DW_TAG_typedef
	.long	739                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2e3:0x8 DW_TAG_typedef
	.long	306                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	32                              # Abbrev [32] 0x2eb:0x8 DW_TAG_subprogram
	.byte	43                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	755                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x2f3:0x5 DW_TAG_pointer_type
	.long	282                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x2f8:0xf DW_TAG_subprogram
	.byte	44                              # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.short	419                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	277                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x301:0x5 DW_TAG_formal_parameter
	.long	282                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x307:0xb DW_TAG_subprogram
	.byte	45                              # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x30b:0x5 DW_TAG_formal_parameter
	.long	263                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x310:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x312:0x1c DW_TAG_subprogram
	.byte	46                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	595                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	286                             # DW_AT_type
                                        # DW_AT_inline
	.byte	28                              # Abbrev [28] 0x31b:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	595                             # DW_AT_decl_line
	.long	607                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x324:0x9 DW_TAG_variable
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	628                             # DW_AT_decl_line
	.long	814                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x32e:0x5 DW_TAG_const_type
	.long	282                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x333:0x6b DW_TAG_subprogram
	.byte	23                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	720                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	286                             # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x343:0xa DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	720                             # DW_AT_decl_line
	.long	607                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x34d:0xa DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	723                             # DW_AT_decl_line
	.long	612                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x357:0x1c DW_TAG_inlined_subroutine
	.long	786                             # DW_AT_abstract_origin
	.byte	24                              # DW_AT_low_pc
	.long	.Ltmp44-.Ltmp34                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	723                             # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x365:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	795                             # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x36c:0x6 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.long	804                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x373:0x6 DW_TAG_call_site
	.long	631                             # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x379:0x6 DW_TAG_call_site
	.long	639                             # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x37f:0x6 DW_TAG_call_site
	.long	747                             # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x385:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x38b:0x6 DW_TAG_call_site
	.long	775                             # DW_AT_call_origin
	.byte	28                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x391:0x6 DW_TAG_call_site
	.long	926                             # DW_AT_call_origin
	.byte	29                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x397:0x6 DW_TAG_call_site
	.long	635                             # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x39e:0xb DW_TAG_subprogram
	.byte	47                              # DW_AT_name
	.byte	14                              # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x3a3:0x5 DW_TAG_formal_parameter
	.long	521                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x3a9:0x30 DW_TAG_subprogram
	.byte	48                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	920                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	286                             # DW_AT_type
                                        # DW_AT_inline
	.byte	28                              # Abbrev [28] 0x3b2:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	920                             # DW_AT_decl_line
	.long	607                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x3bb:0x9 DW_TAG_formal_parameter
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	920                             # DW_AT_decl_line
	.long	985                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x3c4:0x9 DW_TAG_formal_parameter
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	920                             # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x3cd:0xb DW_TAG_lexical_block
	.byte	29                              # Abbrev [29] 0x3ce:0x9 DW_TAG_variable
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	925                             # DW_AT_decl_line
	.long	1011                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x3d9:0x5 DW_TAG_pointer_type
	.long	990                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x3de:0x5 DW_TAG_const_type
	.long	995                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3e3:0x8 DW_TAG_typedef
	.long	1003                            # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	15                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3eb:0x8 DW_TAG_typedef
	.long	527                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x3f3:0x5 DW_TAG_const_type
	.long	1016                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3f8:0x8 DW_TAG_typedef
	.long	1024                            # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	16                              # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x400:0x8 DW_TAG_typedef
	.long	306                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x408:0x1c DW_TAG_subprogram
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	737                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	286                             # DW_AT_type
                                        # DW_AT_inline
	.byte	28                              # Abbrev [28] 0x411:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	737                             # DW_AT_decl_line
	.long	607                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x41a:0x9 DW_TAG_formal_parameter
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	737                             # DW_AT_decl_line
	.long	286                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x424:0x18 DW_TAG_subprogram
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	563                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	28                              # Abbrev [28] 0x429:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	563                             # DW_AT_decl_line
	.long	607                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x432:0x9 DW_TAG_formal_parameter
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	563                             # DW_AT_decl_line
	.long	286                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x43c:0xd4 DW_TAG_subprogram
	.byte	31                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	789                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x448:0xa DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	789                             # DW_AT_decl_line
	.long	607                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x452:0xa DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	789                             # DW_AT_decl_line
	.long	286                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x45c:0x35 DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	41                              # Abbrev [41] 0x45e:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	15
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	808                             # DW_AT_decl_line
	.long	2056                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x46a:0x26 DW_TAG_inlined_subroutine
	.long	937                             # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	809                             # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	43                              # Abbrev [43] 0x474:0x6 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.long	946                             # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x47a:0x6 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.long	955                             # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x480:0x6 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.long	964                             # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x486:0x9 DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	8                               # Abbrev [8] 0x488:0x6 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.long	974                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x491:0x16 DW_TAG_inlined_subroutine
	.long	1032                            # DW_AT_abstract_origin
	.byte	32                              # DW_AT_low_pc
	.long	.Ltmp87-.Ltmp76                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	825                             # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x49f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1041                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x4a7:0xe DW_TAG_inlined_subroutine
	.long	1060                            # DW_AT_abstract_origin
	.byte	33                              # DW_AT_low_pc
	.long	.Ltmp89-.Ltmp88                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	831                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x4b5:0x6 DW_TAG_call_site
	.long	1296                            # DW_AT_call_origin
	.byte	34                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4bb:0x6 DW_TAG_call_site
	.long	1330                            # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4c1:0x6 DW_TAG_call_site
	.long	747                             # DW_AT_call_origin
	.byte	36                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4c7:0x6 DW_TAG_call_site
	.long	747                             # DW_AT_call_origin
	.byte	37                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4cd:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	38                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4d3:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	39                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4d9:0x6 DW_TAG_call_site
	.long	775                             # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4df:0x6 DW_TAG_call_site
	.long	631                             # DW_AT_call_origin
	.byte	32                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4e5:0x6 DW_TAG_call_site
	.long	1364                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4eb:0x6 DW_TAG_call_site
	.long	747                             # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4f1:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	43                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4f7:0x6 DW_TAG_call_site
	.long	775                             # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x4fd:0x6 DW_TAG_call_site
	.long	926                             # DW_AT_call_origin
	.byte	45                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x503:0x6 DW_TAG_call_site
	.long	1364                            # DW_AT_call_origin
	.byte	46                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x509:0x6 DW_TAG_call_site
	.long	635                             # DW_AT_call_origin
	.byte	47                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x510:0x22 DW_TAG_subprogram
	.byte	58                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	731                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x518:0x5 DW_TAG_formal_parameter
	.long	668                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x51d:0x5 DW_TAG_formal_parameter
	.long	505                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x522:0x5 DW_TAG_formal_parameter
	.long	282                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x527:0x5 DW_TAG_formal_parameter
	.long	731                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x52c:0x5 DW_TAG_formal_parameter
	.long	282                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x532:0x22 DW_TAG_subprogram
	.byte	59                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	731                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x53a:0x5 DW_TAG_formal_parameter
	.long	668                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x53f:0x5 DW_TAG_formal_parameter
	.long	505                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x544:0x5 DW_TAG_formal_parameter
	.long	282                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x549:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x54e:0x5 DW_TAG_formal_parameter
	.long	731                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x554:0x18 DW_TAG_subprogram
	.byte	60                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	282                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x55c:0x5 DW_TAG_formal_parameter
	.long	668                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x561:0x5 DW_TAG_formal_parameter
	.long	505                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x566:0x5 DW_TAG_formal_parameter
	.long	282                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x56c:0x4c DW_TAG_subprogram
	.byte	48                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1498                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x578:0x6 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.long	1507                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x57e:0x6 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.long	1516                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x584:0x6 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.long	1525                            # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x58a:0x6 DW_TAG_variable
	.byte	16                              # DW_AT_location
	.long	1534                            # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x590:0x6 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.long	1543                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x596:0x9 DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	8                               # Abbrev [8] 0x598:0x6 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.long	1553                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x59f:0x6 DW_TAG_call_site
	.long	1464                            # DW_AT_call_origin
	.byte	49                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x5a5:0x6 DW_TAG_call_site
	.long	747                             # DW_AT_call_origin
	.byte	50                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x5ab:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	51                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x5b1:0x6 DW_TAG_call_site
	.long	775                             # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x5b8:0x22 DW_TAG_subprogram
	.byte	61                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	731                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x5c0:0x5 DW_TAG_formal_parameter
	.long	668                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x5c5:0x5 DW_TAG_formal_parameter
	.long	505                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x5ca:0x5 DW_TAG_formal_parameter
	.long	282                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x5cf:0x5 DW_TAG_formal_parameter
	.long	522                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x5d4:0x5 DW_TAG_formal_parameter
	.long	731                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x5da:0x42 DW_TAG_subprogram
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	840                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	509                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	28                              # Abbrev [28] 0x5e3:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	840                             # DW_AT_decl_line
	.long	607                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x5ec:0x9 DW_TAG_formal_parameter
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	840                             # DW_AT_decl_line
	.long	1564                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x5f5:0x9 DW_TAG_formal_parameter
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	840                             # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x5fe:0x9 DW_TAG_variable
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	845                             # DW_AT_decl_line
	.long	1681                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x607:0x9 DW_TAG_variable
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	846                             # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x610:0xb DW_TAG_lexical_block
	.byte	29                              # Abbrev [29] 0x611:0x9 DW_TAG_variable
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	849                             # DW_AT_decl_line
	.long	1011                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x61c:0x5 DW_TAG_pointer_type
	.long	1569                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x621:0x8 DW_TAG_typedef
	.long	1577                            # DW_AT_type
	.byte	71                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	47                              # Abbrev [47] 0x629:0x21 DW_TAG_union_type
	.short	8192                            # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x62e:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	1610                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x637:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	1623                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x640:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	1652                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x64a:0xd DW_TAG_array_type
	.long	995                             # DW_AT_type
	.byte	48                              # Abbrev [48] 0x64f:0x7 DW_TAG_subrange_type
	.long	333                             # DW_AT_type
	.short	8192                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x657:0xd DW_TAG_array_type
	.long	1636                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x65c:0x7 DW_TAG_subrange_type
	.long	333                             # DW_AT_type
	.short	2048                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x664:0x8 DW_TAG_typedef
	.long	1644                            # DW_AT_type
	.byte	67                              # DW_AT_name
	.byte	15                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x66c:0x8 DW_TAG_typedef
	.long	505                             # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x674:0xd DW_TAG_array_type
	.long	1665                            # DW_AT_type
	.byte	48                              # Abbrev [48] 0x679:0x7 DW_TAG_subrange_type
	.long	333                             # DW_AT_type
	.short	1024                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x681:0x8 DW_TAG_typedef
	.long	1673                            # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	15                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x689:0x8 DW_TAG_typedef
	.long	517                             # DW_AT_type
	.byte	69                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x691:0x5 DW_TAG_pointer_type
	.long	995                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x696:0xab DW_TAG_subprogram
	.byte	53                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	882                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	286                             # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x6a6:0xa DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	882                             # DW_AT_decl_line
	.long	607                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x6b0:0xa DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	882                             # DW_AT_decl_line
	.long	1564                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x6ba:0xa DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	882                             # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x6c4:0xa DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.byte	39                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	882                             # DW_AT_decl_line
	.long	290                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x6ce:0xa DW_TAG_variable
	.byte	29                              # DW_AT_location
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	892                             # DW_AT_decl_line
	.long	2068                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0x6d8:0x32 DW_TAG_inlined_subroutine
	.long	1498                            # DW_AT_abstract_origin
	.byte	4                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	892                             # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	43                              # Abbrev [43] 0x6e2:0x6 DW_TAG_formal_parameter
	.byte	23                              # DW_AT_location
	.long	1507                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x6e8:0x6 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.long	1516                            # DW_AT_abstract_origin
	.byte	43                              # Abbrev [43] 0x6ee:0x6 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.long	1525                            # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x6f4:0x6 DW_TAG_variable
	.byte	26                              # DW_AT_location
	.long	1534                            # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x6fa:0x6 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.long	1543                            # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x700:0x9 DW_TAG_lexical_block
	.byte	5                               # DW_AT_ranges
	.byte	8                               # Abbrev [8] 0x702:0x6 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.long	1553                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x70a:0x6 DW_TAG_call_site
	.long	1296                            # DW_AT_call_origin
	.byte	54                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x710:0x6 DW_TAG_call_site
	.long	1464                            # DW_AT_call_origin
	.byte	55                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x716:0x6 DW_TAG_call_site
	.long	747                             # DW_AT_call_origin
	.byte	56                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x71c:0x6 DW_TAG_call_site
	.long	747                             # DW_AT_call_origin
	.byte	57                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x722:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	58                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x728:0x6 DW_TAG_call_site
	.long	775                             # DW_AT_call_origin
	.byte	59                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x72e:0x6 DW_TAG_call_site
	.long	775                             # DW_AT_call_origin
	.byte	60                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x734:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	61                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x73a:0x6 DW_TAG_call_site
	.long	775                             # DW_AT_call_origin
	.byte	62                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x741:0x1e DW_TAG_subprogram
	.byte	73                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	907                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	286                             # DW_AT_type
                                        # DW_AT_inline
	.byte	28                              # Abbrev [28] 0x74a:0x9 DW_TAG_formal_parameter
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	907                             # DW_AT_decl_line
	.long	1887                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x753:0xb DW_TAG_lexical_block
	.byte	29                              # Abbrev [29] 0x754:0x9 DW_TAG_variable
	.byte	74                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	911                             # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x75f:0x5 DW_TAG_pointer_type
	.long	1892                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x764:0x5 DW_TAG_const_type
	.long	1569                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0x769:0x9f DW_TAG_subprogram
	.byte	63                              # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	962                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	286                             # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x779:0xa DW_TAG_formal_parameter
	.byte	30                              # DW_AT_location
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	962                             # DW_AT_decl_line
	.long	607                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x783:0xa DW_TAG_formal_parameter
	.byte	31                              # DW_AT_location
	.byte	41                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	962                             # DW_AT_decl_line
	.long	1887                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x78d:0xa DW_TAG_formal_parameter
	.byte	32                              # DW_AT_location
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	962                             # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	42                              # Abbrev [42] 0x797:0x14 DW_TAG_inlined_subroutine
	.long	1857                            # DW_AT_abstract_origin
	.byte	6                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	976                             # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	40                              # Abbrev [40] 0x7a1:0x9 DW_TAG_lexical_block
	.byte	7                               # DW_AT_ranges
	.byte	8                               # Abbrev [8] 0x7a3:0x6 DW_TAG_variable
	.byte	33                              # DW_AT_location
	.long	1876                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x7ab:0x2c DW_TAG_inlined_subroutine
	.long	937                             # DW_AT_abstract_origin
	.byte	64                              # DW_AT_low_pc
	.long	.Ltmp195-.Ltmp178               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	1000                            # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	43                              # Abbrev [43] 0x7b9:0x6 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_location
	.long	946                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x7bf:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	95
	.long	955                             # DW_AT_abstract_origin
	.byte	35                              # Abbrev [35] 0x7c6:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	964                             # DW_AT_abstract_origin
	.byte	40                              # Abbrev [40] 0x7cd:0x9 DW_TAG_lexical_block
	.byte	8                               # DW_AT_ranges
	.byte	8                               # Abbrev [8] 0x7cf:0x6 DW_TAG_variable
	.byte	35                              # DW_AT_location
	.long	974                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x7d7:0x6 DW_TAG_call_site
	.long	1296                            # DW_AT_call_origin
	.byte	65                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x7dd:0x6 DW_TAG_call_site
	.long	1330                            # DW_AT_call_origin
	.byte	66                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x7e3:0x6 DW_TAG_call_site
	.long	747                             # DW_AT_call_origin
	.byte	67                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x7e9:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	68                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x7ef:0x6 DW_TAG_call_site
	.long	775                             # DW_AT_call_origin
	.byte	69                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x7f5:0x6 DW_TAG_call_site
	.long	747                             # DW_AT_call_origin
	.byte	70                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x7fb:0x6 DW_TAG_call_site
	.long	760                             # DW_AT_call_origin
	.byte	71                              # DW_AT_call_return_pc
	.byte	9                               # Abbrev [9] 0x801:0x6 DW_TAG_call_site
	.long	775                             # DW_AT_call_origin
	.byte	72                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x808:0xc DW_TAG_array_type
	.long	990                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x80d:0x6 DW_TAG_subrange_type
	.long	333                             # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x814:0x5 DW_TAG_const_type
	.long	509                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	9                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
	.long	.Ldebug_ranges4-.Lrnglists_table_base0
	.long	.Ldebug_ranges5-.Lrnglists_table_base0
	.long	.Ldebug_ranges6-.Lrnglists_table_base0
	.long	.Ldebug_ranges7-.Lrnglists_table_base0
	.long	.Ldebug_ranges8-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp57-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp150-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp160-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp158-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp162-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp166-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges6:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges7:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp170-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp172-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp201-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges8:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp180-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp182-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp195-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	352                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"xz/file_io.c"                  # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=118
.Linfo_string3:
	.asciz	"pair"                          # string offset=150
.Linfo_string4:
	.asciz	"src_name"                      # string offset=155
.Linfo_string5:
	.asciz	"char"                          # string offset=164
.Linfo_string6:
	.asciz	"dest_name"                     # string offset=169
.Linfo_string7:
	.asciz	"src_fd"                        # string offset=179
.Linfo_string8:
	.asciz	"int"                           # string offset=186
.Linfo_string9:
	.asciz	"dest_fd"                       # string offset=190
.Linfo_string10:
	.asciz	"src_eof"                       # string offset=198
.Linfo_string11:
	.asciz	"_Bool"                         # string offset=206
.Linfo_string12:
	.asciz	"dest_try_sparse"               # string offset=212
.Linfo_string13:
	.asciz	"dest_pending_sparse"           # string offset=228
.Linfo_string14:
	.asciz	"long"                          # string offset=248
.Linfo_string15:
	.asciz	"__off_t"                       # string offset=253
.Linfo_string16:
	.asciz	"off_t"                         # string offset=261
.Linfo_string17:
	.asciz	"file_pair"                     # string offset=267
.Linfo_string18:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=277
.Linfo_string19:
	.asciz	"unsigned int"                  # string offset=297
.Linfo_string20:
	.asciz	"E_SUCCESS"                     # string offset=310
.Linfo_string21:
	.asciz	"E_ERROR"                       # string offset=320
.Linfo_string22:
	.asciz	"E_WARNING"                     # string offset=328
.Linfo_string23:
	.asciz	"exit_status_type"              # string offset=338
.Linfo_string24:
	.asciz	"unsigned long"                 # string offset=355
.Linfo_string25:
	.asciz	"size_t"                        # string offset=369
.Linfo_string26:
	.asciz	"unsigned char"                 # string offset=376
.Linfo_string27:
	.asciz	"tuklib_open_stdxxx"            # string offset=390
.Linfo_string28:
	.asciz	"io_open_src_real"              # string offset=409
.Linfo_string29:
	.asciz	"reg_files_only"                # string offset=426
.Linfo_string30:
	.asciz	"flags"                         # string offset=441
.Linfo_string31:
	.asciz	"is_empty_filename"             # string offset=447
.Linfo_string32:
	.asciz	"signals_block"                 # string offset=465
.Linfo_string33:
	.asciz	"signals_unblock"               # string offset=479
.Linfo_string34:
	.asciz	"spec_mem_open"                 # string offset=495
.Linfo_string35:
	.asciz	"limit"                         # string offset=509
.Linfo_string36:
	.asciz	"__int64_t"                     # string offset=515
.Linfo_string37:
	.asciz	"int64_t"                       # string offset=525
.Linfo_string38:
	.asciz	"len"                           # string offset=533
.Linfo_string39:
	.asciz	"pos"                           # string offset=537
.Linfo_string40:
	.asciz	"open"                          # string offset=541
.Linfo_string41:
	.asciz	"buf"                           # string offset=546
.Linfo_string42:
	.asciz	"spec_fd_t"                     # string offset=550
.Linfo_string43:
	.asciz	"__errno_location"              # string offset=560
.Linfo_string44:
	.asciz	"strerror"                      # string offset=577
.Linfo_string45:
	.asciz	"message_error"                 # string offset=586
.Linfo_string46:
	.asciz	"io_open_dest_real"             # string offset=600
.Linfo_string47:
	.asciz	"free"                          # string offset=618
.Linfo_string48:
	.asciz	"io_write_buf"                  # string offset=623
.Linfo_string49:
	.asciz	"__uint8_t"                     # string offset=636
.Linfo_string50:
	.asciz	"uint8_t"                       # string offset=646
.Linfo_string51:
	.asciz	"size"                          # string offset=654
.Linfo_string52:
	.asciz	"amount"                        # string offset=659
.Linfo_string53:
	.asciz	"__ssize_t"                     # string offset=666
.Linfo_string54:
	.asciz	"ssize_t"                       # string offset=676
.Linfo_string55:
	.asciz	"io_close_dest"                 # string offset=684
.Linfo_string56:
	.asciz	"success"                       # string offset=698
.Linfo_string57:
	.asciz	"io_close_src"                  # string offset=706
.Linfo_string58:
	.asciz	"spec_mem_lseek"                # string offset=719
.Linfo_string59:
	.asciz	"spec_mem_write"                # string offset=734
.Linfo_string60:
	.asciz	"spec_mem_close"                # string offset=749
.Linfo_string61:
	.asciz	"spec_mem_read"                 # string offset=764
.Linfo_string62:
	.asciz	"io_read"                       # string offset=778
.Linfo_string63:
	.asciz	"buf_union"                     # string offset=786
.Linfo_string64:
	.asciz	"u8"                            # string offset=796
.Linfo_string65:
	.asciz	"u32"                           # string offset=799
.Linfo_string66:
	.asciz	"__uint32_t"                    # string offset=803
.Linfo_string67:
	.asciz	"uint32_t"                      # string offset=814
.Linfo_string68:
	.asciz	"u64"                           # string offset=823
.Linfo_string69:
	.asciz	"__uint64_t"                    # string offset=827
.Linfo_string70:
	.asciz	"uint64_t"                      # string offset=838
.Linfo_string71:
	.asciz	"io_buf"                        # string offset=847
.Linfo_string72:
	.asciz	"left"                          # string offset=854
.Linfo_string73:
	.asciz	"is_sparse"                     # string offset=859
.Linfo_string74:
	.asciz	"i"                             # string offset=869
.Linfo_string75:
	.asciz	"DW_ATE_unsigned_8"             # string offset=871
.Linfo_string76:
	.asciz	"DW_ATE_unsigned_1"             # string offset=889
.Linfo_string77:
	.asciz	"io_init"                       # string offset=907
.Linfo_string78:
	.asciz	"io_no_sparse"                  # string offset=915
.Linfo_string79:
	.asciz	"io_open_src"                   # string offset=928
.Linfo_string80:
	.asciz	"io_open_dest"                  # string offset=940
.Linfo_string81:
	.asciz	"io_close"                      # string offset=953
.Linfo_string82:
	.asciz	"io_pread"                      # string offset=962
.Linfo_string83:
	.asciz	"io_write"                      # string offset=971
.Linfo_string84:
	.asciz	"error"                         # string offset=980
.Linfo_string85:
	.asciz	"ret"                           # string offset=986
.Linfo_string86:
	.asciz	"zero"                          # string offset=990
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.long	.Linfo_string25
	.long	.Linfo_string26
	.long	.Linfo_string27
	.long	.Linfo_string28
	.long	.Linfo_string29
	.long	.Linfo_string30
	.long	.Linfo_string31
	.long	.Linfo_string32
	.long	.Linfo_string33
	.long	.Linfo_string34
	.long	.Linfo_string35
	.long	.Linfo_string36
	.long	.Linfo_string37
	.long	.Linfo_string38
	.long	.Linfo_string39
	.long	.Linfo_string40
	.long	.Linfo_string41
	.long	.Linfo_string42
	.long	.Linfo_string43
	.long	.Linfo_string44
	.long	.Linfo_string45
	.long	.Linfo_string46
	.long	.Linfo_string47
	.long	.Linfo_string48
	.long	.Linfo_string49
	.long	.Linfo_string50
	.long	.Linfo_string51
	.long	.Linfo_string52
	.long	.Linfo_string53
	.long	.Linfo_string54
	.long	.Linfo_string55
	.long	.Linfo_string56
	.long	.Linfo_string57
	.long	.Linfo_string58
	.long	.Linfo_string59
	.long	.Linfo_string60
	.long	.Linfo_string61
	.long	.Linfo_string62
	.long	.Linfo_string63
	.long	.Linfo_string64
	.long	.Linfo_string65
	.long	.Linfo_string66
	.long	.Linfo_string67
	.long	.Linfo_string68
	.long	.Linfo_string69
	.long	.Linfo_string70
	.long	.Linfo_string71
	.long	.Linfo_string72
	.long	.Linfo_string73
	.long	.Linfo_string74
	.long	.Linfo_string75
	.long	.Linfo_string76
	.long	.Linfo_string77
	.long	.Linfo_string78
	.long	.Linfo_string79
	.long	.Linfo_string80
	.long	.Linfo_string81
	.long	.Linfo_string82
	.long	.Linfo_string83
	.long	.Linfo_string84
	.long	.Linfo_string85
	.long	.Linfo_string86
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	io_open_src.pair
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.Lfunc_begin0
	.quad	.Ltmp0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Ltmp8
	.quad	.Ltmp4
	.quad	.Ltmp11
	.quad	.Ltmp13
	.quad	.Ltmp16
	.quad	.Ltmp20
	.quad	.Ltmp25
	.quad	.Ltmp29
	.quad	.Ltmp30
	.quad	.Ltmp31
	.quad	.Lfunc_begin3
	.quad	.Ltmp34
	.quad	.Ltmp36
	.quad	.Ltmp40
	.quad	.Ltmp41
	.quad	.Ltmp42
	.quad	.Ltmp43
	.quad	.Ltmp45
	.quad	.Lfunc_begin4
	.quad	.Ltmp76
	.quad	.Ltmp88
	.quad	.Ltmp54
	.quad	.Ltmp61
	.quad	.Ltmp64
	.quad	.Ltmp68
	.quad	.Ltmp69
	.quad	.Ltmp73
	.quad	.Ltmp75
	.quad	.Ltmp79
	.quad	.Ltmp83
	.quad	.Ltmp84
	.quad	.Ltmp85
	.quad	.Ltmp87
	.quad	.Ltmp89
	.quad	.Ltmp90
	.quad	.Lfunc_begin5
	.quad	.Ltmp98
	.quad	.Ltmp104
	.quad	.Ltmp118
	.quad	.Ltmp119
	.quad	.Lfunc_begin6
	.quad	.Ltmp125
	.quad	.Ltmp132
	.quad	.Ltmp138
	.quad	.Ltmp143
	.quad	.Ltmp144
	.quad	.Ltmp145
	.quad	.Ltmp155
	.quad	.Ltmp164
	.quad	.Ltmp165
	.quad	.Lfunc_begin7
	.quad	.Ltmp178
	.quad	.Ltmp175
	.quad	.Ltmp184
	.quad	.Ltmp187
	.quad	.Ltmp193
	.quad	.Ltmp194
	.quad	.Ltmp197
	.quad	.Ltmp198
	.quad	.Ltmp199
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
