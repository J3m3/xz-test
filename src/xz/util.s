	.text
	.file	"util.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "xz/util.c" md5 0xff8c3ae1214b737ca57c54c6781f3e36
	.file	1 "xz" "message.h" md5 0x46ce4fae4ea23be71658f9b2e1a5aef3
	.file	2 "xz" "util.h" md5 0x36136e1fc433f9fd7b2b728f8484a043
	.file	3 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.globl	xrealloc                        # -- Begin function xrealloc
	.p2align	4, 0x90
	.type	xrealloc,@function
xrealloc:                               # @xrealloc
.Lfunc_begin0:
	.loc	0 26 0                          # xz/util.c:26:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: xrealloc:ptr <- $rdi
	#DEBUG_VALUE: xrealloc:size <- $rsi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
.Ltmp0:
	#DEBUG_VALUE: xrealloc:p <- $rdi
	movq	%rdi, %rbx
.Ltmp1:
	.loc	0 35 8 prologue_end             # xz/util.c:35:8
	callq	realloc@PLT
.Ltmp2:
	#DEBUG_VALUE: xrealloc:size <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xrealloc:p <- $rbx
	#DEBUG_VALUE: xrealloc:ptr <- $rbx
	#DEBUG_VALUE: xrealloc:ptr <- $rax
	.loc	0 37 10                         # xz/util.c:37:10
	testq	%rax, %rax
.Ltmp3:
	.loc	0 37 6 is_stmt 0                # xz/util.c:37:6
	je	.LBB0_1
.Ltmp4:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: xrealloc:ptr <- $rax
	#DEBUG_VALUE: xrealloc:size <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xrealloc:p <- $rbx
	.loc	0 43 2 epilogue_begin is_stmt 1 # xz/util.c:43:2
	popq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp6:
.LBB0_1:                                # %if.then
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: xrealloc:ptr <- $rax
	#DEBUG_VALUE: xrealloc:size <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: xrealloc:p <- $rbx
	.loc	0 0 2 is_stmt 0                 # xz/util.c:0:2
	movq	%rax, %r14
.Ltmp7:
	#DEBUG_VALUE: xrealloc:ptr <- $r14
	.loc	0 38 27 is_stmt 1               # xz/util.c:38:27
	callq	__errno_location@PLT
.Ltmp8:
	movl	(%rax), %ebp
.Ltmp9:
	#DEBUG_VALUE: saved_errno <- $ebp
	.loc	0 39 3                          # xz/util.c:39:3
	movq	%rbx, %rdi
	callq	free@PLT
.Ltmp10:
	.loc	0 40 23                         # xz/util.c:40:23
	movl	%ebp, %edi
	callq	strerror@PLT
.Ltmp11:
	.loc	0 40 3 is_stmt 0                # xz/util.c:40:3
	movl	$.L.str, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp12:
	.loc	0 0 3                           # xz/util.c:0:3
	movq	%r14, %rax
.Ltmp13:
	.loc	0 43 2 epilogue_begin is_stmt 1 # xz/util.c:43:2
	popq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp15:
	#DEBUG_VALUE: xrealloc:ptr <- $rax
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 8
	retq
.Ltmp17:
.Lfunc_end0:
	.size	xrealloc, .Lfunc_end0-xrealloc
	.cfi_endproc
	.file	4 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
	.file	5 "/usr/include" "errno.h" md5 0x01c14bf4ab600a3884f5da68eb763170
	.file	6 "/usr/include" "string.h" md5 0xf443da8025a0b7c1498fb6c554ec788d
                                        # -- End function
	.globl	xstrdup                         # -- Begin function xstrdup
	.p2align	4, 0x90
	.type	xstrdup,@function
xstrdup:                                # @xstrdup
.Lfunc_begin1:
	.loc	0 49 0                          # xz/util.c:49:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: xstrdup:src <- $rdi
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
.Ltmp18:
	.loc	0 51 22 prologue_end            # xz/util.c:51:22
	callq	strlen@PLT
.Ltmp19:
	#DEBUG_VALUE: xstrdup:src <- $rbx
	movq	%rax, %r14
	.loc	0 51 34 is_stmt 0               # xz/util.c:51:34
	incq	%r14
.Ltmp20:
	#DEBUG_VALUE: xstrdup:size <- $r14
	#DEBUG_VALUE: xrealloc:size <- $r14
	#DEBUG_VALUE: xrealloc:ptr <- 0
	#DEBUG_VALUE: xrealloc:p <- 0
	.loc	0 35 8 is_stmt 1                # xz/util.c:35:8
	movq	%r14, %rdi
	callq	malloc@PLT
.Ltmp21:
	movq	%rax, %r15
.Ltmp22:
	#DEBUG_VALUE: xrealloc:ptr <- $r15
	.loc	0 37 10                         # xz/util.c:37:10
	testq	%rax, %rax
.Ltmp23:
	.loc	0 37 6 is_stmt 0                # xz/util.c:37:6
	jne	.LBB1_2
.Ltmp24:
# %bb.1:                                # %if.then.i
	#DEBUG_VALUE: xstrdup:src <- $rbx
	#DEBUG_VALUE: xstrdup:size <- $r14
	#DEBUG_VALUE: xrealloc:size <- $r14
	#DEBUG_VALUE: xrealloc:ptr <- $r15
	#DEBUG_VALUE: xrealloc:p <- 0
	.loc	0 38 27 is_stmt 1               # xz/util.c:38:27
	callq	__errno_location@PLT
.Ltmp25:
	movl	(%rax), %edi
.Ltmp26:
	#DEBUG_VALUE: saved_errno <- $edi
	.loc	0 40 23                         # xz/util.c:40:23
	callq	strerror@PLT
.Ltmp27:
	.loc	0 40 3 is_stmt 0                # xz/util.c:40:3
	movl	$.L.str, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp28:
.LBB1_2:                                # %xrealloc.exit
	#DEBUG_VALUE: xstrdup:src <- $rbx
	#DEBUG_VALUE: xstrdup:size <- $r14
	#DEBUG_VALUE: xstrdup:dest <- $r15
	.loc	0 53 9 is_stmt 1                # xz/util.c:53:9
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	.loc	0 53 9 epilogue_begin is_stmt 0 # xz/util.c:53:9
	popq	%rbx
.Ltmp29:
	#DEBUG_VALUE: xstrdup:src <- $rsi
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp30:
	#DEBUG_VALUE: xstrdup:size <- $rdx
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp31:
	#DEBUG_VALUE: xstrdup:dest <- $rdi
	.cfi_def_cfa_offset 8
	jmp	memcpy@PLT                      # TAILCALL
.Ltmp32:
.Lfunc_end1:
	.size	xstrdup, .Lfunc_end1-xstrdup
	.cfi_endproc
                                        # -- End function
	.globl	str_to_uint64                   # -- Begin function str_to_uint64
	.p2align	4, 0x90
	.type	str_to_uint64,@function
str_to_uint64:                          # @str_to_uint64
.Lfunc_begin2:
	.loc	0 59 0 is_stmt 1                # xz/util.c:59:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: str_to_uint64:name <- $rdi
	#DEBUG_VALUE: str_to_uint64:value <- $rsi
	#DEBUG_VALUE: str_to_uint64:min <- $rdx
	#DEBUG_VALUE: str_to_uint64:max <- $rcx
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
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
.Ltmp33:
	#DEBUG_VALUE: str_to_uint64:result <- 0
	jmp	.LBB2_1
.Ltmp34:
	.p2align	4, 0x90
.LBB2_3:                                # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:value <- $r13
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: str_to_uint64:result <- 0
	.loc	0 64 3 prologue_end             # xz/util.c:64:3
	incq	%r13
.Ltmp35:
	#DEBUG_VALUE: str_to_uint64:value <- $r13
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:value <- $r13
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: str_to_uint64:result <- 0
	#DEBUG_VALUE: str_to_uint64:value <- $r13
	.loc	0 63 9                          # xz/util.c:63:9
	movzbl	(%r13), %ebp
	cmpl	$32, %ebp
	.loc	0 63 23 is_stmt 0               # xz/util.c:63:23
	je	.LBB2_3
.Ltmp36:
# %bb.2:                                # %while.cond
                                        #   in Loop: Header=BB2_1 Depth=1
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:value <- $r13
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: str_to_uint64:result <- 0
	cmpl	$9, %ebp
	je	.LBB2_3
.Ltmp37:
# %bb.4:                                # %while.end
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:value <- $r13
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: str_to_uint64:result <- 0
	.loc	0 67 6 is_stmt 1                # xz/util.c:67:6
	movl	$.L.str.1, %esi
	movq	%r13, %rdi
	callq	strcmp@PLT
.Ltmp38:
	.loc	0 67 27 is_stmt 0               # xz/util.c:67:27
	testl	%eax, %eax
.Ltmp39:
	.loc	0 67 6                          # xz/util.c:67:6
	je	.LBB2_5
.Ltmp40:
# %bb.6:                                # %if.end
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:value <- $r13
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: str_to_uint64:result <- 0
	.loc	0 70 19 is_stmt 1               # xz/util.c:70:19
	addb	$-58, %bpl
	cmpb	$-11, %bpl
	ja	.LBB2_8
.Ltmp41:
# %bb.7:                                # %if.then13
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:value <- $r13
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: str_to_uint64:result <- 0
	.loc	0 71 3                          # xz/util.c:71:3
	movl	$.L.str.2, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp42:
.LBB2_8:                                # %do.body.preheader
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:value <- $r13
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: str_to_uint64:result <- 0
	.loc	0 0 3 is_stmt 0                 # xz/util.c:0:3
	xorl	%r12d, %r12d
	movabsq	$1844674407370955161, %rax      # imm = 0x1999999999999999
.Ltmp43:
	.p2align	4, 0x90
.LBB2_9:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: str_to_uint64:result <- $r12
	#DEBUG_VALUE: str_to_uint64:value <- $r13
	.loc	0 76 14 is_stmt 1               # xz/util.c:76:14
	cmpq	%rax, %r12
.Ltmp44:
	.loc	0 76 7 is_stmt 0                # xz/util.c:76:7
	ja	.LBB2_34
.Ltmp45:
# %bb.10:                               # %if.end18
                                        #   in Loop: Header=BB2_9 Depth=1
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:value <- $r13
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: str_to_uint64:result <- $r12
	.loc	0 79 10 is_stmt 1               # xz/util.c:79:10
	addq	%r12, %r12
.Ltmp46:
	leaq	(%r12,%r12,4), %rcx
.Ltmp47:
	#DEBUG_VALUE: str_to_uint64:result <- $rcx
	.loc	0 82 24                         # xz/util.c:82:24
	movsbl	(%r13), %r12d
	.loc	0 82 31 is_stmt 0               # xz/util.c:82:31
	addl	$-48, %r12d
.Ltmp48:
	#DEBUG_VALUE: add <- undef
	.loc	0 83 24 is_stmt 1               # xz/util.c:83:24
	addq	%rcx, %r12
.Ltmp49:
	#DEBUG_VALUE: str_to_uint64:result <- undef
	#DEBUG_VALUE: str_to_uint64:value <- undef
	.loc	0 0 24 is_stmt 0                # xz/util.c:0:24
	jb	.LBB2_34
.Ltmp50:
# %bb.11:                               # %do.cond
                                        #   in Loop: Header=BB2_9 Depth=1
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	.loc	0 88 11 is_stmt 1               # xz/util.c:88:11
	movzbl	1(%r13), %ecx
.Ltmp51:
	.loc	0 83 7                          # xz/util.c:83:7
	incq	%r13
.Ltmp52:
	.loc	0 88 25                         # xz/util.c:88:25
	leal	-48(%rcx), %edx
	cmpb	$10, %dl
	jb	.LBB2_9
.Ltmp53:
# %bb.12:                               # %do.end
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	.loc	0 90 6                          # xz/util.c:90:6
	leal	-71(%rcx), %eax
	cmpl	$38, %eax
	ja	.LBB2_13
.Ltmp54:
# %bb.15:                               # %do.end
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	.loc	0 0 6 is_stmt 0                 # xz/util.c:0:6
	movabsq	$4294967297, %rdx               # imm = 0x100000001
	btq	%rax, %rdx
	jb	.LBB2_20
.Ltmp55:
# %bb.16:                               # %do.end
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	movabsq	$68719476752, %rdx              # imm = 0x1000000010
	btq	%rax, %rdx
	jb	.LBB2_17
.Ltmp56:
# %bb.18:                               # %do.end
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	movabsq	$274877907008, %rdx             # imm = 0x4000000040
	btq	%rax, %rdx
	jae	.LBB2_13
.Ltmp57:
# %bb.19:                               # %if.then54
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: multiplier <- 1048576
	movl	$1048576, %ebp                  # imm = 0x100000
	jmp	.LBB2_21
.Ltmp58:
.LBB2_5:
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:value <- $r13
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: str_to_uint64:result <- 0
	movq	%rbx, %r12
.Ltmp59:
	#DEBUG_VALUE: str_to_uint64:max <- $r12
	.loc	0 67 6 is_stmt 1                # xz/util.c:67:6
	jmp	.LBB2_35
.Ltmp60:
.LBB2_17:
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	.loc	0 0 6 is_stmt 0                 # xz/util.c:0:6
	movl	$1024, %ebp                     # imm = 0x400
	jmp	.LBB2_21
.Ltmp61:
.LBB2_13:                               # %do.end
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	.loc	0 90 6 is_stmt 1                # xz/util.c:90:6
	testl	%ecx, %ecx
	je	.LBB2_33
.Ltmp62:
# %bb.14:                               # %if.end66.fold.split
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	.loc	0 0 6 is_stmt 0                 # xz/util.c:0:6
	movb	$1, %al
	xorl	%ebp, %ebp
	jmp	.LBB2_22
.Ltmp63:
.LBB2_20:                               # %if.then63
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: multiplier <- 1073741824
	movl	$1073741824, %ebp               # imm = 0x40000000
.Ltmp64:
.LBB2_21:                               # %if.end66
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	xorl	%eax, %eax
.Ltmp65:
.LBB2_22:                               # %if.end66
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: multiplier <- $rbp
	#DEBUG_VALUE: str_to_uint64:value <- [DW_OP_plus_uconst 2, DW_OP_stack_value] undef
	.loc	0 107 7 is_stmt 1               # xz/util.c:107:7
	movzbl	1(%r13), %ecx
	testl	%ecx, %ecx
	.loc	0 107 22 is_stmt 0              # xz/util.c:107:22
	je	.LBB2_29
.Ltmp66:
# %bb.23:                               # %if.end66
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: multiplier <- $rbp
	cmpl	$66, %ecx
	je	.LBB2_28
.Ltmp67:
# %bb.24:                               # %if.end66
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: multiplier <- $rbp
	cmpl	$105, %ecx
	jne	.LBB2_30
.Ltmp68:
# %bb.25:                               # %land.lhs.true.tail
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: multiplier <- $rbp
	.loc	0 107 44                        # xz/util.c:107:44
	cmpb	$0, 2(%r13)
	.loc	0 108 5 is_stmt 1               # xz/util.c:108:5
	je	.LBB2_29
.Ltmp69:
# %bb.26:                               # %sub_1152
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: multiplier <- $rbp
	.loc	0 0 5 is_stmt 0                 # xz/util.c:0:5
	cmpb	$66, 2(%r13)
	jne	.LBB2_30
.Ltmp70:
# %bb.27:                               # %land.lhs.true74.tail
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: multiplier <- $rbp
	.loc	0 108 28                        # xz/util.c:108:28
	cmpb	$0, 3(%r13)
	setne	%cl
	.loc	0 109 5 is_stmt 1               # xz/util.c:109:5
	orb	%al, %cl
	jne	.LBB2_30
	jmp	.LBB2_31
.Ltmp71:
.LBB2_29:                               # %if.end83
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: multiplier <- $rbp
	#DEBUG_VALUE: multiplier <- $rbp
	.loc	0 112 7                         # xz/util.c:112:7
	testb	%al, %al
	je	.LBB2_31
.Ltmp72:
.LBB2_30:                               # %if.then86
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: multiplier <- $rbp
	.loc	0 0 7 is_stmt 0                 # xz/util.c:0:7
	xorl	%ebp, %ebp
.Ltmp73:
	.loc	0 113 4 is_stmt 1               # xz/util.c:113:4
	movl	$.L.str.6, %esi
	movl	$1, %edi
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	message@PLT
.Ltmp74:
	.loc	0 115 4                         # xz/util.c:115:4
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp75:
.LBB2_31:                               # %if.end87
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	.loc	0 120 14                        # xz/util.c:120:14
	movq	%rbp, %rax
	mulq	%r12
.Ltmp76:
	#DEBUG_VALUE: str_to_uint64:result <- undef
	.loc	0 0 14 is_stmt 0                # xz/util.c:0:14
	jo	.LBB2_34
.Ltmp77:
# %bb.32:
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	imulq	%rbp, %r12
.Ltmp78:
.LBB2_33:                               # %if.end96
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: str_to_uint64:result <- $r12
	.loc	0 126 13 is_stmt 1              # xz/util.c:126:13
	cmpq	%r14, %r12
	setae	%al
	cmpq	%rbx, %r12
	setbe	%cl
	.loc	0 126 19 is_stmt 0              # xz/util.c:126:19
	testb	%cl, %al
	jne	.LBB2_35
.Ltmp79:
.LBB2_34:                               # %error
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_LABEL: str_to_uint64:error
	.loc	0 0 19                          # xz/util.c:0:19
	xorl	%r12d, %r12d
	.loc	0 132 2 is_stmt 1               # xz/util.c:132:2
	movl	$.L.str.8, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp80:
.LBB2_35:                               # %cleanup104
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	.loc	0 140 1                         # xz/util.c:140:1
	movq	%r12, %rax
	.loc	0 140 1 epilogue_begin is_stmt 0 # xz/util.c:140:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp81:
	#DEBUG_VALUE: str_to_uint64:max <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp82:
	#DEBUG_VALUE: str_to_uint64:min <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp83:
	#DEBUG_VALUE: str_to_uint64:name <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp84:
.LBB2_28:                               # %land.lhs.true78.tail
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: str_to_uint64:name <- $r15
	#DEBUG_VALUE: str_to_uint64:min <- $r14
	#DEBUG_VALUE: str_to_uint64:max <- $rbx
	#DEBUG_VALUE: multiplier <- $rbp
	.loc	0 109 27 is_stmt 1              # xz/util.c:109:27
	cmpb	$0, 2(%r13)
	setne	%cl
.Ltmp85:
	#DEBUG_VALUE: multiplier <- $rbp
	.loc	0 107 7                         # xz/util.c:107:7
	orb	%cl, %al
	jne	.LBB2_30
	jmp	.LBB2_31
.Ltmp86:
.Lfunc_end2:
	.size	str_to_uint64, .Lfunc_end2-str_to_uint64
	.cfi_endproc
                                        # -- End function
	.globl	round_up_to_mib                 # -- Begin function round_up_to_mib
	.p2align	4, 0x90
	.type	round_up_to_mib,@function
round_up_to_mib:                        # @round_up_to_mib
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: round_up_to_mib:n <- $rdi
	.loc	0 146 12 prologue_end           # xz/util.c:146:12
	movq	%rdi, %rax
	shrq	$20, %rax
	.loc	0 146 25 is_stmt 0              # xz/util.c:146:25
	andl	$1048575, %edi                  # imm = 0xFFFFF
.Ltmp87:
	#DEBUG_VALUE: round_up_to_mib:n <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 146 19                        # xz/util.c:146:19
	cmpq	$1, %rdi
	sbbq	$-1, %rax
	.loc	0 146 2                         # xz/util.c:146:2
	retq
.Ltmp88:
.Lfunc_end3:
	.size	round_up_to_mib, .Lfunc_end3-round_up_to_mib
	.cfi_endproc
                                        # -- End function
	.globl	uint64_to_str                   # -- Begin function uint64_to_str
	.p2align	4, 0x90
	.type	uint64_to_str,@function
uint64_to_str:                          # @uint64_to_str
.Lfunc_begin4:
	.loc	0 171 0 is_stmt 1               # xz/util.c:171:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: uint64_to_str:value <- $rdi
	#DEBUG_VALUE: uint64_to_str:slot <- $esi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rcx
.Ltmp89:
	.loc	0 181 12 prologue_end           # xz/util.c:181:12
	movl	%esi, %eax
	shlq	$7, %rax
	leaq	bufs(%rax), %rbx
	.loc	0 181 3 is_stmt 0               # xz/util.c:181:3
	movl	$128, %esi
.Ltmp90:
	#DEBUG_VALUE: uint64_to_str:slot <- [DW_OP_LLVM_entry_value 1] $esi
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
.Ltmp91:
	#DEBUG_VALUE: uint64_to_str:value <- $rcx
	xorl	%eax, %eax
	callq	snprintf@PLT
.Ltmp92:
	#DEBUG_VALUE: uint64_to_str:value <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 183 2 is_stmt 1               # xz/util.c:183:2
	movq	%rbx, %rax
	.loc	0 183 2 epilogue_begin is_stmt 0 # xz/util.c:183:2
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp93:
.Lfunc_end4:
	.size	uint64_to_str, .Lfunc_end4-uint64_to_str
	.cfi_endproc
	.file	7 "/usr/include" "stdio.h" md5 0xf31eefcc3f15835fc5a4023a625cf609
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function uint64_to_nicestr
.LCPI5_0:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI5_1:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI5_2:
	.quad	0x3f50000000000000              # double 9.765625E-4
.LCPI5_3:
	.quad	0x40c387f333333333              # double 9999.8999999999996
	.text
	.globl	uint64_to_nicestr
	.p2align	4, 0x90
	.type	uint64_to_nicestr,@function
uint64_to_nicestr:                      # @uint64_to_nicestr
.Lfunc_begin5:
	.loc	0 191 0 is_stmt 1               # xz/util.c:191:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: uint64_to_nicestr:value <- $rdi
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- $esi
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- $edx
	#DEBUG_VALUE: uint64_to_nicestr:always_also_bytes <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ecx
	#DEBUG_VALUE: uint64_to_nicestr:slot <- $r8d
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdi, %rbx
.Ltmp94:
	#DEBUG_VALUE: uint64_to_nicestr:unit <- 0
	.loc	0 199 14 prologue_end           # xz/util.c:199:14
	movl	%r8d, %eax
	shlq	$7, %rax
	leaq	bufs(%rax), %r14
	.loc	0 199 8 is_stmt 0               # xz/util.c:199:8
	movq	%r14, 16(%rsp)
	.loc	0 200 9 is_stmt 1               # xz/util.c:200:9
	movq	$128, 8(%rsp)
.Ltmp95:
	.loc	0 202 16                        # xz/util.c:202:16
	testl	%esi, %esi
	setne	%al
	cmpq	$10000, %rdi                    # imm = 0x2710
	setae	%cl
.Ltmp96:
	#DEBUG_VALUE: uint64_to_nicestr:always_also_bytes <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ebp
	.loc	0 202 29 is_stmt 0              # xz/util.c:202:29
	orb	%al, %cl
	testl	%edx, %edx
	setne	%al
	testb	%al, %cl
	jne	.LBB5_2
.Ltmp97:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: uint64_to_nicestr:value <- $rbx
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- $esi
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- $edx
	#DEBUG_VALUE: uint64_to_nicestr:always_also_bytes <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ebp
	#DEBUG_VALUE: uint64_to_nicestr:slot <- $r8d
	#DEBUG_VALUE: uint64_to_nicestr:unit <- 0
	.loc	0 0 29                          # xz/util.c:0:29
	xorl	%r15d, %r15d
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rsi
.Ltmp98:
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 210 4 is_stmt 1               # xz/util.c:210:4
	movl	$.L.str.10, %edx
.Ltmp99:
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- [DW_OP_LLVM_entry_value 1] $edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	my_snprintf
.Ltmp100:
	#DEBUG_VALUE: uint64_to_nicestr:slot <- [DW_OP_LLVM_entry_value 1] $r8d
	.loc	0 211 2                         # xz/util.c:211:2
	jmp	.LBB5_8
.Ltmp101:
.LBB5_2:                                # %if.else
	#DEBUG_VALUE: uint64_to_nicestr:value <- $rbx
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- $esi
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- $edx
	#DEBUG_VALUE: uint64_to_nicestr:always_also_bytes <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ebp
	#DEBUG_VALUE: uint64_to_nicestr:slot <- $r8d
	#DEBUG_VALUE: uint64_to_nicestr:unit <- 0
	.loc	0 215 14                        # xz/util.c:215:14
	movq	%rbx, %xmm1
	punpckldq	.LCPI5_0(%rip), %xmm1   # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI5_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
.Ltmp102:
	#DEBUG_VALUE: d <- $xmm0
	.loc	0 0 14 is_stmt 0                # xz/util.c:0:14
	movl	$1, %r15d
	movsd	.LCPI5_2(%rip), %xmm1           # xmm1 = [9.765625E-4,0.0E+0]
	movsd	.LCPI5_3(%rip), %xmm2           # xmm2 = [9.9998999999999996E+3,0.0E+0]
	jmp	.LBB5_3
.Ltmp103:
	.p2align	4, 0x90
.LBB5_6:                                # %do.body.backedge
                                        #   in Loop: Header=BB5_3 Depth=1
	#DEBUG_VALUE: uint64_to_nicestr:value <- $rbx
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- $esi
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- $edx
	#DEBUG_VALUE: uint64_to_nicestr:always_also_bytes <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ebp
	#DEBUG_VALUE: uint64_to_nicestr:slot <- $r8d
	#DEBUG_VALUE: uint64_to_nicestr:unit <- [DW_OP_consts 1, DW_OP_minus, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r15
	.loc	0 217 6 is_stmt 1               # xz/util.c:217:6
	incq	%r15
.Ltmp104:
.LBB5_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: uint64_to_nicestr:value <- $rbx
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- $esi
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- $edx
	#DEBUG_VALUE: uint64_to_nicestr:always_also_bytes <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ebp
	#DEBUG_VALUE: uint64_to_nicestr:slot <- $r8d
	#DEBUG_VALUE: d <- $xmm0
	#DEBUG_VALUE: uint64_to_nicestr:unit <- [DW_OP_consts 1, DW_OP_minus, DW_OP_stack_value] $r15
	mulsd	%xmm1, %xmm0
.Ltmp105:
	#DEBUG_VALUE: d <- undef
	#DEBUG_VALUE: uint64_to_nicestr:unit <- [DW_OP_consts 1, DW_OP_minus, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r15
	.loc	0 219 17                        # xz/util.c:219:17
	cmpl	%esi, %r15d
	.loc	0 219 28 is_stmt 0              # xz/util.c:219:28
	jb	.LBB5_6
.Ltmp106:
# %bb.4:                                # %lor.rhs
                                        #   in Loop: Header=BB5_3 Depth=1
	#DEBUG_VALUE: uint64_to_nicestr:value <- $rbx
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- $esi
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- $edx
	#DEBUG_VALUE: uint64_to_nicestr:always_also_bytes <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ebp
	#DEBUG_VALUE: uint64_to_nicestr:slot <- $r8d
	#DEBUG_VALUE: uint64_to_nicestr:unit <- [DW_OP_consts 1, DW_OP_minus, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r15
	.loc	0 219 43                        # xz/util.c:219:43
	cmpl	%edx, %r15d
.Ltmp107:
	.loc	0 219 3                         # xz/util.c:219:3
	jae	.LBB5_7
.Ltmp108:
# %bb.5:                                # %lor.rhs
                                        #   in Loop: Header=BB5_3 Depth=1
	#DEBUG_VALUE: uint64_to_nicestr:value <- $rbx
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- $esi
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- $edx
	#DEBUG_VALUE: uint64_to_nicestr:always_also_bytes <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ebp
	#DEBUG_VALUE: uint64_to_nicestr:slot <- $r8d
	#DEBUG_VALUE: uint64_to_nicestr:unit <- [DW_OP_consts 1, DW_OP_minus, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r15
	ucomisd	%xmm2, %xmm0
	ja	.LBB5_6
.Ltmp109:
.LBB5_7:                                # %do.end
	#DEBUG_VALUE: uint64_to_nicestr:value <- $rbx
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- $esi
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- $edx
	#DEBUG_VALUE: uint64_to_nicestr:always_also_bytes <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ebp
	#DEBUG_VALUE: uint64_to_nicestr:slot <- $r8d
	#DEBUG_VALUE: uint64_to_nicestr:unit <- [DW_OP_consts 1, DW_OP_minus, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r15
	.loc	0 0 3                           # xz/util.c:0:3
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rsi
.Ltmp110:
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 226 4 is_stmt 1               # xz/util.c:226:4
	movl	$.L.str.11, %edx
.Ltmp111:
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- [DW_OP_LLVM_entry_value 1] $edx
	movb	$1, %al
	callq	my_snprintf
.Ltmp112:
	#DEBUG_VALUE: uint64_to_nicestr:slot <- [DW_OP_LLVM_entry_value 1] $r8d
.LBB5_8:                                # %if.end
	#DEBUG_VALUE: uint64_to_nicestr:value <- $rbx
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: uint64_to_nicestr:always_also_bytes <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] $ebp
	#DEBUG_VALUE: uint64_to_nicestr:slot <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: uint64_to_nicestr:unit <- $r15
	.loc	0 230 34                        # xz/util.c:230:34
	leaq	uint64_to_nicestr.suffix(,%r15,4), %rcx
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rsi
	.loc	0 230 2 is_stmt 0               # xz/util.c:230:2
	movl	$.L.str.12, %edx
	xorl	%eax, %eax
	callq	my_snprintf
.Ltmp113:
	.loc	0 0 2                           # xz/util.c:0:2
	cmpq	$10000, %rbx                    # imm = 0x2710
	setb	%al
.Ltmp114:
	.loc	0 232 24 is_stmt 1              # xz/util.c:232:24
	xorb	$1, %bpl
.Ltmp115:
	orb	%al, %bpl
	jne	.LBB5_10
.Ltmp116:
# %bb.9:                                # %if.then17
	#DEBUG_VALUE: uint64_to_nicestr:value <- $rbx
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: uint64_to_nicestr:slot <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: uint64_to_nicestr:unit <- $r15
	.loc	0 238 13                        # xz/util.c:238:13
	movq	16(%rsp), %rdi
	.loc	0 238 18 is_stmt 0              # xz/util.c:238:18
	movq	8(%rsp), %rsi
	.loc	0 238 4                         # xz/util.c:238:4
	movl	$.L.str.13, %edx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	snprintf@PLT
.Ltmp117:
.LBB5_10:                               # %if.end18
	#DEBUG_VALUE: uint64_to_nicestr:value <- $rbx
	#DEBUG_VALUE: uint64_to_nicestr:unit_min <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: uint64_to_nicestr:unit_max <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: uint64_to_nicestr:slot <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: uint64_to_nicestr:unit <- $r15
	.loc	0 241 2 is_stmt 1               # xz/util.c:241:2
	movq	%r14, %rax
	.loc	0 241 2 epilogue_begin is_stmt 0 # xz/util.c:241:2
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp118:
	#DEBUG_VALUE: uint64_to_nicestr:value <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp120:
.Lfunc_end5:
	.size	uint64_to_nicestr, .Lfunc_end5-uint64_to_nicestr
	.cfi_endproc
                                        # -- End function
	.globl	my_snprintf                     # -- Begin function my_snprintf
	.p2align	4, 0x90
	.type	my_snprintf,@function
my_snprintf:                            # @my_snprintf
.Lfunc_begin6:
	.loc	0 247 0 is_stmt 1               # xz/util.c:247:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: my_snprintf:pos <- $rdi
	#DEBUG_VALUE: my_snprintf:left <- $rsi
	#DEBUG_VALUE: my_snprintf:fmt <- $rdx
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$216, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.LBB6_2
.Ltmp121:
# %bb.1:                                # %entry
	#DEBUG_VALUE: my_snprintf:pos <- $r14
	#DEBUG_VALUE: my_snprintf:left <- $rbx
	#DEBUG_VALUE: my_snprintf:fmt <- $rdx
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.Ltmp122:
.LBB6_2:                                # %entry
	#DEBUG_VALUE: my_snprintf:pos <- $r14
	#DEBUG_VALUE: my_snprintf:left <- $rbx
	#DEBUG_VALUE: my_snprintf:fmt <- $rdx
	leaq	32(%rsp), %rax
.Ltmp123:
	.loc	0 249 2 prologue_end            # xz/util.c:249:2
	movq	%rax, 16(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 8(%rsp)
	movabsq	$206158430232, %rax             # imm = 0x3000000018
	movq	%rax, (%rsp)
	.loc	0 250 28                        # xz/util.c:250:28
	movq	(%rdi), %rdi
	.loc	0 250 34 is_stmt 0              # xz/util.c:250:34
	movq	(%rsi), %rsi
	movq	%rsp, %rcx
	.loc	0 250 18                        # xz/util.c:250:18
	callq	vsnprintf@PLT
.Ltmp124:
	#DEBUG_VALUE: my_snprintf:fmt <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: my_snprintf:len <- $eax
	.loc	0 259 10 is_stmt 1              # xz/util.c:259:10
	testl	%eax, %eax
	.loc	0 259 14 is_stmt 0              # xz/util.c:259:14
	js	.LBB6_6
.Ltmp125:
# %bb.3:                                # %lor.lhs.false
	#DEBUG_VALUE: my_snprintf:pos <- $r14
	#DEBUG_VALUE: my_snprintf:left <- $rbx
	#DEBUG_VALUE: my_snprintf:fmt <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: my_snprintf:len <- $eax
	.loc	0 259 17                        # xz/util.c:259:17
	movl	%eax, %ecx
	.loc	0 259 31                        # xz/util.c:259:31
	cmpq	%rcx, (%rbx)
.Ltmp126:
	.loc	0 259 6                         # xz/util.c:259:6
	jbe	.LBB6_6
.Ltmp127:
# %bb.4:                                # %if.else
	#DEBUG_VALUE: my_snprintf:pos <- $r14
	#DEBUG_VALUE: my_snprintf:left <- $rbx
	#DEBUG_VALUE: my_snprintf:fmt <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: my_snprintf:len <- $eax
	.loc	0 262 8 is_stmt 1               # xz/util.c:262:8
	addq	%rcx, (%r14)
	.loc	0 263 9                         # xz/util.c:263:9
	movq	(%rbx), %rax
.Ltmp128:
	#DEBUG_VALUE: my_snprintf:len <- $ecx
	subq	%rcx, %rax
	jmp	.LBB6_7
.Ltmp129:
.LBB6_6:
	#DEBUG_VALUE: my_snprintf:pos <- $r14
	#DEBUG_VALUE: my_snprintf:left <- $rbx
	#DEBUG_VALUE: my_snprintf:fmt <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: my_snprintf:len <- $eax
	.loc	0 0 9 is_stmt 0                 # xz/util.c:0:9
	xorl	%eax, %eax
.Ltmp130:
.LBB6_7:                                # %if.end
	#DEBUG_VALUE: my_snprintf:pos <- $r14
	#DEBUG_VALUE: my_snprintf:left <- $rbx
	#DEBUG_VALUE: my_snprintf:fmt <- [DW_OP_LLVM_entry_value 1] $rdx
	movq	%rax, (%rbx)
.Ltmp131:
	.loc	0 267 1 epilogue_begin is_stmt 1 # xz/util.c:267:1
	addq	$216, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp132:
	#DEBUG_VALUE: my_snprintf:left <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp133:
	#DEBUG_VALUE: my_snprintf:pos <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp134:
.Lfunc_end6:
	.size	my_snprintf, .Lfunc_end6-my_snprintf
	.cfi_endproc
                                        # -- End function
	.globl	is_empty_filename               # -- Begin function is_empty_filename
	.p2align	4, 0x90
	.type	is_empty_filename,@function
is_empty_filename:                      # @is_empty_filename
.Lfunc_begin7:
	.loc	0 272 0                         # xz/util.c:272:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: is_empty_filename:filename <- $rdi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.loc	0 273 6 prologue_end            # xz/util.c:273:6
	movzbl	(%rdi), %ebx
	.loc	0 273 18 is_stmt 0              # xz/util.c:273:18
	testb	%bl, %bl
.Ltmp135:
	.loc	0 273 6                         # xz/util.c:273:6
	je	.LBB7_1
.Ltmp136:
# %bb.2:                                # %return
	#DEBUG_VALUE: is_empty_filename:filename <- $rdi
	.loc	0 273 18                        # xz/util.c:273:18
	testb	%bl, %bl
	sete	%al
.Ltmp137:
	.loc	0 279 1 epilogue_begin is_stmt 1 # xz/util.c:279:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp138:
.LBB7_1:                                # %if.then
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: is_empty_filename:filename <- $rdi
	.loc	0 274 3                         # xz/util.c:274:3
	movl	$.L.str.14, %edi
.Ltmp139:
	#DEBUG_VALUE: is_empty_filename:filename <- [DW_OP_LLVM_entry_value 1] $rdi
	xorl	%eax, %eax
	callq	message_error@PLT
.Ltmp140:
	.loc	0 273 18                        # xz/util.c:273:18
	testb	%bl, %bl
	sete	%al
.Ltmp141:
	.loc	0 279 1 epilogue_begin          # xz/util.c:279:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp142:
.Lfunc_end7:
	.size	is_empty_filename, .Lfunc_end7-is_empty_filename
	.cfi_endproc
                                        # -- End function
	.globl	is_tty_stdin                    # -- Begin function is_tty_stdin
	.p2align	4, 0x90
	.type	is_tty_stdin,@function
is_tty_stdin:                           # @is_tty_stdin
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 286 9 prologue_end            # xz/util.c:286:9
	xorl	%eax, %eax
	retq
.Ltmp143:
.Lfunc_end8:
	.size	is_tty_stdin, .Lfunc_end8-is_tty_stdin
	.cfi_endproc
                                        # -- End function
	.globl	is_tty_stdout                   # -- Begin function is_tty_stdout
	.p2align	4, 0x90
	.type	is_tty_stdout,@function
is_tty_stdout:                          # @is_tty_stdout
.Lfunc_begin9:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 303 9 prologue_end            # xz/util.c:303:9
	xorl	%eax, %eax
	retq
.Ltmp144:
.Lfunc_end9:
	.size	is_tty_stdout, .Lfunc_end9-is_tty_stdout
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"max"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s: Value is not a non-negative decimal integer"
	.size	.L.str.2, 48

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s: Invalid multiplier suffix"
	.size	.L.str.6, 30

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Valid suffixes are `KiB' (2^10), `MiB' (2^20), and `GiB' (2^30)."
	.size	.L.str.7, 65

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Value of the option `%s' must be in the range [%lu, %lu]"
	.size	.L.str.8, 57

	.type	bufs,@object                    # @bufs
	.local	bufs
	.comm	bufs,512,16
	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%lu"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%u"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%.1f"
	.size	.L.str.11, 5

	.type	uint64_to_nicestr.suffix,@object # @uint64_to_nicestr.suffix
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
uint64_to_nicestr.suffix:
	.asciz	"B\000\000"
	.asciz	"KiB"
	.asciz	"MiB"
	.asciz	"GiB"
	.asciz	"TiB"
	.size	uint64_to_nicestr.suffix, 20

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	" %s"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" (%lu B)"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Empty filename, skipping"
	.size	.L.str.14, 25

	.file	8 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	9 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	10 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stdarg_va_list.h" md5 0x7bd78a282b99fcfe41a9e3c566d14f7d
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	30                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp19-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp82-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp59-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp81-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp46-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp90-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp99-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	20                              # Loc expr size
	.byte	114                             # DW_OP_breg2
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
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp115-.Lfunc_begin0         #   ending offset
	.byte	20                              # Loc expr size
	.byte	118                             # DW_OP_breg6
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
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # super-register DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # super-register DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp103-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	97                              # DW_OP_reg17
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp133-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp121-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp121-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp139-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp139-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
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
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
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
	.byte	11                              # DW_FORM_data1
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
	.byte	34                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	10                              # DW_TAG_label
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
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
	.byte	45                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
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
	.byte	49                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	50                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
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
	.byte	1                               # Abbrev [1] 0xc:0x5d2 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	50                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	49                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0xa DW_TAG_variable
	.long	61                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	4                               # Abbrev [4] 0x3d:0xc DW_TAG_array_type
	.long	73                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x42:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x49:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x4d:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	3                               # Abbrev [3] 0x51:0xa DW_TAG_variable
	.long	91                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	4                               # Abbrev [4] 0x5b:0xc DW_TAG_array_type
	.long	73                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x60:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x67:0xa DW_TAG_variable
	.long	113                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	4                               # Abbrev [4] 0x71:0xc DW_TAG_array_type
	.long	73                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x76:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	48                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x7d:0x7 DW_TAG_variable
	.long	132                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x84:0xc DW_TAG_array_type
	.long	73                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x89:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x90:0x7 DW_TAG_variable
	.long	61                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x97:0x7 DW_TAG_variable
	.long	132                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x9e:0xa DW_TAG_variable
	.long	168                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	4                               # Abbrev [4] 0xa8:0xc DW_TAG_array_type
	.long	73                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xad:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	30                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xb4:0xa DW_TAG_variable
	.long	190                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	4                               # Abbrev [4] 0xbe:0xc DW_TAG_array_type
	.long	73                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc3:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	65                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xca:0xa DW_TAG_variable
	.long	212                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	4                               # Abbrev [4] 0xd4:0xc DW_TAG_array_type
	.long	73                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd9:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	57                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xe0:0xa DW_TAG_variable
	.long	91                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	3                               # Abbrev [3] 0xea:0xa DW_TAG_variable
	.long	61                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	3                               # Abbrev [3] 0xf4:0xa DW_TAG_variable
	.long	254                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	4                               # Abbrev [4] 0xfe:0xc DW_TAG_array_type
	.long	73                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x103:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x10a:0x8f DW_TAG_subprogram
	.byte	37                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	766                             # DW_AT_type
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x119:0xb DW_TAG_variable
	.byte	5                               # DW_AT_name
	.long	409                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	9
	.byte	10                              # Abbrev [10] 0x124:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.long	1419                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x12d:0x9 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.long	571                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x136:0x9 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.long	571                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x13f:0x9 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.long	1435                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x148:0x9 DW_TAG_formal_parameter
	.byte	22                              # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.long	1449                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x151:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.long	750                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x15c:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	8
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.long	601                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x167:0x9 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.long	571                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x170:0x10 DW_TAG_lexical_block
	.byte	38                              # DW_AT_low_pc
	.long	.Ltmp112-.Ltmp101               # DW_AT_high_pc
	.byte	12                              # Abbrev [12] 0x176:0x9 DW_TAG_variable
	.byte	24                              # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	597                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x180:0x6 DW_TAG_call_site
	.long	1202                            # DW_AT_call_origin
	.byte	39                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x186:0x6 DW_TAG_call_site
	.long	1202                            # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x18c:0x6 DW_TAG_call_site
	.long	1202                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x192:0x6 DW_TAG_call_site
	.long	1166                            # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x199:0x12 DW_TAG_array_type
	.long	427                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x19e:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	5                               # Abbrev [5] 0x1a4:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1ab:0x5 DW_TAG_const_type
	.long	73                              # DW_AT_type
	.byte	3                               # Abbrev [3] 0x1b0:0xa DW_TAG_variable
	.long	91                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	10
	.byte	3                               # Abbrev [3] 0x1ba:0xa DW_TAG_variable
	.long	452                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	11
	.byte	4                               # Abbrev [4] 0x1c4:0xc DW_TAG_array_type
	.long	73                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1c9:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	9                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x1d0:0xb DW_TAG_variable
	.long	475                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	12
	.byte	4                               # Abbrev [4] 0x1db:0xc DW_TAG_array_type
	.long	73                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1e0:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	25                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1e7:0xb DW_TAG_variable
	.byte	6                               # DW_AT_name
	.long	498                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	13
	.byte	4                               # Abbrev [4] 0x1f2:0x12 DW_TAG_array_type
	.long	73                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1f7:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	5                               # Abbrev [5] 0x1fd:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	128                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x204:0x8 DW_TAG_variable
	.byte	7                               # DW_AT_name
	.long	524                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x20c:0x12 DW_TAG_enumeration_type
	.long	542                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x214:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	19                              # Abbrev [19] 0x217:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	19                              # Abbrev [19] 0x21a:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x21e:0x4 DW_TAG_base_type
	.byte	8                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0x222:0x19 DW_TAG_enumeration_type
	.long	542                             # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x22b:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	19                              # Abbrev [19] 0x22e:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	19                              # Abbrev [19] 0x231:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	19                              # Abbrev [19] 0x234:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	19                              # Abbrev [19] 0x237:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x23b:0x19 DW_TAG_enumeration_type
	.long	542                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x244:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	19                              # Abbrev [19] 0x247:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	19                              # Abbrev [19] 0x24a:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	19                              # Abbrev [19] 0x24d:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	19                              # Abbrev [19] 0x250:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x254:0x1 DW_TAG_pointer_type
	.byte	2                               # Abbrev [2] 0x255:0x4 DW_TAG_base_type
	.byte	24                              # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x259:0x8 DW_TAG_typedef
	.long	609                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x261:0x4 DW_TAG_base_type
	.byte	25                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	23                              # Abbrev [23] 0x265:0x4a DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	771                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x271:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	779                             # DW_AT_abstract_origin
	.byte	24                              # Abbrev [24] 0x277:0x6 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.long	787                             # DW_AT_abstract_origin
	.byte	25                              # Abbrev [25] 0x27d:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.long	795                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x283:0xd DW_TAG_lexical_block
	.byte	15                              # DW_AT_low_pc
	.long	.Ltmp13-.Ltmp7                  # DW_AT_high_pc
	.byte	25                              # Abbrev [25] 0x289:0x6 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.long	804                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x290:0x6 DW_TAG_call_site
	.long	687                             # DW_AT_call_origin
	.byte	16                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x296:0x6 DW_TAG_call_site
	.long	707                             # DW_AT_call_origin
	.byte	17                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x29c:0x6 DW_TAG_call_site
	.long	724                             # DW_AT_call_origin
	.byte	18                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x2a2:0x6 DW_TAG_call_site
	.long	735                             # DW_AT_call_origin
	.byte	19                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x2a8:0x6 DW_TAG_call_site
	.long	755                             # DW_AT_call_origin
	.byte	20                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x2af:0x14 DW_TAG_subprogram
	.byte	27                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	551                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	596                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x2b8:0x5 DW_TAG_formal_parameter
	.long	596                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x2bd:0x5 DW_TAG_formal_parameter
	.long	601                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x2c3:0x8 DW_TAG_subprogram
	.byte	28                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	715                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	29                              # Abbrev [29] 0x2cb:0x5 DW_TAG_pointer_type
	.long	720                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0x2d0:0x4 DW_TAG_base_type
	.byte	29                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	30                              # Abbrev [30] 0x2d4:0xb DW_TAG_subprogram
	.byte	30                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x2d9:0x5 DW_TAG_formal_parameter
	.long	596                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x2df:0xf DW_TAG_subprogram
	.byte	31                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	419                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	750                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x2e8:0x5 DW_TAG_formal_parameter
	.long	720                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x2ee:0x5 DW_TAG_pointer_type
	.long	73                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x2f3:0xb DW_TAG_subprogram
	.byte	32                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x2f7:0x5 DW_TAG_formal_parameter
	.long	766                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x2fc:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x2fe:0x5 DW_TAG_pointer_type
	.long	427                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x303:0x2b DW_TAG_subprogram
	.byte	33                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	596                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	34                              # Abbrev [34] 0x30b:0x8 DW_TAG_formal_parameter
	.byte	34                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	596                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x313:0x8 DW_TAG_formal_parameter
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	601                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x31b:0x8 DW_TAG_variable
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	596                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x323:0xa DW_TAG_lexical_block
	.byte	35                              # Abbrev [35] 0x324:0x8 DW_TAG_variable
	.byte	37                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	814                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x32e:0x5 DW_TAG_const_type
	.long	720                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x333:0x71 DW_TAG_subprogram
	.byte	21                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	51                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	750                             # DW_AT_type
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x342:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	63                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	766                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x34b:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	35                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	1439                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x354:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	64                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	750                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x35d:0x2e DW_TAG_inlined_subroutine
	.long	771                             # DW_AT_abstract_origin
	.byte	22                              # DW_AT_low_pc
	.long	.Ltmp28-.Ltmp20                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	52                              # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	24                              # Abbrev [24] 0x36a:0x6 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.long	779                             # DW_AT_abstract_origin
	.byte	38                              # Abbrev [38] 0x370:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	787                             # DW_AT_abstract_origin
	.byte	39                              # Abbrev [39] 0x377:0x6 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.long	795                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x37d:0xd DW_TAG_lexical_block
	.byte	23                              # DW_AT_low_pc
	.long	.Ltmp28-.Ltmp24                 # DW_AT_high_pc
	.byte	25                              # Abbrev [25] 0x383:0x6 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.long	804                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x38b:0x6 DW_TAG_call_site
	.long	932                             # DW_AT_call_origin
	.byte	24                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x391:0x6 DW_TAG_call_site
	.long	707                             # DW_AT_call_origin
	.byte	25                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x397:0x6 DW_TAG_call_site
	.long	735                             # DW_AT_call_origin
	.byte	26                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x39d:0x6 DW_TAG_call_site
	.long	755                             # DW_AT_call_origin
	.byte	27                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x3a4:0xf DW_TAG_subprogram
	.byte	38                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	407                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	609                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x3ad:0x5 DW_TAG_formal_parameter
	.long	766                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3b3:0x77 DW_TAG_subprogram
	.byte	28                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1419                            # DW_AT_type
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x3c2:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	65                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	766                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3cb:0x9 DW_TAG_formal_parameter
	.byte	10                              # DW_AT_location
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	766                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3d4:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	67                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	1419                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3dd:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	1419                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3e6:0x9 DW_TAG_variable
	.byte	13                              # DW_AT_location
	.byte	69                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	1419                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x3ef:0x5 DW_TAG_label
	.byte	71                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	49                              # DW_AT_low_pc
	.byte	41                              # Abbrev [41] 0x3f4:0xb DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	35                              # Abbrev [35] 0x3f6:0x8 DW_TAG_variable
	.byte	72                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	1444                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x3ff:0xc DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	12                              # Abbrev [12] 0x401:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.long	1419                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x40b:0x6 DW_TAG_call_site
	.long	1066                            # DW_AT_call_origin
	.byte	29                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x411:0x6 DW_TAG_call_site
	.long	755                             # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x417:0x6 DW_TAG_call_site
	.long	1085                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x41d:0x6 DW_TAG_call_site
	.long	755                             # DW_AT_call_origin
	.byte	32                              # DW_AT_call_return_pc
	.byte	14                              # Abbrev [14] 0x423:0x6 DW_TAG_call_site
	.long	755                             # DW_AT_call_origin
	.byte	33                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x42a:0x13 DW_TAG_subprogram
	.byte	39                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	720                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x432:0x5 DW_TAG_formal_parameter
	.long	766                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x437:0x5 DW_TAG_formal_parameter
	.long	766                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x43d:0x10 DW_TAG_subprogram
	.byte	40                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x441:0x5 DW_TAG_formal_parameter
	.long	546                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x446:0x5 DW_TAG_formal_parameter
	.long	766                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x44b:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x44d:0x19 DW_TAG_subprogram
	.byte	34                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	55                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1419                            # DW_AT_type
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x45c:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	75                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.long	1419                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x466:0x28 DW_TAG_subprogram
	.byte	35                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	766                             # DW_AT_type
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x475:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.long	1419                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x47e:0x9 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.long	1449                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x487:0x6 DW_TAG_call_site
	.long	1166                            # DW_AT_call_origin
	.byte	36                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x48e:0x1a DW_TAG_subprogram
	.byte	41                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	378                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	720                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x497:0x5 DW_TAG_formal_parameter
	.long	1192                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x49c:0x5 DW_TAG_formal_parameter
	.long	601                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x4a1:0x5 DW_TAG_formal_parameter
	.long	1197                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x4a6:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x4a8:0x5 DW_TAG_restrict_type
	.long	750                             # DW_AT_type
	.byte	43                              # Abbrev [43] 0x4ad:0x5 DW_TAG_restrict_type
	.long	766                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x4b2:0x42 DW_TAG_subprogram
	.byte	43                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	58                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x4bd:0x9 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.long	1491                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4c6:0x9 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.long	1496                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4cf:0x9 DW_TAG_formal_parameter
	.byte	27                              # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.long	766                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x4d8:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.long	1465                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x4e3:0x9 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.long	814                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x4ec:0x1 DW_TAG_unspecified_parameters
	.byte	14                              # Abbrev [14] 0x4ed:0x6 DW_TAG_call_site
	.long	1268                            # DW_AT_call_origin
	.byte	44                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x4f4:0x1e DW_TAG_subprogram
	.byte	42                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	382                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	720                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x4fd:0x5 DW_TAG_formal_parameter
	.long	1192                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x502:0x5 DW_TAG_formal_parameter
	.long	601                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x507:0x5 DW_TAG_formal_parameter
	.long	1197                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x50c:0x5 DW_TAG_formal_parameter
	.long	1298                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x512:0x5 DW_TAG_pointer_type
	.long	1303                            # DW_AT_type
	.byte	45                              # Abbrev [45] 0x517:0x28 DW_TAG_structure_type
	.byte	47                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	46                              # Abbrev [46] 0x51a:0x9 DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	542                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	46                              # Abbrev [46] 0x523:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	542                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	46                              # Abbrev [46] 0x52c:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	596                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	46                              # Abbrev [46] 0x535:0x9 DW_TAG_member
	.byte	46                              # DW_AT_name
	.long	596                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x53f:0x21 DW_TAG_subprogram
	.byte	45                              # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	59                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1435                            # DW_AT_type
                                        # DW_AT_external
	.byte	48                              # Abbrev [48] 0x54f:0xa DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.long	766                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x559:0x6 DW_TAG_call_site
	.long	1376                            # DW_AT_call_origin
	.byte	46                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x560:0xb DW_TAG_subprogram
	.byte	48                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x564:0x5 DW_TAG_formal_parameter
	.long	766                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x569:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x56b:0x10 DW_TAG_subprogram
	.byte	47                              # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	61                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1435                            # DW_AT_type
                                        # DW_AT_external
	.byte	49                              # Abbrev [49] 0x57b:0x10 DW_TAG_subprogram
	.byte	48                              # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	62                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1435                            # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x58b:0x8 DW_TAG_typedef
	.long	1427                            # DW_AT_type
	.byte	54                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x593:0x8 DW_TAG_typedef
	.long	609                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x59b:0x4 DW_TAG_base_type
	.byte	60                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x59f:0x5 DW_TAG_const_type
	.long	601                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x5a4:0x5 DW_TAG_const_type
	.long	1449                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x5a9:0x8 DW_TAG_typedef
	.long	1457                            # DW_AT_type
	.byte	74                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x5b1:0x8 DW_TAG_typedef
	.long	542                             # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x5b9:0x8 DW_TAG_typedef
	.long	1473                            # DW_AT_type
	.byte	86                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	50                              # Abbrev [50] 0x5c1:0x6 DW_TAG_typedef
	.long	1479                            # DW_AT_type
	.byte	85                              # DW_AT_name
	.byte	4                               # Abbrev [4] 0x5c7:0xc DW_TAG_array_type
	.long	1303                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x5cc:0x6 DW_TAG_subrange_type
	.long	77                              # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x5d3:0x5 DW_TAG_pointer_type
	.long	750                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x5d8:0x5 DW_TAG_pointer_type
	.long	601                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	2                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	364                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"xz/util.c"                     # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=115
.Linfo_string3:
	.asciz	"char"                          # string offset=147
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=152
.Linfo_string5:
	.asciz	"suffix"                        # string offset=172
.Linfo_string6:
	.asciz	"bufs"                          # string offset=179
.Linfo_string7:
	.asciz	"thousand"                      # string offset=184
.Linfo_string8:
	.asciz	"unsigned int"                  # string offset=193
.Linfo_string9:
	.asciz	"UNKNOWN"                       # string offset=206
.Linfo_string10:
	.asciz	"WORKS"                         # string offset=214
.Linfo_string11:
	.asciz	"BROKEN"                        # string offset=220
.Linfo_string12:
	.asciz	"V_SILENT"                      # string offset=227
.Linfo_string13:
	.asciz	"V_ERROR"                       # string offset=236
.Linfo_string14:
	.asciz	"V_WARNING"                     # string offset=244
.Linfo_string15:
	.asciz	"V_VERBOSE"                     # string offset=254
.Linfo_string16:
	.asciz	"V_DEBUG"                       # string offset=264
.Linfo_string17:
	.asciz	"message_verbosity"             # string offset=272
.Linfo_string18:
	.asciz	"NICESTR_B"                     # string offset=290
.Linfo_string19:
	.asciz	"NICESTR_KIB"                   # string offset=300
.Linfo_string20:
	.asciz	"NICESTR_MIB"                   # string offset=312
.Linfo_string21:
	.asciz	"NICESTR_GIB"                   # string offset=324
.Linfo_string22:
	.asciz	"NICESTR_TIB"                   # string offset=336
.Linfo_string23:
	.asciz	"nicestr_unit"                  # string offset=348
.Linfo_string24:
	.asciz	"double"                        # string offset=361
.Linfo_string25:
	.asciz	"unsigned long"                 # string offset=368
.Linfo_string26:
	.asciz	"size_t"                        # string offset=382
.Linfo_string27:
	.asciz	"realloc"                       # string offset=389
.Linfo_string28:
	.asciz	"__errno_location"              # string offset=397
.Linfo_string29:
	.asciz	"int"                           # string offset=414
.Linfo_string30:
	.asciz	"free"                          # string offset=418
.Linfo_string31:
	.asciz	"strerror"                      # string offset=423
.Linfo_string32:
	.asciz	"message_fatal"                 # string offset=432
.Linfo_string33:
	.asciz	"xrealloc"                      # string offset=446
.Linfo_string34:
	.asciz	"ptr"                           # string offset=455
.Linfo_string35:
	.asciz	"size"                          # string offset=459
.Linfo_string36:
	.asciz	"p"                             # string offset=464
.Linfo_string37:
	.asciz	"saved_errno"                   # string offset=466
.Linfo_string38:
	.asciz	"strlen"                        # string offset=478
.Linfo_string39:
	.asciz	"strcmp"                        # string offset=485
.Linfo_string40:
	.asciz	"message"                       # string offset=492
.Linfo_string41:
	.asciz	"snprintf"                      # string offset=500
.Linfo_string42:
	.asciz	"vsnprintf"                     # string offset=509
.Linfo_string43:
	.asciz	"gp_offset"                     # string offset=519
.Linfo_string44:
	.asciz	"fp_offset"                     # string offset=529
.Linfo_string45:
	.asciz	"overflow_arg_area"             # string offset=539
.Linfo_string46:
	.asciz	"reg_save_area"                 # string offset=557
.Linfo_string47:
	.asciz	"__va_list_tag"                 # string offset=571
.Linfo_string48:
	.asciz	"message_error"                 # string offset=585
.Linfo_string49:
	.asciz	"DW_ATE_unsigned_8"             # string offset=599
.Linfo_string50:
	.asciz	"DW_ATE_unsigned_1"             # string offset=617
.Linfo_string51:
	.asciz	"xstrdup"                       # string offset=635
.Linfo_string52:
	.asciz	"str_to_uint64"                 # string offset=643
.Linfo_string53:
	.asciz	"__uint64_t"                    # string offset=657
.Linfo_string54:
	.asciz	"uint64_t"                      # string offset=668
.Linfo_string55:
	.asciz	"round_up_to_mib"               # string offset=677
.Linfo_string56:
	.asciz	"uint64_to_str"                 # string offset=693
.Linfo_string57:
	.asciz	"uint64_to_nicestr"             # string offset=707
.Linfo_string58:
	.asciz	"my_snprintf"                   # string offset=725
.Linfo_string59:
	.asciz	"is_empty_filename"             # string offset=737
.Linfo_string60:
	.asciz	"_Bool"                         # string offset=755
.Linfo_string61:
	.asciz	"is_tty_stdin"                  # string offset=761
.Linfo_string62:
	.asciz	"is_tty_stdout"                 # string offset=774
.Linfo_string63:
	.asciz	"src"                           # string offset=788
.Linfo_string64:
	.asciz	"dest"                          # string offset=792
.Linfo_string65:
	.asciz	"name"                          # string offset=797
.Linfo_string66:
	.asciz	"value"                         # string offset=802
.Linfo_string67:
	.asciz	"min"                           # string offset=808
.Linfo_string68:
	.asciz	"max"                           # string offset=812
.Linfo_string69:
	.asciz	"result"                        # string offset=816
.Linfo_string70:
	.asciz	"multiplier"                    # string offset=823
.Linfo_string71:
	.asciz	"error"                         # string offset=834
.Linfo_string72:
	.asciz	"add"                           # string offset=840
.Linfo_string73:
	.asciz	"__uint32_t"                    # string offset=844
.Linfo_string74:
	.asciz	"uint32_t"                      # string offset=855
.Linfo_string75:
	.asciz	"n"                             # string offset=864
.Linfo_string76:
	.asciz	"slot"                          # string offset=866
.Linfo_string77:
	.asciz	"pos"                           # string offset=871
.Linfo_string78:
	.asciz	"left"                          # string offset=875
.Linfo_string79:
	.asciz	"unit_min"                      # string offset=880
.Linfo_string80:
	.asciz	"unit_max"                      # string offset=889
.Linfo_string81:
	.asciz	"always_also_bytes"             # string offset=898
.Linfo_string82:
	.asciz	"unit"                          # string offset=916
.Linfo_string83:
	.asciz	"d"                             # string offset=921
.Linfo_string84:
	.asciz	"ap"                            # string offset=923
.Linfo_string85:
	.asciz	"__builtin_va_list"             # string offset=926
.Linfo_string86:
	.asciz	"va_list"                       # string offset=944
.Linfo_string87:
	.asciz	"fmt"                           # string offset=952
.Linfo_string88:
	.asciz	"len"                           # string offset=956
.Linfo_string89:
	.asciz	"filename"                      # string offset=960
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
	.long	.Linfo_string87
	.long	.Linfo_string88
	.long	.Linfo_string89
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	uint64_to_nicestr.suffix
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	bufs
	.quad	.Lfunc_begin0
	.quad	.Ltmp7
	.quad	.Ltmp2
	.quad	.Ltmp8
	.quad	.Ltmp10
	.quad	.Ltmp11
	.quad	.Ltmp12
	.quad	.Lfunc_begin1
	.quad	.Ltmp20
	.quad	.Ltmp24
	.quad	.Ltmp19
	.quad	.Ltmp25
	.quad	.Ltmp27
	.quad	.Ltmp28
	.quad	.Lfunc_begin2
	.quad	.Ltmp38
	.quad	.Ltmp42
	.quad	.Ltmp74
	.quad	.Ltmp75
	.quad	.Ltmp80
	.quad	.Lfunc_begin3
	.quad	.Lfunc_begin4
	.quad	.Ltmp92
	.quad	.Lfunc_begin5
	.quad	.Ltmp101
	.quad	.Ltmp100
	.quad	.Ltmp112
	.quad	.Ltmp113
	.quad	.Ltmp117
	.quad	.Lfunc_begin6
	.quad	.Ltmp124
	.quad	.Lfunc_begin7
	.quad	.Ltmp140
	.quad	.Lfunc_begin8
	.quad	.Lfunc_begin9
	.quad	.Ltmp79
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
