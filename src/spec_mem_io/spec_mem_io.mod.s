	.text
	.file	"spec_mem_io.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "spec_mem_io/spec_mem_io.c" md5 0x047cbb8fb8ff391b745246463800d41f
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.file	3 "spec_mem_io" "spec_mem_io.h" md5 0x20f82235716911ab040d2b344ceb3e0d
	.globl	spec_mem_init                   # -- Begin function spec_mem_init
	.p2align	4, 0x90
	.type	spec_mem_init,@function
spec_mem_init:                          # @spec_mem_init
.Lfunc_begin0:
	.loc	0 67 0                          # spec_mem_io/spec_mem_io.c:67:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_init:fds <- $rdi
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_init:touch_all <- $edx
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
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %r13
.Ltmp0:
	.loc	0 71 5 prologue_end             # spec_mem_io/spec_mem_io.c:71:5
	cmpl	$5, dbglvl(%rip)
.Ltmp1:
	.loc	0 71 5 is_stmt 0                # spec_mem_io/spec_mem_io.c:71:5
	jl	.LBB0_2
.Ltmp2:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- $r14d
	.loc	0 71 5                          # spec_mem_io/spec_mem_io.c:71:5
	cmpq	%r13, spec_fd(%rip)
	movl	$0, %esi
	cmovneq	%r13, %rsi
	movl	$.L.str, %edi
	movl	%ebp, %edx
	movl	%r14d, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp3:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp4:
.LBB0_2:                                # %if.end
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- $r14d
	#DEBUG_VALUE: spec_mem_init:i <- 0
	.loc	0 76 19 is_stmt 1               # spec_mem_io/spec_mem_io.c:76:19
	testl	%ebp, %ebp
.Ltmp5:
	.loc	0 76 5 is_stmt 0                # spec_mem_io/spec_mem_io.c:76:5
	je	.LBB0_20
.Ltmp6:
# %bb.3:                                # %for.body.lr.ph
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- $r14d
	#DEBUG_VALUE: spec_mem_init:i <- 0
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	testl	%r14d, %r14d
	je	.LBB0_7
.Ltmp7:
# %bb.4:                                # %for.body.preheader
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- $r14d
	#DEBUG_VALUE: spec_mem_init:i <- 0
	xorl	%r14d, %r14d
.Ltmp8:
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	jmp	.LBB0_5
.Ltmp9:
	.p2align	4, 0x90
.LBB0_19:                               # %if.end46.loopexit
                                        #   in Loop: Header=BB0_5 Depth=1
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	.loc	0 76 32                         # spec_mem_io/spec_mem_io.c:76:32
	incl	%r14d
.Ltmp10:
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	.loc	0 76 19                         # spec_mem_io/spec_mem_io.c:76:19
	cmpl	%ebp, %r14d
.Ltmp11:
	.loc	0 76 5                          # spec_mem_io/spec_mem_io.c:76:5
	je	.LBB0_20
.Ltmp12:
.LBB0_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	.loc	0 77 18 is_stmt 1               # spec_mem_io/spec_mem_io.c:77:18
	movl	%r14d, %eax
	leaq	(%rax,%rax,4), %rax
	.loc	0 77 25 is_stmt 0               # spec_mem_io/spec_mem_io.c:77:25
	movq	(%r13,%rax,8), %r15
.Ltmp13:
	#DEBUG_VALUE: limit <- $r15
	.loc	0 0 25                          # spec_mem_io/spec_mem_io.c:0:25
	xorps	%xmm0, %xmm0
	.loc	0 78 9 is_stmt 1                # spec_mem_io/spec_mem_io.c:78:9
	movups	%xmm0, 8(%r13,%rax,8)
	movups	%xmm0, 24(%r13,%rax,8)
.Ltmp14:
	.loc	0 81 12                         # spec_mem_io/spec_mem_io.c:81:12
	testq	%r15, %r15
.Ltmp15:
	.loc	0 81 6 is_stmt 0                # spec_mem_io/spec_mem_io.c:81:6
	js	.LBB0_6
.Ltmp16:
# %bb.13:                               # %if.end15
                                        #   in Loop: Header=BB0_5 Depth=1
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	#DEBUG_VALUE: limit <- $r15
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(,%rax,8), %rbx
	addq	%r13, %rbx
	.loc	0 86 44 is_stmt 1               # spec_mem_io/spec_mem_io.c:86:44
	leaq	1048576(%r15), %r12
	.loc	0 86 32 is_stmt 0               # spec_mem_io/spec_mem_io.c:86:32
	movq	%r12, %rdi
	callq	malloc@PLT
.Ltmp17:
	.loc	0 86 13                         # spec_mem_io/spec_mem_io.c:86:13
	movq	%rax, 32(%rbx)
.Ltmp18:
	.loc	0 87 17 is_stmt 1               # spec_mem_io/spec_mem_io.c:87:17
	testq	%rax, %rax
.Ltmp19:
	.loc	0 87 6 is_stmt 0                # spec_mem_io/spec_mem_io.c:87:6
	je	.LBB0_21
.Ltmp20:
# %bb.14:                               # %if.end27
                                        #   in Loop: Header=BB0_5 Depth=1
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	#DEBUG_VALUE: limit <- $r15
	.loc	0 92 9 is_stmt 1                # spec_mem_io/spec_mem_io.c:92:9
	cmpl	$5, dbglvl(%rip)
.Ltmp21:
	.loc	0 92 9 is_stmt 0                # spec_mem_io/spec_mem_io.c:92:9
	jl	.LBB0_16
.Ltmp22:
# %bb.15:                               # %if.then29
                                        #   in Loop: Header=BB0_5 Depth=1
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	#DEBUG_VALUE: limit <- $r15
	.loc	0 92 9                          # spec_mem_io/spec_mem_io.c:92:9
	movl	$.L.str.3, %edi
	movl	%r14d, %esi
	movq	%r15, %rdx
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp23:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp24:
.LBB0_16:                               # %if.end36
                                        #   in Loop: Header=BB0_5 Depth=1
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	#DEBUG_VALUE: limit <- $r15
	#DEBUG_VALUE: spec_mem_init:j <- 0
	.loc	0 94 27 is_stmt 1               # spec_mem_io/spec_mem_io.c:94:27
	testq	%r15, %r15
.Ltmp25:
	.loc	0 94 13 is_stmt 0               # spec_mem_io/spec_mem_io.c:94:13
	je	.LBB0_19
.Ltmp26:
# %bb.17:                               # %for.body40.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	#DEBUG_VALUE: limit <- $r15
	#DEBUG_VALUE: spec_mem_init:j <- 0
	.loc	0 0 13                          # spec_mem_io/spec_mem_io.c:0:13
	xorl	%eax, %eax
.Ltmp27:
	.p2align	4, 0x90
.LBB0_18:                               # %for.body40
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	#DEBUG_VALUE: limit <- $r15
	#DEBUG_VALUE: spec_mem_init:j <- $rax
	.loc	0 95 24 is_stmt 1               # spec_mem_io/spec_mem_io.c:95:24
	movq	32(%rbx), %rcx
	.loc	0 95 31 is_stmt 0               # spec_mem_io/spec_mem_io.c:95:31
	movb	$0, (%rcx,%rax)
.Ltmp28:
	.loc	0 94 38 is_stmt 1               # spec_mem_io/spec_mem_io.c:94:38
	addq	$1024, %rax                     # imm = 0x400
.Ltmp29:
	#DEBUG_VALUE: spec_mem_init:j <- $rax
	.loc	0 94 27 is_stmt 0               # spec_mem_io/spec_mem_io.c:94:27
	cmpq	%r15, %rax
.Ltmp30:
	.loc	0 94 13                         # spec_mem_io/spec_mem_io.c:94:13
	jl	.LBB0_18
	jmp	.LBB0_19
.Ltmp31:
.LBB0_7:                                # %for.body.us.preheader
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- $r14d
	#DEBUG_VALUE: spec_mem_init:i <- 0
	.loc	0 0 13                          # spec_mem_io/spec_mem_io.c:0:13
	movq	%r13, %rbx
	xorl	%r14d, %r14d
.Ltmp32:
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	jmp	.LBB0_8
.Ltmp33:
	.p2align	4, 0x90
.LBB0_12:                               # %if.end36.us
                                        #   in Loop: Header=BB0_8 Depth=1
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	.loc	0 76 32 is_stmt 1               # spec_mem_io/spec_mem_io.c:76:32
	incl	%r14d
.Ltmp34:
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	.loc	0 76 19 is_stmt 0               # spec_mem_io/spec_mem_io.c:76:19
	addq	$40, %rbx
	cmpl	%r14d, %ebp
.Ltmp35:
	.loc	0 76 5                          # spec_mem_io/spec_mem_io.c:76:5
	je	.LBB0_20
.Ltmp36:
.LBB0_8:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	.loc	0 77 25 is_stmt 1               # spec_mem_io/spec_mem_io.c:77:25
	movq	(%rbx), %r15
.Ltmp37:
	#DEBUG_VALUE: limit <- $r15
	.loc	0 0 25 is_stmt 0                # spec_mem_io/spec_mem_io.c:0:25
	xorps	%xmm0, %xmm0
	.loc	0 78 9 is_stmt 1                # spec_mem_io/spec_mem_io.c:78:9
	movups	%xmm0, 8(%rbx)
	movups	%xmm0, 24(%rbx)
.Ltmp38:
	.loc	0 81 12                         # spec_mem_io/spec_mem_io.c:81:12
	testq	%r15, %r15
.Ltmp39:
	.loc	0 81 6 is_stmt 0                # spec_mem_io/spec_mem_io.c:81:6
	js	.LBB0_6
.Ltmp40:
# %bb.9:                                # %if.end15.us
                                        #   in Loop: Header=BB0_8 Depth=1
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	#DEBUG_VALUE: limit <- $r15
	.loc	0 86 44 is_stmt 1               # spec_mem_io/spec_mem_io.c:86:44
	leaq	1048576(%r15), %r12
	.loc	0 86 32 is_stmt 0               # spec_mem_io/spec_mem_io.c:86:32
	movq	%r12, %rdi
	callq	malloc@PLT
.Ltmp41:
	.loc	0 86 13                         # spec_mem_io/spec_mem_io.c:86:13
	movq	%rax, 32(%rbx)
.Ltmp42:
	.loc	0 87 17 is_stmt 1               # spec_mem_io/spec_mem_io.c:87:17
	testq	%rax, %rax
.Ltmp43:
	.loc	0 87 6 is_stmt 0                # spec_mem_io/spec_mem_io.c:87:6
	je	.LBB0_21
.Ltmp44:
# %bb.10:                               # %if.end27.us
                                        #   in Loop: Header=BB0_8 Depth=1
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	#DEBUG_VALUE: limit <- $r15
	.loc	0 92 9 is_stmt 1                # spec_mem_io/spec_mem_io.c:92:9
	cmpl	$5, dbglvl(%rip)
.Ltmp45:
	.loc	0 92 9 is_stmt 0                # spec_mem_io/spec_mem_io.c:92:9
	jl	.LBB0_12
.Ltmp46:
# %bb.11:                               # %if.then29.us
                                        #   in Loop: Header=BB0_8 Depth=1
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	#DEBUG_VALUE: limit <- $r15
	.loc	0 92 9                          # spec_mem_io/spec_mem_io.c:92:9
	movl	$.L.str.3, %edi
	movl	%r14d, %esi
	movq	%r15, %rdx
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp47:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp48:
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	jmp	.LBB0_12
.Ltmp49:
.LBB0_20:                               # %for.end48
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 98 5 is_stmt 1                # spec_mem_io/spec_mem_io.c:98:5
	xorl	%eax, %eax
	.loc	0 98 5 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:98:5
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
.Ltmp50:
	#DEBUG_VALUE: spec_mem_init:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp51:
	#DEBUG_VALUE: spec_mem_init:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp52:
.LBB0_6:                                # %if.then13
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	#DEBUG_VALUE: limit <- $r15
	.loc	0 82 14 is_stmt 1               # spec_mem_io/spec_mem_io.c:82:14
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 82 98 is_stmt 0               # spec_mem_io/spec_mem_io.c:82:98
	addq	$1048576, %r15                  # imm = 0x100000
.Ltmp53:
	.loc	0 82 6                          # spec_mem_io/spec_mem_io.c:82:6
	movl	$.L.str.1, %esi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp54:
	.loc	0 83 6 is_stmt 1                # spec_mem_io/spec_mem_io.c:83:6
	movl	$1, %edi
	callq	exit@PLT
.Ltmp55:
.LBB0_21:                               # %if.then24
	#DEBUG_VALUE: spec_mem_init:fds <- $r13
	#DEBUG_VALUE: spec_mem_init:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_init:touch_all <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_init:i <- $r14d
	#DEBUG_VALUE: limit <- $r15
	.loc	0 88 14                         # spec_mem_io/spec_mem_io.c:88:14
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 88 6 is_stmt 0                # spec_mem_io/spec_mem_io.c:88:6
	movl	$.L.str.2, %esi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	movq	%r13, %r8
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp56:
	.loc	0 89 6 is_stmt 1                # spec_mem_io/spec_mem_io.c:89:6
	movl	$1, %edi
	callq	exit@PLT
.Ltmp57:
.Lfunc_end0:
	.size	spec_mem_init, .Lfunc_end0-spec_mem_init
	.cfi_endproc
	.file	4 "/usr/include" "stdio.h" md5 0xf31eefcc3f15835fc5a4023a625cf609
	.file	5 "/usr/include/x86_64-linux-gnu/bits/types" "struct_FILE.h" md5 0x1bad07471b7974df4ecc1d1c2ca207e6
	.file	6 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	7 "/usr/include/x86_64-linux-gnu/bits/types" "FILE.h" md5 0x571f9fb6223c42439075fdde11a0de5d
	.file	8 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
                                        # -- End function
	.globl	spec_mem_sum                    # -- Begin function spec_mem_sum
	.p2align	4, 0x90
	.type	spec_mem_sum,@function
spec_mem_sum:                           # @spec_mem_sum
.Lfunc_begin1:
	.loc	0 101 0                         # spec_mem_io/spec_mem_io.c:101:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_sum:fd <- $rdi
	#DEBUG_VALUE: spec_mem_sum:sum <- $rsi
	#DEBUG_VALUE: spec_mem_sum:bits <- $edx
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
	subq	$208, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
.Ltmp58:
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 0
	.loc	0 107 14 prologue_end           # spec_mem_io/spec_mem_io.c:107:14
	cmpl	$512, %edx                      # imm = 0x200
.Ltmp59:
	.loc	0 107 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:107:9
	jne	.LBB1_7
.Ltmp60:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: spec_mem_sum:fd <- $rdi
	#DEBUG_VALUE: spec_mem_sum:sum <- $rsi
	#DEBUG_VALUE: spec_mem_sum:bits <- $edx
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 0
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	movq	%rsi, %rbx
.Ltmp61:
	.loc	0 112 13 is_stmt 1              # spec_mem_io/spec_mem_io.c:112:13
	testq	%rsi, %rsi
.Ltmp62:
	.loc	0 112 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:112:9
	je	.LBB1_6
.Ltmp63:
# %bb.2:                                # %if.then2
	#DEBUG_VALUE: spec_mem_sum:fd <- $rdi
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- $edx
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 0
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	movq	%rdi, %r14
	movq	%rsp, %rdi
.Ltmp64:
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	.loc	0 113 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:113:9
	callq	sha_init@PLT
.Ltmp65:
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 2147483647
	.loc	0 114 59                        # spec_mem_io/spec_mem_io.c:114:59
	movq	8(%r14), %rax
	.loc	0 114 53 is_stmt 0              # spec_mem_io/spec_mem_io.c:114:53
	testq	%rax, %rax
.Ltmp66:
	.loc	0 114 9                         # spec_mem_io/spec_mem_io.c:114:9
	jle	.LBB1_5
.Ltmp67:
# %bb.3:                                # %for.body.lr.ph
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 2147483647
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	movl	$2147483647, %r15d              # imm = 0x7FFFFFFF
	xorl	%r13d, %r13d
	movq	%rsp, %r12
.Ltmp68:
	.p2align	4, 0x90
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_sum:chunk <- $r15
	#DEBUG_VALUE: spec_mem_sum:currpos <- $r13
	.loc	0 115 25 is_stmt 1              # spec_mem_io/spec_mem_io.c:115:25
	subq	%r13, %rax
.Ltmp69:
	.loc	0 115 17 is_stmt 0              # spec_mem_io/spec_mem_io.c:115:17
	cmpq	%r15, %rax
	cmovlq	%rax, %r15
.Ltmp70:
	#DEBUG_VALUE: spec_mem_sum:chunk <- $r15
	.loc	0 0 17                          # spec_mem_io/spec_mem_io.c:0:17
	movq	32(%r14), %rsi
	.loc	0 117 39 is_stmt 1              # spec_mem_io/spec_mem_io.c:117:39
	addq	%r13, %rsi
	.loc	0 117 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:117:13
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	sha_process@PLT
.Ltmp71:
	.loc	0 114 72 is_stmt 1              # spec_mem_io/spec_mem_io.c:114:72
	addq	%r15, %r13
.Ltmp72:
	#DEBUG_VALUE: spec_mem_sum:currpos <- $r13
	.loc	0 114 59 is_stmt 0              # spec_mem_io/spec_mem_io.c:114:59
	movq	8(%r14), %rax
	.loc	0 114 53                        # spec_mem_io/spec_mem_io.c:114:53
	cmpq	%rax, %r13
.Ltmp73:
	.loc	0 114 9                         # spec_mem_io/spec_mem_io.c:114:9
	jl	.LBB1_4
.Ltmp74:
.LBB1_5:                                # %for.end
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	movq	%rsp, %rdi
	.loc	0 119 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:119:9
	movq	%rbx, %rsi
	callq	sha_done@PLT
.Ltmp75:
.LBB1_6:                                # %if.end10
	#DEBUG_VALUE: spec_mem_sum:fd <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 121 5                         # spec_mem_io/spec_mem_io.c:121:5
	movq	%rbx, %rax
	.loc	0 121 5 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:121:5
	addq	$208, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
.Ltmp76:
	#DEBUG_VALUE: spec_mem_sum:sum <- $rax
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
.Ltmp77:
.LBB1_7:                                # %if.then
	.cfi_def_cfa_offset 256
	#DEBUG_VALUE: spec_mem_sum:fd <- $rdi
	#DEBUG_VALUE: spec_mem_sum:sum <- $rsi
	#DEBUG_VALUE: spec_mem_sum:bits <- $edx
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 0
	.loc	0 108 15 is_stmt 1              # spec_mem_io/spec_mem_io.c:108:15
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 108 7 is_stmt 0               # spec_mem_io/spec_mem_io.c:108:7
	movl	$.L.str.4, %edi
.Ltmp78:
	#DEBUG_VALUE: spec_mem_sum:fd <- [DW_OP_LLVM_entry_value 1] $rdi
	movl	$40, %esi
.Ltmp79:
	#DEBUG_VALUE: spec_mem_sum:sum <- [DW_OP_LLVM_entry_value 1] $rsi
	movl	$1, %edx
.Ltmp80:
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	callq	fwrite@PLT
.Ltmp81:
	.loc	0 109 7 is_stmt 1               # spec_mem_io/spec_mem_io.c:109:7
	movl	$1, %edi
	callq	exit@PLT
.Ltmp82:
.Lfunc_end1:
	.size	spec_mem_sum, .Lfunc_end1-spec_mem_sum
	.cfi_endproc
	.file	9 "sha-2" "sha512.h" md5 0x81a9972f2f4bb45d8b6de350a024786c
	.file	10 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function spec_mem_load
.LCPI2_0:
	.zero	16
	.text
	.globl	spec_mem_load
	.p2align	4, 0x90
	.type	spec_mem_load,@function
spec_mem_load:                          # @spec_mem_load
.Lfunc_begin2:
	.loc	0 124 0                         # spec_mem_io/spec_mem_io.c:124:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_load:fds <- $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_load:num <- $edx
	#DEBUG_VALUE: spec_mem_load:filename <- $rcx
	#DEBUG_VALUE: spec_mem_load:size <- $r8
	#DEBUG_VALUE: spec_mem_load:tmpfd <- $r9d
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
.Ltmp83:
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	movl	%r9d, %ebp
	movq	%r8, 32(%rsp)                   # 8-byte Spill
.Ltmp84:
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	movq	%rcx, %r13
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %r14
	movslq	312(%rsp), %rdi
.Ltmp85:
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
.Ltmp86:
	.loc	0 131 59 prologue_end           # spec_mem_io/spec_mem_io.c:131:59
	shrq	$3, %rdi
	.loc	0 131 32 is_stmt 0              # spec_mem_io/spec_mem_io.c:131:32
	callq	malloc@PLT
.Ltmp87:
	#DEBUG_VALUE: spec_mem_load:tmpfd <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- $r13
	#DEBUG_VALUE: spec_mem_load:num <- $r15d
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rax
	.loc	0 132 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:132:17
	testq	%rax, %rax
.Ltmp88:
	.loc	0 132 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:132:9
	je	.LBB2_52
.Ltmp89:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:num <- $r15d
	#DEBUG_VALUE: spec_mem_load:filename <- $r13
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- $ebp
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rax
	.loc	0 138 15 is_stmt 1              # spec_mem_io/spec_mem_io.c:138:15
	testl	%ebp, %ebp
	.loc	0 138 19 is_stmt 0              # spec_mem_io/spec_mem_io.c:138:19
	js	.LBB2_3
.Ltmp90:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:num <- $r15d
	#DEBUG_VALUE: spec_mem_load:filename <- $r13
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- $ebp
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rax
	cmpl	%r12d, %ebp
	jae	.LBB2_3
.Ltmp91:
# %bb.5:                                # %if.end10
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:num <- $r15d
	#DEBUG_VALUE: spec_mem_load:filename <- $r13
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- $ebp
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rax
	.loc	0 0 19                          # spec_mem_io/spec_mem_io.c:0:19
	movl	%ebp, 4(%rsp)                   # 4-byte Spill
.Ltmp92:
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	movl	%r15d, %ebp
.Ltmp93:
	.loc	0 142 13 is_stmt 1              # spec_mem_io/spec_mem_io.c:142:13
	testl	%r15d, %r15d
	.loc	0 142 17 is_stmt 0              # spec_mem_io/spec_mem_io.c:142:17
	js	.LBB2_7
.Ltmp94:
# %bb.6:                                # %if.end10
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- $r13
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rax
	cmpl	%r12d, %ebp
	jae	.LBB2_7
.Ltmp95:
# %bb.8:                                # %if.end18
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- $r13
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rax
	.loc	0 0 17                          # spec_mem_io/spec_mem_io.c:0:17
	movq	%rax, %rbx
	movq	%r13, 8(%rsp)                   # 8-byte Spill
.Ltmp96:
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_plus_uconst 8] [$rsp+0]
	.loc	0 151 10 is_stmt 1              # spec_mem_io/spec_mem_io.c:151:10
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
.Ltmp97:
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	callq	open@PLT
.Ltmp98:
	#DEBUG_VALUE: spec_mem_load:fd <- $eax
	.loc	0 152 12                        # spec_mem_io/spec_mem_io.c:152:12
	testl	%eax, %eax
.Ltmp99:
	.loc	0 152 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:152:9
	js	.LBB2_53
.Ltmp100:
# %bb.9:                                # %if.end26
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_load:fd <- $eax
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	movl	%eax, %r12d
.Ltmp101:
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 157 39 is_stmt 1              # spec_mem_io/spec_mem_io.c:157:39
	movl	4(%rsp), %eax                   # 4-byte Reload
.Ltmp102:
	.loc	0 0 39 is_stmt 0                # spec_mem_io/spec_mem_io.c:0:39
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	.loc	0 157 39                        # spec_mem_io/spec_mem_io.c:157:39
	leaq	(%rax,%rax,4), %r15
	.loc	0 157 33                        # spec_mem_io/spec_mem_io.c:157:33
	leaq	(%r14,%r15,8), %r13
	addq	$8, %r13
	.loc	0 157 37                        # spec_mem_io/spec_mem_io.c:157:37
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r14,%r15,8)
	movl	$0, 24(%r14,%r15,8)
	.loc	0 158 37 is_stmt 1              # spec_mem_io/spec_mem_io.c:158:37
	movq	32(%r14,%r15,8), %rsi
	.loc	0 158 17 is_stmt 0              # spec_mem_io/spec_mem_io.c:158:17
	movl	$266338304, %edx                # imm = 0xFE00000
	movl	%r12d, %edi
	callq	read@PLT
.Ltmp103:
	#DEBUG_VALUE: spec_mem_load:fd <- $r12d
	.loc	0 158 72                        # spec_mem_io/spec_mem_io.c:158:72
	testq	%rax, %rax
	.loc	0 158 5                         # spec_mem_io/spec_mem_io.c:158:5
	jle	.LBB2_15
.Ltmp104:
# %bb.10:                               # %while.body.preheader
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_load:fd <- $r12d
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	leaq	(%r14,%r15,8), %r15
	jmp	.LBB2_11
.Ltmp105:
	.p2align	4, 0x90
.LBB2_14:                               # %if.end55
                                        #   in Loop: Header=BB2_11 Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_load:fd <- $r12d
	.loc	0 158 41                        # spec_mem_io/spec_mem_io.c:158:41
	addq	32(%r15), %rsi
	.loc	0 158 17                        # spec_mem_io/spec_mem_io.c:158:17
	movl	$266338304, %edx                # imm = 0xFE00000
	movl	%r12d, %edi
	callq	read@PLT
.Ltmp106:
	#DEBUG_VALUE: spec_mem_load:rc <- $rax
	.loc	0 158 72                        # spec_mem_io/spec_mem_io.c:158:72
	testq	%rax, %rax
	.loc	0 158 5                         # spec_mem_io/spec_mem_io.c:158:5
	jle	.LBB2_15
.Ltmp107:
.LBB2_11:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_load:fd <- $r12d
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	movq	(%r13), %rsi
.Ltmp108:
	.loc	0 159 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:159:17
	addq	%rax, %rsi
	movq	%rsi, (%r13)
.Ltmp109:
	.loc	0 160 16                        # spec_mem_io/spec_mem_io.c:160:16
	cmpq	$266338304, %rax                # imm = 0xFE00000
.Ltmp110:
	.loc	0 160 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:160:13
	jb	.LBB2_16
.Ltmp111:
# %bb.12:                               # %if.end45
                                        #   in Loop: Header=BB2_11 Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_load:fd <- $r12d
	.loc	0 170 28 is_stmt 1              # spec_mem_io/spec_mem_io.c:170:28
	leaq	266338304(%rsi), %rax
	.loc	0 170 41 is_stmt 0              # spec_mem_io/spec_mem_io.c:170:41
	cmpq	(%r15), %rax
.Ltmp112:
	.loc	0 170 13                        # spec_mem_io/spec_mem_io.c:170:13
	jle	.LBB2_14
.Ltmp113:
# %bb.13:                               # %if.then54
                                        #   in Loop: Header=BB2_11 Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_load:fd <- $r12d
	.loc	0 174 13 is_stmt 1              # spec_mem_io/spec_mem_io.c:174:13
	movl	$.L.str.9, %edx
	movq	%r14, %rdi
	movl	4(%rsp), %esi                   # 4-byte Reload
	callq	fd_grow
.Ltmp114:
	.loc	0 158 54                        # spec_mem_io/spec_mem_io.c:158:54
	movq	(%r13), %rsi
	jmp	.LBB2_14
.Ltmp115:
.LBB2_15:                               # %while.end
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_load:fd <- $r12d
	.loc	0 177 12                        # spec_mem_io/spec_mem_io.c:177:12
	testq	%rax, %rax
.Ltmp116:
	.loc	0 177 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:177:9
	js	.LBB2_54
.Ltmp117:
.LBB2_16:                               # %if.end62
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_load:fd <- $r12d
	.loc	0 181 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:181:5
	movl	%r12d, %edi
	callq	close@PLT
.Ltmp118:
	.loc	0 184 20                        # spec_mem_io/spec_mem_io.c:184:20
	movl	%ebp, %eax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %r15
	.loc	0 184 29 is_stmt 0              # spec_mem_io/spec_mem_io.c:184:29
	leaq	(%r14,%r15), %rax
	addq	$8, %rax
.Ltmp119:
	#DEBUG_VALUE: spec_uncompress:in <- [DW_OP_plus_uconst 4, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_uncompress:out <- $ebp
	.loc	0 0 29                          # spec_mem_io/spec_mem_io.c:0:29
	movq	%rax, 8(%rsp)                   # 8-byte Spill
.Ltmp120:
	#DEBUG_VALUE: spec_mem_load:filename <- undef
	.loc	0 184 18                        # spec_mem_io/spec_mem_io.c:184:18
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r14,%r15)
.Ltmp121:
	.loc	0 549 19 is_stmt 1              # spec_mem_io/spec_mem_io.c:549:19
	movq	spec_fd(%rip), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	.loc	0 549 31 is_stmt 0              # spec_mem_io/spec_mem_io.c:549:31
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %r12
.Ltmp122:
	.loc	0 0 31                          # spec_mem_io/spec_mem_io.c:0:31
	movl	%ebp, %esi
	.loc	0 549 31                        # spec_mem_io/spec_mem_io.c:549:31
	movl	24(%rax,%r12), %ebp
.Ltmp123:
	#DEBUG_VALUE: spec_uncompress:out <- $esi
	#DEBUG_VALUE: spec_mem_load:num <- $esi
	#DEBUG_VALUE: spec_uncompress:in_open <- $ebp
	.loc	0 550 33 is_stmt 1              # spec_mem_io/spec_mem_io.c:550:33
	movl	24(%rax,%r15), %ecx
.Ltmp124:
	#DEBUG_VALUE: spec_uncompress:out_open <- $ecx
	.loc	0 0 33 is_stmt 0                # spec_mem_io/spec_mem_io.c:0:33
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
.Ltmp125:
	#DEBUG_VALUE: spec_uncompress:out_open <- [DW_OP_plus_uconst 16, DW_OP_deref] $rsp
	.loc	0 551 42 is_stmt 1              # spec_mem_io/spec_mem_io.c:551:42
	movl	$1, 24(%rax,%r15)
	.loc	0 551 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:551:5
	movq	spec_fd(%rip), %rax
	.loc	0 551 22                        # spec_mem_io/spec_mem_io.c:551:22
	movl	$1, 24(%rax,%r12)
	movl	4(%rsp), %edi                   # 4-byte Reload
	.loc	0 555 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:555:5
	callq	uncompressStream@PLT
.Ltmp126:
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 557 5                         # spec_mem_io/spec_mem_io.c:557:5
	movq	spec_fd(%rip), %rax
	.loc	0 557 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:557:22
	movl	%ebp, 24(%rax,%r12)
	movq	8(%rsp), %rbp                   # 8-byte Reload
.Ltmp127:
	.loc	0 558 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:558:5
	movq	spec_fd(%rip), %rax
	movl	16(%rsp), %ecx                  # 4-byte Reload
	.loc	0 558 23 is_stmt 0              # spec_mem_io/spec_mem_io.c:558:23
	movl	%ecx, 24(%rax,%r15)
.Ltmp128:
	.loc	0 186 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:186:5
	cmpl	$2, dbglvl(%rip)
.Ltmp129:
	.loc	0 186 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:186:5
	jl	.LBB2_18
.Ltmp130:
# %bb.17:                               # %if.then72
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 186 5                         # spec_mem_io/spec_mem_io.c:186:5
	movq	(%r13), %rsi
	movq	(%rbp), %rdx
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp131:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp132:
.LBB2_18:                               # %if.end81
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:fd <- undef
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 187 20 is_stmt 1              # spec_mem_io/spec_mem_io.c:187:20
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r13)
.Ltmp133:
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 0
	.loc	0 107 14                        # spec_mem_io/spec_mem_io.c:107:14
	cmpl	$512, 24(%rsp)                  # 4-byte Folded Reload
                                        # imm = 0x200
.Ltmp134:
	.loc	0 107 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:107:9
	jne	.LBB2_55
.Ltmp135:
# %bb.19:                               # %if.then2.i
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 0
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	movq	304(%rsp), %r12
	addq	%r15, %r14
.Ltmp136:
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	leaq	40(%rsp), %rdi
.Ltmp137:
	.loc	0 113 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:113:9
	callq	sha_init@PLT
.Ltmp138:
	#DEBUG_VALUE: spec_mem_sum:chunk <- 2147483647
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	.loc	0 114 59                        # spec_mem_io/spec_mem_io.c:114:59
	movq	(%rbp), %rax
	.loc	0 114 53 is_stmt 0              # spec_mem_io/spec_mem_io.c:114:53
	testq	%rax, %rax
.Ltmp139:
	.loc	0 114 9                         # spec_mem_io/spec_mem_io.c:114:9
	jle	.LBB2_24
.Ltmp140:
# %bb.20:                               # %for.body.lr.ph.i
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 2147483647
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	movl	$2147483647, %r13d              # imm = 0x7FFFFFFF
	xorl	%r15d, %r15d
	leaq	40(%rsp), %rbp
.Ltmp141:
	.p2align	4, 0x90
.LBB2_21:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:chunk <- $r13
	#DEBUG_VALUE: spec_mem_sum:currpos <- $r15
	.loc	0 115 25 is_stmt 1              # spec_mem_io/spec_mem_io.c:115:25
	subq	%r15, %rax
.Ltmp142:
	.loc	0 115 17 is_stmt 0              # spec_mem_io/spec_mem_io.c:115:17
	cmpq	%r13, %rax
	cmovlq	%rax, %r13
.Ltmp143:
	#DEBUG_VALUE: spec_mem_sum:chunk <- $r13
	.loc	0 0 17                          # spec_mem_io/spec_mem_io.c:0:17
	movq	32(%r14), %rsi
	.loc	0 117 39 is_stmt 1              # spec_mem_io/spec_mem_io.c:117:39
	addq	%r15, %rsi
	.loc	0 117 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:117:13
	movq	%rbp, %rdi
	movl	%r13d, %edx
	callq	sha_process@PLT
.Ltmp144:
	.loc	0 114 72 is_stmt 1              # spec_mem_io/spec_mem_io.c:114:72
	addq	%r13, %r15
.Ltmp145:
	#DEBUG_VALUE: spec_mem_sum:currpos <- $r15
	.loc	0 114 59 is_stmt 0              # spec_mem_io/spec_mem_io.c:114:59
	movq	8(%r14), %rax
	.loc	0 114 53                        # spec_mem_io/spec_mem_io.c:114:53
	cmpq	%rax, %r15
.Ltmp146:
	.loc	0 114 9                         # spec_mem_io/spec_mem_io.c:114:9
	jl	.LBB2_21
.Ltmp147:
# %bb.22:                               # %spec_mem_sum.exit
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:currpos <- $r15
	#DEBUG_VALUE: spec_mem_sum:chunk <- $r13
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	leaq	40(%rsp), %rdi
	.loc	0 119 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:119:9
	movq	%rbx, %rsi
	callq	sha_done@PLT
.Ltmp148:
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 625 17                        # spec_mem_io/spec_mem_io.c:625:17
	testq	%r12, %r12
	movq	8(%rsp), %rbp                   # 8-byte Reload
	.loc	0 625 25 is_stmt 0              # spec_mem_io/spec_mem_io.c:625:25
	jne	.LBB2_25
	jmp	.LBB2_23
.Ltmp149:
.LBB2_24:                               # %spec_mem_sum.exit.thread
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 2147483647
	.loc	0 0 25                          # spec_mem_io/spec_mem_io.c:0:25
	leaq	40(%rsp), %rdi
.Ltmp150:
	.loc	0 119 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:119:9
	movq	%rbx, %rsi
	callq	sha_done@PLT
.Ltmp151:
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 625 17                        # spec_mem_io/spec_mem_io.c:625:17
	testq	%r12, %r12
	.loc	0 625 25 is_stmt 0              # spec_mem_io/spec_mem_io.c:625:25
	je	.LBB2_23
.Ltmp152:
.LBB2_25:                               # %for.body.i267.preheader
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 25                          # spec_mem_io/spec_mem_io.c:0:25
	movl	$3, %edx
	movq	32(%rsp), %r13                  # 8-byte Reload
.Ltmp153:
	.p2align	4, 0x90
.LBB2_26:                               # %for.body.i267
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_constu 3, DW_OP_minus, DW_OP_stack_value] $rdx
	.loc	0 629 13 is_stmt 1              # spec_mem_io/spec_mem_io.c:629:13
	movzbl	-3(%r12,%rdx), %eax
	.loc	0 629 27 is_stmt 0              # spec_mem_io/spec_mem_io.c:629:27
	movzbl	-3(%rbx,%rdx), %ecx
	.loc	0 629 24                        # spec_mem_io/spec_mem_io.c:629:24
	cmpb	%cl, %al
.Ltmp154:
	.loc	0 629 13                        # spec_mem_io/spec_mem_io.c:629:13
	jne	.LBB2_27
.Ltmp155:
# %bb.31:                               # %for.inc.i
                                        #   in Loop: Header=BB2_26 Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_constu 3, DW_OP_minus, DW_OP_stack_value] $rdx
	#DEBUG_VALUE: i <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $rdx
	.loc	0 629 13                        # spec_mem_io/spec_mem_io.c:629:13
	movzbl	-2(%r12,%rdx), %eax
	.loc	0 629 27                        # spec_mem_io/spec_mem_io.c:629:27
	movzbl	-2(%rbx,%rdx), %ecx
	.loc	0 629 24                        # spec_mem_io/spec_mem_io.c:629:24
	cmpb	%cl, %al
.Ltmp156:
	.loc	0 629 13                        # spec_mem_io/spec_mem_io.c:629:13
	jne	.LBB2_28
.Ltmp157:
# %bb.32:                               # %for.inc.i.1
                                        #   in Loop: Header=BB2_26 Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $rdx
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rdx
	.loc	0 629 13                        # spec_mem_io/spec_mem_io.c:629:13
	movzbl	-1(%r12,%rdx), %eax
	.loc	0 629 27                        # spec_mem_io/spec_mem_io.c:629:27
	movzbl	-1(%rbx,%rdx), %ecx
	.loc	0 629 24                        # spec_mem_io/spec_mem_io.c:629:24
	cmpb	%cl, %al
.Ltmp158:
	.loc	0 629 13                        # spec_mem_io/spec_mem_io.c:629:13
	jne	.LBB2_29
.Ltmp159:
# %bb.33:                               # %for.inc.i.2
                                        #   in Loop: Header=BB2_26 Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rdx
	#DEBUG_VALUE: i <- $rdx
	.loc	0 629 13                        # spec_mem_io/spec_mem_io.c:629:13
	movzbl	(%r12,%rdx), %eax
	.loc	0 629 27                        # spec_mem_io/spec_mem_io.c:629:27
	movzbl	(%rbx,%rdx), %ecx
	.loc	0 629 24                        # spec_mem_io/spec_mem_io.c:629:24
	cmpb	%cl, %al
.Ltmp160:
	.loc	0 629 13                        # spec_mem_io/spec_mem_io.c:629:13
	jne	.LBB2_30
.Ltmp161:
# %bb.34:                               # %for.inc.i.3
                                        #   in Loop: Header=BB2_26 Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- $rdx
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rdx
	.loc	0 628 22 is_stmt 1              # spec_mem_io/spec_mem_io.c:628:22
	addq	$4, %rdx
.Ltmp162:
	cmpq	$67, %rdx
.Ltmp163:
	.loc	0 628 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:628:5
	jne	.LBB2_26
.Ltmp164:
# %bb.35:                               # %if.end96
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 199 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:199:5
	cmpl	$2, dbglvl(%rip)
.Ltmp165:
	.loc	0 199 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:199:5
	jl	.LBB2_37
.Ltmp166:
# %bb.36:                               # %if.then99
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 199 5                         # spec_mem_io/spec_mem_io.c:199:5
	movl	$.L.str.16, %edi
	movl	$512, %esi                      # imm = 0x200
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp167:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp168:
.LBB2_37:                               # %if.end102
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 201 18 is_stmt 1              # spec_mem_io/spec_mem_io.c:201:18
	movq	(%rbp), %rdi
	.loc	0 201 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:201:22
	cmpq	%r13, %rdi
.Ltmp169:
	.loc	0 201 9                         # spec_mem_io/spec_mem_io.c:201:9
	jle	.LBB2_41
.Ltmp170:
# %bb.38:                               # %if.then108
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 203 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:203:9
	cmpl	$2, dbglvl(%rip)
.Ltmp171:
	.loc	0 203 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:203:9
	jl	.LBB2_40
.Ltmp172:
# %bb.39:                               # %if.then111
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 203 9                         # spec_mem_io/spec_mem_io.c:203:9
	movl	$.L.str.17, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp173:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp174:
.LBB2_40:                               # %if.end118.thread
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 204 22 is_stmt 1              # spec_mem_io/spec_mem_io.c:204:22
	movq	%r13, 8(%r14)
.Ltmp175:
	.loc	0 206 18                        # spec_mem_io/spec_mem_io.c:206:18
	movq	$0, 16(%r14)
	.loc	0 208 5                         # spec_mem_io/spec_mem_io.c:208:5
	jmp	.LBB2_46
.Ltmp176:
.LBB2_41:                               # %if.end118
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 206 18                        # spec_mem_io/spec_mem_io.c:206:18
	movq	$0, 16(%r14)
	.loc	0 208 5                         # spec_mem_io/spec_mem_io.c:208:5
	jge	.LBB2_46
.Ltmp177:
# %bb.42:                               # %while.body128.lr.ph
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 0 5 is_stmt 0                 # spec_mem_io/spec_mem_io.c:0:5
	movq	stdout@GOTPCREL(%rip), %r15
	jmp	.LBB2_43
.Ltmp178:
	.p2align	4, 0x90
.LBB2_45:                               # %if.end147
                                        #   in Loop: Header=BB2_43 Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: tmp <- $r12
	.loc	0 212 18 is_stmt 1              # spec_mem_io/spec_mem_io.c:212:18
	movq	32(%r14), %rsi
	.loc	0 212 21 is_stmt 0              # spec_mem_io/spec_mem_io.c:212:21
	addq	%rsi, %rdi
	.loc	0 212 2                         # spec_mem_io/spec_mem_io.c:212:2
	movq	%r12, %rdx
	callq	memcpy@PLT
.Ltmp179:
	.loc	0 213 15 is_stmt 1              # spec_mem_io/spec_mem_io.c:213:15
	addq	8(%r14), %r12
.Ltmp180:
	movq	%r12, 8(%r14)
	movq	%r12, %rdi
.Ltmp181:
	.loc	0 208 25                        # spec_mem_io/spec_mem_io.c:208:25
	cmpq	%r13, %r12
	.loc	0 208 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:208:5
	jge	.LBB2_46
.Ltmp182:
.LBB2_43:                               # %while.body128
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 209 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:209:21
	movq	%r13, %r12
	subq	%rdi, %r12
.Ltmp183:
	#DEBUG_VALUE: tmp <- $r12
	.loc	0 210 6                         # spec_mem_io/spec_mem_io.c:210:6
	cmpq	%rdi, %r12
	cmovgeq	%rdi, %r12
.Ltmp184:
	#DEBUG_VALUE: tmp <- $r12
	.loc	0 211 2                         # spec_mem_io/spec_mem_io.c:211:2
	cmpl	$4, dbglvl(%rip)
.Ltmp185:
	.loc	0 211 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:211:2
	jl	.LBB2_45
.Ltmp186:
# %bb.44:                               # %if.then144
                                        #   in Loop: Header=BB2_43 Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: tmp <- $r12
	.loc	0 211 2                         # spec_mem_io/spec_mem_io.c:211:2
	movl	$.L.str.18, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp187:
	movq	(%r15), %rdi
	callq	fflush@PLT
.Ltmp188:
	.loc	0 212 31 is_stmt 1              # spec_mem_io/spec_mem_io.c:212:31
	movq	(%rbp), %rdi
	jmp	.LBB2_45
.Ltmp189:
.LBB2_46:                               # %if.then2.i274
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 0
	.loc	0 0 31 is_stmt 0                # spec_mem_io/spec_mem_io.c:0:31
	leaq	40(%rsp), %rdi
.Ltmp190:
	.loc	0 113 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:113:9
	callq	sha_init@PLT
.Ltmp191:
	#DEBUG_VALUE: spec_mem_sum:chunk <- 2147483647
	.loc	0 114 59                        # spec_mem_io/spec_mem_io.c:114:59
	movq	(%rbp), %rax
	.loc	0 114 53 is_stmt 0              # spec_mem_io/spec_mem_io.c:114:53
	testq	%rax, %rax
.Ltmp192:
	.loc	0 114 9                         # spec_mem_io/spec_mem_io.c:114:9
	jle	.LBB2_49
.Ltmp193:
# %bb.47:                               # %for.body.lr.ph.i278
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 2147483647
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	movl	$2147483647, %r15d              # imm = 0x7FFFFFFF
	xorl	%r13d, %r13d
	leaq	40(%rsp), %r12
.Ltmp194:
	.p2align	4, 0x90
.LBB2_48:                               # %for.body.i280
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:chunk <- $r15
	#DEBUG_VALUE: spec_mem_sum:currpos <- $r13
	.loc	0 115 25 is_stmt 1              # spec_mem_io/spec_mem_io.c:115:25
	subq	%r13, %rax
.Ltmp195:
	.loc	0 115 17 is_stmt 0              # spec_mem_io/spec_mem_io.c:115:17
	cmpq	%r15, %rax
	cmovlq	%rax, %r15
.Ltmp196:
	#DEBUG_VALUE: spec_mem_sum:chunk <- $r15
	.loc	0 0 17                          # spec_mem_io/spec_mem_io.c:0:17
	movq	32(%r14), %rsi
	.loc	0 117 39 is_stmt 1              # spec_mem_io/spec_mem_io.c:117:39
	addq	%r13, %rsi
	.loc	0 117 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:117:13
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	sha_process@PLT
.Ltmp197:
	.loc	0 114 72 is_stmt 1              # spec_mem_io/spec_mem_io.c:114:72
	addq	%r15, %r13
.Ltmp198:
	#DEBUG_VALUE: spec_mem_sum:currpos <- $r13
	.loc	0 114 59 is_stmt 0              # spec_mem_io/spec_mem_io.c:114:59
	movq	8(%r14), %rax
	.loc	0 114 53                        # spec_mem_io/spec_mem_io.c:114:53
	cmpq	%rax, %r13
.Ltmp199:
	.loc	0 114 9                         # spec_mem_io/spec_mem_io.c:114:9
	jl	.LBB2_48
.Ltmp200:
.LBB2_49:                               # %spec_mem_sum.exit289
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:fd <- $r14
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	leaq	40(%rsp), %rdi
	.loc	0 119 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:119:9
	movq	%rbx, %rsi
	callq	sha_done@PLT
.Ltmp201:
	.loc	0 218 5                         # spec_mem_io/spec_mem_io.c:218:5
	movl	$.L.str.19, %edi
	movl	$512, %esi                      # imm = 0x200
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp202:
	.loc	0 219 15                        # spec_mem_io/spec_mem_io.c:219:15
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %r14
.Ltmp203:
	#DEBUG_VALUE: print_sum:out <- $r14
	#DEBUG_VALUE: print_sum:sum <- $rbx
	#DEBUG_VALUE: print_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- 0
	.loc	0 0 15 is_stmt 0                # spec_mem_io/spec_mem_io.c:0:15
	xorl	%r15d, %r15d
.Ltmp204:
	.p2align	4, 0x90
.LBB2_50:                               # %for.body.i293
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: print_sum:out <- $r14
	#DEBUG_VALUE: print_sum:sum <- $rbx
	#DEBUG_VALUE: print_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- $r15
	.loc	0 575 26 is_stmt 1              # spec_mem_io/spec_mem_io.c:575:26
	movzbl	(%rbx,%r15), %edx
	.loc	0 575 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:575:5
	movl	$.L.str.74, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp205:
	.loc	0 574 31 is_stmt 1              # spec_mem_io/spec_mem_io.c:574:31
	incq	%r15
.Ltmp206:
	#DEBUG_VALUE: i <- $r15
	.loc	0 574 20 is_stmt 0              # spec_mem_io/spec_mem_io.c:574:20
	cmpq	$64, %r15
.Ltmp207:
	.loc	0 574 3                         # spec_mem_io/spec_mem_io.c:574:3
	jne	.LBB2_50
.Ltmp208:
# %bb.51:                               # %print_sum.exit
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 220 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:220:5
	movl	$10, %edi
	callq	putchar@PLT
.Ltmp209:
	.loc	0 222 5                         # spec_mem_io/spec_mem_io.c:222:5
	movq	%rbx, %rax
	.loc	0 222 5 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:222:5
	addq	$248, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp210:
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rax
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
.Ltmp211:
.LBB2_27:                               # %if.then8.isplitsplitsplit
	.cfi_def_cfa_offset 304
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_constu 3, DW_OP_minus, DW_OP_stack_value] $rdx
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	addq	$-3, %rdx
	jmp	.LBB2_30
.Ltmp212:
.LBB2_28:                               # %for.inc.i.if.then8.isplitsplit_crit_edge
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_constu 2, DW_OP_minus, DW_OP_stack_value] $rdx
	.loc	0 629 13 is_stmt 1              # spec_mem_io/spec_mem_io.c:629:13
	addq	$-2, %rdx
.Ltmp213:
	jmp	.LBB2_30
.Ltmp214:
.LBB2_29:                               # %for.inc.i.1.if.then8.isplit_crit_edge
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_minus, DW_OP_stack_value] $rdx
	decq	%rdx
.Ltmp215:
.LBB2_30:                               # %if.then8.i
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: compare_sum:ref_sum <- $r12
	#DEBUG_VALUE: compare_sum:generated <- $rbx
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 629 27 is_stmt 0              # spec_mem_io/spec_mem_io.c:629:27
	movzbl	%cl, %r8d
	.loc	0 629 13                        # spec_mem_io/spec_mem_io.c:629:13
	movzbl	%al, %ecx
.Ltmp216:
	.loc	0 630 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:630:21
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 630 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:630:13
	movl	$.L.str.76, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp217:
.LBB2_23:                               # %if.then91
	#DEBUG_VALUE: spec_mem_load:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	.loc	0 191 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:191:17
	movq	stderr@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	.loc	0 191 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:191:9
	movl	$.L.str.12, %esi
	movl	$512, %edx                      # imm = 0x200
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp218:
	.loc	0 192 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:192:17
	movq	(%r14), %rcx
	.loc	0 192 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:192:9
	movl	$.L.str.13, %edi
	movl	$13, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp219:
	.loc	0 193 19 is_stmt 1              # spec_mem_io/spec_mem_io.c:193:19
	movq	(%r14), %rdi
	.loc	0 193 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:193:9
	movq	%rbx, %rsi
	movl	$512, %edx                      # imm = 0x200
	callq	print_sum
.Ltmp220:
	.loc	0 194 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:194:17
	movq	(%r14), %rcx
	.loc	0 194 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:194:9
	movl	$.L.str.14, %edi
	movl	$14, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp221:
	.loc	0 195 19 is_stmt 1              # spec_mem_io/spec_mem_io.c:195:19
	movq	(%r14), %rdi
	.loc	0 195 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:195:9
	movq	%r12, %rsi
	movl	$512, %edx                      # imm = 0x200
	callq	print_sum
.Ltmp222:
	.loc	0 196 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:196:17
	movq	(%r14), %rsi
	.loc	0 196 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:196:9
	movl	$10, %edi
	callq	fputc@PLT
.Ltmp223:
	.loc	0 197 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:197:9
	movl	$1, %edi
	callq	exit@PLT
.Ltmp224:
.LBB2_52:                               # %if.then
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:num <- $r15d
	#DEBUG_VALUE: spec_mem_load:filename <- $r13
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- $ebp
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rax
	.loc	0 133 17                        # spec_mem_io/spec_mem_io.c:133:17
	movq	stderr@GOTPCREL(%rip), %rax
.Ltmp225:
	movq	(%rax), %rdi
	movq	24(%rsp), %rcx                  # 8-byte Reload
	.loc	0 133 92 is_stmt 0              # spec_mem_io/spec_mem_io.c:133:92
	leal	7(%rcx), %edx
	testl	%ecx, %ecx
	cmovnsl	%ecx, %edx
	sarl	$3, %edx
	.loc	0 133 9                         # spec_mem_io/spec_mem_io.c:133:9
	movl	$.L.str.5, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp226:
	.loc	0 134 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:134:9
	movl	$1, %edi
	callq	exit@PLT
.Ltmp227:
.LBB2_3:                                # %if.then8
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:num <- $r15d
	#DEBUG_VALUE: spec_mem_load:filename <- $r13
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- $ebp
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rax
	.loc	0 139 17                        # spec_mem_io/spec_mem_io.c:139:17
	movq	stderr@GOTPCREL(%rip), %rax
.Ltmp228:
	movq	(%rax), %rdi
	.loc	0 139 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:139:9
	movl	$.L.str.6, %esi
	jmp	.LBB2_4
.Ltmp229:
.LBB2_7:                                # %if.then16
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- $r13
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rax
	.loc	0 143 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:143:17
	movq	stderr@GOTPCREL(%rip), %rax
.Ltmp230:
	movq	(%rax), %rdi
	.loc	0 143 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:143:9
	movl	$.L.str.7, %esi
.Ltmp231:
.LBB2_4:                                # %if.then8
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:num <- $r15d
	#DEBUG_VALUE: spec_mem_load:filename <- $r13
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_LLVM_entry_value 1] $r9d
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	movl	%ebp, %edx
	movq	%r14, %rcx
	movl	%r12d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp232:
	movl	$1, %edi
	callq	exit@PLT
.Ltmp233:
.LBB2_53:                               # %if.then22
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_load:fd <- $eax
	.loc	0 153 10 is_stmt 1              # spec_mem_io/spec_mem_io.c:153:10
	movq	stderr@GOTPCREL(%rip), %rax
.Ltmp234:
	movq	(%rax), %rbx
.Ltmp235:
	.loc	0 153 65 is_stmt 0              # spec_mem_io/spec_mem_io.c:153:65
	callq	__errno_location@PLT
.Ltmp236:
	movl	(%rax), %edi
	.loc	0 153 56                        # spec_mem_io/spec_mem_io.c:153:56
	callq	strerror@PLT
.Ltmp237:
	.loc	0 153 2                         # spec_mem_io/spec_mem_io.c:153:2
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp238:
	.loc	0 154 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:154:2
	xorl	%edi, %edi
	callq	exit@PLT
.Ltmp239:
.LBB2_55:                               # %if.then.i
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:ctx <- [DW_OP_plus_uconst 40, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:sum <- $rbx
	#DEBUG_VALUE: spec_mem_sum:bits <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: spec_mem_sum:currpos <- 0
	#DEBUG_VALUE: spec_mem_sum:chunk <- 0
	.loc	0 108 15                        # spec_mem_io/spec_mem_io.c:108:15
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 108 7 is_stmt 0               # spec_mem_io/spec_mem_io.c:108:7
	movl	$.L.str.4, %edi
	movl	$40, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp240:
	.loc	0 109 7 is_stmt 1               # spec_mem_io/spec_mem_io.c:109:7
	movl	$1, %edi
	callq	exit@PLT
.Ltmp241:
.LBB2_54:                               # %if.then58
	#DEBUG_VALUE: spec_mem_load:fds <- $r14
	#DEBUG_VALUE: spec_mem_load:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_load:num <- $ebp
	#DEBUG_VALUE: spec_mem_load:filename <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:size <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:tmpfd <- [DW_OP_plus_uconst 4] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:sum <- [DW_OP_plus_uconst 304] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:bits <- [DW_OP_plus_uconst 312] [$rsp+0]
	#DEBUG_VALUE: spec_mem_load:gen_sum <- $rbx
	#DEBUG_VALUE: spec_mem_load:fd <- $r12d
	.loc	0 178 17                        # spec_mem_io/spec_mem_io.c:178:17
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
.Ltmp242:
	.loc	0 178 75 is_stmt 0              # spec_mem_io/spec_mem_io.c:178:75
	callq	__errno_location@PLT
.Ltmp243:
	movl	(%rax), %edi
	.loc	0 178 66                        # spec_mem_io/spec_mem_io.c:178:66
	callq	strerror@PLT
.Ltmp244:
	.loc	0 178 9                         # spec_mem_io/spec_mem_io.c:178:9
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp245:
	.loc	0 179 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:179:9
	movl	$1, %edi
	callq	exit@PLT
.Ltmp246:
.Lfunc_end2:
	.size	spec_mem_load, .Lfunc_end2-spec_mem_load
	.cfi_endproc
	.file	11 "/usr/include" "fcntl.h" md5 0x1a9bb91818c37dc7bc291ca6e49fc221
	.file	12 "/usr/include" "unistd.h" md5 0xed37c2e6f30ba31a8b41e4d70547c39c
	.file	13 "/usr/include" "errno.h" md5 0x01c14bf4ab600a3884f5da68eb763170
	.file	14 "/usr/include" "string.h" md5 0xf443da8025a0b7c1498fb6c554ec788d
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function fd_grow
	.type	fd_grow,@function
fd_grow:                                # @fd_grow
.Lfunc_begin3:
	.loc	0 580 0                         # spec_mem_io/spec_mem_io.c:580:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: fd_grow:fds <- $rdi
	#DEBUG_VALUE: fd_grow:fd <- $esi
	#DEBUG_VALUE: fd_grow:funcname <- $rdx
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
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
.Ltmp247:
	.loc	0 583 5 prologue_end            # spec_mem_io/spec_mem_io.c:583:5
	movl	%esi, %eax
	leaq	(%rax,%rax,4), %r15
	.loc	0 583 19 is_stmt 0              # spec_mem_io/spec_mem_io.c:583:19
	movq	(%rdi,%r15,8), %rsi
.Ltmp248:
	#DEBUG_VALUE: fd_grow:fd <- $eax
	.loc	0 585 35 is_stmt 1              # spec_mem_io/spec_mem_io.c:585:35
	movq	32(%rdi,%r15,8), %rdi
.Ltmp249:
	#DEBUG_VALUE: fd_grow:fds <- $rbx
	.loc	0 583 19                        # spec_mem_io/spec_mem_io.c:583:19
	addq	%rsi, %rsi
	movq	%rsi, (%rbx,%r15,8)
	.loc	0 585 19                        # spec_mem_io/spec_mem_io.c:585:19
	callq	realloc@PLT
.Ltmp250:
	#DEBUG_VALUE: fd_grow:funcname <- $r14
	#DEBUG_VALUE: fd_grow:fd <- $ebp
	.loc	0 585 17 is_stmt 0              # spec_mem_io/spec_mem_io.c:585:17
	movq	%rax, 32(%rbx,%r15,8)
.Ltmp251:
	.loc	0 586 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:586:21
	testq	%rax, %rax
.Ltmp252:
	.loc	0 586 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:586:9
	je	.LBB3_3
.Ltmp253:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: fd_grow:fds <- $rbx
	#DEBUG_VALUE: fd_grow:fd <- $ebp
	#DEBUG_VALUE: fd_grow:funcname <- $r14
	.loc	0 592 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:592:5
	cmpl	$6, dbglvl(%rip)
.Ltmp254:
	.loc	0 592 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:592:5
	jl	.LBB3_2
.Ltmp255:
# %bb.4:                                # %if.then16
	#DEBUG_VALUE: fd_grow:fds <- $rbx
	#DEBUG_VALUE: fd_grow:fd <- $ebp
	#DEBUG_VALUE: fd_grow:funcname <- $r14
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%rbx,%r15,8), %rax
.Ltmp256:
	.loc	0 592 5                         # spec_mem_io/spec_mem_io.c:592:5
	movq	(%rax), %rcx
	movl	$.L.str.86, %edi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp257:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 592 5 epilogue_begin          # spec_mem_io/spec_mem_io.c:592:5
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp258:
	#DEBUG_VALUE: fd_grow:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp259:
	#DEBUG_VALUE: fd_grow:funcname <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp260:
	#DEBUG_VALUE: fd_grow:fd <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	jmp	fflush@PLT                      # TAILCALL
.Ltmp261:
.LBB3_2:                                # %if.end22
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: fd_grow:fds <- $rbx
	#DEBUG_VALUE: fd_grow:fd <- $ebp
	#DEBUG_VALUE: fd_grow:funcname <- $r14
	.loc	0 593 1 epilogue_begin is_stmt 1 # spec_mem_io/spec_mem_io.c:593:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp262:
	#DEBUG_VALUE: fd_grow:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp263:
	#DEBUG_VALUE: fd_grow:funcname <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp264:
	#DEBUG_VALUE: fd_grow:fd <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp265:
.LBB3_3:                                # %if.then
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: fd_grow:fds <- $rbx
	#DEBUG_VALUE: fd_grow:fd <- $ebp
	#DEBUG_VALUE: fd_grow:funcname <- $r14
	.loc	0 588 10                        # spec_mem_io/spec_mem_io.c:588:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %r15
	.loc	0 588 101 is_stmt 0             # spec_mem_io/spec_mem_io.c:588:101
	callq	__errno_location@PLT
.Ltmp266:
	movl	(%rax), %edi
	.loc	0 588 92                        # spec_mem_io/spec_mem_io.c:588:92
	callq	strerror@PLT
.Ltmp267:
	.loc	0 588 2                         # spec_mem_io/spec_mem_io.c:588:2
	movl	$.L.str.85, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	movq	%rbx, %r8
	movq	%rax, %r9
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp268:
	.loc	0 589 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:589:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp269:
.Lfunc_end3:
	.size	fd_grow, .Lfunc_end3-fd_grow
	.cfi_endproc
                                        # -- End function
	.globl	spec_uncompress                 # -- Begin function spec_uncompress
	.p2align	4, 0x90
	.type	spec_uncompress,@function
spec_uncompress:                        # @spec_uncompress
.Lfunc_begin4:
	.loc	0 547 0                         # spec_mem_io/spec_mem_io.c:547:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_uncompress:in <- $edi
	#DEBUG_VALUE: spec_uncompress:out <- $esi
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
	.loc	0 549 19 prologue_end           # spec_mem_io/spec_mem_io.c:549:19
	movq	spec_fd(%rip), %rax
	movslq	%edi, %rdi
.Ltmp270:
	#DEBUG_VALUE: spec_uncompress:in <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	0 549 31 is_stmt 0              # spec_mem_io/spec_mem_io.c:549:31
	leaq	(,%rdi,8), %rcx
	leaq	(%rcx,%rcx,4), %rbx
	movl	24(%rax,%rbx), %ebp
.Ltmp271:
	#DEBUG_VALUE: spec_uncompress:in_open <- $ebp
	.loc	0 550 20 is_stmt 1              # spec_mem_io/spec_mem_io.c:550:20
	movslq	%esi, %rsi
.Ltmp272:
	#DEBUG_VALUE: spec_uncompress:out <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 550 33 is_stmt 0              # spec_mem_io/spec_mem_io.c:550:33
	leaq	(,%rsi,8), %rcx
	leaq	(%rcx,%rcx,4), %r14
	movl	24(%rax,%r14), %r15d
.Ltmp273:
	#DEBUG_VALUE: spec_uncompress:out_open <- $r15d
	.loc	0 551 42 is_stmt 1              # spec_mem_io/spec_mem_io.c:551:42
	movl	$1, 24(%rax,%r14)
	.loc	0 551 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:551:5
	movq	spec_fd(%rip), %rax
	.loc	0 551 22                        # spec_mem_io/spec_mem_io.c:551:22
	movl	$1, 24(%rax,%rbx)
                                        # kill: def $edi killed $edi killed $rdi
                                        # kill: def $esi killed $esi killed $rsi
	.loc	0 555 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:555:5
	callq	uncompressStream@PLT
.Ltmp274:
	.loc	0 557 5                         # spec_mem_io/spec_mem_io.c:557:5
	movq	spec_fd(%rip), %rax
	.loc	0 557 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:557:22
	movl	%ebp, 24(%rax,%rbx)
	.loc	0 558 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:558:5
	movq	spec_fd(%rip), %rax
	.loc	0 558 23 is_stmt 0              # spec_mem_io/spec_mem_io.c:558:23
	movl	%r15d, 24(%rax,%r14)
	.loc	0 559 1 epilogue_begin is_stmt 1 # spec_mem_io/spec_mem_io.c:559:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp275:
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 8
	retq
.Ltmp277:
.Lfunc_end4:
	.size	spec_uncompress, .Lfunc_end4-spec_uncompress
	.cfi_endproc
                                        # -- End function
	.globl	compare_sum                     # -- Begin function compare_sum
	.p2align	4, 0x90
	.type	compare_sum,@function
compare_sum:                            # @compare_sum
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: compare_sum:ref_sum <- $rdi
	#DEBUG_VALUE: compare_sum:generated <- $rsi
	#DEBUG_VALUE: compare_sum:bits <- $edx
                                        # kill: def $edx killed $edx def $rdx
	.loc	0 625 17 prologue_end           # spec_mem_io/spec_mem_io.c:625:17
	testq	%rdi, %rdi
	sete	%al
	testq	%rsi, %rsi
	sete	%cl
	.loc	0 625 25 is_stmt 0              # spec_mem_io/spec_mem_io.c:625:25
	orb	%al, %cl
	movl	$-1, %eax
	jne	.LBB5_3
.Ltmp278:
# %bb.1:                                # %for.cond.preheader
	#DEBUG_VALUE: compare_sum:ref_sum <- $rdi
	#DEBUG_VALUE: compare_sum:generated <- $rsi
	#DEBUG_VALUE: compare_sum:bits <- $edx
	#DEBUG_VALUE: i <- 0
	.loc	0 628 22 is_stmt 1              # spec_mem_io/spec_mem_io.c:628:22
	cmpl	$8, %edx
.Ltmp279:
	.loc	0 628 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:628:5
	jl	.LBB5_2
.Ltmp280:
# %bb.4:                                # %for.body.preheader
	#DEBUG_VALUE: compare_sum:ref_sum <- $rdi
	#DEBUG_VALUE: compare_sum:generated <- $rsi
	#DEBUG_VALUE: compare_sum:bits <- $edx
	#DEBUG_VALUE: i <- 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	shrl	$3, %edx
.Ltmp281:
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	xorl	%ebx, %ebx
.Ltmp282:
	.p2align	4, 0x90
.LBB5_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: compare_sum:ref_sum <- $rdi
	#DEBUG_VALUE: compare_sum:generated <- $rsi
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: i <- $rbx
	.loc	0 629 13 is_stmt 1              # spec_mem_io/spec_mem_io.c:629:13
	movzbl	(%rdi,%rbx), %ecx
	.loc	0 629 27 is_stmt 0              # spec_mem_io/spec_mem_io.c:629:27
	movzbl	(%rsi,%rbx), %r8d
	.loc	0 629 24                        # spec_mem_io/spec_mem_io.c:629:24
	cmpb	%r8b, %cl
.Ltmp283:
	.loc	0 629 13                        # spec_mem_io/spec_mem_io.c:629:13
	jne	.LBB5_6
.Ltmp284:
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=1
	#DEBUG_VALUE: compare_sum:ref_sum <- $rdi
	#DEBUG_VALUE: compare_sum:generated <- $rsi
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: i <- $rbx
	.loc	0 628 35 is_stmt 1              # spec_mem_io/spec_mem_io.c:628:35
	incq	%rbx
.Ltmp285:
	#DEBUG_VALUE: i <- $rbx
	.loc	0 628 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:628:22
	cmpq	%rbx, %rdx
.Ltmp286:
	.loc	0 628 5                         # spec_mem_io/spec_mem_io.c:628:5
	jne	.LBB5_5
.Ltmp287:
# %bb.8:
	#DEBUG_VALUE: compare_sum:ref_sum <- $rdi
	#DEBUG_VALUE: compare_sum:generated <- $rsi
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.loc	0 636 1 is_stmt 1               # spec_mem_io/spec_mem_io.c:636:1
	retq
.Ltmp288:
.LBB5_2:
	#DEBUG_VALUE: compare_sum:ref_sum <- $rdi
	#DEBUG_VALUE: compare_sum:generated <- $rsi
	#DEBUG_VALUE: compare_sum:bits <- $edx
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # spec_mem_io/spec_mem_io.c:0:1
	xorl	%eax, %eax
.Ltmp289:
.LBB5_3:                                # %return
	#DEBUG_VALUE: compare_sum:ref_sum <- $rdi
	#DEBUG_VALUE: compare_sum:generated <- $rsi
	#DEBUG_VALUE: compare_sum:bits <- $edx
	.loc	0 636 1                         # spec_mem_io/spec_mem_io.c:636:1
	retq
.Ltmp290:
.LBB5_6:                                # %if.then8
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	#DEBUG_VALUE: compare_sum:ref_sum <- $rdi
	#DEBUG_VALUE: compare_sum:generated <- $rsi
	#DEBUG_VALUE: compare_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: i <- $rbx
	.loc	0 630 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:630:21
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rsi, %r14
.Ltmp291:
	#DEBUG_VALUE: compare_sum:generated <- $r14
	.loc	0 630 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:630:13
	movl	$.L.str.76, %esi
	movq	%rdi, %r15
.Ltmp292:
	#DEBUG_VALUE: compare_sum:ref_sum <- $r15
	movq	%rax, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp293:
	.loc	0 631 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:631:21
	xorl	%eax, %eax
	.loc	0 631 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:631:22
	movzbl	(%r15,%rbx), %ecx
	.loc	0 631 33                        # spec_mem_io/spec_mem_io.c:631:33
	cmpb	(%r14,%rbx), %cl
	.loc	0 631 21                        # spec_mem_io/spec_mem_io.c:631:21
	sbbl	%eax, %eax
	orl	$1, %eax
	popq	%rbx
.Ltmp294:
	.cfi_def_cfa_offset 24
	.loc	0 0 21                          # spec_mem_io/spec_mem_io.c:0:21
	popq	%r14
.Ltmp295:
	#DEBUG_VALUE: compare_sum:generated <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp296:
	#DEBUG_VALUE: compare_sum:ref_sum <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.loc	0 636 1 is_stmt 1               # spec_mem_io/spec_mem_io.c:636:1
	retq
.Ltmp297:
.Lfunc_end5:
	.size	compare_sum, .Lfunc_end5-compare_sum
	.cfi_endproc
                                        # -- End function
	.globl	print_sum                       # -- Begin function print_sum
	.p2align	4, 0x90
	.type	print_sum,@function
print_sum:                              # @print_sum
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: print_sum:out <- $rdi
	#DEBUG_VALUE: print_sum:sum <- $rsi
	#DEBUG_VALUE: print_sum:bits <- $edx
	#DEBUG_VALUE: i <- 0
	.loc	0 574 20 prologue_end           # spec_mem_io/spec_mem_io.c:574:20
	cmpl	$8, %edx
.Ltmp298:
	.loc	0 574 3 is_stmt 0               # spec_mem_io/spec_mem_io.c:574:3
	jl	.LBB6_4
.Ltmp299:
# %bb.1:                                # %for.body.preheader
	#DEBUG_VALUE: print_sum:out <- $rdi
	#DEBUG_VALUE: print_sum:sum <- $rsi
	#DEBUG_VALUE: print_sum:bits <- $edx
	#DEBUG_VALUE: i <- 0
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	shrl	$3, %ebx
	xorl	%r12d, %r12d
.Ltmp300:
	.p2align	4, 0x90
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: print_sum:out <- $r15
	#DEBUG_VALUE: print_sum:sum <- $r14
	#DEBUG_VALUE: print_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: i <- $r12
	.loc	0 575 26 is_stmt 1              # spec_mem_io/spec_mem_io.c:575:26
	movzbl	(%r14,%r12), %edx
	.loc	0 575 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:575:5
	movl	$.L.str.74, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp301:
	.loc	0 574 31 is_stmt 1              # spec_mem_io/spec_mem_io.c:574:31
	incq	%r12
.Ltmp302:
	#DEBUG_VALUE: i <- $r12
	.loc	0 574 20 is_stmt 0              # spec_mem_io/spec_mem_io.c:574:20
	cmpq	%r12, %rbx
.Ltmp303:
	.loc	0 574 3                         # spec_mem_io/spec_mem_io.c:574:3
	jne	.LBB6_2
.Ltmp304:
# %bb.3:
	#DEBUG_VALUE: print_sum:out <- $r15
	#DEBUG_VALUE: print_sum:sum <- $r14
	#DEBUG_VALUE: print_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: i <- $r12
	.loc	0 0 3                           # spec_mem_io/spec_mem_io.c:0:3
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp305:
	#DEBUG_VALUE: print_sum:sum <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r15
.Ltmp306:
	#DEBUG_VALUE: print_sum:out <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
.LBB6_4:                                # %for.cond.cleanup
	#DEBUG_VALUE: print_sum:out <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: print_sum:sum <- [DW_OP_LLVM_entry_value 1] $rsi
	#DEBUG_VALUE: print_sum:bits <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 577 1 is_stmt 1               # spec_mem_io/spec_mem_io.c:577:1
	retq
.Ltmp307:
.Lfunc_end6:
	.size	print_sum, .Lfunc_end6-print_sum
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_read                   # -- Begin function spec_mem_read
	.p2align	4, 0x90
	.type	spec_mem_read,@function
spec_mem_read:                          # @spec_mem_read
.Lfunc_begin7:
	.loc	0 225 0                         # spec_mem_io/spec_mem_io.c:225:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_read:fds <- $rdi
	#DEBUG_VALUE: spec_mem_read:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_read:fd <- $edx
	#DEBUG_VALUE: spec_mem_read:buf <- $rcx
	#DEBUG_VALUE: spec_mem_read:size <- $r8
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
	movq	%r8, %r15
	movq	%rcx, %r12
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r14
.Ltmp308:
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	.loc	0 227 5 prologue_end            # spec_mem_io/spec_mem_io.c:227:5
	cmpl	$6, dbglvl(%rip)
.Ltmp309:
	.loc	0 227 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:227:5
	jl	.LBB7_2
.Ltmp310:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- $r15
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	.loc	0 227 5                         # spec_mem_io/spec_mem_io.c:227:5
	movl	$.L.str.20, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp311:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp312:
.LBB7_2:                                # %if.end
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- $r15
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	.loc	0 228 12 is_stmt 1              # spec_mem_io/spec_mem_io.c:228:12
	testl	%ebx, %ebx
	.loc	0 228 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:228:16
	js	.LBB7_15
.Ltmp313:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- $r15
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	cmpl	%ebp, %ebx
	jae	.LBB7_15
.Ltmp314:
# %bb.4:                                # %if.end6
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- $r15
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	.loc	0 232 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:232:9
	movl	%ebx, %eax
	leaq	(%rax,%rax,4), %rax
	.loc	0 232 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:232:22
	cmpl	$1, 24(%r14,%rax,8)
.Ltmp315:
	.loc	0 232 9                         # spec_mem_io/spec_mem_io.c:232:9
	jne	.LBB7_5
.Ltmp316:
# %bb.6:                                # %if.end11
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- $r15
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%r14,%rax,8), %rbp
.Ltmp317:
	#DEBUG_VALUE: spec_mem_read:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 237 32 is_stmt 1              # spec_mem_io/spec_mem_io.c:237:32
	movq	8(%rbp), %rdx
	.loc	0 237 17 is_stmt 0              # spec_mem_io/spec_mem_io.c:237:17
	movq	16(%rbp), %rsi
	.loc	0 237 21                        # spec_mem_io/spec_mem_io.c:237:21
	movq	%rdx, %r13
	subq	%rsi, %r13
.Ltmp318:
	.loc	0 237 9                         # spec_mem_io/spec_mem_io.c:237:9
	jle	.LBB7_7
.Ltmp319:
# %bb.10:                               # %if.end29
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- $r15
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	.loc	0 241 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:241:21
	leaq	(%rsi,%r15), %rax
	.loc	0 241 28 is_stmt 0              # spec_mem_io/spec_mem_io.c:241:28
	cmpq	%rdx, %rax
.Ltmp320:
	.loc	0 241 9                         # spec_mem_io/spec_mem_io.c:241:9
	cmovlq	%r15, %r13
.Ltmp321:
	#DEBUG_VALUE: spec_mem_read:rc <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $r13
	.loc	0 246 19 is_stmt 1              # spec_mem_io/spec_mem_io.c:246:19
	addq	32(%rbp), %rsi
	.loc	0 246 46 is_stmt 0              # spec_mem_io/spec_mem_io.c:246:46
	movslq	%r13d, %r15
.Ltmp322:
	#DEBUG_VALUE: spec_mem_read:size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 246 5                         # spec_mem_io/spec_mem_io.c:246:5
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	memcpy@PLT
.Ltmp323:
	.loc	0 247 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:247:17
	addq	%r15, 16(%rbp)
.Ltmp324:
	.loc	0 248 5                         # spec_mem_io/spec_mem_io.c:248:5
	cmpl	$6, dbglvl(%rip)
.Ltmp325:
	.loc	0 248 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:248:5
	jl	.LBB7_14
.Ltmp326:
# %bb.11:                               # %if.end64
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: spec_mem_read:rc <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $r13
	#DEBUG_VALUE: spec_mem_read:rc <- $r13d
	.loc	0 248 5                         # spec_mem_io/spec_mem_io.c:248:5
	movl	$.L.str.24, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp327:
	movq	stdout@GOTPCREL(%rip), %r12
.Ltmp328:
	#DEBUG_VALUE: spec_mem_read:buf <- [DW_OP_LLVM_entry_value 1] $rcx
	movq	(%r12), %rdi
	callq	fflush@PLT
.Ltmp329:
	.loc	0 249 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:249:5
	cmpl	$6, dbglvl(%rip)
.Ltmp330:
	.loc	0 249 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:249:5
	jl	.LBB7_14
.Ltmp331:
# %bb.12:                               # %if.then67
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_read:size <- [DW_OP_LLVM_entry_value 1] $r8
	#DEBUG_VALUE: spec_mem_read:rc <- $r13d
	.loc	0 249 5                         # spec_mem_io/spec_mem_io.c:249:5
	movq	16(%rbp), %rcx
	movl	$.L.str.25, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp332:
	movq	(%r12), %rdi
	jmp	.LBB7_13
.Ltmp333:
.LBB7_7:                                # %if.then17
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- $r15
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	.loc	0 238 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:238:2
	cmpl	$5, dbglvl(%rip)
.Ltmp334:
	.loc	0 238 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:238:2
	jl	.LBB7_8
.Ltmp335:
# %bb.9:                                # %if.then19
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- $r15
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	.loc	0 0 2                           # spec_mem_io/spec_mem_io.c:0:2
	xorl	%r15d, %r15d
.Ltmp336:
	#DEBUG_VALUE: spec_mem_read:size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 238 2                         # spec_mem_io/spec_mem_io.c:238:2
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp337:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
.Ltmp338:
.LBB7_13:                               # %cleanup
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_read:size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	callq	fflush@PLT
.Ltmp339:
	jmp	.LBB7_14
.Ltmp340:
.LBB7_8:
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- $r15
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	xorl	%r15d, %r15d
.Ltmp341:
	#DEBUG_VALUE: spec_mem_read:size <- [DW_OP_LLVM_entry_value 1] $r8
.LBB7_14:                               # %cleanup
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_read:size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 251 1 is_stmt 1               # spec_mem_io/spec_mem_io.c:251:1
	movq	%r15, %rax
	.loc	0 251 1 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:251:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp342:
	#DEBUG_VALUE: spec_mem_read:fd <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp343:
	#DEBUG_VALUE: spec_mem_read:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp344:
.LBB7_5:                                # %if.then8
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- $r15
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	.loc	0 233 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:233:17
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 233 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:233:9
	movq	%r15, (%rsp)
	movl	$.L.str.22, %esi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	movq	%r12, %r9
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp345:
	.loc	0 234 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:234:2
	callq	__errno_location@PLT
.Ltmp346:
	.loc	0 234 8 is_stmt 0               # spec_mem_io/spec_mem_io.c:234:8
	movl	$9, (%rax)
	movq	$-1, %r15
.Ltmp347:
	#DEBUG_VALUE: spec_mem_read:size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 235 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:235:2
	jmp	.LBB7_14
.Ltmp348:
.LBB7_15:                               # %if.then4
	#DEBUG_VALUE: spec_mem_read:fds <- $r14
	#DEBUG_VALUE: spec_mem_read:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_read:fd <- $ebx
	#DEBUG_VALUE: spec_mem_read:buf <- $r12
	#DEBUG_VALUE: spec_mem_read:size <- $r15
	#DEBUG_VALUE: spec_mem_read:rc <- 0
	.loc	0 229 10                        # spec_mem_io/spec_mem_io.c:229:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 229 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:229:2
	movl	$.L.str.21, %esi
	movl	%ebx, %edx
	movq	%r14, %rcx
	movl	%ebp, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp349:
	.loc	0 230 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:230:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp350:
.Lfunc_end7:
	.size	spec_mem_read, .Lfunc_end7-spec_mem_read
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_fread                  # -- Begin function spec_mem_fread
	.p2align	4, 0x90
	.type	spec_mem_fread,@function
spec_mem_fread:                         # @spec_mem_fread
.Lfunc_begin8:
	.loc	0 253 0                         # spec_mem_io/spec_mem_io.c:253:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_fread:fds <- $rdi
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_fread:buf <- $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $rcx
	#DEBUG_VALUE: spec_mem_fread:num <- $r8d
	#DEBUG_VALUE: spec_mem_fread:fd <- $r9d
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
	movl	%r9d, %ebx
	movl	%r8d, %ebp
	movq	%rcx, %r13
	movq	%rdx, %r8
.Ltmp351:
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	movl	%esi, %r12d
	movq	%rdi, %r14
.Ltmp352:
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 255 5 prologue_end            # spec_mem_io/spec_mem_io.c:255:5
	cmpl	$6, dbglvl(%rip)
.Ltmp353:
	.loc	0 255 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:255:5
	jl	.LBB8_2
.Ltmp354:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_fread:buf <- $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 255 5                         # spec_mem_io/spec_mem_io.c:255:5
	movl	%ebx, (%rsp)
	movl	$.L.str.26, %edi
	movq	%r14, %rsi
	movl	%r12d, %edx
.Ltmp355:
	#DEBUG_VALUE: spec_mem_fread:buf <- $r8
	movq	%r8, %rcx
	movq	%r8, %r15
.Ltmp356:
	#DEBUG_VALUE: spec_mem_fread:buf <- $r15
	movq	%r13, %r8
	movl	%ebp, %r9d
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp357:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp358:
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	movq	%r15, %r8
.Ltmp359:
.LBB8_2:                                # %if.end
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 256 12 is_stmt 1              # spec_mem_io/spec_mem_io.c:256:12
	testl	%ebx, %ebx
	.loc	0 256 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:256:16
	js	.LBB8_19
.Ltmp360:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	cmpl	%r12d, %ebx
	jae	.LBB8_19
.Ltmp361:
# %bb.4:                                # %if.end6
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 260 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:260:9
	movl	%ebx, %eax
	leaq	(%rax,%rax,4), %rax
	.loc	0 260 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:260:22
	cmpl	$1, 24(%r14,%rax,8)
.Ltmp362:
	.loc	0 260 9                         # spec_mem_io/spec_mem_io.c:260:9
	jne	.LBB8_20
.Ltmp363:
# %bb.5:                                # %if.end10
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%r14,%rax,8), %r15
.Ltmp364:
	.loc	0 264 32 is_stmt 1              # spec_mem_io/spec_mem_io.c:264:32
	movq	8(%r15), %rcx
	.loc	0 264 17 is_stmt 0              # spec_mem_io/spec_mem_io.c:264:17
	movq	16(%r15), %rsi
	.loc	0 264 21                        # spec_mem_io/spec_mem_io.c:264:21
	movq	%rcx, %rax
	subq	%rsi, %rax
.Ltmp365:
	.loc	0 264 9                         # spec_mem_io/spec_mem_io.c:264:9
	jle	.LBB8_6
.Ltmp366:
# %bb.9:                                # %if.end22
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 268 29 is_stmt 1              # spec_mem_io/spec_mem_io.c:268:29
	movslq	%ebp, %r12
.Ltmp367:
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 268 28 is_stmt 0              # spec_mem_io/spec_mem_io.c:268:28
	movq	%r12, %rbp
.Ltmp368:
	#DEBUG_VALUE: spec_mem_fread:num <- [DW_OP_LLVM_entry_value 1] $r8d
	imulq	%r13, %rbp
	.loc	0 268 21                        # spec_mem_io/spec_mem_io.c:268:21
	leaq	(%rsi,%rbp), %rdx
	.loc	0 268 34                        # spec_mem_io/spec_mem_io.c:268:34
	cmpq	%rcx, %rdx
.Ltmp369:
	.loc	0 268 9                         # spec_mem_io/spec_mem_io.c:268:9
	jl	.LBB8_14
.Ltmp370:
# %bb.10:                               # %if.then31
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 269 35 is_stmt 1              # spec_mem_io/spec_mem_io.c:269:35
	movq	%rax, %rcx
	orq	%r13, %rcx
	shrq	$32, %rcx
	je	.LBB8_11
.Ltmp371:
# %bb.12:
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	cqto
	idivq	%r13
	movq	%rax, %r12
	jmp	.LBB8_13
.Ltmp372:
.LBB8_6:                                # %if.then16
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 265 2                         # spec_mem_io/spec_mem_io.c:265:2
	cmpl	$6, dbglvl(%rip)
.Ltmp373:
	.loc	0 265 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:265:2
	jl	.LBB8_7
.Ltmp374:
# %bb.8:                                # %if.then18
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 265 2                         # spec_mem_io/spec_mem_io.c:265:2
	movl	$.Lstr.87, %edi
	callq	puts@PLT
.Ltmp375:
	.loc	0 0 2                           # spec_mem_io/spec_mem_io.c:0:2
	xorl	%r12d, %r12d
.Ltmp376:
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 265 2                         # spec_mem_io/spec_mem_io.c:265:2
	jmp	.LBB8_17
.Ltmp377:
.LBB8_7:
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 0 2                           # spec_mem_io/spec_mem_io.c:0:2
	xorl	%r12d, %r12d
.Ltmp378:
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 265 2                         # spec_mem_io/spec_mem_io.c:265:2
	jmp	.LBB8_18
.Ltmp379:
.LBB8_11:
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
                                        # kill: def $eax killed $eax killed $rax
	.loc	0 269 35 is_stmt 1              # spec_mem_io/spec_mem_io.c:269:35
	xorl	%edx, %edx
	divl	%r13d
	movl	%eax, %r12d
.Ltmp380:
.LBB8_13:
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	#DEBUG_VALUE: spec_mem_fread:rc <- $r12
	.loc	0 274 23                        # spec_mem_io/spec_mem_io.c:274:23
	imulq	%r12, %r13
.Ltmp381:
	#DEBUG_VALUE: spec_mem_fread:size <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 0 23 is_stmt 0                # spec_mem_io/spec_mem_io.c:0:23
	movq	%r13, %rbp
.Ltmp382:
.LBB8_14:                               # %if.end39
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_fread:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- $r12
	.loc	0 273 19 is_stmt 1              # spec_mem_io/spec_mem_io.c:273:19
	addq	32(%r15), %rsi
	.loc	0 273 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:273:5
	movq	%r8, %rdi
	movq	%r12, %rdx
	callq	memcpy@PLT
.Ltmp383:
	.loc	0 274 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:274:17
	addq	%rbp, 16(%r15)
.Ltmp384:
	.loc	0 275 5                         # spec_mem_io/spec_mem_io.c:275:5
	cmpl	$6, dbglvl(%rip)
.Ltmp385:
	.loc	0 275 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:275:5
	jl	.LBB8_18
.Ltmp386:
# %bb.15:                               # %if.end58
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_fread:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- $r12
	.loc	0 275 5                         # spec_mem_io/spec_mem_io.c:275:5
	movl	$.L.str.30, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp387:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp388:
	.loc	0 276 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:276:5
	cmpl	$6, dbglvl(%rip)
.Ltmp389:
	.loc	0 276 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:276:5
	jl	.LBB8_18
.Ltmp390:
# %bb.16:                               # %if.then61
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_fread:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- $r12
	.loc	0 276 5                         # spec_mem_io/spec_mem_io.c:276:5
	movq	16(%r15), %rcx
	movl	$.L.str.31, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp391:
.LBB8_17:                               # %cleanup.sink.split
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_fread:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp392:
.LBB8_18:                               # %cleanup
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_fread:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	.loc	0 278 1 is_stmt 1               # spec_mem_io/spec_mem_io.c:278:1
	movq	%r12, %rax
	.loc	0 278 1 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:278:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
.Ltmp393:
	#DEBUG_VALUE: spec_mem_fread:fd <- [DW_OP_LLVM_entry_value 1] $r9d
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp394:
	#DEBUG_VALUE: spec_mem_fread:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp395:
.LBB8_19:                               # %if.then4
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 257 10 is_stmt 1              # spec_mem_io/spec_mem_io.c:257:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 257 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:257:2
	movl	$.L.str.27, %esi
	movl	%ebx, %edx
	movq	%r14, %rcx
	movl	%r12d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp396:
	.loc	0 258 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:258:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp397:
.LBB8_20:                               # %if.then8
	#DEBUG_VALUE: spec_mem_fread:fds <- $r14
	#DEBUG_VALUE: spec_mem_fread:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_fread:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fread:size <- $r13
	#DEBUG_VALUE: spec_mem_fread:num <- $ebp
	#DEBUG_VALUE: spec_mem_fread:fd <- $ebx
	#DEBUG_VALUE: spec_mem_fread:rc <- 0
	.loc	0 261 10                        # spec_mem_io/spec_mem_io.c:261:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 261 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:261:2
	movl	$.L.str.28, %esi
	movl	%ebx, %edx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp398:
	.loc	0 262 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:262:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp399:
.Lfunc_end8:
	.size	spec_mem_fread, .Lfunc_end8-spec_mem_fread
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_getc                   # -- Begin function spec_mem_getc
	.p2align	4, 0x90
	.type	spec_mem_getc,@function
spec_mem_getc:                          # @spec_mem_getc
.Lfunc_begin9:
	.loc	0 280 0                         # spec_mem_io/spec_mem_io.c:280:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_getc:fds <- $rdi
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_getc:fd <- $edx
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
	movl	%edx, %ebp
	movl	%esi, %r14d
	movq	%rdi, %rbx
.Ltmp400:
	#DEBUG_VALUE: spec_mem_getc:rc <- 0
	.loc	0 282 5 prologue_end            # spec_mem_io/spec_mem_io.c:282:5
	cmpl	$7, dbglvl(%rip)
.Ltmp401:
	.loc	0 282 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:282:5
	jl	.LBB9_2
.Ltmp402:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- $r14d
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- 0
	.loc	0 282 5                         # spec_mem_io/spec_mem_io.c:282:5
	movl	$.L.str.32, %edi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp403:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp404:
.LBB9_2:                                # %if.end
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- $r14d
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- 0
	.loc	0 283 12 is_stmt 1              # spec_mem_io/spec_mem_io.c:283:12
	testl	%ebp, %ebp
	.loc	0 283 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:283:16
	js	.LBB9_14
.Ltmp405:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- $r14d
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- 0
	cmpl	%r14d, %ebp
	jae	.LBB9_14
.Ltmp406:
# %bb.4:                                # %if.end6
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- $r14d
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- 0
	.loc	0 287 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:287:9
	movl	%ebp, %eax
	leaq	(%rax,%rax,4), %rax
	.loc	0 287 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:287:22
	cmpl	$1, 24(%rbx,%rax,8)
.Ltmp407:
	.loc	0 287 9                         # spec_mem_io/spec_mem_io.c:287:9
	jne	.LBB9_15
.Ltmp408:
# %bb.5:                                # %if.end10
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- $r14d
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- 0
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%rbx,%rax,8), %r15
.Ltmp409:
	.loc	0 291 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:291:17
	movq	16(%r15), %rax
	.loc	0 291 21 is_stmt 0              # spec_mem_io/spec_mem_io.c:291:21
	cmpq	8(%r15), %rax
.Ltmp410:
	.loc	0 291 9                         # spec_mem_io/spec_mem_io.c:291:9
	jge	.LBB9_6
.Ltmp411:
# %bb.8:                                # %if.end22
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- $r14d
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- 0
	.loc	0 295 18 is_stmt 1              # spec_mem_io/spec_mem_io.c:295:18
	movq	32(%r15), %rcx
	.loc	0 295 33 is_stmt 0              # spec_mem_io/spec_mem_io.c:295:33
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%r15)
	.loc	0 295 10                        # spec_mem_io/spec_mem_io.c:295:10
	movzbl	(%rcx,%rax), %r14d
.Ltmp412:
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_getc:rc <- $r14d
	.loc	0 296 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:296:5
	movl	dbglvl(%rip), %eax
	cmpl	$7, %eax
.Ltmp413:
	.loc	0 296 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:296:5
	jl	.LBB9_10
.Ltmp414:
# %bb.9:                                # %if.then31
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- $r14d
	.loc	0 296 5                         # spec_mem_io/spec_mem_io.c:296:5
	movl	$.L.str.24, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp415:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp416:
	.loc	0 297 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:297:5
	movl	dbglvl(%rip), %eax
.Ltmp417:
.LBB9_10:                               # %if.end34
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- $r14d
	cmpl	$6, %eax
.Ltmp418:
	.loc	0 297 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:297:5
	jl	.LBB9_13
.Ltmp419:
# %bb.11:                               # %if.then37
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- $r14d
	.loc	0 297 5                         # spec_mem_io/spec_mem_io.c:297:5
	movq	16(%r15), %rcx
	movl	$.L.str.35, %edi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp420:
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	jmp	.LBB9_12
.Ltmp421:
.LBB9_6:                                # %if.then16
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- $r14d
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- 0
	movl	$-1, %r14d
.Ltmp422:
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 292 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:292:2
	cmpl	$7, dbglvl(%rip)
.Ltmp423:
	.loc	0 292 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:292:2
	jl	.LBB9_13
.Ltmp424:
# %bb.7:                                # %if.then18
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- 0
	.loc	0 292 2                         # spec_mem_io/spec_mem_io.c:292:2
	movl	$.Lstr.87, %edi
	callq	puts@PLT
.Ltmp425:
	.loc	0 0 2                           # spec_mem_io/spec_mem_io.c:0:2
	movl	$-1, %r14d
.Ltmp426:
.LBB9_12:                               # %cleanup.sink.split
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp427:
.LBB9_13:                               # %cleanup
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	.loc	0 299 1 is_stmt 1               # spec_mem_io/spec_mem_io.c:299:1
	movl	%r14d, %eax
	.loc	0 299 1 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:299:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp428:
	#DEBUG_VALUE: spec_mem_getc:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp429:
	#DEBUG_VALUE: spec_mem_getc:fd <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 8
	retq
.Ltmp430:
.LBB9_14:                               # %if.then4
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- $r14d
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- 0
	.loc	0 284 10 is_stmt 1              # spec_mem_io/spec_mem_io.c:284:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 284 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:284:2
	movl	$.L.str.33, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	movl	%r14d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp431:
	.loc	0 285 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:285:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp432:
.LBB9_15:                               # %if.then8
	#DEBUG_VALUE: spec_mem_getc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_getc:fd_limit <- $r14d
	#DEBUG_VALUE: spec_mem_getc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_getc:rc <- 0
	.loc	0 288 10                        # spec_mem_io/spec_mem_io.c:288:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 288 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:288:2
	movl	$.L.str.34, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp433:
	.loc	0 289 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:289:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp434:
.Lfunc_end9:
	.size	spec_mem_getc, .Lfunc_end9-spec_mem_getc
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_ungetc                 # -- Begin function spec_mem_ungetc
	.p2align	4, 0x90
	.type	spec_mem_ungetc,@function
spec_mem_ungetc:                        # @spec_mem_ungetc
.Lfunc_begin10:
	.loc	0 301 0                         # spec_mem_io/spec_mem_io.c:301:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rdi
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $edx
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ecx
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
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
.Ltmp435:
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 303 5 prologue_end            # spec_mem_io/spec_mem_io.c:303:5
	cmpl	$7, dbglvl(%rip)
.Ltmp436:
	.loc	0 303 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:303:5
	jl	.LBB10_2
.Ltmp437:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 303 5                         # spec_mem_io/spec_mem_io.c:303:5
	movzbl	%r14b, %ecx
	movl	$.L.str.36, %edi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movl	%ebp, %r8d
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp438:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp439:
.LBB10_2:                               # %if.end
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 304 12 is_stmt 1              # spec_mem_io/spec_mem_io.c:304:12
	testl	%ebp, %ebp
	.loc	0 304 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:304:16
	js	.LBB10_12
.Ltmp440:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	cmpl	%r15d, %ebp
	jae	.LBB10_12
.Ltmp441:
# %bb.4:                                # %if.end9
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 308 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:308:9
	movl	%ebp, %eax
	leaq	(%rax,%rax,4), %rax
	.loc	0 308 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:308:22
	cmpl	$1, 24(%rbx,%rax,8)
.Ltmp442:
	.loc	0 308 9                         # spec_mem_io/spec_mem_io.c:308:9
	jne	.LBB10_13
.Ltmp443:
# %bb.5:                                # %if.end14
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%rbx,%rax,8), %r15
.Ltmp444:
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 312 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:312:17
	movq	16(%r15), %rdx
	.loc	0 312 21 is_stmt 0              # spec_mem_io/spec_mem_io.c:312:21
	testq	%rdx, %rdx
.Ltmp445:
	.loc	0 312 9                         # spec_mem_io/spec_mem_io.c:312:9
	jle	.LBB10_14
.Ltmp446:
# %bb.6:                                # %if.end24
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 316 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:316:17
	movq	32(%r15), %rax
	.loc	0 316 21 is_stmt 0              # spec_mem_io/spec_mem_io.c:316:21
	leaq	-1(%rdx), %rcx
	movq	%rcx, 16(%r15)
	.loc	0 316 9                         # spec_mem_io/spec_mem_io.c:316:9
	movzbl	-1(%rax,%rdx), %eax
	.loc	0 316 36                        # spec_mem_io/spec_mem_io.c:316:36
	cmpl	%r14d, %eax
.Ltmp447:
	.loc	0 316 9                         # spec_mem_io/spec_mem_io.c:316:9
	jne	.LBB10_15
.Ltmp448:
# %bb.7:                                # %if.end36
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 320 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:320:5
	movl	dbglvl(%rip), %eax
	cmpl	$7, %eax
.Ltmp449:
	.loc	0 320 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:320:5
	jl	.LBB10_9
.Ltmp450:
# %bb.8:                                # %if.then39
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 320 5                         # spec_mem_io/spec_mem_io.c:320:5
	movl	$.L.str.24, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp451:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp452:
	.loc	0 321 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:321:5
	movl	dbglvl(%rip), %eax
.Ltmp453:
.LBB10_9:                               # %if.end42
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	cmpl	$6, %eax
.Ltmp454:
	.loc	0 321 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:321:5
	jl	.LBB10_11
.Ltmp455:
# %bb.10:                               # %if.then45
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 321 5                         # spec_mem_io/spec_mem_io.c:321:5
	movq	16(%r15), %rcx
	movl	$.L.str.41, %edi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp456:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp457:
.LBB10_11:                              # %if.end51
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 322 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:322:5
	movl	%r14d, %eax
	.loc	0 322 5 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:322:5
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp458:
	#DEBUG_VALUE: spec_mem_ungetc:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp459:
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $eax
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp460:
	#DEBUG_VALUE: spec_mem_ungetc:fd <- [DW_OP_LLVM_entry_value 1] $ecx
	.cfi_def_cfa_offset 8
	retq
.Ltmp461:
.LBB10_12:                              # %if.then7
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 305 10 is_stmt 1              # spec_mem_io/spec_mem_io.c:305:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 305 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:305:2
	movl	$.L.str.37, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	movl	%r15d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp462:
	.loc	0 306 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:306:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp463:
.LBB10_13:                              # %if.then12
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 309 10                        # spec_mem_io/spec_mem_io.c:309:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 309 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:309:2
	movl	$.L.str.38, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp464:
	.loc	0 310 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:310:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp465:
.LBB10_14:                              # %if.then19
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 313 10                        # spec_mem_io/spec_mem_io.c:313:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 313 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:313:2
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp466:
	.loc	0 314 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:314:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp467:
.LBB10_15:                              # %if.then34
	#DEBUG_VALUE: spec_mem_ungetc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_ungetc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_ungetc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_ungetc:fd <- $ebp
	#DEBUG_VALUE: spec_mem_ungetc:rc <- 0
	.loc	0 317 10                        # spec_mem_io/spec_mem_io.c:317:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	.loc	0 317 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:317:2
	movl	$.L.str.40, %edi
	movl	$75, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.Ltmp468:
	.loc	0 318 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:318:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp469:
.Lfunc_end10:
	.size	spec_mem_ungetc, .Lfunc_end10-spec_mem_ungetc
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_lseek                  # -- Begin function spec_mem_lseek
	.p2align	4, 0x90
	.type	spec_mem_lseek,@function
spec_mem_lseek:                         # @spec_mem_lseek
.Lfunc_begin11:
	.loc	0 325 0                         # spec_mem_io/spec_mem_io.c:325:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rcx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $r8d
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rcx, %rbx
	movl	%edx, %r8d
.Ltmp470:
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	movl	%esi, %eax
	movq	%rdi, %rcx
.Ltmp471:
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- -1
	.loc	0 328 12 prologue_end           # spec_mem_io/spec_mem_io.c:328:12
	testl	%edx, %edx
	.loc	0 328 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:328:16
	js	.LBB11_22
.Ltmp472:
# %bb.1:                                # %entry
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- -1
	cmpl	%eax, %r8d
	jae	.LBB11_22
.Ltmp473:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- -1
	.loc	0 332 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:332:9
	movl	%r8d, %edx
.Ltmp474:
	#DEBUG_VALUE: spec_mem_lseek:fd <- $r8d
	leaq	(%rdx,%rdx,4), %rdx
	.loc	0 332 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:332:22
	cmpl	$1, 24(%rcx,%rdx,8)
.Ltmp475:
	.loc	0 332 9                         # spec_mem_io/spec_mem_io.c:332:9
	jne	.LBB11_21
.Ltmp476:
# %bb.3:                                # %if.end6
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- $r8d
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- -1
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%rcx,%rdx,8), %r12
	.loc	0 338 23 is_stmt 1              # spec_mem_io/spec_mem_io.c:338:23
	movq	16(%r12), %r14
.Ltmp477:
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 339 5                         # spec_mem_io/spec_mem_io.c:339:5
	cmpl	$5, dbglvl(%rip)
.Ltmp478:
	.loc	0 339 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:339:5
	jl	.LBB11_5
.Ltmp479:
# %bb.4:                                # %if.then10
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- $r8d
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 339 5                         # spec_mem_io/spec_mem_io.c:339:5
	movq	%r14, (%rsp)
	movl	$.L.str.44, %edi
.Ltmp480:
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rcx
	movq	%rcx, %rsi
.Ltmp481:
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $eax
	movl	%eax, %edx
	movl	%r8d, %ecx
.Ltmp482:
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rsi
	movq	%rbx, %r8
.Ltmp483:
	#DEBUG_VALUE: spec_mem_lseek:fd <- $ecx
	movl	%ebp, %r9d
	xorl	%eax, %eax
.Ltmp484:
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $edx
	callq	printf@PLT
.Ltmp485:
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp486:
.LBB11_5:                               # %if.end13
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	16(%r12), %r15
	.loc	0 340 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:340:9
	testl	%ebp, %ebp
	je	.LBB11_10
.Ltmp487:
# %bb.6:                                # %if.end13
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 0 9 is_stmt 0                 # spec_mem_io/spec_mem_io.c:0:9
	movq	%r15, %rax
	.loc	0 340 9                         # spec_mem_io/spec_mem_io.c:340:9
	cmpl	$1, %ebp
	je	.LBB11_9
.Ltmp488:
# %bb.7:                                # %if.end13
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	cmpl	$2, %ebp
	jne	.LBB11_16
.Ltmp489:
# %bb.8:                                # %if.then26
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 345 31 is_stmt 1              # spec_mem_io/spec_mem_io.c:345:31
	addq	$8, %r12
	movq	%r12, %rax
.Ltmp490:
.LBB11_9:                               # %if.end45.sink.split
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 0 0 is_stmt 0                 # spec_mem_io/spec_mem_io.c:0:0
	addq	(%rax), %rbx
.Ltmp491:
	#DEBUG_VALUE: spec_mem_lseek:offset <- [DW_OP_LLVM_entry_value 1] $rcx
.LBB11_10:                              # %if.end45
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	movq	%rbx, (%r15)
.Ltmp492:
	movl	dbglvl(%rip), %eax
.Ltmp493:
	.loc	0 352 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:352:21
	testq	%rbx, %rbx
.Ltmp494:
	.loc	0 352 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:352:9
	js	.LBB11_13
.Ltmp495:
# %bb.11:                               # %if.end63
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	cmpl	$5, %eax
.Ltmp496:
	.loc	0 359 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:359:5
	jl	.LBB11_20
.Ltmp497:
# %bb.12:                               # %if.then65
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 359 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:359:5
	movl	$.L.str.47, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp498:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp499:
	.loc	0 360 20 is_stmt 1              # spec_mem_io/spec_mem_io.c:360:20
	movq	(%r15), %rbx
	jmp	.LBB11_20
.Ltmp500:
.LBB11_13:                              # %if.then50
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 0 0 is_stmt 0                 # spec_mem_io/spec_mem_io.c:0:0
	cmpl	$5, %eax
.Ltmp501:
	.loc	0 353 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:353:9
	jl	.LBB11_15
.Ltmp502:
# %bb.14:                               # %if.then52
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 353 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:353:9
	movl	$.L.str.46, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp503:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp504:
.LBB11_15:                              # %if.end58
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 354 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:354:21
	movq	%r14, (%r15)
	.loc	0 355 9                         # spec_mem_io/spec_mem_io.c:355:9
	jmp	.LBB11_18
.Ltmp505:
.LBB11_16:                              # %if.else33
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 347 9                         # spec_mem_io/spec_mem_io.c:347:9
	cmpl	$5, dbglvl(%rip)
.Ltmp506:
	.loc	0 347 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:347:9
	jl	.LBB11_18
.Ltmp507:
# %bb.17:                               # %if.then35
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 347 9                         # spec_mem_io/spec_mem_io.c:347:9
	movq	(%r15), %rsi
	movl	$.L.str.45, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp508:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp509:
.LBB11_18:                              # %if.end41
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- $r14
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	callq	__errno_location@PLT
.Ltmp510:
	movl	$22, (%rax)
.Ltmp511:
.LBB11_19:                              # %cleanup
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	movq	$-1, %rbx
.Ltmp512:
.LBB11_20:                              # %cleanup
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	.loc	0 361 1 is_stmt 1               # spec_mem_io/spec_mem_io.c:361:1
	movq	%rbx, %rax
	.loc	0 361 1 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:361:1
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp513:
	#DEBUG_VALUE: spec_mem_lseek:whence <- [DW_OP_LLVM_entry_value 1] $r8d
	.cfi_def_cfa_offset 8
	retq
.Ltmp514:
.LBB11_21:                              # %if.then3
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- $r8d
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- -1
	.loc	0 333 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:333:17
	movq	stderr@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
.Ltmp515:
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rcx
	.loc	0 333 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:333:9
	movl	%ebp, (%rsp)
	movl	$.L.str.43, %esi
.Ltmp516:
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $eax
	movq	%rcx, %rdx
	movl	%eax, %ecx
.Ltmp517:
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rdx
	movq	%rbx, %r9
	xorl	%eax, %eax
.Ltmp518:
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $ecx
	callq	fprintf@PLT
.Ltmp519:
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 334 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:334:2
	callq	__errno_location@PLT
.Ltmp520:
	.loc	0 334 8 is_stmt 0               # spec_mem_io/spec_mem_io.c:334:8
	movl	$9, (%rax)
	jmp	.LBB11_19
.Ltmp521:
.LBB11_22:                              # %if.then
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_lseek:fd <- $edx
	#DEBUG_VALUE: spec_mem_lseek:offset <- $rbx
	#DEBUG_VALUE: spec_mem_lseek:whence <- $ebp
	#DEBUG_VALUE: spec_mem_lseek:cur_pos <- -1
	.loc	0 329 10 is_stmt 1              # spec_mem_io/spec_mem_io.c:329:10
	movq	stderr@GOTPCREL(%rip), %rdx
.Ltmp522:
	#DEBUG_VALUE: spec_mem_lseek:fd <- $r8d
	movq	(%rdx), %rdi
.Ltmp523:
	#DEBUG_VALUE: spec_mem_lseek:fds <- $rcx
	.loc	0 329 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:329:2
	movl	$.L.str.42, %esi
.Ltmp524:
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $eax
	movl	%r8d, %edx
	movl	%eax, %r8d
.Ltmp525:
	#DEBUG_VALUE: spec_mem_lseek:fd <- $edx
	xorl	%eax, %eax
.Ltmp526:
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- $r8d
	callq	fprintf@PLT
.Ltmp527:
	#DEBUG_VALUE: spec_mem_lseek:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_lseek:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_lseek:fd <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 330 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:330:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp528:
.Lfunc_end11:
	.size	spec_mem_lseek, .Lfunc_end11-spec_mem_lseek
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_rewind                 # -- Begin function spec_mem_rewind
	.p2align	4, 0x90
	.type	spec_mem_rewind,@function
spec_mem_rewind:                        # @spec_mem_rewind
.Lfunc_begin12:
	.loc	0 363 0                         # spec_mem_io/spec_mem_io.c:363:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_rewind:fds <- $rdi
	#DEBUG_VALUE: spec_mem_rewind:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_rewind:fd <- $edx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r14
.Ltmp529:
	.loc	0 364 5 prologue_end            # spec_mem_io/spec_mem_io.c:364:5
	cmpl	$5, dbglvl(%rip)
.Ltmp530:
	.loc	0 364 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:364:5
	jl	.LBB12_2
.Ltmp531:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: spec_mem_rewind:fds <- $r14
	#DEBUG_VALUE: spec_mem_rewind:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_rewind:fd <- $ebx
	.loc	0 364 5                         # spec_mem_io/spec_mem_io.c:364:5
	movl	$.L.str.48, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp532:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp533:
.LBB12_2:                               # %if.end
	#DEBUG_VALUE: spec_mem_rewind:fds <- $r14
	#DEBUG_VALUE: spec_mem_rewind:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_rewind:fd <- $ebx
	.loc	0 365 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:365:5
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	spec_mem_lseek
.Ltmp534:
	.loc	0 366 5                         # spec_mem_io/spec_mem_io.c:366:5
	xorl	%eax, %eax
	.loc	0 366 5 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:366:5
	popq	%rbx
.Ltmp535:
	#DEBUG_VALUE: spec_mem_rewind:fd <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp536:
	#DEBUG_VALUE: spec_mem_rewind:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp537:
	#DEBUG_VALUE: spec_mem_rewind:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp538:
.Lfunc_end12:
	.size	spec_mem_rewind, .Lfunc_end12-spec_mem_rewind
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_reset                  # -- Begin function spec_mem_reset
	.p2align	4, 0x90
	.type	spec_mem_reset,@function
spec_mem_reset:                         # @spec_mem_reset
.Lfunc_begin13:
	.loc	0 369 0 is_stmt 1               # spec_mem_io/spec_mem_io.c:369:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_reset:fds <- $rdi
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_reset:fd <- $edx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	movq	%rdi, %r14
.Ltmp539:
	.loc	0 370 5 prologue_end            # spec_mem_io/spec_mem_io.c:370:5
	cmpl	$5, dbglvl(%rip)
.Ltmp540:
	.loc	0 370 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:370:5
	jl	.LBB13_2
.Ltmp541:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	movl	%esi, %edx
.Ltmp542:
	.loc	0 370 5                         # spec_mem_io/spec_mem_io.c:370:5
	movl	$.L.str.49, %edi
	movq	%r14, %rsi
.Ltmp543:
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- $edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp544:
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp545:
.LBB13_2:                               # %if.end
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 371 12 is_stmt 1              # spec_mem_io/spec_mem_io.c:371:12
	movslq	%ebx, %rax
	leaq	(%rax,%rax,4), %r15
	.loc	0 371 36 is_stmt 0              # spec_mem_io/spec_mem_io.c:371:36
	movq	8(%r14,%r15,8), %rdx
	.loc	0 371 20                        # spec_mem_io/spec_mem_io.c:371:20
	movq	32(%r14,%r15,8), %rdi
	.loc	0 371 5                         # spec_mem_io/spec_mem_io.c:371:5
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp546:
	.loc	0 372 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:372:17
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r14,%r15,8)
.Ltmp547:
	.loc	0 373 5                         # spec_mem_io/spec_mem_io.c:373:5
	cmpl	$6, dbglvl(%rip)
.Ltmp548:
	.loc	0 373 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:373:5
	jl	.LBB13_4
.Ltmp549:
# %bb.3:                                # %if.then10
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 373 5                         # spec_mem_io/spec_mem_io.c:373:5
	movl	$.L.str.50, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp550:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp551:
.LBB13_4:                               # %if.end16
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 374 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:374:5
	xorl	%eax, %eax
	.loc	0 374 5 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:374:5
	popq	%rbx
.Ltmp552:
	#DEBUG_VALUE: spec_mem_reset:fd <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp553:
	#DEBUG_VALUE: spec_mem_reset:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp554:
.Lfunc_end13:
	.size	spec_mem_reset, .Lfunc_end13-spec_mem_reset
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_get_length             # -- Begin function spec_mem_get_length
	.p2align	4, 0x90
	.type	spec_mem_get_length,@function
spec_mem_get_length:                    # @spec_mem_get_length
.Lfunc_begin14:
	.loc	0 377 0 is_stmt 1               # spec_mem_io/spec_mem_io.c:377:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_get_length:fds <- $rdi
	#DEBUG_VALUE: spec_mem_get_length:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_get_length:fd <- $edx
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edx, %eax
	movl	%esi, %ecx
	movq	%rdi, %rdx
.Ltmp555:
	#DEBUG_VALUE: spec_mem_get_length:fd <- $eax
	.loc	0 378 9 prologue_end            # spec_mem_io/spec_mem_io.c:378:9
	movslq	%eax, %rsi
.Ltmp556:
	#DEBUG_VALUE: spec_mem_get_length:fd_limit <- $ecx
	leaq	(%rsi,%rsi,4), %rsi
	.loc	0 378 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:378:22
	cmpl	$1, 24(%rdi,%rsi,8)
.Ltmp557:
	.loc	0 378 9                         # spec_mem_io/spec_mem_io.c:378:9
	jne	.LBB14_1
.Ltmp558:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: spec_mem_get_length:fds <- $rdi
	#DEBUG_VALUE: spec_mem_get_length:fd_limit <- $ecx
	#DEBUG_VALUE: spec_mem_get_length:fd <- $eax
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%rdx,%rsi,8), %rbx
.Ltmp559:
	.loc	0 382 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:382:5
	cmpl	$5, dbglvl(%rip)
.Ltmp560:
	.loc	0 382 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:382:5
	jl	.LBB14_4
.Ltmp561:
# %bb.3:                                # %if.then2
	#DEBUG_VALUE: spec_mem_get_length:fds <- $rdi
	#DEBUG_VALUE: spec_mem_get_length:fd_limit <- $ecx
	#DEBUG_VALUE: spec_mem_get_length:fd <- $eax
	.loc	0 382 5                         # spec_mem_io/spec_mem_io.c:382:5
	movq	8(%rbx), %r8
	movl	$.L.str.52, %edi
.Ltmp562:
	#DEBUG_VALUE: spec_mem_get_length:fds <- $rdx
	movq	%rdx, %rsi
	movl	%ecx, %edx
.Ltmp563:
	#DEBUG_VALUE: spec_mem_get_length:fds <- $rsi
	movl	%eax, %ecx
.Ltmp564:
	#DEBUG_VALUE: spec_mem_get_length:fd_limit <- $edx
	xorl	%eax, %eax
.Ltmp565:
	#DEBUG_VALUE: spec_mem_get_length:fd <- $ecx
	callq	printf@PLT
.Ltmp566:
	#DEBUG_VALUE: spec_mem_get_length:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_get_length:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_get_length:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp567:
.LBB14_4:                               # %if.end7
	#DEBUG_VALUE: spec_mem_get_length:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_get_length:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_get_length:fd <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 383 20 is_stmt 1              # spec_mem_io/spec_mem_io.c:383:20
	movq	8(%rbx), %rax
	.loc	0 384 1 epilogue_begin          # spec_mem_io/spec_mem_io.c:384:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp568:
.LBB14_1:                               # %if.then
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: spec_mem_get_length:fds <- $rdi
	#DEBUG_VALUE: spec_mem_get_length:fd_limit <- $ecx
	#DEBUG_VALUE: spec_mem_get_length:fd <- $eax
	.loc	0 379 10                        # spec_mem_io/spec_mem_io.c:379:10
	movq	stderr@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rdi
.Ltmp569:
	#DEBUG_VALUE: spec_mem_get_length:fds <- $rdx
	.loc	0 379 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:379:2
	movl	$.L.str.51, %esi
	movl	%eax, %r8d
	xorl	%eax, %eax
.Ltmp570:
	#DEBUG_VALUE: spec_mem_get_length:fd <- $r8d
	callq	fprintf@PLT
.Ltmp571:
	#DEBUG_VALUE: spec_mem_get_length:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_get_length:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_get_length:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 0 2                           # spec_mem_io/spec_mem_io.c:0:2
	movq	$-1, %rax
.Ltmp572:
	.loc	0 384 1 epilogue_begin is_stmt 1 # spec_mem_io/spec_mem_io.c:384:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp573:
.Lfunc_end14:
	.size	spec_mem_get_length, .Lfunc_end14-spec_mem_get_length
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_fopen                  # -- Begin function spec_mem_fopen
	.p2align	4, 0x90
	.type	spec_mem_fopen,@function
spec_mem_fopen:                         # @spec_mem_fopen
.Lfunc_begin15:
	.loc	0 386 0                         # spec_mem_io/spec_mem_io.c:386:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_fopen:fds <- $rdi
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_fopen:filename <- $rdx
	#DEBUG_VALUE: spec_mem_fopen:mode <- $rcx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r12
	movl	%esi, %ebp
	movq	%rdi, %r14
.Ltmp574:
	.loc	0 387 19 prologue_end           # spec_mem_io/spec_mem_io.c:387:19
	movq	%rdx, %rdi
.Ltmp575:
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	xorl	%esi, %esi
.Ltmp576:
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	movl	$10, %edx
.Ltmp577:
	#DEBUG_VALUE: spec_mem_fopen:filename <- $r12
	callq	strtol@PLT
.Ltmp578:
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	movq	%rax, %rbx
.Ltmp579:
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	.loc	0 388 12                        # spec_mem_io/spec_mem_io.c:388:12
	testl	%ebx, %ebx
	setns	%al
	cmpl	%ebp, %ebx
	setb	%cl
	.loc	0 388 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:388:16
	testb	%cl, %al
	je	.LBB15_1
.Ltmp580:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- $r12
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	.loc	0 392 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:392:5
	cmpl	$5, dbglvl(%rip)
.Ltmp581:
	.loc	0 392 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:392:5
	jl	.LBB15_4
.Ltmp582:
# %bb.3:                                # %if.then7
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- $r12
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	.loc	0 392 5                         # spec_mem_io/spec_mem_io.c:392:5
	movl	$.L.str.53, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	movl	%ebx, %r9d
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp583:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp584:
.LBB15_4:                               # %if.end10
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- $r12
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	.loc	0 393 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:393:5
	movl	%ebx, %eax
	andl	$2147483647, %eax               # imm = 0x7FFFFFFF
	leaq	(%rax,%rax,4), %rax
	.loc	0 393 18 is_stmt 0              # spec_mem_io/spec_mem_io.c:393:18
	movl	$1, 24(%r14,%rax,8)
.Ltmp585:
	.loc	0 397 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:397:9
	movzbl	(%r15), %ecx
	cmpl	$114, %ecx
.Ltmp586:
	.loc	0 397 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:397:9
	je	.LBB15_12
.Ltmp587:
# %bb.5:                                # %if.end10
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- $r12
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	cmpl	$119, %ecx
	jne	.LBB15_16
.Ltmp588:
# %bb.6:                                # %if.then15
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- $r12
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%r14,%rax,8), %r12
.Ltmp589:
	#DEBUG_VALUE: spec_mem_fopen:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 398 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:398:21
	cmpb	$43, 1(%r15)
.Ltmp590:
	.loc	0 398 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:398:13
	jne	.LBB15_8
.Ltmp591:
# %bb.7:                                # %if.then20
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	.loc	0 399 55 is_stmt 1              # spec_mem_io/spec_mem_io.c:399:55
	movq	16(%r12), %rcx
	.loc	0 399 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:399:13
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	jmp	.LBB15_15
.Ltmp592:
.LBB15_1:                               # %if.then
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- $r12
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	.loc	0 389 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:389:9
	callq	__errno_location@PLT
.Ltmp593:
	.loc	0 389 15 is_stmt 0              # spec_mem_io/spec_mem_io.c:389:15
	movl	$2, (%rax)
	movl	$-1, %ebx
.Ltmp594:
	.loc	0 390 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:390:9
	jmp	.LBB15_16
.Ltmp595:
.LBB15_12:                              # %if.then31
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- $r12
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	#DEBUG_VALUE: spec_mem_rewind:fds <- $r14
	#DEBUG_VALUE: spec_mem_rewind:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_rewind:fd <- $ebx
	.loc	0 364 5                         # spec_mem_io/spec_mem_io.c:364:5
	cmpl	$5, dbglvl(%rip)
.Ltmp596:
	.loc	0 364 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:364:5
	jl	.LBB15_14
.Ltmp597:
# %bb.13:                               # %if.then.i58
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- $r12
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	#DEBUG_VALUE: spec_mem_rewind:fds <- $r14
	#DEBUG_VALUE: spec_mem_rewind:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_rewind:fd <- $ebx
	.loc	0 364 5                         # spec_mem_io/spec_mem_io.c:364:5
	movl	$.L.str.48, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp598:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp599:
.LBB15_14:                              # %spec_mem_rewind.exit
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- $r12
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	#DEBUG_VALUE: spec_mem_rewind:fds <- $r14
	#DEBUG_VALUE: spec_mem_rewind:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_rewind:fd <- $ebx
	.loc	0 365 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:365:5
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
.Ltmp600:
.LBB15_15:                              # %cleanup
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	.loc	0 0 0 is_stmt 0                 # spec_mem_io/spec_mem_io.c:0:0
	xorl	%r8d, %r8d
	callq	spec_mem_lseek
.Ltmp601:
.LBB15_16:                              # %cleanup
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	.loc	0 406 1 is_stmt 1               # spec_mem_io/spec_mem_io.c:406:1
	movl	%ebx, %eax
	.loc	0 406 1 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:406:1
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp602:
	#DEBUG_VALUE: spec_mem_fopen:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp603:
	#DEBUG_VALUE: spec_mem_fopen:mode <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp604:
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp605:
.LBB15_8:                               # %if.else
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 370 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:370:5
	cmpl	$5, dbglvl(%rip)
.Ltmp606:
	.loc	0 370 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:370:5
	jl	.LBB15_10
.Ltmp607:
# %bb.9:                                # %if.then.i
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 370 5                         # spec_mem_io/spec_mem_io.c:370:5
	movl	$.L.str.49, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp608:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp609:
.LBB15_10:                              # %if.end.i
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 371 36 is_stmt 1              # spec_mem_io/spec_mem_io.c:371:36
	movq	8(%r12), %rdx
	.loc	0 371 20 is_stmt 0              # spec_mem_io/spec_mem_io.c:371:20
	movq	32(%r12), %rdi
	.loc	0 371 5                         # spec_mem_io/spec_mem_io.c:371:5
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp610:
	.loc	0 372 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:372:17
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r12)
.Ltmp611:
	.loc	0 373 5                         # spec_mem_io/spec_mem_io.c:373:5
	cmpl	$6, dbglvl(%rip)
.Ltmp612:
	.loc	0 373 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:373:5
	jl	.LBB15_16
.Ltmp613:
# %bb.11:                               # %if.then10.i
	#DEBUG_VALUE: spec_mem_fopen:fds <- $r14
	#DEBUG_VALUE: spec_mem_fopen:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_fopen:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_fopen:mode <- $r15
	#DEBUG_VALUE: spec_mem_fopen:fd <- $ebx
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 373 5                         # spec_mem_io/spec_mem_io.c:373:5
	movl	$.L.str.50, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp614:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp615:
	jmp	.LBB15_16
.Ltmp616:
.Lfunc_end15:
	.size	spec_mem_fopen, .Lfunc_end15-spec_mem_fopen
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_open                   # -- Begin function spec_mem_open
	.p2align	4, 0x90
	.type	spec_mem_open,@function
spec_mem_open:                          # @spec_mem_open
.Lfunc_begin16:
	.loc	0 408 0 is_stmt 1               # spec_mem_io/spec_mem_io.c:408:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_open:fds <- $rdi
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_open:filename <- $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $ecx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movl	%esi, %ebp
	movq	%rdi, %r14
.Ltmp617:
	.loc	0 409 19 prologue_end           # spec_mem_io/spec_mem_io.c:409:19
	movq	%rdx, %rdi
.Ltmp618:
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	xorl	%esi, %esi
.Ltmp619:
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	movl	$10, %edx
.Ltmp620:
	#DEBUG_VALUE: spec_mem_open:filename <- $r12
	callq	strtol@PLT
.Ltmp621:
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	movq	%rax, %rbx
.Ltmp622:
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 410 12                        # spec_mem_io/spec_mem_io.c:410:12
	testl	%ebx, %ebx
	setns	%al
	cmpl	%ebp, %ebx
	setb	%cl
	.loc	0 410 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:410:16
	testb	%cl, %al
	je	.LBB16_1
.Ltmp623:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- $r12
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 414 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:414:5
	cmpl	$5, dbglvl(%rip)
.Ltmp624:
	.loc	0 414 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:414:5
	jl	.LBB16_4
.Ltmp625:
# %bb.3:                                # %if.then7
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- $r12
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 414 5                         # spec_mem_io/spec_mem_io.c:414:5
	movl	$.L.str.54, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movq	%r12, %rcx
	movl	%r15d, %r8d
	movl	%ebx, %r9d
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp626:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp627:
.LBB16_4:                               # %if.end10
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- $r12
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 415 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:415:5
	movl	%ebx, %eax
	andl	$2147483647, %eax               # imm = 0x7FFFFFFF
	leaq	(%rax,%rax,4), %rax
	.loc	0 415 18 is_stmt 0              # spec_mem_io/spec_mem_io.c:415:18
	movl	$1, 24(%r14,%rax,8)
.Ltmp628:
	.loc	0 416 27 is_stmt 1              # spec_mem_io/spec_mem_io.c:416:27
	testb	$3, %r15b
	je	.LBB16_12
.Ltmp629:
# %bb.5:                                # %if.then14
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- $r12
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 0 0 is_stmt 0                 # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%r14,%rax,8), %r12
.Ltmp630:
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	.loc	0 417 18 is_stmt 1              # spec_mem_io/spec_mem_io.c:417:18
	testl	$512, %r15d                     # imm = 0x200
.Ltmp631:
	.loc	0 417 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:417:13
	je	.LBB16_10
.Ltmp632:
# %bb.6:                                # %if.then17
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 370 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:370:5
	cmpl	$5, dbglvl(%rip)
.Ltmp633:
	.loc	0 370 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:370:5
	jl	.LBB16_8
.Ltmp634:
# %bb.7:                                # %if.then.i
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 370 5                         # spec_mem_io/spec_mem_io.c:370:5
	movl	$.L.str.49, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp635:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp636:
.LBB16_8:                               # %if.end.i
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 371 36 is_stmt 1              # spec_mem_io/spec_mem_io.c:371:36
	movq	8(%r12), %rdx
	.loc	0 371 20 is_stmt 0              # spec_mem_io/spec_mem_io.c:371:20
	movq	32(%r12), %rdi
	.loc	0 371 5                         # spec_mem_io/spec_mem_io.c:371:5
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp637:
	.loc	0 372 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:372:17
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r12)
.Ltmp638:
	.loc	0 373 5                         # spec_mem_io/spec_mem_io.c:373:5
	cmpl	$6, dbglvl(%rip)
.Ltmp639:
	.loc	0 373 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:373:5
	jl	.LBB16_10
.Ltmp640:
# %bb.9:                                # %if.then10.i
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	#DEBUG_VALUE: spec_mem_reset:fds <- $r14
	#DEBUG_VALUE: spec_mem_reset:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_reset:fd <- $ebx
	.loc	0 373 5                         # spec_mem_io/spec_mem_io.c:373:5
	movl	$.L.str.50, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp641:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp642:
.LBB16_10:                              # %if.end19
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 419 18 is_stmt 1              # spec_mem_io/spec_mem_io.c:419:18
	testl	$1024, %r15d                    # imm = 0x400
.Ltmp643:
	.loc	0 419 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:419:13
	jne	.LBB16_11
.Ltmp644:
.LBB16_12:                              # %if.else28
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 364 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:364:5
	cmpl	$5, dbglvl(%rip)
.Ltmp645:
	.loc	0 364 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:364:5
	jl	.LBB16_14
.Ltmp646:
# %bb.13:                               # %if.then.i65
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 364 5                         # spec_mem_io/spec_mem_io.c:364:5
	movl	$.L.str.48, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp647:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp648:
.LBB16_14:                              # %spec_mem_rewind.exit68
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 365 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:365:5
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	jmp	.LBB16_15
.Ltmp649:
.LBB16_1:                               # %if.then
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- $r12
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 411 9                         # spec_mem_io/spec_mem_io.c:411:9
	callq	__errno_location@PLT
.Ltmp650:
	.loc	0 411 15 is_stmt 0              # spec_mem_io/spec_mem_io.c:411:15
	movl	$2, (%rax)
	movl	$-1, %ebx
.Ltmp651:
	.loc	0 412 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:412:9
	jmp	.LBB16_16
.Ltmp652:
.LBB16_11:                              # %if.then22
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 420 55                        # spec_mem_io/spec_mem_io.c:420:55
	movq	16(%r12), %rcx
	.loc	0 420 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:420:13
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
.Ltmp653:
.LBB16_15:                              # %cleanup
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	#DEBUG_VALUE: spec_mem_open:fd <- $ebx
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	xorl	%r8d, %r8d
	callq	spec_mem_lseek
.Ltmp654:
.LBB16_16:                              # %cleanup
	#DEBUG_VALUE: spec_mem_open:fds <- $r14
	#DEBUG_VALUE: spec_mem_open:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_open:filename <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: spec_mem_open:mode <- $r15d
	.loc	0 427 1 is_stmt 1               # spec_mem_io/spec_mem_io.c:427:1
	movl	%ebx, %eax
	.loc	0 427 1 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:427:1
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp655:
	#DEBUG_VALUE: spec_mem_open:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp656:
	#DEBUG_VALUE: spec_mem_open:mode <- [DW_OP_LLVM_entry_value 1] $ecx
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp657:
	#DEBUG_VALUE: spec_mem_open:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	retq
.Ltmp658:
.Lfunc_end16:
	.size	spec_mem_open, .Lfunc_end16-spec_mem_open
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_write                  # -- Begin function spec_mem_write
	.p2align	4, 0x90
	.type	spec_mem_write,@function
spec_mem_write:                         # @spec_mem_write
.Lfunc_begin17:
	.loc	0 429 0 is_stmt 1               # spec_mem_io/spec_mem_io.c:429:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_write:fds <- $rdi
	#DEBUG_VALUE: spec_mem_write:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_write:fd <- $edx
	#DEBUG_VALUE: spec_mem_write:buf <- $rcx
	#DEBUG_VALUE: spec_mem_write:size <- $r8
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movl	%edx, %ebp
	movl	%esi, %r12d
	movq	%rdi, %r15
.Ltmp659:
	.loc	0 430 5 prologue_end            # spec_mem_io/spec_mem_io.c:430:5
	cmpl	$6, dbglvl(%rip)
.Ltmp660:
	.loc	0 430 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:430:5
	jl	.LBB17_2
.Ltmp661:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	.loc	0 430 5                         # spec_mem_io/spec_mem_io.c:430:5
	movl	$.L.str.55, %edi
	movq	%r15, %rsi
	movl	%r12d, %edx
	movl	%ebp, %ecx
	movq	%r14, %r8
	movq	%rbx, %r9
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp662:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp663:
.LBB17_2:                               # %if.end
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	.loc	0 431 12 is_stmt 1              # spec_mem_io/spec_mem_io.c:431:12
	testl	%ebp, %ebp
	.loc	0 431 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:431:16
	js	.LBB17_13
.Ltmp664:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	cmpl	%r12d, %ebp
	jae	.LBB17_13
.Ltmp665:
# %bb.4:                                # %if.end6
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	.loc	0 435 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:435:9
	movl	%ebp, %eax
	leaq	(%rax,%rax,4), %rax
	.loc	0 435 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:435:22
	cmpl	$1, 24(%r15,%rax,8)
.Ltmp666:
	.loc	0 435 9                         # spec_mem_io/spec_mem_io.c:435:9
	jne	.LBB17_14
.Ltmp667:
# %bb.5:                                # %while.cond.preheader
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%r15,%rax,8), %r12
.Ltmp668:
	#DEBUG_VALUE: spec_mem_write:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 440 20 is_stmt 1              # spec_mem_io/spec_mem_io.c:440:20
	movq	16(%r12), %rdi
	.loc	0 440 24 is_stmt 0              # spec_mem_io/spec_mem_io.c:440:24
	leaq	(%rdi,%rbx), %rax
	.loc	0 440 31                        # spec_mem_io/spec_mem_io.c:440:31
	cmpq	(%r12), %rax
	.loc	0 440 5                         # spec_mem_io/spec_mem_io.c:440:5
	jle	.LBB17_8
.Ltmp669:
	.p2align	4, 0x90
.LBB17_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	.loc	0 441 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:441:9
	movl	$.L.str.58, %edx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	fd_grow
.Ltmp670:
	.loc	0 440 20                        # spec_mem_io/spec_mem_io.c:440:20
	movq	16(%r12), %rdi
	.loc	0 440 24 is_stmt 0              # spec_mem_io/spec_mem_io.c:440:24
	leaq	(%rdi,%rbx), %rax
	.loc	0 440 31                        # spec_mem_io/spec_mem_io.c:440:31
	cmpq	(%r12), %rax
	.loc	0 440 5                         # spec_mem_io/spec_mem_io.c:440:5
	jg	.LBB17_6
.Ltmp671:
.LBB17_8:                               # %while.end
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	.loc	0 443 24 is_stmt 1              # spec_mem_io/spec_mem_io.c:443:24
	addq	32(%r12), %rdi
	.loc	0 443 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:443:5
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.Ltmp672:
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	movq	16(%r12), %rcx
	.loc	0 444 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:444:17
	addq	%rbx, %rcx
	movq	%rcx, 16(%r12)
.Ltmp673:
	.loc	0 445 31                        # spec_mem_io/spec_mem_io.c:445:31
	movq	8(%r12), %rdx
	.loc	0 445 21 is_stmt 0              # spec_mem_io/spec_mem_io.c:445:21
	cmpq	%rdx, %rcx
.Ltmp674:
	.loc	0 445 9                         # spec_mem_io/spec_mem_io.c:445:9
	jle	.LBB17_10
.Ltmp675:
# %bb.9:                                # %if.then33
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	.loc	0 446 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:446:21
	movq	%rcx, 8(%r12)
	movq	%rcx, %rdx
.Ltmp676:
.LBB17_10:                              # %if.end40
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	.loc	0 447 5                         # spec_mem_io/spec_mem_io.c:447:5
	cmpl	$6, dbglvl(%rip)
.Ltmp677:
	.loc	0 447 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:447:5
	jl	.LBB17_12
.Ltmp678:
# %bb.11:                               # %if.then42
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	.loc	0 447 5                         # spec_mem_io/spec_mem_io.c:447:5
	movq	(%r12), %r8
	movl	$.L.str.59, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp679:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp680:
.LBB17_12:                              # %return
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 449 1 is_stmt 1               # spec_mem_io/spec_mem_io.c:449:1
	movq	%rbx, %rax
	.loc	0 449 1 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:449:1
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp681:
	#DEBUG_VALUE: spec_mem_write:buf <- [DW_OP_LLVM_entry_value 1] $rcx
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp682:
	#DEBUG_VALUE: spec_mem_write:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp683:
	#DEBUG_VALUE: spec_mem_write:fd <- [DW_OP_LLVM_entry_value 1] $edx
	.cfi_def_cfa_offset 8
	retq
.Ltmp684:
.LBB17_14:                              # %if.then8
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	.loc	0 436 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:436:17
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 436 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:436:9
	movq	%rbx, (%rsp)
	movl	$.L.str.57, %esi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	movl	%ebp, %r8d
	movq	%r14, %r9
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp685:
	.loc	0 437 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:437:2
	callq	__errno_location@PLT
.Ltmp686:
	.loc	0 437 8 is_stmt 0               # spec_mem_io/spec_mem_io.c:437:8
	movl	$9, (%rax)
	movq	$-1, %rbx
.Ltmp687:
	#DEBUG_VALUE: spec_mem_write:size <- [DW_OP_LLVM_entry_value 1] $r8
	.loc	0 438 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:438:2
	jmp	.LBB17_12
.Ltmp688:
.LBB17_13:                              # %if.then4
	#DEBUG_VALUE: spec_mem_write:fds <- $r15
	#DEBUG_VALUE: spec_mem_write:fd_limit <- $r12d
	#DEBUG_VALUE: spec_mem_write:fd <- $ebp
	#DEBUG_VALUE: spec_mem_write:buf <- $r14
	#DEBUG_VALUE: spec_mem_write:size <- $rbx
	.loc	0 432 10                        # spec_mem_io/spec_mem_io.c:432:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 432 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:432:2
	movl	$.L.str.56, %esi
	movl	%ebp, %edx
	movq	%r15, %rcx
	movl	%r12d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp689:
	.loc	0 433 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:433:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp690:
.Lfunc_end17:
	.size	spec_mem_write, .Lfunc_end17-spec_mem_write
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_fwrite                 # -- Begin function spec_mem_fwrite
	.p2align	4, 0x90
	.type	spec_mem_fwrite,@function
spec_mem_fwrite:                        # @spec_mem_fwrite
.Lfunc_begin18:
	.loc	0 451 0                         # spec_mem_io/spec_mem_io.c:451:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $rdi
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $rdx
	#DEBUG_VALUE: spec_mem_fwrite:size <- $rcx
	#DEBUG_VALUE: spec_mem_fwrite:num <- $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r9d
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r8d, %r9d
.Ltmp691:
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movl	%esi, %r13d
	movq	%rdi, %r15
.Ltmp692:
	.loc	0 452 5 prologue_end            # spec_mem_io/spec_mem_io.c:452:5
	cmpl	$6, dbglvl(%rip)
.Ltmp693:
	.loc	0 452 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:452:5
	jl	.LBB18_2
.Ltmp694:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- $r13d
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- $rbx
	#DEBUG_VALUE: spec_mem_fwrite:num <- $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 452 5                         # spec_mem_io/spec_mem_io.c:452:5
	movl	%r14d, (%rsp)
	movl	$.L.str.60, %edi
	movq	%r15, %rsi
	movl	%r13d, %edx
	movq	%r12, %rcx
	movq	%rbx, %r8
.Ltmp695:
	#DEBUG_VALUE: spec_mem_fwrite:num <- $r9d
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	movl	%r9d, %ebp
	.loc	0 452 5                         # spec_mem_io/spec_mem_io.c:452:5
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp696:
	#DEBUG_VALUE: spec_mem_fwrite:num <- $ebp
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp697:
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	movl	%ebp, %r9d
.Ltmp698:
.LBB18_2:                               # %if.end
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- $r13d
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- $rbx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 453 12 is_stmt 1              # spec_mem_io/spec_mem_io.c:453:12
	testl	%r14d, %r14d
	.loc	0 453 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:453:16
	js	.LBB18_13
.Ltmp699:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- $r13d
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- $rbx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	cmpl	%r13d, %r14d
	jae	.LBB18_13
.Ltmp700:
# %bb.4:                                # %if.end6
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- $r13d
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- $rbx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 457 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:457:9
	movl	%r14d, %eax
	leaq	(%rax,%rax,4), %rax
	.loc	0 457 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:457:22
	cmpl	$1, 24(%r15,%rax,8)
.Ltmp701:
	.loc	0 457 9                         # spec_mem_io/spec_mem_io.c:457:9
	jne	.LBB18_14
.Ltmp702:
# %bb.5:                                # %while.cond.preheader
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- $r13d
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- $rbx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	leaq	(%r15,%rax,8), %rbp
	movl	%r9d, 20(%rsp)                  # 4-byte Spill
	movslq	%r9d, %r13
.Ltmp703:
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	imulq	%r13, %rbx
.Ltmp704:
	#DEBUG_VALUE: spec_mem_fwrite:size <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 461 20 is_stmt 1              # spec_mem_io/spec_mem_io.c:461:20
	movq	16(%rbp), %rdi
	.loc	0 461 24 is_stmt 0              # spec_mem_io/spec_mem_io.c:461:24
	leaq	(%rdi,%rbx), %rax
	.loc	0 461 39                        # spec_mem_io/spec_mem_io.c:461:39
	cmpq	(%rbp), %rax
	.loc	0 461 5                         # spec_mem_io/spec_mem_io.c:461:5
	jle	.LBB18_8
.Ltmp705:
	.p2align	4, 0x90
.LBB18_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 462 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:462:9
	movl	$.L.str.63, %edx
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	fd_grow
.Ltmp706:
	.loc	0 461 20                        # spec_mem_io/spec_mem_io.c:461:20
	movq	16(%rbp), %rdi
	.loc	0 461 24 is_stmt 0              # spec_mem_io/spec_mem_io.c:461:24
	leaq	(%rdi,%rbx), %rax
	.loc	0 461 39                        # spec_mem_io/spec_mem_io.c:461:39
	cmpq	(%rbp), %rax
	.loc	0 461 5                         # spec_mem_io/spec_mem_io.c:461:5
	jg	.LBB18_6
.Ltmp707:
.LBB18_8:                               # %while.end
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 464 24 is_stmt 1              # spec_mem_io/spec_mem_io.c:464:24
	addq	32(%rbp), %rdi
	.loc	0 464 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:464:5
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.Ltmp708:
	.loc	0 465 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:465:17
	addq	16(%rbp), %rbx
	movq	%rbx, 16(%rbp)
.Ltmp709:
	.loc	0 466 31                        # spec_mem_io/spec_mem_io.c:466:31
	movq	8(%rbp), %rdx
	.loc	0 466 21 is_stmt 0              # spec_mem_io/spec_mem_io.c:466:21
	cmpq	%rdx, %rbx
.Ltmp710:
	.loc	0 466 9                         # spec_mem_io/spec_mem_io.c:466:9
	jle	.LBB18_10
.Ltmp711:
# %bb.9:                                # %if.then38
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 467 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:467:21
	movq	%rbx, 8(%rbp)
	movq	%rbx, %rdx
.Ltmp712:
.LBB18_10:                              # %if.end45
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 468 5                         # spec_mem_io/spec_mem_io.c:468:5
	cmpl	$6, dbglvl(%rip)
	movl	20(%rsp), %esi                  # 4-byte Reload
.Ltmp713:
	.loc	0 468 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:468:5
	jl	.LBB18_12
.Ltmp714:
# %bb.11:                               # %if.then48
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 468 5                         # spec_mem_io/spec_mem_io.c:468:5
	movq	(%rbp), %r8
	movl	$.L.str.64, %edi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp715:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp716:
.LBB18_12:                              # %if.end60
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- [DW_OP_LLVM_entry_value 1] $rcx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 469 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:469:5
	movq	%r13, %rax
	.loc	0 469 5 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:469:5
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
.Ltmp717:
	#DEBUG_VALUE: spec_mem_fwrite:buf <- [DW_OP_LLVM_entry_value 1] $rdx
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp718:
	#DEBUG_VALUE: spec_mem_fwrite:fd <- [DW_OP_LLVM_entry_value 1] $r9d
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp719:
	#DEBUG_VALUE: spec_mem_fwrite:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp720:
.LBB18_13:                              # %if.then4
	.cfi_def_cfa_offset 80
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- $r13d
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- $rbx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 454 10 is_stmt 1              # spec_mem_io/spec_mem_io.c:454:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 454 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:454:2
	movl	$.L.str.61, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	movl	%r13d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp721:
	.loc	0 455 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:455:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp722:
.LBB18_14:                              # %if.then8
	#DEBUG_VALUE: spec_mem_fwrite:fds <- $r15
	#DEBUG_VALUE: spec_mem_fwrite:fd_limit <- $r13d
	#DEBUG_VALUE: spec_mem_fwrite:buf <- $r12
	#DEBUG_VALUE: spec_mem_fwrite:size <- $rbx
	#DEBUG_VALUE: spec_mem_fwrite:num <- [DW_OP_LLVM_entry_value 1] $r8d
	#DEBUG_VALUE: spec_mem_fwrite:fd <- $r14d
	.loc	0 458 10                        # spec_mem_io/spec_mem_io.c:458:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 458 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:458:2
	movl	$.L.str.62, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp723:
	.loc	0 459 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:459:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp724:
.Lfunc_end18:
	.size	spec_mem_fwrite, .Lfunc_end18-spec_mem_fwrite
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_putc                   # -- Begin function spec_mem_putc
	.p2align	4, 0x90
	.type	spec_mem_putc,@function
spec_mem_putc:                          # @spec_mem_putc
.Lfunc_begin19:
	.loc	0 472 0                         # spec_mem_io/spec_mem_io.c:472:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_putc:fds <- $rdi
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_putc:ch <- $edx
	#DEBUG_VALUE: spec_mem_putc:fd <- $ecx
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
.Ltmp725:
	.loc	0 473 5 prologue_end            # spec_mem_io/spec_mem_io.c:473:5
	cmpl	$5, dbglvl(%rip)
.Ltmp726:
	.loc	0 473 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:473:5
	jl	.LBB19_2
.Ltmp727:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	.loc	0 473 5                         # spec_mem_io/spec_mem_io.c:473:5
	movl	$.L.str.65, %edi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp728:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp729:
.LBB19_2:                               # %if.end
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	.loc	0 474 12 is_stmt 1              # spec_mem_io/spec_mem_io.c:474:12
	testl	%ebp, %ebp
	.loc	0 474 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:474:16
	js	.LBB19_11
.Ltmp730:
# %bb.3:                                # %if.end
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	cmpl	%r15d, %ebp
	jae	.LBB19_11
.Ltmp731:
# %bb.4:                                # %if.end6
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	.loc	0 478 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:478:9
	movl	%ebp, %eax
	leaq	(%rax,%rax,4), %rax
	.loc	0 478 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:478:22
	cmpl	$1, 24(%rbx,%rax,8)
.Ltmp732:
	.loc	0 478 9                         # spec_mem_io/spec_mem_io.c:478:9
	jne	.LBB19_12
.Ltmp733:
# %bb.5:                                # %if.end10
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%rbx,%rax,8), %r15
.Ltmp734:
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 482 28 is_stmt 1              # spec_mem_io/spec_mem_io.c:482:28
	movq	16(%r15), %rax
	.loc	0 482 13 is_stmt 0              # spec_mem_io/spec_mem_io.c:482:13
	movq	32(%r15), %rcx
	.loc	0 482 28                        # spec_mem_io/spec_mem_io.c:482:28
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%r15)
	.loc	0 482 32                        # spec_mem_io/spec_mem_io.c:482:32
	movb	%r14b, (%rcx,%rax)
.Ltmp735:
	.loc	0 483 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:483:17
	movq	16(%r15), %rax
	.loc	0 483 21 is_stmt 0              # spec_mem_io/spec_mem_io.c:483:21
	cmpq	8(%r15), %rax
.Ltmp736:
	.loc	0 483 9                         # spec_mem_io/spec_mem_io.c:483:9
	jle	.LBB19_7
.Ltmp737:
# %bb.6:                                # %if.then23
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	.loc	0 484 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:484:21
	movq	%rax, 8(%r15)
.Ltmp738:
.LBB19_7:                               # %if.end30
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	.loc	0 485 5                         # spec_mem_io/spec_mem_io.c:485:5
	cmpl	$5, dbglvl(%rip)
.Ltmp739:
	.loc	0 485 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:485:5
	jl	.LBB19_10
.Ltmp740:
# %bb.8:                                # %if.end36
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	.loc	0 485 5                         # spec_mem_io/spec_mem_io.c:485:5
	movl	$.L.str.68, %edi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp741:
	movq	stdout@GOTPCREL(%rip), %r12
	movq	(%r12), %rdi
	callq	fflush@PLT
.Ltmp742:
	.loc	0 486 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:486:5
	cmpl	$6, dbglvl(%rip)
.Ltmp743:
	.loc	0 486 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:486:5
	jl	.LBB19_10
.Ltmp744:
# %bb.9:                                # %if.then39
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	.loc	0 486 5                         # spec_mem_io/spec_mem_io.c:486:5
	movq	16(%r15), %rcx
	movl	$.L.str.69, %edi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp745:
	movq	(%r12), %rdi
	callq	fflush@PLT
.Ltmp746:
.LBB19_10:                              # %if.end45
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	.loc	0 487 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:487:5
	movl	%r14d, %eax
	.loc	0 487 5 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:487:5
	popq	%rbx
.Ltmp747:
	#DEBUG_VALUE: spec_mem_putc:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp748:
	#DEBUG_VALUE: spec_mem_putc:ch <- $eax
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp749:
	#DEBUG_VALUE: spec_mem_putc:fd <- [DW_OP_LLVM_entry_value 1] $ecx
	.cfi_def_cfa_offset 8
	retq
.Ltmp750:
.LBB19_11:                              # %if.then4
	.cfi_def_cfa_offset 48
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	.loc	0 475 10 is_stmt 1              # spec_mem_io/spec_mem_io.c:475:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 475 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:475:2
	movl	$.L.str.66, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	movl	%r15d, %r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp751:
	.loc	0 476 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:476:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp752:
.LBB19_12:                              # %if.then8
	#DEBUG_VALUE: spec_mem_putc:fds <- $rbx
	#DEBUG_VALUE: spec_mem_putc:fd_limit <- $r15d
	#DEBUG_VALUE: spec_mem_putc:ch <- $r14d
	#DEBUG_VALUE: spec_mem_putc:fd <- $ebp
	.loc	0 479 10                        # spec_mem_io/spec_mem_io.c:479:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	.loc	0 479 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:479:2
	movl	$.L.str.67, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp753:
	.loc	0 480 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:480:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp754:
.Lfunc_end19:
	.size	spec_mem_putc, .Lfunc_end19-spec_mem_putc
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_feof                   # -- Begin function spec_mem_feof
	.p2align	4, 0x90
	.type	spec_mem_feof,@function
spec_mem_feof:                          # @spec_mem_feof
.Lfunc_begin20:
	.loc	0 490 0                         # spec_mem_io/spec_mem_io.c:490:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_feof:fds <- $rdi
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_feof:fd <- $edx
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	%edx, %ecx
	movl	%esi, %eax
	movq	%rdi, %rbx
.Ltmp755:
	.loc	0 491 12 prologue_end           # spec_mem_io/spec_mem_io.c:491:12
	testl	%edx, %edx
	.loc	0 491 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:491:16
	js	.LBB20_5
.Ltmp756:
# %bb.1:                                # %entry
	#DEBUG_VALUE: spec_mem_feof:fds <- $rbx
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_feof:fd <- $edx
	cmpl	%eax, %ecx
	jae	.LBB20_5
.Ltmp757:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: spec_mem_feof:fds <- $rbx
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_feof:fd <- $edx
	.loc	0 495 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:495:5
	cmpl	$5, dbglvl(%rip)
.Ltmp758:
	.loc	0 0 0 is_stmt 0                 # spec_mem_io/spec_mem_io.c:0:0
	movl	%ecx, %edx
.Ltmp759:
	#DEBUG_VALUE: spec_mem_feof:fd <- $ecx
	leaq	(%rdx,%rdx,4), %r14
.Ltmp760:
	.loc	0 495 5                         # spec_mem_io/spec_mem_io.c:495:5
	jl	.LBB20_4
.Ltmp761:
# %bb.3:                                # %if.then3
	#DEBUG_VALUE: spec_mem_feof:fds <- $rbx
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_feof:fd <- $edx
	.loc	0 495 5                         # spec_mem_io/spec_mem_io.c:495:5
	movq	16(%rbx,%r14,8), %r10
	movq	8(%rbx,%r14,8), %r9
	xorl	%r8d, %r8d
	cmpq	%r9, %r10
	setge	%r8b
	movl	$.L.str.71, %edi
	movq	%rbx, %rsi
.Ltmp762:
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- $eax
	movl	%eax, %edx
.Ltmp763:
	#DEBUG_VALUE: spec_mem_feof:fd <- $ecx
	xorl	%eax, %eax
.Ltmp764:
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- $edx
	pushq	(%rbx,%r14,8)
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	printf@PLT
.Ltmp765:
	#DEBUG_VALUE: spec_mem_feof:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp766:
.LBB20_4:                               # %if.end17
	#DEBUG_VALUE: spec_mem_feof:fds <- $rbx
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_feof:fd <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 496 21 is_stmt 1              # spec_mem_io/spec_mem_io.c:496:21
	movq	16(%rbx,%r14,8), %rcx
	.loc	0 496 25 is_stmt 0              # spec_mem_io/spec_mem_io.c:496:25
	xorl	%eax, %eax
	cmpq	8(%rbx,%r14,8), %rcx
	setge	%al
	.loc	0 496 5 epilogue_begin          # spec_mem_io/spec_mem_io.c:496:5
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp767:
	#DEBUG_VALUE: spec_mem_feof:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Ltmp768:
.LBB20_5:                               # %if.then
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: spec_mem_feof:fds <- $rbx
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_feof:fd <- $edx
	.loc	0 492 10 is_stmt 1              # spec_mem_io/spec_mem_io.c:492:10
	movq	stderr@GOTPCREL(%rip), %rdx
.Ltmp769:
	#DEBUG_VALUE: spec_mem_feof:fd <- $ecx
	movq	(%rdx), %rdi
	.loc	0 492 2 is_stmt 0               # spec_mem_io/spec_mem_io.c:492:2
	movl	$.L.str.70, %esi
.Ltmp770:
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- $eax
	movl	%ecx, %edx
	movq	%rbx, %rcx
.Ltmp771:
	#DEBUG_VALUE: spec_mem_feof:fd <- $edx
	movl	%eax, %r8d
	xorl	%eax, %eax
.Ltmp772:
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- $r8d
	callq	fprintf@PLT
.Ltmp773:
	#DEBUG_VALUE: spec_mem_feof:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_feof:fd <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 493 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:493:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp774:
.Lfunc_end20:
	.size	spec_mem_feof, .Lfunc_end20-spec_mem_feof
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_close                  # -- Begin function spec_mem_close
	.p2align	4, 0x90
	.type	spec_mem_close,@function
spec_mem_close:                         # @spec_mem_close
.Lfunc_begin21:
	.loc	0 499 0                         # spec_mem_io/spec_mem_io.c:499:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_close:fds <- $rdi
	#DEBUG_VALUE: spec_mem_close:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_close:fd <- $edx
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp775:
	.loc	0 500 12 prologue_end           # spec_mem_io/spec_mem_io.c:500:12
	testl	%edx, %edx
	.loc	0 500 16 is_stmt 0              # spec_mem_io/spec_mem_io.c:500:16
	js	.LBB21_6
.Ltmp776:
# %bb.1:                                # %entry
	#DEBUG_VALUE: spec_mem_close:fds <- $rdi
	#DEBUG_VALUE: spec_mem_close:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_close:fd <- $edx
	cmpl	%esi, %edx
	jae	.LBB21_6
.Ltmp777:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: spec_mem_close:fds <- $rdi
	#DEBUG_VALUE: spec_mem_close:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_close:fd <- $edx
	.loc	0 504 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:504:9
	movl	%edx, %eax
	.loc	0 504 17 is_stmt 0              # spec_mem_io/spec_mem_io.c:504:17
	leaq	(%rax,%rax,4), %rax
	.loc	0 504 22                        # spec_mem_io/spec_mem_io.c:504:22
	cmpl	$1, 24(%rdi,%rax,8)
.Ltmp778:
	.loc	0 504 9                         # spec_mem_io/spec_mem_io.c:504:9
	jne	.LBB21_3
.Ltmp779:
# %bb.4:                                # %if.end6
	#DEBUG_VALUE: spec_mem_close:fds <- $rdi
	#DEBUG_VALUE: spec_mem_close:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_close:fd <- $edx
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	leaq	(%rdi,%rax,8), %rax
	addq	$24, %rax
	.loc	0 509 18 is_stmt 1              # spec_mem_io/spec_mem_io.c:509:18
	movl	$0, (%rax)
	xorl	%eax, %eax
	.loc	0 512 1 epilogue_begin          # spec_mem_io/spec_mem_io.c:512:1
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp780:
.LBB21_3:                               # %if.then3
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: spec_mem_close:fds <- $rdi
	#DEBUG_VALUE: spec_mem_close:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_close:fd <- $edx
	.loc	0 505 17                        # spec_mem_io/spec_mem_io.c:505:17
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	%rdi, %rax
	movq	(%rcx), %rdi
.Ltmp781:
	#DEBUG_VALUE: spec_mem_close:fds <- $rax
	.loc	0 0 17 is_stmt 0                # spec_mem_io/spec_mem_io.c:0:17
	movl	%esi, %ecx
	.loc	0 505 9                         # spec_mem_io/spec_mem_io.c:505:9
	movl	$.L.str.73, %esi
.Ltmp782:
	#DEBUG_VALUE: spec_mem_close:fd_limit <- $ecx
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	movl	%edx, %r8d
	.loc	0 505 9                         # spec_mem_io/spec_mem_io.c:505:9
	movq	%rax, %rdx
.Ltmp783:
	#DEBUG_VALUE: spec_mem_close:fd <- $r8d
	xorl	%eax, %eax
.Ltmp784:
	#DEBUG_VALUE: spec_mem_close:fds <- $rdx
	callq	fprintf@PLT
.Ltmp785:
	#DEBUG_VALUE: spec_mem_close:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_close:fd <- [DW_OP_LLVM_entry_value 1] $edx
	#DEBUG_VALUE: spec_mem_close:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 506 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:506:2
	callq	__errno_location@PLT
.Ltmp786:
	.loc	0 506 8 is_stmt 0               # spec_mem_io/spec_mem_io.c:506:8
	movl	$9, (%rax)
	movl	$-1, %eax
.Ltmp787:
	.loc	0 512 1 epilogue_begin is_stmt 1 # spec_mem_io/spec_mem_io.c:512:1
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Ltmp788:
.LBB21_6:                               # %if.then
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: spec_mem_close:fds <- $rdi
	#DEBUG_VALUE: spec_mem_close:fd_limit <- $esi
	#DEBUG_VALUE: spec_mem_close:fd <- $edx
	.loc	0 501 10                        # spec_mem_io/spec_mem_io.c:501:10
	movq	stderr@GOTPCREL(%rip), %rax
	movq	%rdi, %rcx
	movq	(%rax), %rdi
.Ltmp789:
	#DEBUG_VALUE: spec_mem_close:fds <- $rcx
	.loc	0 0 10 is_stmt 0                # spec_mem_io/spec_mem_io.c:0:10
	movl	%esi, %r8d
	.loc	0 501 2                         # spec_mem_io/spec_mem_io.c:501:2
	movl	$.L.str.72, %esi
.Ltmp790:
	#DEBUG_VALUE: spec_mem_close:fd_limit <- $r8d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp791:
	#DEBUG_VALUE: spec_mem_close:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: spec_mem_close:fds <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: spec_mem_close:fd <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 502 2 is_stmt 1               # spec_mem_io/spec_mem_io.c:502:2
	movl	$1, %edi
	callq	exit@PLT
.Ltmp792:
.Lfunc_end21:
	.size	spec_mem_close, .Lfunc_end21-spec_mem_close
	.cfi_endproc
                                        # -- End function
	.globl	spec_empty                      # -- Begin function spec_empty
	.p2align	4, 0x90
	.type	spec_empty,@function
spec_empty:                             # @spec_empty
.Lfunc_begin22:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_empty:fd <- $edi
	.loc	0 515 5 prologue_end            # spec_mem_io/spec_mem_io.c:515:5
	xorl	%eax, %eax
	retq
.Ltmp793:
.Lfunc_end22:
	.size	spec_empty, .Lfunc_end22-spec_empty
	.cfi_endproc
                                        # -- End function
	.globl	spec_initbufs                   # -- Begin function spec_initbufs
	.p2align	4, 0x90
	.type	spec_initbufs,@function
spec_initbufs:                          # @spec_initbufs
.Lfunc_begin23:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 527 1 prologue_end            # spec_mem_io/spec_mem_io.c:527:1
	retq
.Ltmp794:
.Lfunc_end23:
	.size	spec_initbufs, .Lfunc_end23-spec_initbufs
	.cfi_endproc
                                        # -- End function
	.globl	spec_compress                   # -- Begin function spec_compress
	.p2align	4, 0x90
	.type	spec_compress,@function
spec_compress:                          # @spec_compress
.Lfunc_begin24:
	.loc	0 529 0                         # spec_mem_io/spec_mem_io.c:529:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_compress:in <- $edi
	#DEBUG_VALUE: spec_compress:out <- $esi
	#DEBUG_VALUE: spec_compress:lev <- $edx
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
	.loc	0 531 19 prologue_end           # spec_mem_io/spec_mem_io.c:531:19
	movq	spec_fd(%rip), %rax
	movslq	%edi, %rdi
.Ltmp795:
	#DEBUG_VALUE: spec_compress:in <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	0 531 31 is_stmt 0              # spec_mem_io/spec_mem_io.c:531:31
	leaq	(,%rdi,8), %rcx
	leaq	(%rcx,%rcx,4), %rbx
	movl	24(%rax,%rbx), %ebp
.Ltmp796:
	#DEBUG_VALUE: spec_compress:in_open <- $ebp
	.loc	0 532 20 is_stmt 1              # spec_mem_io/spec_mem_io.c:532:20
	movslq	%esi, %rsi
.Ltmp797:
	#DEBUG_VALUE: spec_compress:out <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	0 532 33 is_stmt 0              # spec_mem_io/spec_mem_io.c:532:33
	leaq	(,%rsi,8), %rcx
	leaq	(%rcx,%rcx,4), %r14
	movl	24(%rax,%r14), %r15d
.Ltmp798:
	#DEBUG_VALUE: spec_compress:out_open <- $r15d
	.loc	0 533 42 is_stmt 1              # spec_mem_io/spec_mem_io.c:533:42
	movl	$1, 24(%rax,%r14)
	.loc	0 533 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:533:5
	movq	spec_fd(%rip), %rax
	.loc	0 533 22                        # spec_mem_io/spec_mem_io.c:533:22
	movl	$1, 24(%rax,%rbx)
                                        # kill: def $edi killed $edi killed $rdi
                                        # kill: def $esi killed $esi killed $rsi
	.loc	0 538 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:538:5
	callq	compressStream@PLT
.Ltmp799:
	#DEBUG_VALUE: spec_compress:lev <- [DW_OP_LLVM_entry_value 1] $edx
	.loc	0 543 5                         # spec_mem_io/spec_mem_io.c:543:5
	movq	spec_fd(%rip), %rax
	.loc	0 543 22 is_stmt 0              # spec_mem_io/spec_mem_io.c:543:22
	movl	%ebp, 24(%rax,%rbx)
	.loc	0 544 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:544:5
	movq	spec_fd(%rip), %rax
	.loc	0 544 23 is_stmt 0              # spec_mem_io/spec_mem_io.c:544:23
	movl	%r15d, 24(%rax,%r14)
	.loc	0 545 1 epilogue_begin is_stmt 1 # spec_mem_io/spec_mem_io.c:545:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp800:
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp801:
	.cfi_def_cfa_offset 8
	retq
.Ltmp802:
.Lfunc_end24:
	.size	spec_compress, .Lfunc_end24-spec_compress
	.cfi_endproc
                                        # -- End function
	.globl	debug_time                      # -- Begin function debug_time
	.p2align	4, 0x90
	.type	debug_time,@function
debug_time:                             # @debug_time
.Lfunc_begin25:
	.cfi_startproc
# %bb.0:                                # %entry
	.loc	0 569 5 prologue_end            # spec_mem_io/spec_mem_io.c:569:5
	xorl	%eax, %eax
	retq
.Ltmp803:
.Lfunc_end25:
	.size	debug_time, .Lfunc_end25-debug_time
	.cfi_endproc
                                        # -- End function
	.globl	sum_str_to_hex                  # -- Begin function sum_str_to_hex
	.p2align	4, 0x90
	.type	sum_str_to_hex,@function
sum_str_to_hex:                         # @sum_str_to_hex
.Lfunc_begin26:
	.loc	0 604 0                         # spec_mem_io/spec_mem_io.c:604:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: sum_str_to_hex:sum <- $rdi
	#DEBUG_VALUE: sum_str_to_hex:bits <- $esi
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
	movl	%esi, %ebx
	movq	%rdi, %r14
.Ltmp804:
	#DEBUG_VALUE: sum_str_to_hex:i <- 0
	.loc	0 610 63 prologue_end           # spec_mem_io/spec_mem_io.c:610:63
	movslq	%esi, %rdi
.Ltmp805:
	#DEBUG_VALUE: sum_str_to_hex:sum <- $r14
	.loc	0 610 68 is_stmt 0              # spec_mem_io/spec_mem_io.c:610:68
	shrq	$3, %rdi
	.loc	0 610 32                        # spec_mem_io/spec_mem_io.c:610:32
	callq	malloc@PLT
.Ltmp806:
	#DEBUG_VALUE: sum_str_to_hex:bits <- $ebx
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $rax
	.loc	0 611 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:611:17
	testq	%rax, %rax
.Ltmp807:
	.loc	0 611 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:611:9
	je	.LBB26_11
.Ltmp808:
# %bb.1:                                # %for.cond.preheader
	#DEBUG_VALUE: sum_str_to_hex:sum <- $r14
	#DEBUG_VALUE: sum_str_to_hex:bits <- $ebx
	#DEBUG_VALUE: sum_str_to_hex:i <- 0
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $rax
	.loc	0 0 0                           # spec_mem_io/spec_mem_io.c:0:0
	movq	%rax, %r15
	#DEBUG_VALUE: sum_str_to_hex:i <- 0
.Ltmp809:
	.loc	0 616 18 is_stmt 1              # spec_mem_io/spec_mem_io.c:616:18
	cmpl	$8, %ebx
.Ltmp810:
	.loc	0 616 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:616:5
	jl	.LBB26_10
.Ltmp811:
# %bb.2:                                # %for.body.preheader
	#DEBUG_VALUE: sum_str_to_hex:sum <- $r14
	#DEBUG_VALUE: sum_str_to_hex:bits <- $ebx
	#DEBUG_VALUE: sum_str_to_hex:i <- 0
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $r15
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	shrl	$3, %ebx
.Ltmp812:
	#DEBUG_VALUE: sum_str_to_hex:bits <- [DW_OP_LLVM_entry_value 1] $esi
	xorl	%r12d, %r12d
	jmp	.LBB26_3
.Ltmp813:
	.p2align	4, 0x90
.LBB26_8:                               # %if.else.i29
                                        #   in Loop: Header=BB26_3 Depth=1
	#DEBUG_VALUE: sum_str_to_hex:sum <- $r14
	#DEBUG_VALUE: sum_str_to_hex:bits <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sum_str_to_hex:i <- $r12
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $r15
	.loc	0 597 15 is_stmt 1              # spec_mem_io/spec_mem_io.c:597:15
	addb	$-48, %bpl
.Ltmp814:
.LBB26_9:                               # %hex_char_to_num.exit37
                                        #   in Loop: Header=BB26_3 Depth=1
	#DEBUG_VALUE: sum_str_to_hex:sum <- $r14
	#DEBUG_VALUE: sum_str_to_hex:bits <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sum_str_to_hex:i <- $r12
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $r15
	.loc	0 617 0                         # spec_mem_io/spec_mem_io.c:617:0
	shlb	$4, %r13b
	.loc	0 617 55 is_stmt 0              # spec_mem_io/spec_mem_io.c:617:55
	orb	%bpl, %r13b
	.loc	0 617 20                        # spec_mem_io/spec_mem_io.c:617:20
	movb	%r13b, (%r15,%r12)
.Ltmp815:
	.loc	0 616 31 is_stmt 1              # spec_mem_io/spec_mem_io.c:616:31
	incq	%r12
.Ltmp816:
	#DEBUG_VALUE: sum_str_to_hex:i <- $r12
	.loc	0 616 18 is_stmt 0              # spec_mem_io/spec_mem_io.c:616:18
	cmpq	%r12, %rbx
.Ltmp817:
	.loc	0 616 5                         # spec_mem_io/spec_mem_io.c:616:5
	je	.LBB26_10
.Ltmp818:
.LBB26_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: sum_str_to_hex:sum <- $r14
	#DEBUG_VALUE: sum_str_to_hex:bits <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $r15
	#DEBUG_VALUE: sum_str_to_hex:i <- $r12
	.loc	0 617 39 is_stmt 1              # spec_mem_io/spec_mem_io.c:617:39
	movsbq	(%r14,%r12,2), %r13
	cmpq	$58, %r13
.Ltmp819:
	#DEBUG_VALUE: hex_char_to_num:digit <- undef
	.loc	0 597 9                         # spec_mem_io/spec_mem_io.c:597:9
	jl	.LBB26_5
.Ltmp820:
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB26_3 Depth=1
	#DEBUG_VALUE: sum_str_to_hex:sum <- $r14
	#DEBUG_VALUE: sum_str_to_hex:bits <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sum_str_to_hex:i <- $r12
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $r15
	.loc	0 598 14                        # spec_mem_io/spec_mem_io.c:598:14
	callq	__ctype_tolower_loc@PLT
.Ltmp821:
	movq	(%rax), %rax
	movzbl	(%rax,%r13,4), %r13d
.Ltmp822:
	#DEBUG_VALUE: __res <- undef
	.loc	0 598 14 is_stmt 0              # spec_mem_io/spec_mem_io.c:598:14
	addb	$-87, %r13b
.Ltmp823:
	.loc	0 617 73 is_stmt 1              # spec_mem_io/spec_mem_io.c:617:73
	movsbq	1(%r14,%r12,2), %rbp
	cmpq	$58, %rbp
.Ltmp824:
	#DEBUG_VALUE: hex_char_to_num:digit <- undef
	.loc	0 597 9                         # spec_mem_io/spec_mem_io.c:597:9
	jl	.LBB26_8
	jmp	.LBB26_7
.Ltmp825:
	.p2align	4, 0x90
.LBB26_5:                               # %if.else.i
                                        #   in Loop: Header=BB26_3 Depth=1
	#DEBUG_VALUE: sum_str_to_hex:sum <- $r14
	#DEBUG_VALUE: sum_str_to_hex:bits <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sum_str_to_hex:i <- $r12
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $r15
	.loc	0 597 15 is_stmt 0              # spec_mem_io/spec_mem_io.c:597:15
	addb	$-48, %r13b
.Ltmp826:
	.loc	0 617 73 is_stmt 1              # spec_mem_io/spec_mem_io.c:617:73
	movsbq	1(%r14,%r12,2), %rbp
	cmpq	$58, %rbp
.Ltmp827:
	#DEBUG_VALUE: hex_char_to_num:digit <- undef
	.loc	0 597 9                         # spec_mem_io/spec_mem_io.c:597:9
	jl	.LBB26_8
.Ltmp828:
.LBB26_7:                               # %if.then.i32
                                        #   in Loop: Header=BB26_3 Depth=1
	#DEBUG_VALUE: sum_str_to_hex:sum <- $r14
	#DEBUG_VALUE: sum_str_to_hex:bits <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sum_str_to_hex:i <- $r12
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $r15
	.loc	0 598 14                        # spec_mem_io/spec_mem_io.c:598:14
	callq	__ctype_tolower_loc@PLT
.Ltmp829:
	movq	(%rax), %rax
	movzbl	(%rax,%rbp,4), %ebp
.Ltmp830:
	#DEBUG_VALUE: __res <- undef
	.loc	0 598 14 is_stmt 0              # spec_mem_io/spec_mem_io.c:598:14
	addb	$-87, %bpl
	.loc	0 598 7                         # spec_mem_io/spec_mem_io.c:598:7
	jmp	.LBB26_9
.Ltmp831:
.LBB26_10:                              # %for.end
	#DEBUG_VALUE: sum_str_to_hex:sum <- $r14
	#DEBUG_VALUE: sum_str_to_hex:bits <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $r15
	.loc	0 620 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:620:5
	movq	%r15, %rax
	.loc	0 620 5 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:620:5
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
.Ltmp832:
	#DEBUG_VALUE: sum_str_to_hex:sum <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 24
	popq	%r15
.Ltmp833:
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $rax
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp834:
.LBB26_11:                              # %if.then
	.cfi_def_cfa_offset 64
	#DEBUG_VALUE: sum_str_to_hex:sum <- $r14
	#DEBUG_VALUE: sum_str_to_hex:bits <- $ebx
	#DEBUG_VALUE: sum_str_to_hex:i <- 0
	#DEBUG_VALUE: sum_str_to_hex:gen_sum <- $rax
	.loc	0 612 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:612:17
	movq	stderr@GOTPCREL(%rip), %rax
.Ltmp835:
	movq	(%rax), %rdi
	.loc	0 612 87 is_stmt 0              # spec_mem_io/spec_mem_io.c:612:87
	leal	7(%rbx), %edx
	testl	%ebx, %ebx
	cmovnsl	%ebx, %edx
	sarl	$3, %edx
	.loc	0 612 9                         # spec_mem_io/spec_mem_io.c:612:9
	movl	$.L.str.75, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
.Ltmp836:
	.loc	0 613 9 is_stmt 1               # spec_mem_io/spec_mem_io.c:613:9
	movl	$1, %edi
	callq	exit@PLT
.Ltmp837:
.Lfunc_end26:
	.size	sum_str_to_hex, .Lfunc_end26-sum_str_to_hex
	.cfi_endproc
	.file	15 "/usr/include" "ctype.h" md5 0x3ab3dd7fdf2578005732722ee2393e59
                                        # -- End function
	.globl	spec_mem_alloc_fds              # -- Begin function spec_mem_alloc_fds
	.p2align	4, 0x90
	.type	spec_mem_alloc_fds,@function
spec_mem_alloc_fds:                     # @spec_mem_alloc_fds
.Lfunc_begin27:
	.loc	0 638 0                         # spec_mem_io/spec_mem_io.c:638:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_alloc_fds:fd_limit <- $edi
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
.Ltmp838:
	.loc	0 642 5 prologue_end            # spec_mem_io/spec_mem_io.c:642:5
	cmpl	$4, dbglvl(%rip)
.Ltmp839:
	.loc	0 642 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:642:5
	jl	.LBB27_2
.Ltmp840:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: spec_mem_alloc_fds:fd_limit <- $ebx
	.loc	0 642 5                         # spec_mem_io/spec_mem_io.c:642:5
	cmpl	$3, %ebx
	movl	$.L.str.78, %eax
	movl	$.L.str.79, %esi
	cmoveq	%rax, %rsi
	movl	$.L.str.77, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp841:
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp842:
.LBB27_2:                               # %if.end
	#DEBUG_VALUE: spec_mem_alloc_fds:fd_limit <- $ebx
	.loc	0 644 61 is_stmt 1              # spec_mem_io/spec_mem_io.c:644:61
	leal	1(%rbx), %eax
	.loc	0 644 49 is_stmt 0              # spec_mem_io/spec_mem_io.c:644:49
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rsi
	.loc	0 644 24                        # spec_mem_io/spec_mem_io.c:644:24
	movl	$1, %edi
	callq	calloc@PLT
.Ltmp843:
	#DEBUG_VALUE: spec_mem_alloc_fds:fds <- $rax
	.loc	0 645 13 is_stmt 1              # spec_mem_io/spec_mem_io.c:645:13
	testq	%rax, %rax
.Ltmp844:
	.loc	0 645 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:645:9
	je	.LBB27_3
.Ltmp845:
# %bb.4:                                # %if.end8
	#DEBUG_VALUE: spec_mem_alloc_fds:fd_limit <- $ebx
	#DEBUG_VALUE: spec_mem_alloc_fds:fds <- $rax
	.loc	0 651 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:651:5
	cmpl	$5, dbglvl(%rip)
.Ltmp846:
	.loc	0 651 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:651:5
	jl	.LBB27_7
.Ltmp847:
# %bb.5:                                # %if.then14
	#DEBUG_VALUE: spec_mem_alloc_fds:fd_limit <- $ebx
	#DEBUG_VALUE: spec_mem_alloc_fds:fds <- $rax
	.loc	0 651 5                         # spec_mem_io/spec_mem_io.c:651:5
	movl	$.L.str.81, %edi
	movl	%ebx, %esi
	movq	%rax, %rdx
	movq	%rax, %rbx
.Ltmp848:
	#DEBUG_VALUE: spec_mem_alloc_fds:fds <- $rbx
	#DEBUG_VALUE: spec_mem_alloc_fds:fd_limit <- $esi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp849:
	#DEBUG_VALUE: spec_mem_alloc_fds:fd_limit <- [DW_OP_LLVM_entry_value 1] $edi
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	fflush@PLT
.Ltmp850:
.LBB27_6:                               # %cleanup
	#DEBUG_VALUE: spec_mem_alloc_fds:fd_limit <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: spec_mem_alloc_fds:fds <- $rbx
	.loc	0 0 5                           # spec_mem_io/spec_mem_io.c:0:5
	movq	%rbx, %rax
.Ltmp851:
.LBB27_7:                               # %cleanup
	#DEBUG_VALUE: spec_mem_alloc_fds:fd_limit <- [DW_OP_LLVM_entry_value 1] $edi
	#DEBUG_VALUE: spec_mem_alloc_fds:fds <- $rax
	.loc	0 654 1 epilogue_begin is_stmt 1 # spec_mem_io/spec_mem_io.c:654:1
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Ltmp852:
.LBB27_3:                               # %if.then6
	.cfi_def_cfa_offset 16
	#DEBUG_VALUE: spec_mem_alloc_fds:fd_limit <- $ebx
	#DEBUG_VALUE: spec_mem_alloc_fds:fds <- $rax
	.loc	0 646 17                        # spec_mem_io/spec_mem_io.c:646:17
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	.loc	0 646 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:646:9
	movl	$.L.str.80, %edi
	movl	$52, %esi
	movl	$1, %edx
	movq	%rax, %rbx
.Ltmp853:
	#DEBUG_VALUE: spec_mem_alloc_fds:fds <- $rbx
	#DEBUG_VALUE: spec_mem_alloc_fds:fd_limit <- [DW_OP_LLVM_entry_value 1] $edi
	callq	fwrite@PLT
.Ltmp854:
	.loc	0 0 9                           # spec_mem_io/spec_mem_io.c:0:9
	jmp	.LBB27_6
.Ltmp855:
.Lfunc_end27:
	.size	spec_mem_alloc_fds, .Lfunc_end27-spec_mem_alloc_fds
	.cfi_endproc
                                        # -- End function
	.globl	spec_mem_free_fds               # -- Begin function spec_mem_free_fds
	.p2align	4, 0x90
	.type	spec_mem_free_fds,@function
spec_mem_free_fds:                      # @spec_mem_free_fds
.Lfunc_begin28:
	.loc	0 656 0 is_stmt 1               # spec_mem_io/spec_mem_io.c:656:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: spec_mem_free_fds:fds <- $rdi
	#DEBUG_VALUE: spec_mem_free_fds:fd_limit <- $esi
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
.Ltmp856:
	.loc	0 660 5 prologue_end            # spec_mem_io/spec_mem_io.c:660:5
	cmpl	$4, dbglvl(%rip)
.Ltmp857:
	.loc	0 660 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:660:5
	jl	.LBB28_3
.Ltmp858:
# %bb.1:                                # %if.end
	#DEBUG_VALUE: spec_mem_free_fds:fds <- $rbx
	#DEBUG_VALUE: spec_mem_free_fds:fd_limit <- $ebp
	.loc	0 660 5                         # spec_mem_io/spec_mem_io.c:660:5
	cmpq	%rbx, spec_fd(%rip)
	movl	$.L.str.83, %eax
	movl	$.L.str.79, %esi
	cmoveq	%rax, %rsi
	movl	$.L.str.82, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp859:
	movq	stdout@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	callq	fflush@PLT
.Ltmp860:
	.loc	0 661 5 is_stmt 1               # spec_mem_io/spec_mem_io.c:661:5
	cmpl	$5, dbglvl(%rip)
.Ltmp861:
	.loc	0 661 5 is_stmt 0               # spec_mem_io/spec_mem_io.c:661:5
	jl	.LBB28_3
.Ltmp862:
# %bb.2:                                # %if.then4
	#DEBUG_VALUE: spec_mem_free_fds:fds <- $rbx
	#DEBUG_VALUE: spec_mem_free_fds:fd_limit <- $ebp
	.loc	0 661 5                         # spec_mem_io/spec_mem_io.c:661:5
	movl	$.L.str.84, %edi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp863:
	movq	(%r14), %rdi
	callq	fflush@PLT
.Ltmp864:
.LBB28_3:                               # %if.end7
	#DEBUG_VALUE: spec_mem_free_fds:fds <- $rbx
	#DEBUG_VALUE: spec_mem_free_fds:fd_limit <- $ebp
	.loc	0 662 13 is_stmt 1              # spec_mem_io/spec_mem_io.c:662:13
	testq	%rbx, %rbx
	sete	%al
.Ltmp865:
	#DEBUG_VALUE: spec_mem_free_fds:i <- 0
	.loc	0 0 13 is_stmt 0                # spec_mem_io/spec_mem_io.c:0:13
	testl	%ebp, %ebp
	sete	%cl
.Ltmp866:
	.loc	0 662 9                         # spec_mem_io/spec_mem_io.c:662:9
	orb	%al, %cl
	jne	.LBB28_8
.Ltmp867:
# %bb.4:                                # %for.body.preheader
	#DEBUG_VALUE: spec_mem_free_fds:fds <- $rbx
	#DEBUG_VALUE: spec_mem_free_fds:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_free_fds:i <- 0
	.loc	0 663 22 is_stmt 1              # spec_mem_io/spec_mem_io.c:663:22
	movl	%ebp, %eax
.Ltmp868:
	.loc	0 663 9 is_stmt 0               # spec_mem_io/spec_mem_io.c:663:9
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %r14
	xorl	%r15d, %r15d
	jmp	.LBB28_5
.Ltmp869:
	.p2align	4, 0x90
.LBB28_7:                               # %for.inc
                                        #   in Loop: Header=BB28_5 Depth=1
	#DEBUG_VALUE: spec_mem_free_fds:fds <- $rbx
	#DEBUG_VALUE: spec_mem_free_fds:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_free_fds:i <- [DW_OP_consts 40, DW_OP_div, DW_OP_stack_value] $r15
	#DEBUG_VALUE: spec_mem_free_fds:i <- [DW_OP_consts 40, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r15
	.loc	0 663 22                        # spec_mem_io/spec_mem_io.c:663:22
	addq	$40, %r15
.Ltmp870:
	cmpq	%r15, %r14
.Ltmp871:
	.loc	0 663 9                         # spec_mem_io/spec_mem_io.c:663:9
	je	.LBB28_8
.Ltmp872:
.LBB28_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: spec_mem_free_fds:fds <- $rbx
	#DEBUG_VALUE: spec_mem_free_fds:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_free_fds:i <- [DW_OP_consts 40, DW_OP_div, DW_OP_stack_value] $r15
	.loc	0 664 24 is_stmt 1              # spec_mem_io/spec_mem_io.c:664:24
	movq	32(%rbx,%r15), %rdi
	.loc	0 664 28 is_stmt 0              # spec_mem_io/spec_mem_io.c:664:28
	testq	%rdi, %rdi
.Ltmp873:
	.loc	0 664 17                        # spec_mem_io/spec_mem_io.c:664:17
	je	.LBB28_7
.Ltmp874:
# %bb.6:                                # %if.then12
                                        #   in Loop: Header=BB28_5 Depth=1
	#DEBUG_VALUE: spec_mem_free_fds:fds <- $rbx
	#DEBUG_VALUE: spec_mem_free_fds:fd_limit <- $ebp
	#DEBUG_VALUE: spec_mem_free_fds:i <- [DW_OP_consts 40, DW_OP_div, DW_OP_stack_value] $r15
	.loc	0 666 17 is_stmt 1              # spec_mem_io/spec_mem_io.c:666:17
	callq	free@PLT
.Ltmp875:
	.loc	0 668 28                        # spec_mem_io/spec_mem_io.c:668:28
	movq	$0, 32(%rbx,%r15)
	jmp	.LBB28_7
.Ltmp876:
.LBB28_8:                               # %if.end20
	#DEBUG_VALUE: spec_mem_free_fds:fds <- $rbx
	#DEBUG_VALUE: spec_mem_free_fds:fd_limit <- $ebp
	.loc	0 673 5                         # spec_mem_io/spec_mem_io.c:673:5
	movq	%rbx, %rdi
	.loc	0 673 5 epilogue_begin is_stmt 0 # spec_mem_io/spec_mem_io.c:673:5
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
.Ltmp877:
	#DEBUG_VALUE: spec_mem_free_fds:fds <- $rdi
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
.Ltmp878:
	#DEBUG_VALUE: spec_mem_free_fds:fd_limit <- [DW_OP_LLVM_entry_value 1] $esi
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Ltmp879:
.Lfunc_end28:
	.size	spec_mem_free_fds, .Lfunc_end28-spec_mem_free_fds
	.cfi_endproc
                                        # -- End function
	.type	dbglvl,@object                  # @dbglvl
	.data
	.globl	dbglvl
	.p2align	2, 0x0
dbglvl:
	.long	3                               # 0x3
	.size	dbglvl, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"spec_mem_init(fds=0x%p, fd_limit=%u, touch_all=%d)\n"
	.size	.L.str, 52

	.type	spec_fd,@object                 # @spec_fd
	.bss
	.globl	spec_fd
	.p2align	3, 0x0
spec_fd:
	.quad	0
	.size	spec_fd, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"spec_mem_init: Overflow in requested size (%ld) for fd %d\n"
	.size	.L.str.1, 59

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"spec_mem_init: Error mallocing %ld bytes for fd %d@%p!\n"
	.size	.L.str.2, 56

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" fd[%d] limit is %ld bytes (%ld bytes allocated)\n"
	.size	.L.str.3, 50

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"spec_mem_sum: Only SHA-512 is available\n"
	.size	.L.str.4, 41

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"spec_mem_load: couldn't allocate %d chars for SHA-%d sum\n"
	.size	.L.str.5, 58

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"spec_mem_load: in-mem fd tmpfd %d@%p is out of range: < 0 || >= fd_limit %u\n"
	.size	.L.str.6, 77

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"spec_mem_load: in-mem fd num %d@%p is out of range: < 0 || >= fd_limit %u\n"
	.size	.L.str.7, 75

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Can't open file %s: %s\n"
	.size	.L.str.8, 24

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"spec_mem_load"
	.size	.L.str.9, 14

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Error reading from %s: %s\n"
	.size	.L.str.10, 27

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Compressed size: %ld; Uncompressed size: %ld\n"
	.size	.L.str.11, 46

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Computed SHA-%d sum for decompressed input did not match expected\n"
	.size	.L.str.12, 67

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"  Generated: "
	.size	.L.str.13, 14

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\n   Expected: "
	.size	.L.str.14, 15

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"SHA-%d of decompressed data compared successfully!\n"
	.size	.L.str.16, 52

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Decompressed data too large; truncating to requested size %ld\n"
	.size	.L.str.17, 63

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Duplicating %ld bytes\n"
	.size	.L.str.18, 23

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"SHA-%d of input file: "
	.size	.L.str.19, 23

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"spec_mem_read: %d@%p, %p, %ld = "
	.size	.L.str.20, 33

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"spec_mem_read: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.21, 61

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"spec_mem_read(%p, %u, %d, %p, %ld) => EBADF\n"
	.size	.L.str.22, 45

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"pos (%ld) => len (%ld); returning EOF (0)\n"
	.size	.L.str.23, 43

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"%d\n"
	.size	.L.str.24, 4

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"spec_mem_read: new pos for fd %d@%p is %ld\n"
	.size	.L.str.25, 44

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"spec_mem_fread(%p, %u, %p, (%ld x %d) fd %d) ="
	.size	.L.str.26, 47

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"spec_mem_fread: fd=%d@%p out of range: < 0 || > fd_limit %d!\n"
	.size	.L.str.27, 62

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"spec_mem_fread: fd=%d@%p is not open\n"
	.size	.L.str.28, 38

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"%ld\n"
	.size	.L.str.30, 5

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"spec_mem_fread: new pos for fd %d@%p is %ld\n"
	.size	.L.str.31, 45

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"spec_mem_getc(%p, %u, %d) = "
	.size	.L.str.32, 29

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"spec_mem_getc: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.33, 61

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"spec_mem_getc: fd=%d@%p is not open\n"
	.size	.L.str.34, 37

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"spec_mem_getc: new pos for fd %d@%p is %ld\n"
	.size	.L.str.35, 44

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"spec_mem_ungetc(%p, %u, 0x%02x, %d) = "
	.size	.L.str.36, 39

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"spec_mem_ungetc: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.37, 63

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"spec_mem_ungetc: fd=%d@%p is not open\n"
	.size	.L.str.38, 39

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"spec_mem_ungetc: pos %ld <= 0\n"
	.size	.L.str.39, 31

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"spec_mem_ungetc: can't unget something that wasn't what was in the buffer!\n"
	.size	.L.str.40, 76

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"spec_mem_ungetc: new pos for fd %d@%p is %ld\n"
	.size	.L.str.41, 46

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"spec_mem_lseek: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.42, 62

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"spec_mem_lseek(%p, %u, %d, %ld, %d) => EBADF\n"
	.size	.L.str.43, 46

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"spec_mem_lseek(%p, %u, fd=%d, offset=%ld, whence=0x%x): cur pos (%ld) => new pos "
	.size	.L.str.44, 82

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"(%ld) (WHENCE WAS BAD): EINVAL\n"
	.size	.L.str.45, 32

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"(%ld) (NEW POS (%ld) WAS < 0): EINVAL\n"
	.size	.L.str.46, 39

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"(%ld)\n"
	.size	.L.str.47, 7

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"spec_rewind(%p, %u, %d) called\n"
	.size	.L.str.48, 32

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"spec_mem_reset(%p, %u, %d) called\n"
	.size	.L.str.49, 35

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"spec_mem_reset: new pos for fd %d@%p is %ld\n"
	.size	.L.str.50, 45

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"spec_get_length(%p, %u, %d): file not open!\n"
	.size	.L.str.51, 45

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"spec_mem_get_length(%p, %u, %d) => %ld\n"
	.size	.L.str.52, 40

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"spec_mem_fopen(%p, %u, '%s', '%s') = %d\n"
	.size	.L.str.53, 41

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"spec_mem_open(%p, %u, '%s', 0x%02x) = %d\n"
	.size	.L.str.54, 42

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"spec_mem_write(fds=0x%p, fd_limit=%u, fd=%d, buf=0x%p, size=%ld)\n"
	.size	.L.str.55, 66

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"spec_mem_write: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.56, 62

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"spec_mem_write(%p, %u, %d, %p, %ld) => EBADF\n"
	.size	.L.str.57, 46

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"spec_mem_write"
	.size	.L.str.58, 15

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"  spec_mem_write returns %ld (len=%ld pos=%ld limit=%ld)\n"
	.size	.L.str.59, 58

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"spec_mem_fwrite(fds=0x%p, fd_limit=%u, buf=0x%p, size=%ld, num=%d, fd=%d)\n"
	.size	.L.str.60, 75

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"spec_mem_fwrite: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.61, 63

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"spec_mem_fwrite: fd=%d@%p is not open\n"
	.size	.L.str.62, 39

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"spec_mem_fwrite"
	.size	.L.str.63, 16

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"  spec_mem_fwrite returns %d (len=%ld pos=%ld limit=%ld)\n"
	.size	.L.str.64, 58

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"spec_putc(fds=0x%p, fd_limit=%u, ch=0x%x, fd=%d) = "
	.size	.L.str.65, 52

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"spec_mem_putc: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.66, 61

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"spec_mem_putc: fd=%d@%p is not open\n"
	.size	.L.str.67, 37

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"%x\n"
	.size	.L.str.68, 4

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"spec_mem_putc: new pos for fd %d@%p is %ld\n"
	.size	.L.str.69, 44

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"spec_feof: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.70, 57

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"spec_mem_feof(fds=0x%p, fd_limit=%u, fd=%d) = %d (len = %ld; pos = %ld; limit = %ld)\n"
	.size	.L.str.71, 86

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"spec_mem_close: fd=%d@%p out of range: < 0 || > fd_limit %u!\n"
	.size	.L.str.72, 62

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"spec_mem_close(%p, %u, %d) => EBADF\n"
	.size	.L.str.73, 37

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"%02x"
	.size	.L.str.74, 5

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"sum_str_to_hex: couldn't allocate %d chars for hash\n"
	.size	.L.str.75, 53

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Hash mismatch at %d: '%02x' (expected) != '%02x' (generated)\n"
	.size	.L.str.76, 62

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"spec_mem_alloc_fds(%s)\n"
	.size	.L.str.77, 24

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"MAX_SPEC_FD"
	.size	.L.str.78, 12

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"<variable>"
	.size	.L.str.79, 11

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"Error mallocing space for list of spec_fd_t structs\n"
	.size	.L.str.80, 53

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"spec_mem_alloc_fds(%u) => %p\n"
	.size	.L.str.81, 30

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"spec_mem_free_fds(%s)\n"
	.size	.L.str.82, 23

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"spec_fd"
	.size	.L.str.83, 8

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"  +-> fds=%p fd_limit=%u\n"
	.size	.L.str.84, 26

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"%s: Error growing buffer for fd %d@%p: %s\n"
	.size	.L.str.85, 43

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"  grew buffer for fd%d@0x%p to %ld\n"
	.size	.L.str.86, 36

	.type	.Lstr.87,@object                # @str.87
.Lstr.87:
	.asciz	"EOF"
	.size	.Lstr.87, 4

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	132                             # Offset entry count
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
	.long	.Ldebug_loc36-.Lloclists_table_base0
	.long	.Ldebug_loc37-.Lloclists_table_base0
	.long	.Ldebug_loc38-.Lloclists_table_base0
	.long	.Ldebug_loc39-.Lloclists_table_base0
	.long	.Ldebug_loc40-.Lloclists_table_base0
	.long	.Ldebug_loc41-.Lloclists_table_base0
	.long	.Ldebug_loc42-.Lloclists_table_base0
	.long	.Ldebug_loc43-.Lloclists_table_base0
	.long	.Ldebug_loc44-.Lloclists_table_base0
	.long	.Ldebug_loc45-.Lloclists_table_base0
	.long	.Ldebug_loc46-.Lloclists_table_base0
	.long	.Ldebug_loc47-.Lloclists_table_base0
	.long	.Ldebug_loc48-.Lloclists_table_base0
	.long	.Ldebug_loc49-.Lloclists_table_base0
	.long	.Ldebug_loc50-.Lloclists_table_base0
	.long	.Ldebug_loc51-.Lloclists_table_base0
	.long	.Ldebug_loc52-.Lloclists_table_base0
	.long	.Ldebug_loc53-.Lloclists_table_base0
	.long	.Ldebug_loc54-.Lloclists_table_base0
	.long	.Ldebug_loc55-.Lloclists_table_base0
	.long	.Ldebug_loc56-.Lloclists_table_base0
	.long	.Ldebug_loc57-.Lloclists_table_base0
	.long	.Ldebug_loc58-.Lloclists_table_base0
	.long	.Ldebug_loc59-.Lloclists_table_base0
	.long	.Ldebug_loc60-.Lloclists_table_base0
	.long	.Ldebug_loc61-.Lloclists_table_base0
	.long	.Ldebug_loc62-.Lloclists_table_base0
	.long	.Ldebug_loc63-.Lloclists_table_base0
	.long	.Ldebug_loc64-.Lloclists_table_base0
	.long	.Ldebug_loc65-.Lloclists_table_base0
	.long	.Ldebug_loc66-.Lloclists_table_base0
	.long	.Ldebug_loc67-.Lloclists_table_base0
	.long	.Ldebug_loc68-.Lloclists_table_base0
	.long	.Ldebug_loc69-.Lloclists_table_base0
	.long	.Ldebug_loc70-.Lloclists_table_base0
	.long	.Ldebug_loc71-.Lloclists_table_base0
	.long	.Ldebug_loc72-.Lloclists_table_base0
	.long	.Ldebug_loc73-.Lloclists_table_base0
	.long	.Ldebug_loc74-.Lloclists_table_base0
	.long	.Ldebug_loc75-.Lloclists_table_base0
	.long	.Ldebug_loc76-.Lloclists_table_base0
	.long	.Ldebug_loc77-.Lloclists_table_base0
	.long	.Ldebug_loc78-.Lloclists_table_base0
	.long	.Ldebug_loc79-.Lloclists_table_base0
	.long	.Ldebug_loc80-.Lloclists_table_base0
	.long	.Ldebug_loc81-.Lloclists_table_base0
	.long	.Ldebug_loc82-.Lloclists_table_base0
	.long	.Ldebug_loc83-.Lloclists_table_base0
	.long	.Ldebug_loc84-.Lloclists_table_base0
	.long	.Ldebug_loc85-.Lloclists_table_base0
	.long	.Ldebug_loc86-.Lloclists_table_base0
	.long	.Ldebug_loc87-.Lloclists_table_base0
	.long	.Ldebug_loc88-.Lloclists_table_base0
	.long	.Ldebug_loc89-.Lloclists_table_base0
	.long	.Ldebug_loc90-.Lloclists_table_base0
	.long	.Ldebug_loc91-.Lloclists_table_base0
	.long	.Ldebug_loc92-.Lloclists_table_base0
	.long	.Ldebug_loc93-.Lloclists_table_base0
	.long	.Ldebug_loc94-.Lloclists_table_base0
	.long	.Ldebug_loc95-.Lloclists_table_base0
	.long	.Ldebug_loc96-.Lloclists_table_base0
	.long	.Ldebug_loc97-.Lloclists_table_base0
	.long	.Ldebug_loc98-.Lloclists_table_base0
	.long	.Ldebug_loc99-.Lloclists_table_base0
	.long	.Ldebug_loc100-.Lloclists_table_base0
	.long	.Ldebug_loc101-.Lloclists_table_base0
	.long	.Ldebug_loc102-.Lloclists_table_base0
	.long	.Ldebug_loc103-.Lloclists_table_base0
	.long	.Ldebug_loc104-.Lloclists_table_base0
	.long	.Ldebug_loc105-.Lloclists_table_base0
	.long	.Ldebug_loc106-.Lloclists_table_base0
	.long	.Ldebug_loc107-.Lloclists_table_base0
	.long	.Ldebug_loc108-.Lloclists_table_base0
	.long	.Ldebug_loc109-.Lloclists_table_base0
	.long	.Ldebug_loc110-.Lloclists_table_base0
	.long	.Ldebug_loc111-.Lloclists_table_base0
	.long	.Ldebug_loc112-.Lloclists_table_base0
	.long	.Ldebug_loc113-.Lloclists_table_base0
	.long	.Ldebug_loc114-.Lloclists_table_base0
	.long	.Ldebug_loc115-.Lloclists_table_base0
	.long	.Ldebug_loc116-.Lloclists_table_base0
	.long	.Ldebug_loc117-.Lloclists_table_base0
	.long	.Ldebug_loc118-.Lloclists_table_base0
	.long	.Ldebug_loc119-.Lloclists_table_base0
	.long	.Ldebug_loc120-.Lloclists_table_base0
	.long	.Ldebug_loc121-.Lloclists_table_base0
	.long	.Ldebug_loc122-.Lloclists_table_base0
	.long	.Ldebug_loc123-.Lloclists_table_base0
	.long	.Ldebug_loc124-.Lloclists_table_base0
	.long	.Ldebug_loc125-.Lloclists_table_base0
	.long	.Ldebug_loc126-.Lloclists_table_base0
	.long	.Ldebug_loc127-.Lloclists_table_base0
	.long	.Ldebug_loc128-.Lloclists_table_base0
	.long	.Ldebug_loc129-.Lloclists_table_base0
	.long	.Ldebug_loc130-.Lloclists_table_base0
	.long	.Ldebug_loc131-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp78-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp77-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp65-.Lfunc_begin0          #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp65-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp68-.Lfunc_begin0          #   ending offset
	.byte	7                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	255                             # 2147483647
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	7                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp68-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp77-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp136-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp224-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp224-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp94-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp126-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp224-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp231-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp241-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp224-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp239-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp241-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp87-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp92-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp224-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp229-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp231-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	4                               # 4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp231-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp233-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # super-register DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	4                               # 4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp97-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp210-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp210-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp211-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp211-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp224-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp224-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp225-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp227-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp228-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp229-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp230-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp235-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp242-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp233-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp234-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp241-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp125-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp125-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp136-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc25:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc26:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp132-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc27:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc28:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp138-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp141-.Lfunc_begin0         #   ending offset
	.byte	7                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	255                             # 2147483647
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	7                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp141-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp149-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp152-.Lfunc_begin0         #   ending offset
	.byte	7                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	255                             # 2147483647
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	7                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc29:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp212-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc30:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp212-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc31:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp212-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc32:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp155-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	125                             # -3
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	126                             # -2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp159-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp161-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp161-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp162-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	1                               # 1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp212-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp213-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	126                             # -2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp214-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp215-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	127                             # -1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc33:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp178-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp180-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp183-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc34:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp189-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp194-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc35:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp189-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp191-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp191-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp194-.Lfunc_begin0         #   ending offset
	.byte	7                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	255                             # 2147483647
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	7                               # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp194-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp200-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc36:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp249-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp249-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp258-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp258-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp261-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp262-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp262-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp265-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc37:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp248-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp248-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp250-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp250-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp260-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp260-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp261-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp264-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp264-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp265-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc38:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp250-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp250-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp259-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp259-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp261-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp261-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp263-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp263-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp265-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp265-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc39:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp270-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp270-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc40:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin4-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp272-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp272-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end4-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc41:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp271-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp276-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc42:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp273-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp275-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc43:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp292-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp292-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp296-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp296-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc44:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp291-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp291-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp295-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp295-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc45:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp281-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp281-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp288-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp288-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp290-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc46:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp278-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp282-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp282-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp287-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp294-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc47:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp300-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp300-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp306-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp306-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc48:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp300-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp300-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp305-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp305-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc49:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp300-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp300-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc50:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp300-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp300-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp304-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc51:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp310-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp343-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp343-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp344-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc52:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp310-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp317-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp317-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp344-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc53:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp310-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp342-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp342-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp344-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc54:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp310-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp328-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp328-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp338-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp338-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp340-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp340-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp341-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp344-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc55:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp310-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp310-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp322-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp322-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp336-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp336-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp340-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp340-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp341-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp344-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp347-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp347-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp348-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp348-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc56:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp308-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp321-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp321-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp326-.Lfunc_begin0         #   ending offset
	.byte	13                              # Loc expr size
	.byte	125                             # DW_OP_breg13
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\257\200\200"                  # 
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp326-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp333-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp333-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp338-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp340-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp341-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp344-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc57:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp354-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp354-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp394-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp394-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp395-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp395-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc58:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp354-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp354-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp367-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp367-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp372-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp372-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp376-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp376-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp377-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp377-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp378-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp378-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp395-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp395-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc59:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp355-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp355-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp356-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp356-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp359-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp359-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc60:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp354-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp354-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp381-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp381-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp395-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp395-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc61:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp351-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp351-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp368-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp368-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp372-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # super-register DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp372-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp379-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp379-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp395-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # super-register DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp395-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc62:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin8-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp354-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp354-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp393-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp393-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp395-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # super-register DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp395-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc63:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp352-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp380-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp380-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp391-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp395-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end8-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc64:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp402-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp402-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp428-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp428-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp430-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc65:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp402-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp402-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp412-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp412-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp421-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp421-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp422-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp422-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp430-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc66:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin9-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp402-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp402-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp429-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp429-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp430-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc67:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp400-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp412-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp412-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp421-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp421-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp426-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp430-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end9-.Lfunc_begin0      #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc68:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp437-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp437-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp458-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp458-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp461-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp461-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc69:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp437-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp437-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp444-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp444-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp461-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp461-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp465-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp465-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc70:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp437-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp437-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp459-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp459-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp461-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp461-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc71:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin10-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp437-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp437-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp460-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp460-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp461-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp461-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end10-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc72:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp480-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp480-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp482-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp482-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp485-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp485-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp515-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp515-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp517-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp517-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp519-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp519-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp521-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp521-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp523-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp523-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp527-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc73:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp481-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp481-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp484-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp484-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp485-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp485-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp516-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp516-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp518-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp518-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp519-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp519-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp521-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp521-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp524-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp524-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp526-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp526-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp527-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc74:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp474-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp474-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp483-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp483-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp485-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp485-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp519-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp519-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp521-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp521-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp522-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp522-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp525-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp525-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp527-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp527-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc75:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp471-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp471-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp491-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp491-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp505-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp505-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp509-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp509-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc76:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin11-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp470-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp470-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp513-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp513-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp514-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # super-register DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc77:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp471-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp477-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp477-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp511-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp514-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end11-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	32                              # DW_OP_not
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc78:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp531-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp531-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp536-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp536-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end12-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc79:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp531-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp531-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp537-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp537-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end12-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc80:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin12-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp531-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp531-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp535-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp535-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end12-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc81:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin13-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp541-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp553-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp553-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end13-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc82:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin13-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp543-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp543-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp544-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp544-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end13-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc83:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin13-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp541-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp541-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp552-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp552-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end13-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc84:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp562-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp562-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp563-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp563-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp566-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp566-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp569-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp569-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp571-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc85:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp556-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp556-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp564-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp564-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp566-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp566-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp571-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc86:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin14-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp555-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp555-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp565-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp565-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp566-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp566-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp568-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp568-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp570-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp570-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp571-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp571-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end14-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc87:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin15-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp575-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp575-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp602-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp602-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp605-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp605-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc88:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin15-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp576-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp576-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp604-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp604-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp605-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp605-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc89:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin15-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp577-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp577-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp589-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp589-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp592-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp592-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp600-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp600-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc90:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin15-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp578-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp578-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp603-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp603-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp605-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp605-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc91:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp579-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp594-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp595-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp601-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp605-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end15-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc92:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin16-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp618-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp618-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp655-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp655-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end16-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc93:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin16-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp619-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp619-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp657-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp657-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end16-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc94:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin16-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp620-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp620-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp630-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp630-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp649-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp649-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp652-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp652-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end16-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc95:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin16-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp621-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp621-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp656-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp656-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end16-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc96:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp622-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp651-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp652-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp654-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc97:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin17-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp661-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp661-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp682-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp682-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp684-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc98:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin17-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp661-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp661-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp668-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp668-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp684-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # super-register DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc99:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin17-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp661-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp661-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp683-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp683-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp684-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc100:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin17-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp661-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp661-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp681-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp681-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp684-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc101:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin17-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp661-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp661-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp680-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp680-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp684-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp684-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp687-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp687-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp688-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp688-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end17-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc102:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp694-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp694-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp719-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp719-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp720-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp720-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc103:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp694-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp694-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp703-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp703-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp720-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp720-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # super-register DW_OP_reg13
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc104:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp694-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp694-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp717-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp717-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp720-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp720-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc105:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp694-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp694-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp704-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp704-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp720-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp720-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc106:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp695-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp695-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp696-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp696-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp698-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp698-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	88                              # super-register DW_OP_reg8
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc107:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin18-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp691-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	89                              # super-register DW_OP_reg9
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp691-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp718-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp718-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp720-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	89                              # super-register DW_OP_reg9
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp720-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end18-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc108:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin19-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp727-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp727-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp747-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp747-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp750-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp750-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc109:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin19-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp727-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp727-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp734-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp734-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp750-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp750-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc110:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin19-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp727-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp727-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp748-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp748-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp750-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp750-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # super-register DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc111:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin19-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp727-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp727-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp749-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp749-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp750-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # super-register DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp750-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end19-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc112:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin20-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp756-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp756-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp767-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp767-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp768-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp768-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end20-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc113:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin20-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp762-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp762-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp764-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp764-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp765-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp765-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp768-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp768-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp770-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp770-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp772-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp772-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp773-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp773-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end20-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc114:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin20-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp759-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp759-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp761-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp761-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp763-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp763-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp765-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp765-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp768-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp768-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp769-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp769-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp771-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp771-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp773-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp773-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end20-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc115:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin21-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp781-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp781-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp784-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp784-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp785-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp785-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp788-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp788-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp789-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp789-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp791-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp791-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end21-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc116:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin21-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp782-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp782-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp785-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # super-register DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp785-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp788-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp788-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp790-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp790-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp791-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp791-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end21-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc117:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin21-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp783-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp783-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp785-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	88                              # super-register DW_OP_reg8
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp785-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp788-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp788-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp791-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp791-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end21-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc118:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin24-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp795-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp795-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end24-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc119:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin24-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp797-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp797-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end24-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc120:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin24-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp799-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # super-register DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp799-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end24-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # super-register DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc121:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp796-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp801-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc122:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp798-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp800-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # super-register DW_OP_reg15
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc123:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin26-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp805-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp805-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp832-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp832-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp834-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp834-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end26-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc124:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin26-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp806-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp806-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp812-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp812-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp834-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp834-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end26-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc125:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp804-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp813-.Lfunc_begin0         #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp813-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp831-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	92                              # DW_OP_reg12
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp834-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end26-.Lfunc_begin0     #   ending offset
	.byte	3                               # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc126:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp806-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp811-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp811-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp833-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	95                              # DW_OP_reg15
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp833-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp835-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc127:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin27-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp840-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # super-register DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp840-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp848-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp848-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp849-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp849-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp852-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp852-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp853-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp853-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end27-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # super-register DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc128:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp843-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp848-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp848-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp851-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp851-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp853-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp853-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end27-.Lfunc_begin0     #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc129:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin28-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp858-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp858-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp877-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp877-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp879-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc130:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin28-.Lfunc_begin0   #   starting offset
	.uleb128 .Ltmp858-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp858-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp878-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # super-register DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp878-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end28-.Lfunc_begin0     #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc131:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp865-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp869-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp869-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp870-.Lfunc_begin0         #   ending offset
	.byte	9                               # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	40                              # 40
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp872-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp876-.Lfunc_begin0         #   ending offset
	.byte	6                               # Loc expr size
	.byte	127                             # DW_OP_breg15
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	40                              # 40
	.byte	27                              # DW_OP_div
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
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
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
	.byte	27                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	28                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
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
	.ascii	"\207\001"                      # DW_AT_noreturn
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
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
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	48                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	49                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	50                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	51                              # Abbreviation Code
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
	.byte	52                              # Abbreviation Code
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
	.byte	53                              # Abbreviation Code
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
	.byte	54                              # Abbreviation Code
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
	.byte	55                              # Abbreviation Code
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
	.byte	56                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
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
	.byte	57                              # Abbreviation Code
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
	.byte	58                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	59                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
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
	.byte	60                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	61                              # Abbreviation Code
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
	.byte	62                              # Abbreviation Code
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
	.byte	63                              # Abbreviation Code
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
	.byte	64                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
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
	.byte	65                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x1873 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	87                              # DW_AT_low_pc
	.long	.Lfunc_end28-.Lfunc_begin0      # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	114                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2f:0x4 DW_TAG_base_type
	.byte	113                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x33:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	2                               # Abbrev [2] 0x3e:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x42:0xa DW_TAG_variable
	.long	76                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	5                               # Abbrev [5] 0x4c:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x51:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	52                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x58:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x5c:0x4 DW_TAG_base_type
	.byte	6                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	4                               # Abbrev [4] 0x60:0xa DW_TAG_variable
	.long	106                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	5                               # Abbrev [5] 0x6a:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x6f:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	59                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x76:0xa DW_TAG_variable
	.long	128                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	5                               # Abbrev [5] 0x80:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x85:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	56                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x8c:0xa DW_TAG_variable
	.long	150                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	5                               # Abbrev [5] 0x96:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x9b:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	50                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa2:0xa DW_TAG_variable
	.long	172                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	5                               # Abbrev [5] 0xac:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0xb1:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	41                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xb8:0xa DW_TAG_variable
	.long	194                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	5                               # Abbrev [5] 0xc2:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0xc7:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	58                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xce:0xa DW_TAG_variable
	.long	216                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	5                               # Abbrev [5] 0xd8:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0xdd:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	77                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xe4:0xa DW_TAG_variable
	.long	238                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	5                               # Abbrev [5] 0xee:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0xf3:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	75                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xfa:0xa DW_TAG_variable
	.long	260                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	9
	.byte	5                               # Abbrev [5] 0x104:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x109:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	24                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x110:0xa DW_TAG_variable
	.long	282                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	10
	.byte	5                               # Abbrev [5] 0x11a:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x11f:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	14                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x126:0xa DW_TAG_variable
	.long	304                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	11
	.byte	5                               # Abbrev [5] 0x130:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x135:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	27                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x13c:0xa DW_TAG_variable
	.long	326                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	12
	.byte	5                               # Abbrev [5] 0x146:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x14b:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	46                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x152:0xa DW_TAG_variable
	.long	348                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	13
	.byte	5                               # Abbrev [5] 0x15c:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x161:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	67                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x168:0xa DW_TAG_variable
	.long	282                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	14
	.byte	4                               # Abbrev [4] 0x172:0xa DW_TAG_variable
	.long	380                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	15
	.byte	5                               # Abbrev [5] 0x17c:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x181:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	15                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x188:0x7 DW_TAG_variable
	.long	399                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x18f:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x194:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x19b:0xa DW_TAG_variable
	.long	76                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	16
	.byte	4                               # Abbrev [4] 0x1a5:0xa DW_TAG_variable
	.long	431                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	17
	.byte	5                               # Abbrev [5] 0x1af:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1b4:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	63                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1bb:0xa DW_TAG_variable
	.long	453                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	18
	.byte	5                               # Abbrev [5] 0x1c5:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1ca:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	23                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1d1:0xa DW_TAG_variable
	.long	453                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	19
	.byte	4                               # Abbrev [4] 0x1db:0xa DW_TAG_variable
	.long	485                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	20
	.byte	5                               # Abbrev [5] 0x1e5:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1ea:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	33                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1f1:0xa DW_TAG_variable
	.long	507                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	21
	.byte	5                               # Abbrev [5] 0x1fb:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x200:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	61                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x207:0xa DW_TAG_variable
	.long	529                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	22
	.byte	5                               # Abbrev [5] 0x211:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x216:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	45                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x21d:0xa DW_TAG_variable
	.long	551                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	238                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	23
	.byte	5                               # Abbrev [5] 0x227:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x22c:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	43                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x233:0xa DW_TAG_variable
	.long	573                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	24
	.byte	5                               # Abbrev [5] 0x23d:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x242:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x249:0xa DW_TAG_variable
	.long	595                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	249                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	25
	.byte	5                               # Abbrev [5] 0x253:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x258:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	44                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x25f:0xa DW_TAG_variable
	.long	617                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	255                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	26
	.byte	5                               # Abbrev [5] 0x269:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x26e:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	47                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x275:0xb DW_TAG_variable
	.long	640                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	27
	.byte	5                               # Abbrev [5] 0x280:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x285:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	62                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x28c:0xb DW_TAG_variable
	.long	663                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	261                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	28
	.byte	5                               # Abbrev [5] 0x297:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x29c:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	38                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2a3:0x8 DW_TAG_variable
	.long	683                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x2ab:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2b0:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x2b7:0xb DW_TAG_variable
	.long	683                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	275                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	29
	.byte	9                               # Abbrev [9] 0x2c2:0xb DW_TAG_variable
	.long	529                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	276                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	30
	.byte	9                               # Abbrev [9] 0x2cd:0xb DW_TAG_variable
	.long	728                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	282                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	31
	.byte	5                               # Abbrev [5] 0x2d8:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2dd:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	29                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x2e4:0xb DW_TAG_variable
	.long	507                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	284                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	32
	.byte	9                               # Abbrev [9] 0x2ef:0xb DW_TAG_variable
	.long	762                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	288                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	33
	.byte	5                               # Abbrev [5] 0x2fa:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2ff:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	37                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x306:0xb DW_TAG_variable
	.long	595                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	297                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	34
	.byte	9                               # Abbrev [9] 0x311:0xb DW_TAG_variable
	.long	796                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	303                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	35
	.byte	5                               # Abbrev [5] 0x31c:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x321:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	39                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x328:0xb DW_TAG_variable
	.long	431                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	305                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	36
	.byte	9                               # Abbrev [9] 0x333:0xb DW_TAG_variable
	.long	796                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	37
	.byte	9                               # Abbrev [9] 0x33e:0xb DW_TAG_variable
	.long	841                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	313                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	38
	.byte	5                               # Abbrev [5] 0x349:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x34e:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	31                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x355:0xb DW_TAG_variable
	.long	864                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	317                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	39
	.byte	5                               # Abbrev [5] 0x360:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x365:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	76                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x36c:0xb DW_TAG_variable
	.long	326                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	321                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	40
	.byte	9                               # Abbrev [9] 0x377:0xb DW_TAG_variable
	.long	640                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	329                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	41
	.byte	9                               # Abbrev [9] 0x382:0xb DW_TAG_variable
	.long	326                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	333                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	42
	.byte	9                               # Abbrev [9] 0x38d:0xb DW_TAG_variable
	.long	920                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	43
	.byte	5                               # Abbrev [5] 0x398:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x39d:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	82                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3a4:0xb DW_TAG_variable
	.long	943                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	347                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	44
	.byte	5                               # Abbrev [5] 0x3af:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x3b4:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3bb:0xb DW_TAG_variable
	.long	796                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	353                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	45
	.byte	9                               # Abbrev [9] 0x3c6:0xb DW_TAG_variable
	.long	977                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	359                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	46
	.byte	5                               # Abbrev [5] 0x3d1:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x3d6:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3dd:0xb DW_TAG_variable
	.long	943                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	364                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	47
	.byte	9                               # Abbrev [9] 0x3e8:0xb DW_TAG_variable
	.long	1011                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	370                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	48
	.byte	5                               # Abbrev [5] 0x3f3:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x3f8:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	35                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3ff:0xb DW_TAG_variable
	.long	529                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	373                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	49
	.byte	9                               # Abbrev [9] 0x40a:0xb DW_TAG_variable
	.long	529                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	379                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	50
	.byte	9                               # Abbrev [9] 0x415:0xb DW_TAG_variable
	.long	1056                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	382                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	51
	.byte	5                               # Abbrev [5] 0x420:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x425:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	40                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x42c:0xb DW_TAG_variable
	.long	172                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	52
	.byte	9                               # Abbrev [9] 0x437:0xb DW_TAG_variable
	.long	1090                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	414                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	53
	.byte	5                               # Abbrev [5] 0x442:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x447:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	42                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x44e:0xb DW_TAG_variable
	.long	1113                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	430                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	54
	.byte	5                               # Abbrev [5] 0x459:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x45e:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	66                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x465:0xb DW_TAG_variable
	.long	640                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	432                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	55
	.byte	9                               # Abbrev [9] 0x470:0xb DW_TAG_variable
	.long	326                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	436                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	56
	.byte	9                               # Abbrev [9] 0x47b:0xb DW_TAG_variable
	.long	380                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	441                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	57
	.byte	9                               # Abbrev [9] 0x486:0xb DW_TAG_variable
	.long	194                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	447                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	58
	.byte	9                               # Abbrev [9] 0x491:0xb DW_TAG_variable
	.long	238                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	452                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	59
	.byte	9                               # Abbrev [9] 0x49c:0xb DW_TAG_variable
	.long	431                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	60
	.byte	9                               # Abbrev [9] 0x4a7:0xb DW_TAG_variable
	.long	796                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	61
	.byte	9                               # Abbrev [9] 0x4b2:0xb DW_TAG_variable
	.long	1213                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	462                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	62
	.byte	5                               # Abbrev [5] 0x4bd:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x4c2:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x4c9:0xb DW_TAG_variable
	.long	194                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	63
	.byte	9                               # Abbrev [9] 0x4d4:0xb DW_TAG_variable
	.long	76                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	473                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	64
	.byte	9                               # Abbrev [9] 0x4df:0xb DW_TAG_variable
	.long	507                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	475                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	65
	.byte	9                               # Abbrev [9] 0x4ea:0xb DW_TAG_variable
	.long	762                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	66
	.byte	9                               # Abbrev [9] 0x4f5:0xb DW_TAG_variable
	.long	573                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	67
	.byte	9                               # Abbrev [9] 0x500:0xb DW_TAG_variable
	.long	595                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	68
	.byte	9                               # Abbrev [9] 0x50b:0xb DW_TAG_variable
	.long	1302                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	492                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	69
	.byte	5                               # Abbrev [5] 0x516:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x51b:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	57                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x522:0xb DW_TAG_variable
	.long	1325                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	495                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	70
	.byte	5                               # Abbrev [5] 0x52d:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x532:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	86                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x539:0xb DW_TAG_variable
	.long	640                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	501                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	71
	.byte	9                               # Abbrev [9] 0x544:0xb DW_TAG_variable
	.long	762                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	505                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	72
	.byte	9                               # Abbrev [9] 0x54f:0xb DW_TAG_variable
	.long	683                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	575                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	73
	.byte	9                               # Abbrev [9] 0x55a:0xb DW_TAG_variable
	.long	1381                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	612                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	74
	.byte	5                               # Abbrev [5] 0x565:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x56a:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	53                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x571:0xb DW_TAG_variable
	.long	640                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	630                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	75
	.byte	9                               # Abbrev [9] 0x57c:0xb DW_TAG_variable
	.long	260                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	642                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	76
	.byte	9                               # Abbrev [9] 0x587:0xb DW_TAG_variable
	.long	1426                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	642                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	77
	.byte	5                               # Abbrev [5] 0x592:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x597:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	12                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x59e:0xb DW_TAG_variable
	.long	1449                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	642                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	78
	.byte	5                               # Abbrev [5] 0x5a9:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x5ae:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	11                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5b5:0xb DW_TAG_variable
	.long	1381                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	646                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	79
	.byte	9                               # Abbrev [9] 0x5c0:0xb DW_TAG_variable
	.long	1483                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	651                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	80
	.byte	5                               # Abbrev [5] 0x5cb:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x5d0:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	30                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5d7:0xb DW_TAG_variable
	.long	453                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	660                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	81
	.byte	9                               # Abbrev [9] 0x5e2:0xb DW_TAG_variable
	.long	1517                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	660                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	82
	.byte	5                               # Abbrev [5] 0x5ed:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x5f2:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x5f9:0xb DW_TAG_variable
	.long	1540                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	661                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	83
	.byte	5                               # Abbrev [5] 0x604:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x609:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	26                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x610:0xb DW_TAG_variable
	.byte	7                               # DW_AT_name
	.long	1563                            # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	84
	.byte	11                              # Abbrev [11] 0x61b:0x5 DW_TAG_pointer_type
	.long	1568                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x620:0x8 DW_TAG_typedef
	.long	1576                            # DW_AT_type
	.byte	17                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x628:0x32 DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x62c:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	1626                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x635:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	1626                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x63e:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	1626                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x647:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	62                              # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x650:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	1646                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x65a:0x8 DW_TAG_typedef
	.long	1634                            # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x662:0x8 DW_TAG_typedef
	.long	1642                            # DW_AT_type
	.byte	10                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x66a:0x4 DW_TAG_base_type
	.byte	9                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x66e:0x5 DW_TAG_pointer_type
	.long	1651                            # DW_AT_type
	.byte	2                               # Abbrev [2] 0x673:0x4 DW_TAG_base_type
	.byte	16                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x677:0xb DW_TAG_variable
	.long	551                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	588                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	85
	.byte	9                               # Abbrev [9] 0x682:0xb DW_TAG_variable
	.long	1677                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	592                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	86
	.byte	5                               # Abbrev [5] 0x68d:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x692:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	36                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x699:0x1 DW_TAG_pointer_type
	.byte	2                               # Abbrev [2] 0x69a:0x4 DW_TAG_base_type
	.byte	18                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x69e:0x5 DW_TAG_pointer_type
	.long	1699                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6a3:0x5 DW_TAG_pointer_type
	.long	88                              # DW_AT_type
	.byte	16                              # Abbrev [16] 0x6a8:0x91 DW_TAG_subprogram
	.byte	87                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0x6b7:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x6c0:0x9 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x6c9:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x6d2:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x6db:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	139                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x6e4:0xc DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	18                              # Abbrev [18] 0x6e6:0x9 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x6f0:0x6 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.byte	88                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x6f6:0x6 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.byte	89                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x6fc:0x6 DW_TAG_call_site
	.long	2269                            # DW_AT_call_origin
	.byte	90                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x702:0x6 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.byte	91                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x708:0x6 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.byte	92                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x70e:0x6 DW_TAG_call_site
	.long	2269                            # DW_AT_call_origin
	.byte	93                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x714:0x6 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.byte	94                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x71a:0x6 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.byte	95                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x720:0x6 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.byte	96                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x726:0x6 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.byte	97                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x72c:0x6 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.byte	98                              # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x732:0x6 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.byte	99                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x739:0x10 DW_TAG_subprogram
	.byte	19                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	356                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x742:0x5 DW_TAG_formal_parameter
	.long	1865                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x747:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x749:0x5 DW_TAG_restrict_type
	.long	1870                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x74e:0x5 DW_TAG_pointer_type
	.long	1875                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x753:0x5 DW_TAG_const_type
	.long	88                              # DW_AT_type
	.byte	26                              # Abbrev [26] 0x758:0xe DW_TAG_subprogram
	.byte	20                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x760:0x5 DW_TAG_formal_parameter
	.long	1894                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x766:0x5 DW_TAG_pointer_type
	.long	1899                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x76b:0x8 DW_TAG_typedef
	.long	1907                            # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x773:0x10b DW_TAG_structure_type
	.byte	60                              # DW_AT_name
	.byte	216                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x778:0x9 DW_TAG_member
	.byte	21                              # DW_AT_name
	.long	62                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x781:0x9 DW_TAG_member
	.byte	22                              # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x78a:0x9 DW_TAG_member
	.byte	23                              # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x793:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x79c:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7a5:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7ae:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7b7:0x9 DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7c0:0x9 DW_TAG_member
	.byte	29                              # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7c9:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7d2:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7db:0x9 DW_TAG_member
	.byte	32                              # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7e4:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	2174                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7ed:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	2181                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7f6:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	62                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7ff:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	62                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x808:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	2186                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x811:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	2194                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x81a:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	2198                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	130                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x823:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	2202                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	131                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x82c:0x9 DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	2214                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x835:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	2223                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x83e:0x9 DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	2231                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x847:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	2238                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x850:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	2181                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	168                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x859:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	1689                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x862:0x9 DW_TAG_member
	.byte	55                              # DW_AT_name
	.long	2245                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x86b:0x9 DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	62                              # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	192                             # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x874:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	2257                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	196                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x87e:0x5 DW_TAG_pointer_type
	.long	2179                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x883:0x2 DW_TAG_structure_type
	.byte	34                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	11                              # Abbrev [11] 0x885:0x5 DW_TAG_pointer_type
	.long	1907                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x88a:0x8 DW_TAG_typedef
	.long	1642                            # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x892:0x4 DW_TAG_base_type
	.byte	41                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x896:0x4 DW_TAG_base_type
	.byte	43                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x89a:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x89f:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x8a6:0x5 DW_TAG_pointer_type
	.long	2219                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x8ab:0x4 DW_TAG_typedef
	.byte	46                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8af:0x8 DW_TAG_typedef
	.long	1642                            # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x8b7:0x5 DW_TAG_pointer_type
	.long	2236                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x8bc:0x2 DW_TAG_structure_type
	.byte	50                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	11                              # Abbrev [11] 0x8be:0x5 DW_TAG_pointer_type
	.long	2243                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x8c3:0x2 DW_TAG_structure_type
	.byte	52                              # DW_AT_name
                                        # DW_AT_declaration
	.byte	12                              # Abbrev [12] 0x8c5:0x8 DW_TAG_typedef
	.long	2253                            # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x8cd:0x4 DW_TAG_base_type
	.byte	56                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x8d1:0xc DW_TAG_array_type
	.long	88                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x8d6:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	20                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x8dd:0xf DW_TAG_subprogram
	.byte	62                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	540                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1689                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x8e6:0x5 DW_TAG_formal_parameter
	.long	2245                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x8ec:0x15 DW_TAG_subprogram
	.byte	63                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	350                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x8f5:0x5 DW_TAG_formal_parameter
	.long	2305                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x8fa:0x5 DW_TAG_formal_parameter
	.long	1865                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0x8ff:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x901:0x5 DW_TAG_restrict_type
	.long	1894                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x906:0xb DW_TAG_subprogram
	.byte	64                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	624                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	22                              # Abbrev [22] 0x90b:0x5 DW_TAG_formal_parameter
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x911:0x4b DW_TAG_subprogram
	.byte	100                             # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	2599                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x91d:0x6 DW_TAG_formal_parameter
	.byte	6                               # DW_AT_location
	.long	2607                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x923:0x6 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.long	2615                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x929:0x6 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.long	2623                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x92f:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.long	2631                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x937:0x6 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.long	2639                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0x93d:0x6 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.long	2647                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x943:0x6 DW_TAG_call_site
	.long	2396                            # DW_AT_call_origin
	.byte	101                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x949:0x6 DW_TAG_call_site
	.long	2516                            # DW_AT_call_origin
	.byte	102                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x94f:0x6 DW_TAG_call_site
	.long	2542                            # DW_AT_call_origin
	.byte	103                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x955:0x6 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.byte	104                             # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x95c:0xa DW_TAG_subprogram
	.byte	65                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x960:0x5 DW_TAG_formal_parameter
	.long	2406                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x966:0x5 DW_TAG_pointer_type
	.long	2411                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x96b:0x8 DW_TAG_typedef
	.long	2419                            # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x973:0x29 DW_TAG_structure_type
	.byte	208                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x977:0x9 DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	2460                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x980:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	2476                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x989:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	2488                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x992:0x9 DW_TAG_member
	.byte	15                              # DW_AT_name
	.long	2504                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x99c:0x8 DW_TAG_typedef
	.long	2468                            # DW_AT_type
	.byte	68                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x9a4:0x8 DW_TAG_typedef
	.long	2253                            # DW_AT_type
	.byte	67                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x9ac:0xc DW_TAG_array_type
	.long	2460                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x9b1:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x9b8:0x8 DW_TAG_typedef
	.long	2496                            # DW_AT_type
	.byte	72                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x9c0:0x8 DW_TAG_typedef
	.long	1690                            # DW_AT_type
	.byte	71                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x9c8:0xc DW_TAG_array_type
	.long	1651                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x9cd:0x6 DW_TAG_subrange_type
	.long	92                              # DW_AT_type
	.byte	128                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x9d4:0x14 DW_TAG_subprogram
	.byte	74                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x9d8:0x5 DW_TAG_formal_parameter
	.long	2406                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x9dd:0x5 DW_TAG_formal_parameter
	.long	2536                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x9e2:0x5 DW_TAG_formal_parameter
	.long	2488                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x9e8:0x5 DW_TAG_pointer_type
	.long	2541                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x9ed:0x1 DW_TAG_const_type
	.byte	35                              # Abbrev [35] 0x9ee:0xf DW_TAG_subprogram
	.byte	75                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x9f2:0x5 DW_TAG_formal_parameter
	.long	2406                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x9f7:0x5 DW_TAG_formal_parameter
	.long	1689                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x9fd:0x2a DW_TAG_subprogram
	.byte	76                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	547                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	38                              # Abbrev [38] 0xa02:0x9 DW_TAG_formal_parameter
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	547                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	38                              # Abbrev [38] 0xa0b:0x9 DW_TAG_formal_parameter
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	547                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0xa14:0x9 DW_TAG_variable
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	549                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	39                              # Abbrev [39] 0xa1d:0x9 DW_TAG_variable
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0xa27:0x39 DW_TAG_subprogram
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1646                            # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	41                              # Abbrev [41] 0xa2f:0x8 DW_TAG_formal_parameter
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	41                              # Abbrev [41] 0xa37:0x8 DW_TAG_formal_parameter
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	1646                            # DW_AT_type
	.byte	41                              # Abbrev [41] 0xa3f:0x8 DW_TAG_formal_parameter
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	42                              # Abbrev [42] 0xa47:0x8 DW_TAG_variable
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	2411                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0xa4f:0x8 DW_TAG_variable
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0xa57:0x8 DW_TAG_variable
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.long	1642                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0xa60:0x30 DW_TAG_subprogram
	.byte	88                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	623                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	38                              # Abbrev [38] 0xa69:0x9 DW_TAG_formal_parameter
	.byte	89                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	623                             # DW_AT_decl_line
	.long	1646                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0xa72:0x9 DW_TAG_formal_parameter
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	623                             # DW_AT_decl_line
	.long	1646                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0xa7b:0x9 DW_TAG_formal_parameter
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	623                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	44                              # Abbrev [44] 0xa84:0xb DW_TAG_lexical_block
	.byte	39                              # Abbrev [39] 0xa85:0x9 DW_TAG_variable
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	628                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0xa90:0x2c DW_TAG_subprogram
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	38                              # Abbrev [38] 0xa95:0x9 DW_TAG_formal_parameter
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
	.long	1894                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0xa9e:0x9 DW_TAG_formal_parameter
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
	.long	1646                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0xaa7:0x9 DW_TAG_formal_parameter
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	44                              # Abbrev [44] 0xab0:0xb DW_TAG_lexical_block
	.byte	39                              # Abbrev [39] 0xab1:0x9 DW_TAG_variable
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	574                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0xabc:0x285 DW_TAG_subprogram
	.byte	105                             # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1646                            # DW_AT_type
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0xacb:0x9 DW_TAG_formal_parameter
	.byte	11                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xad4:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xadd:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0xae6:0x9 DW_TAG_formal_parameter
	.byte	14                              # DW_AT_location
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	1699                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xaef:0x9 DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xaf8:0x9 DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	45                              # Abbrev [45] 0xb01:0xc DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260\002"
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	1646                            # DW_AT_type
	.byte	45                              # Abbrev [45] 0xb0d:0xc DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270\002"
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0xb19:0x9 DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	1646                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xb22:0x9 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0xb2b:0x9 DW_TAG_variable
	.byte	19                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	42                              # Abbrev [42] 0xb34:0x8 DW_TAG_variable
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	46                              # Abbrev [46] 0xb3c:0x28 DW_TAG_inlined_subroutine
	.long	2557                            # DW_AT_abstract_origin
	.byte	106                             # DW_AT_low_pc
	.long	.Ltmp128-.Ltmp121               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	185                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	47                              # Abbrev [47] 0xb49:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	4
	.long	2562                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xb51:0x6 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.long	2571                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0xb57:0x6 DW_TAG_variable
	.byte	21                              # DW_AT_location
	.long	2580                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0xb5d:0x6 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.long	2589                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0xb64:0x2e DW_TAG_inlined_subroutine
	.long	2599                            # DW_AT_abstract_origin
	.byte	1                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	189                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0xb6d:0x6 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.long	2607                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xb73:0x6 DW_TAG_formal_parameter
	.byte	25                              # DW_AT_location
	.long	2615                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xb79:0x6 DW_TAG_formal_parameter
	.byte	26                              # DW_AT_location
	.long	2623                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0xb7f:0x6 DW_TAG_variable
	.byte	23                              # DW_AT_location
	.long	2631                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0xb85:0x6 DW_TAG_variable
	.byte	27                              # DW_AT_location
	.long	2639                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0xb8b:0x6 DW_TAG_variable
	.byte	28                              # DW_AT_location
	.long	2647                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0xb92:0x25 DW_TAG_inlined_subroutine
	.long	2656                            # DW_AT_abstract_origin
	.byte	2                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	190                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0xb9b:0x6 DW_TAG_formal_parameter
	.byte	29                              # DW_AT_location
	.long	2665                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xba1:0x6 DW_TAG_formal_parameter
	.byte	30                              # DW_AT_location
	.long	2674                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xba7:0x6 DW_TAG_formal_parameter
	.byte	31                              # DW_AT_location
	.long	2683                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0xbad:0x9 DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0xbaf:0x6 DW_TAG_variable
	.byte	32                              # DW_AT_location
	.long	2693                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xbb7:0xc DW_TAG_lexical_block
	.byte	4                               # DW_AT_ranges
	.byte	18                              # Abbrev [18] 0xbb9:0x9 DW_TAG_variable
	.byte	33                              # DW_AT_location
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0xbc3:0x38 DW_TAG_inlined_subroutine
	.long	2599                            # DW_AT_abstract_origin
	.byte	107                             # DW_AT_low_pc
	.long	.Ltmp201-.Ltmp190               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	217                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	47                              # Abbrev [47] 0xbd0:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2607                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0xbd7:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2615                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0xbde:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	24
	.long	2623                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0xbe6:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	40
	.long	2631                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0xbee:0x6 DW_TAG_variable
	.byte	34                              # DW_AT_location
	.long	2639                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0xbf4:0x6 DW_TAG_variable
	.byte	35                              # DW_AT_location
	.long	2647                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0xbfb:0x32 DW_TAG_inlined_subroutine
	.long	2704                            # DW_AT_abstract_origin
	.byte	108                             # DW_AT_low_pc
	.long	.Ltmp208-.Ltmp204               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	219                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	47                              # Abbrev [47] 0xc08:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	2709                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0xc0f:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	2718                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0xc16:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	24
	.long	2727                            # DW_AT_abstract_origin
	.byte	49                              # Abbrev [49] 0xc1e:0xe DW_TAG_lexical_block
	.byte	108                             # DW_AT_low_pc
	.long	.Ltmp208-.Ltmp204               # DW_AT_high_pc
	.byte	33                              # Abbrev [33] 0xc24:0x7 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	95
	.long	2737                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0xc2d:0x6 DW_TAG_call_site
	.long	2269                            # DW_AT_call_origin
	.byte	109                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc33:0x6 DW_TAG_call_site
	.long	3393                            # DW_AT_call_origin
	.byte	110                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc39:0x6 DW_TAG_call_site
	.long	3413                            # DW_AT_call_origin
	.byte	111                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc3f:0x6 DW_TAG_call_site
	.long	3413                            # DW_AT_call_origin
	.byte	112                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc45:0x6 DW_TAG_call_site
	.long	3454                            # DW_AT_call_origin
	.byte	113                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc4b:0x6 DW_TAG_call_site
	.long	3547                            # DW_AT_call_origin
	.byte	114                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc51:0x6 DW_TAG_call_site
	.long	3562                            # DW_AT_call_origin
	.byte	115                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc57:0x6 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.byte	116                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc5d:0x6 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.byte	117                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc63:0x6 DW_TAG_call_site
	.long	2396                            # DW_AT_call_origin
	.byte	118                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc69:0x6 DW_TAG_call_site
	.long	2516                            # DW_AT_call_origin
	.byte	119                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc6f:0x6 DW_TAG_call_site
	.long	2542                            # DW_AT_call_origin
	.byte	120                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc75:0x6 DW_TAG_call_site
	.long	2542                            # DW_AT_call_origin
	.byte	121                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc7b:0x6 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.byte	122                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc81:0x6 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.byte	123                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc87:0x6 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.byte	124                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc8d:0x6 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.byte	125                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc93:0x6 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.byte	126                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc99:0x6 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.byte	127                             # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xc9f:0x7 DW_TAG_call_site
	.long	2396                            # DW_AT_call_origin
	.ascii	"\200\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xca6:0x7 DW_TAG_call_site
	.long	2516                            # DW_AT_call_origin
	.ascii	"\201\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xcad:0x7 DW_TAG_call_site
	.long	2542                            # DW_AT_call_origin
	.ascii	"\202\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xcb4:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\203\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xcbb:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\204\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xcc2:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\205\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xcc9:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\206\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xcd0:0x7 DW_TAG_call_site
	.long	3577                            # DW_AT_call_origin
	.ascii	"\207\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xcd7:0x7 DW_TAG_call_site
	.long	3577                            # DW_AT_call_origin
	.ascii	"\210\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xcde:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\211\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xce5:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\212\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xcec:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\213\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xcf3:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\214\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xcfa:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\215\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xd01:0x7 DW_TAG_call_site
	.long	3630                            # DW_AT_call_origin
	.ascii	"\216\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xd08:0x7 DW_TAG_call_site
	.long	3643                            # DW_AT_call_origin
	.ascii	"\217\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xd0f:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\220\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xd16:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\221\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xd1d:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\222\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xd24:0x7 DW_TAG_call_site
	.long	3630                            # DW_AT_call_origin
	.ascii	"\223\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xd2b:0x7 DW_TAG_call_site
	.long	3643                            # DW_AT_call_origin
	.ascii	"\224\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xd32:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\225\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xd39:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\226\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0xd41:0x14 DW_TAG_subprogram
	.byte	14                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xd49:0x5 DW_TAG_formal_parameter
	.long	1870                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xd4e:0x5 DW_TAG_formal_parameter
	.long	62                              # DW_AT_type
	.byte	23                              # Abbrev [23] 0xd53:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0xd55:0x19 DW_TAG_subprogram
	.byte	93                              # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.short	371                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3438                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xd5e:0x5 DW_TAG_formal_parameter
	.long	62                              # DW_AT_type
	.byte	22                              # Abbrev [22] 0xd63:0x5 DW_TAG_formal_parameter
	.long	1689                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xd68:0x5 DW_TAG_formal_parameter
	.long	2245                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xd6e:0x8 DW_TAG_typedef
	.long	3446                            # DW_AT_type
	.byte	95                              # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xd76:0x8 DW_TAG_typedef
	.long	1642                            # DW_AT_type
	.byte	94                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	50                              # Abbrev [50] 0xd7e:0x5d DW_TAG_subprogram
	.ascii	"\227\001"                      # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	117                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	579                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	51                              # Abbrev [51] 0xd8b:0xa DW_TAG_formal_parameter
	.byte	36                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	579                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0xd95:0xa DW_TAG_formal_parameter
	.byte	37                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	579                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	51                              # Abbrev [51] 0xd9f:0xa DW_TAG_formal_parameter
	.byte	38                              # DW_AT_location
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	579                             # DW_AT_decl_line
	.long	1870                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xda9:0x7 DW_TAG_call_site
	.long	3658                            # DW_AT_call_origin
	.ascii	"\230\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xdb0:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\231\001"                      # DW_AT_call_return_pc
	.byte	52                              # Abbrev [52] 0xdb7:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.ascii	"\232\001"                      # DW_AT_call_pc
	.byte	20                              # Abbrev [20] 0xdbe:0x7 DW_TAG_call_site
	.long	3630                            # DW_AT_call_origin
	.ascii	"\233\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xdc5:0x7 DW_TAG_call_site
	.long	3643                            # DW_AT_call_origin
	.ascii	"\234\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xdcc:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\235\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xdd3:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\236\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0xddb:0xf DW_TAG_subprogram
	.byte	96                              # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.short	358                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xde4:0x5 DW_TAG_formal_parameter
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0xdea:0xf DW_TAG_subprogram
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xdee:0x5 DW_TAG_formal_parameter
	.long	62                              # DW_AT_type
	.byte	22                              # Abbrev [22] 0xdf3:0x5 DW_TAG_formal_parameter
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xdf9:0x35 DW_TAG_subprogram
	.ascii	"\243\001"                      # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	2704                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xe06:0x6 DW_TAG_formal_parameter
	.byte	47                              # DW_AT_location
	.long	2709                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xe0c:0x6 DW_TAG_formal_parameter
	.byte	48                              # DW_AT_location
	.long	2718                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xe12:0x6 DW_TAG_formal_parameter
	.byte	49                              # DW_AT_location
	.long	2727                            # DW_AT_abstract_origin
	.byte	49                              # Abbrev [49] 0xe18:0xe DW_TAG_lexical_block
	.ascii	"\243\001"                      # DW_AT_low_pc
	.long	.Ltmp304-.Lfunc_begin6          # DW_AT_high_pc
	.byte	34                              # Abbrev [34] 0xe1f:0x6 DW_TAG_variable
	.byte	50                              # DW_AT_location
	.long	2737                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0xe26:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\244\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	53                              # Abbrev [53] 0xe2e:0x8 DW_TAG_subprogram
	.byte	98                              # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3638                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0xe36:0x5 DW_TAG_pointer_type
	.long	62                              # DW_AT_type
	.byte	21                              # Abbrev [21] 0xe3b:0xf DW_TAG_subprogram
	.byte	99                              # DW_AT_name
	.byte	14                              # DW_AT_decl_file
	.short	419                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1699                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xe44:0x5 DW_TAG_formal_parameter
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0xe4a:0x14 DW_TAG_subprogram
	.byte	100                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	551                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1689                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xe53:0x5 DW_TAG_formal_parameter
	.long	1689                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xe58:0x5 DW_TAG_formal_parameter
	.long	2245                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xe5e:0x2d DW_TAG_subprogram
	.ascii	"\237\001"                      # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	2557                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xe6b:0x6 DW_TAG_formal_parameter
	.byte	39                              # DW_AT_location
	.long	2562                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xe71:0x6 DW_TAG_formal_parameter
	.byte	40                              # DW_AT_location
	.long	2571                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0xe77:0x6 DW_TAG_variable
	.byte	41                              # DW_AT_location
	.long	2580                            # DW_AT_abstract_origin
	.byte	34                              # Abbrev [34] 0xe7d:0x6 DW_TAG_variable
	.byte	42                              # DW_AT_location
	.long	2589                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xe83:0x7 DW_TAG_call_site
	.long	3562                            # DW_AT_call_origin
	.ascii	"\240\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xe8b:0x30 DW_TAG_subprogram
	.ascii	"\241\001"                      # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	2656                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xe98:0x6 DW_TAG_formal_parameter
	.byte	43                              # DW_AT_location
	.long	2665                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xe9e:0x6 DW_TAG_formal_parameter
	.byte	44                              # DW_AT_location
	.long	2674                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xea4:0x6 DW_TAG_formal_parameter
	.byte	45                              # DW_AT_location
	.long	2683                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0xeaa:0x9 DW_TAG_lexical_block
	.byte	5                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0xeac:0x6 DW_TAG_variable
	.byte	46                              # DW_AT_location
	.long	2693                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0xeb3:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\242\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0xebb:0x94 DW_TAG_subprogram
	.ascii	"\245\001"                      # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	118                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1626                            # DW_AT_type
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0xecb:0x9 DW_TAG_formal_parameter
	.byte	51                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xed4:0x9 DW_TAG_formal_parameter
	.byte	52                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xedd:0x9 DW_TAG_formal_parameter
	.byte	53                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0xee6:0x9 DW_TAG_formal_parameter
	.byte	54                              # DW_AT_location
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	1646                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xeef:0x9 DW_TAG_formal_parameter
	.byte	55                              # DW_AT_location
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xef8:0x9 DW_TAG_variable
	.byte	56                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0xf01:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\246\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xf08:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\247\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xf0f:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\250\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xf16:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\251\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xf1d:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\252\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xf24:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\253\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xf2b:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\254\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xf32:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\255\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xf39:0x7 DW_TAG_call_site
	.long	3630                            # DW_AT_call_origin
	.ascii	"\256\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xf40:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\257\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xf47:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\260\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0xf4f:0x96 DW_TAG_subprogram
	.ascii	"\261\001"                      # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1626                            # DW_AT_type
                                        # DW_AT_external
	.byte	17                              # Abbrev [17] 0xf5f:0x9 DW_TAG_formal_parameter
	.byte	57                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xf68:0x9 DW_TAG_formal_parameter
	.byte	58                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xf71:0x9 DW_TAG_formal_parameter
	.byte	59                              # DW_AT_location
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	1646                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xf7a:0x9 DW_TAG_formal_parameter
	.byte	60                              # DW_AT_location
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xf83:0x9 DW_TAG_formal_parameter
	.byte	61                              # DW_AT_location
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	17                              # Abbrev [17] 0xf8c:0x9 DW_TAG_formal_parameter
	.byte	62                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	18                              # Abbrev [18] 0xf95:0x9 DW_TAG_variable
	.byte	63                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xf9e:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\262\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xfa5:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\263\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xfac:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\264\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xfb3:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\265\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xfba:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\266\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xfc1:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\267\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xfc8:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\270\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xfcf:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\271\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xfd6:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\272\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0xfdd:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\273\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0xfe5:0x80 DW_TAG_subprogram
	.ascii	"\274\001"                      # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0xff6:0xa DW_TAG_formal_parameter
	.byte	64                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1000:0xa DW_TAG_formal_parameter
	.byte	65                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x100a:0xa DW_TAG_formal_parameter
	.byte	66                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1014:0xa DW_TAG_variable
	.byte	67                              # DW_AT_location
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0x101e:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\275\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1025:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\276\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x102c:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\277\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1033:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\300\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x103a:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\301\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1041:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\302\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1048:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\303\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x104f:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\304\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1056:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\305\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x105d:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\306\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x1065:0x9f DW_TAG_subprogram
	.ascii	"\307\001"                      # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	121                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x1076:0xa DW_TAG_formal_parameter
	.byte	68                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1080:0xa DW_TAG_formal_parameter
	.byte	69                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x108a:0xa DW_TAG_formal_parameter
	.byte	70                              # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1094:0xa DW_TAG_formal_parameter
	.byte	71                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	56                              # Abbrev [56] 0x109e:0xa DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0x10a8:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\310\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10af:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\311\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10b6:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\312\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10bd:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\313\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10c4:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\314\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10cb:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\315\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10d2:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\316\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10d9:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\317\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10e0:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\320\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10e7:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\321\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10ee:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\322\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10f5:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\323\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x10fc:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\324\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x1104:0xa9 DW_TAG_subprogram
	.ascii	"\325\001"                      # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1626                            # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x1115:0xa DW_TAG_formal_parameter
	.byte	72                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x111f:0xa DW_TAG_formal_parameter
	.byte	73                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1129:0xa DW_TAG_formal_parameter
	.byte	74                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1133:0xa DW_TAG_formal_parameter
	.byte	75                              # DW_AT_location
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x113d:0xa DW_TAG_formal_parameter
	.byte	76                              # DW_AT_location
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1147:0xa DW_TAG_variable
	.byte	77                              # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	326                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1151:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\326\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1158:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\327\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x115f:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\330\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1166:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\331\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x116d:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\332\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1174:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\333\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x117b:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\334\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1182:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\335\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1189:0x7 DW_TAG_call_site
	.long	3630                            # DW_AT_call_origin
	.ascii	"\336\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1190:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\337\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1197:0x7 DW_TAG_call_site
	.long	3630                            # DW_AT_call_origin
	.ascii	"\340\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x119e:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\341\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x11a5:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\342\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x11ad:0x35 DW_TAG_subprogram
	.ascii	"\343\001"                      # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	4707                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x11ba:0x6 DW_TAG_formal_parameter
	.byte	78                              # DW_AT_location
	.long	4716                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x11c0:0x6 DW_TAG_formal_parameter
	.byte	79                              # DW_AT_location
	.long	4725                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x11c6:0x6 DW_TAG_formal_parameter
	.byte	80                              # DW_AT_location
	.long	4734                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x11cc:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\344\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x11d3:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\345\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x11da:0x7 DW_TAG_call_site
	.long	4356                            # DW_AT_call_origin
	.ascii	"\346\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x11e2:0x3c DW_TAG_subprogram
	.ascii	"\347\001"                      # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	4744                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x11ef:0x6 DW_TAG_formal_parameter
	.byte	81                              # DW_AT_location
	.long	4753                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x11f5:0x6 DW_TAG_formal_parameter
	.byte	82                              # DW_AT_location
	.long	4762                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x11fb:0x6 DW_TAG_formal_parameter
	.byte	83                              # DW_AT_location
	.long	4771                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x1201:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\350\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1208:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\351\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x120f:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\352\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1216:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\353\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x121e:0x45 DW_TAG_subprogram
	.ascii	"\354\001"                      # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	377                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1626                            # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x122f:0xa DW_TAG_formal_parameter
	.byte	84                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	377                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1239:0xa DW_TAG_formal_parameter
	.byte	85                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	377                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1243:0xa DW_TAG_formal_parameter
	.byte	86                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	377                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0x124d:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\355\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1254:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\356\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x125b:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\357\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x1263:0x25 DW_TAG_subprogram
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	363                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	38                              # Abbrev [38] 0x126c:0x9 DW_TAG_formal_parameter
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	363                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x1275:0x9 DW_TAG_formal_parameter
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	363                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x127e:0x9 DW_TAG_formal_parameter
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	363                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x1288:0x25 DW_TAG_subprogram
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	369                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	38                              # Abbrev [38] 0x1291:0x9 DW_TAG_formal_parameter
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	369                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x129a:0x9 DW_TAG_formal_parameter
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	369                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x12a3:0x9 DW_TAG_formal_parameter
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	369                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x12ad:0xdb DW_TAG_subprogram
	.ascii	"\360\001"                      # DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	124                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x12be:0xa DW_TAG_formal_parameter
	.byte	87                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x12c8:0xa DW_TAG_formal_parameter
	.byte	88                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x12d2:0xa DW_TAG_formal_parameter
	.byte	89                              # DW_AT_location
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.long	1870                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x12dc:0xa DW_TAG_formal_parameter
	.byte	90                              # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.long	1870                            # DW_AT_type
	.byte	55                              # Abbrev [55] 0x12e6:0xa DW_TAG_variable
	.byte	91                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	57                              # Abbrev [57] 0x12f0:0x25 DW_TAG_inlined_subroutine
	.long	4744                            # DW_AT_abstract_origin
	.ascii	"\361\001"                      # DW_AT_low_pc
	.long	.Ltmp616-.Ltmp605               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	401                             # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	47                              # Abbrev [47] 0x12ff:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	4753                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0x1306:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	4762                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0x130d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	4771                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	57                              # Abbrev [57] 0x1315:0x25 DW_TAG_inlined_subroutine
	.long	4707                            # DW_AT_abstract_origin
	.ascii	"\362\001"                      # DW_AT_low_pc
	.long	.Ltmp600-.Ltmp595               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	403                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	47                              # Abbrev [47] 0x1324:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	4716                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0x132b:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	4725                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0x1332:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	4734                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x133a:0x7 DW_TAG_call_site
	.long	5000                            # DW_AT_call_origin
	.ascii	"\363\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1341:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\364\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1348:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\365\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x134f:0x7 DW_TAG_call_site
	.long	3630                            # DW_AT_call_origin
	.ascii	"\366\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1356:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\367\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x135d:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\370\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1364:0x7 DW_TAG_call_site
	.long	4356                            # DW_AT_call_origin
	.ascii	"\371\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x136b:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\372\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1372:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\373\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1379:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\374\001"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1380:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\375\001"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x1388:0x18 DW_TAG_subprogram
	.byte	105                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1642                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x1390:0x5 DW_TAG_formal_parameter
	.long	1865                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x1395:0x5 DW_TAG_formal_parameter
	.long	5024                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x139a:0x5 DW_TAG_formal_parameter
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x13a0:0x5 DW_TAG_restrict_type
	.long	1694                            # DW_AT_type
	.byte	54                              # Abbrev [54] 0x13a5:0xc3 DW_TAG_subprogram
	.ascii	"\376\001"                      # DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	125                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	408                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x13b6:0xa DW_TAG_formal_parameter
	.byte	92                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	408                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x13c0:0xa DW_TAG_formal_parameter
	.byte	93                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	408                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x13ca:0xa DW_TAG_formal_parameter
	.byte	94                              # DW_AT_location
	.byte	141                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	408                             # DW_AT_decl_line
	.long	1699                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x13d4:0xa DW_TAG_formal_parameter
	.byte	95                              # DW_AT_location
	.byte	152                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	408                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	55                              # Abbrev [55] 0x13de:0xa DW_TAG_variable
	.byte	96                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	409                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	57                              # Abbrev [57] 0x13e8:0x25 DW_TAG_inlined_subroutine
	.long	4744                            # DW_AT_abstract_origin
	.ascii	"\377\001"                      # DW_AT_low_pc
	.long	.Ltmp642-.Ltmp632               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	418                             # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	47                              # Abbrev [47] 0x13f7:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	4753                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0x13fe:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	4762                            # DW_AT_abstract_origin
	.byte	47                              # Abbrev [47] 0x1405:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	4771                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	58                              # Abbrev [58] 0x140d:0xd DW_TAG_inlined_subroutine
	.long	4707                            # DW_AT_abstract_origin
	.ascii	"\200\002"                      # DW_AT_low_pc
	.long	.Ltmp649-.Ltmp644               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	0                               # DW_AT_call_line
	.byte	20                              # Abbrev [20] 0x141a:0x7 DW_TAG_call_site
	.long	5000                            # DW_AT_call_origin
	.ascii	"\201\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1421:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\202\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1428:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\203\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x142f:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\204\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1436:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\205\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x143d:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\206\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1444:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\207\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x144b:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\210\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1452:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\211\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1459:0x7 DW_TAG_call_site
	.long	3630                            # DW_AT_call_origin
	.ascii	"\212\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1460:0x7 DW_TAG_call_site
	.long	4356                            # DW_AT_call_origin
	.ascii	"\213\002"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x1468:0x83 DW_TAG_subprogram
	.ascii	"\214\002"                      # DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	126                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	429                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1626                            # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x1479:0xa DW_TAG_formal_parameter
	.byte	97                              # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	429                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1483:0xa DW_TAG_formal_parameter
	.byte	98                              # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	429                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x148d:0xa DW_TAG_formal_parameter
	.byte	99                              # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	429                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1497:0xa DW_TAG_formal_parameter
	.byte	100                             # DW_AT_location
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	429                             # DW_AT_decl_line
	.long	1646                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x14a1:0xa DW_TAG_formal_parameter
	.byte	101                             # DW_AT_location
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	429                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x14ab:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\215\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x14b2:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\216\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x14b9:0x7 DW_TAG_call_site
	.long	3454                            # DW_AT_call_origin
	.ascii	"\217\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x14c0:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\220\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x14c7:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\221\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x14ce:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\222\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x14d5:0x7 DW_TAG_call_site
	.long	3630                            # DW_AT_call_origin
	.ascii	"\223\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x14dc:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\224\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x14e3:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\225\002"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x14eb:0x8d DW_TAG_subprogram
	.ascii	"\226\002"                      # DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1626                            # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x14fc:0xa DW_TAG_formal_parameter
	.byte	102                             # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1506:0xa DW_TAG_formal_parameter
	.byte	103                             # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1510:0xa DW_TAG_formal_parameter
	.byte	104                             # DW_AT_location
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
	.long	1646                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x151a:0xa DW_TAG_formal_parameter
	.byte	105                             # DW_AT_location
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
	.long	1626                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1524:0xa DW_TAG_formal_parameter
	.byte	106                             # DW_AT_location
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	51                              # Abbrev [51] 0x152e:0xa DW_TAG_formal_parameter
	.byte	107                             # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1538:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\227\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x153f:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\230\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1546:0x7 DW_TAG_call_site
	.long	3454                            # DW_AT_call_origin
	.ascii	"\231\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x154d:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\232\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1554:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\233\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x155b:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\234\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1562:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\235\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1569:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\236\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1570:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\237\002"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x1578:0x80 DW_TAG_subprogram
	.ascii	"\240\002"                      # DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	128                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	472                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x1589:0xa DW_TAG_formal_parameter
	.byte	108                             # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	472                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1593:0xa DW_TAG_formal_parameter
	.byte	109                             # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	472                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x159d:0xa DW_TAG_formal_parameter
	.byte	110                             # DW_AT_location
	.byte	148                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	472                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	51                              # Abbrev [51] 0x15a7:0xa DW_TAG_formal_parameter
	.byte	111                             # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	472                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0x15b1:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\241\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x15b8:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\242\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x15bf:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\243\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x15c6:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\244\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x15cd:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\245\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x15d4:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\246\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x15db:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\247\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x15e2:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\250\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x15e9:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\251\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x15f0:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\252\002"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x15f8:0x4f DW_TAG_subprogram
	.ascii	"\253\002"                      # DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     # DW_AT_high_pc
	.byte	4                               # DW_AT_frame_base
	.byte	156
	.byte	17
	.byte	96
	.byte	34
                                        # DW_AT_call_all_calls
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x160c:0xa DW_TAG_formal_parameter
	.byte	112                             # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1616:0xa DW_TAG_formal_parameter
	.byte	113                             # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1620:0xa DW_TAG_formal_parameter
	.byte	114                             # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0x162a:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\254\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1631:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\255\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1638:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\256\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x163f:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\257\002"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x1647:0x4c DW_TAG_subprogram
	.ascii	"\260\002"                      # DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin21     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x1658:0xa DW_TAG_formal_parameter
	.byte	115                             # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1662:0xa DW_TAG_formal_parameter
	.byte	116                             # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x166c:0xa DW_TAG_formal_parameter
	.byte	117                             # DW_AT_location
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	499                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1676:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\261\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x167d:0x7 DW_TAG_call_site
	.long	3630                            # DW_AT_call_origin
	.ascii	"\262\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1684:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\263\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x168b:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\264\002"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x1693:0x1d DW_TAG_subprogram
	.ascii	"\265\002"                      # DW_AT_low_pc
	.long	.Lfunc_end22-.Lfunc_begin22     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	131                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	514                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	59                              # Abbrev [59] 0x16a4:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	82                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	514                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	60                              # Abbrev [60] 0x16b0:0xd DW_TAG_subprogram
	.ascii	"\266\002"                      # DW_AT_low_pc
	.long	.Lfunc_end23-.Lfunc_begin23     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	518                             # DW_AT_decl_line
                                        # DW_AT_external
	.byte	61                              # Abbrev [61] 0x16bd:0x47 DW_TAG_subprogram
	.ascii	"\267\002"                      # DW_AT_low_pc
	.long	.Lfunc_end24-.Lfunc_begin24     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	133                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	529                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x16ca:0xa DW_TAG_formal_parameter
	.byte	118                             # DW_AT_location
	.byte	77                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	529                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	51                              # Abbrev [51] 0x16d4:0xa DW_TAG_formal_parameter
	.byte	119                             # DW_AT_location
	.byte	78                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	529                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	51                              # Abbrev [51] 0x16de:0xa DW_TAG_formal_parameter
	.byte	120                             # DW_AT_location
	.byte	153                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	529                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	55                              # Abbrev [55] 0x16e8:0xa DW_TAG_variable
	.byte	121                             # DW_AT_location
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	531                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	55                              # Abbrev [55] 0x16f2:0xa DW_TAG_variable
	.byte	122                             # DW_AT_location
	.byte	80                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	532                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	20                              # Abbrev [20] 0x16fc:0x7 DW_TAG_call_site
	.long	5892                            # DW_AT_call_origin
	.ascii	"\270\002"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x1704:0x14 DW_TAG_subprogram
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x1708:0x5 DW_TAG_formal_parameter
	.long	62                              # DW_AT_type
	.byte	22                              # Abbrev [22] 0x170d:0x5 DW_TAG_formal_parameter
	.long	62                              # DW_AT_type
	.byte	22                              # Abbrev [22] 0x1712:0x5 DW_TAG_formal_parameter
	.long	2488                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	62                              # Abbrev [62] 0x1718:0x11 DW_TAG_subprogram
	.ascii	"\271\002"                      # DW_AT_low_pc
	.long	.Lfunc_end25-.Lfunc_begin25     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	134                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	561                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	62                              # DW_AT_type
                                        # DW_AT_external
	.byte	63                              # Abbrev [63] 0x1729:0x1e DW_TAG_subprogram
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	595                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1651                            # DW_AT_type
                                        # DW_AT_inline
	.byte	38                              # Abbrev [38] 0x1732:0x9 DW_TAG_formal_parameter
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	595                             # DW_AT_decl_line
	.long	88                              # DW_AT_type
	.byte	44                              # Abbrev [44] 0x173b:0xb DW_TAG_lexical_block
	.byte	39                              # Abbrev [39] 0x173c:0x9 DW_TAG_variable
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	598                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	54                              # Abbrev [54] 0x1747:0x71 DW_TAG_subprogram
	.ascii	"\272\002"                      # DW_AT_low_pc
	.long	.Lfunc_end26-.Lfunc_begin26     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	603                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1646                            # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x1758:0xa DW_TAG_formal_parameter
	.byte	123                             # DW_AT_location
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	603                             # DW_AT_decl_line
	.long	1699                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1762:0xa DW_TAG_formal_parameter
	.byte	124                             # DW_AT_location
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	603                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	55                              # Abbrev [55] 0x176c:0xa DW_TAG_variable
	.byte	125                             # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	605                             # DW_AT_decl_line
	.long	62                              # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1776:0xa DW_TAG_variable
	.byte	126                             # DW_AT_location
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	606                             # DW_AT_decl_line
	.long	1646                            # DW_AT_type
	.byte	64                              # Abbrev [64] 0x1780:0xa DW_TAG_inlined_subroutine
	.long	5929                            # DW_AT_abstract_origin
	.byte	6                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	617                             # DW_AT_call_line
	.byte	57                              # DW_AT_call_column
	.byte	64                              # Abbrev [64] 0x178a:0xa DW_TAG_inlined_subroutine
	.long	5929                            # DW_AT_abstract_origin
	.byte	7                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	617                             # DW_AT_call_line
	.byte	23                              # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x1794:0x7 DW_TAG_call_site
	.long	2269                            # DW_AT_call_origin
	.ascii	"\273\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x179b:0x7 DW_TAG_call_site
	.long	6072                            # DW_AT_call_origin
	.ascii	"\274\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x17a2:0x7 DW_TAG_call_site
	.long	6072                            # DW_AT_call_origin
	.ascii	"\275\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x17a9:0x7 DW_TAG_call_site
	.long	2284                            # DW_AT_call_origin
	.ascii	"\276\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x17b0:0x7 DW_TAG_call_site
	.long	2310                            # DW_AT_call_origin
	.ascii	"\277\002"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	53                              # Abbrev [53] 0x17b8:0x8 DW_TAG_subprogram
	.byte	110                             # DW_AT_name
	.byte	15                              # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6080                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	11                              # Abbrev [11] 0x17c0:0x5 DW_TAG_pointer_type
	.long	6085                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x17c5:0x5 DW_TAG_pointer_type
	.long	6090                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x17ca:0x5 DW_TAG_const_type
	.long	6095                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x17cf:0x8 DW_TAG_typedef
	.long	62                              # DW_AT_type
	.byte	111                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	54                              # Abbrev [54] 0x17d7:0x43 DW_TAG_subprogram
	.ascii	"\300\002"                      # DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin27     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	136                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	638                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1563                            # DW_AT_type
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x17e8:0xa DW_TAG_formal_parameter
	.byte	127                             # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	638                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	55                              # Abbrev [55] 0x17f2:0xb DW_TAG_variable
	.ascii	"\200\001"                      # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	639                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x17fd:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\301\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1804:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\302\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x180b:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\303\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1812:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\304\002"                      # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	61                              # Abbrev [61] 0x181a:0x59 DW_TAG_subprogram
	.ascii	"\305\002"                      # DW_AT_low_pc
	.long	.Lfunc_end28-.Lfunc_begin28     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	137                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	656                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x1827:0xb DW_TAG_formal_parameter
	.ascii	"\201\001"                      # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	656                             # DW_AT_decl_line
	.long	1563                            # DW_AT_type
	.byte	51                              # Abbrev [51] 0x1832:0xb DW_TAG_formal_parameter
	.ascii	"\202\001"                      # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	656                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	55                              # Abbrev [55] 0x183d:0xb DW_TAG_variable
	.ascii	"\203\001"                      # DW_AT_location
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	657                             # DW_AT_decl_line
	.long	1690                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x1848:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\306\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x184f:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\307\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1856:0x7 DW_TAG_call_site
	.long	1849                            # DW_AT_call_origin
	.ascii	"\310\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x185d:0x7 DW_TAG_call_site
	.long	1880                            # DW_AT_call_origin
	.ascii	"\311\002"                      # DW_AT_call_return_pc
	.byte	20                              # Abbrev [20] 0x1864:0x7 DW_TAG_call_site
	.long	6259                            # DW_AT_call_origin
	.ascii	"\312\002"                      # DW_AT_call_return_pc
	.byte	52                              # Abbrev [52] 0x186b:0x7 DW_TAG_call_site
	.long	6259                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.ascii	"\313\002"                      # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	65                              # Abbrev [65] 0x1873:0xb DW_TAG_subprogram
	.byte	112                             # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x1878:0x5 DW_TAG_formal_parameter
	.long	1689                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	8                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
	.long	.Ldebug_ranges3-.Lrnglists_table_base0
	.long	.Ldebug_ranges4-.Lrnglists_table_base0
	.long	.Ldebug_ranges5-.Lrnglists_table_base0
	.long	.Ldebug_ranges6-.Lrnglists_table_base0
	.long	.Ldebug_ranges7-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp36-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp135-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp148-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp150-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp151-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp239-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp241-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp148-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp149-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp151-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp212-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp153-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp164-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp212-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp217-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp178-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp181-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp182-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp189-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp278-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp287-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp290-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp296-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges6:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp813-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp814-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp824-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp825-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp827-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp831-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges7:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp819-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp823-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp825-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp826-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	620                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"spec_mem_io/spec_mem_io.c"     # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=131
.Linfo_string3:
	.asciz	"dbglvl"                        # string offset=163
.Linfo_string4:
	.asciz	"int"                           # string offset=170
.Linfo_string5:
	.asciz	"char"                          # string offset=174
.Linfo_string6:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=179
.Linfo_string7:
	.asciz	"spec_fd"                       # string offset=199
.Linfo_string8:
	.asciz	"limit"                         # string offset=207
.Linfo_string9:
	.asciz	"long"                          # string offset=213
.Linfo_string10:
	.asciz	"__int64_t"                     # string offset=218
.Linfo_string11:
	.asciz	"int64_t"                       # string offset=228
.Linfo_string12:
	.asciz	"len"                           # string offset=236
.Linfo_string13:
	.asciz	"pos"                           # string offset=240
.Linfo_string14:
	.asciz	"open"                          # string offset=244
.Linfo_string15:
	.asciz	"buf"                           # string offset=249
.Linfo_string16:
	.asciz	"unsigned char"                 # string offset=253
.Linfo_string17:
	.asciz	"spec_fd_t"                     # string offset=267
.Linfo_string18:
	.asciz	"unsigned int"                  # string offset=277
.Linfo_string19:
	.asciz	"printf"                        # string offset=290
.Linfo_string20:
	.asciz	"fflush"                        # string offset=297
.Linfo_string21:
	.asciz	"_flags"                        # string offset=304
.Linfo_string22:
	.asciz	"_IO_read_ptr"                  # string offset=311
.Linfo_string23:
	.asciz	"_IO_read_end"                  # string offset=324
.Linfo_string24:
	.asciz	"_IO_read_base"                 # string offset=337
.Linfo_string25:
	.asciz	"_IO_write_base"                # string offset=351
.Linfo_string26:
	.asciz	"_IO_write_ptr"                 # string offset=366
.Linfo_string27:
	.asciz	"_IO_write_end"                 # string offset=380
.Linfo_string28:
	.asciz	"_IO_buf_base"                  # string offset=394
.Linfo_string29:
	.asciz	"_IO_buf_end"                   # string offset=407
.Linfo_string30:
	.asciz	"_IO_save_base"                 # string offset=419
.Linfo_string31:
	.asciz	"_IO_backup_base"               # string offset=433
.Linfo_string32:
	.asciz	"_IO_save_end"                  # string offset=449
.Linfo_string33:
	.asciz	"_markers"                      # string offset=462
.Linfo_string34:
	.asciz	"_IO_marker"                    # string offset=471
.Linfo_string35:
	.asciz	"_chain"                        # string offset=482
.Linfo_string36:
	.asciz	"_fileno"                       # string offset=489
.Linfo_string37:
	.asciz	"_flags2"                       # string offset=497
.Linfo_string38:
	.asciz	"_old_offset"                   # string offset=505
.Linfo_string39:
	.asciz	"__off_t"                       # string offset=517
.Linfo_string40:
	.asciz	"_cur_column"                   # string offset=525
.Linfo_string41:
	.asciz	"unsigned short"                # string offset=537
.Linfo_string42:
	.asciz	"_vtable_offset"                # string offset=552
.Linfo_string43:
	.asciz	"signed char"                   # string offset=567
.Linfo_string44:
	.asciz	"_shortbuf"                     # string offset=579
.Linfo_string45:
	.asciz	"_lock"                         # string offset=589
.Linfo_string46:
	.asciz	"_IO_lock_t"                    # string offset=595
.Linfo_string47:
	.asciz	"_offset"                       # string offset=606
.Linfo_string48:
	.asciz	"__off64_t"                     # string offset=614
.Linfo_string49:
	.asciz	"_codecvt"                      # string offset=624
.Linfo_string50:
	.asciz	"_IO_codecvt"                   # string offset=633
.Linfo_string51:
	.asciz	"_wide_data"                    # string offset=645
.Linfo_string52:
	.asciz	"_IO_wide_data"                 # string offset=656
.Linfo_string53:
	.asciz	"_freeres_list"                 # string offset=670
.Linfo_string54:
	.asciz	"_freeres_buf"                  # string offset=684
.Linfo_string55:
	.asciz	"__pad5"                        # string offset=697
.Linfo_string56:
	.asciz	"unsigned long"                 # string offset=704
.Linfo_string57:
	.asciz	"size_t"                        # string offset=718
.Linfo_string58:
	.asciz	"_mode"                         # string offset=725
.Linfo_string59:
	.asciz	"_unused2"                      # string offset=731
.Linfo_string60:
	.asciz	"_IO_FILE"                      # string offset=740
.Linfo_string61:
	.asciz	"FILE"                          # string offset=749
.Linfo_string62:
	.asciz	"malloc"                        # string offset=754
.Linfo_string63:
	.asciz	"fprintf"                       # string offset=761
.Linfo_string64:
	.asciz	"exit"                          # string offset=769
.Linfo_string65:
	.asciz	"sha_init"                      # string offset=774
.Linfo_string66:
	.asciz	"length"                        # string offset=783
.Linfo_string67:
	.asciz	"__uint64_t"                    # string offset=790
.Linfo_string68:
	.asciz	"uint64_t"                      # string offset=801
.Linfo_string69:
	.asciz	"state"                         # string offset=810
.Linfo_string70:
	.asciz	"curlen"                        # string offset=816
.Linfo_string71:
	.asciz	"__uint32_t"                    # string offset=823
.Linfo_string72:
	.asciz	"uint32_t"                      # string offset=834
.Linfo_string73:
	.asciz	"sha512_state"                  # string offset=843
.Linfo_string74:
	.asciz	"sha_process"                   # string offset=856
.Linfo_string75:
	.asciz	"sha_done"                      # string offset=868
.Linfo_string76:
	.asciz	"spec_uncompress"               # string offset=877
.Linfo_string77:
	.asciz	"in"                            # string offset=893
.Linfo_string78:
	.asciz	"out"                           # string offset=896
.Linfo_string79:
	.asciz	"in_open"                       # string offset=900
.Linfo_string80:
	.asciz	"out_open"                      # string offset=908
.Linfo_string81:
	.asciz	"spec_mem_sum"                  # string offset=917
.Linfo_string82:
	.asciz	"fd"                            # string offset=930
.Linfo_string83:
	.asciz	"sum"                           # string offset=933
.Linfo_string84:
	.asciz	"bits"                          # string offset=937
.Linfo_string85:
	.asciz	"ctx"                           # string offset=942
.Linfo_string86:
	.asciz	"currpos"                       # string offset=946
.Linfo_string87:
	.asciz	"chunk"                         # string offset=954
.Linfo_string88:
	.asciz	"compare_sum"                   # string offset=960
.Linfo_string89:
	.asciz	"ref_sum"                       # string offset=972
.Linfo_string90:
	.asciz	"generated"                     # string offset=980
.Linfo_string91:
	.asciz	"i"                             # string offset=990
.Linfo_string92:
	.asciz	"print_sum"                     # string offset=992
.Linfo_string93:
	.asciz	"read"                          # string offset=1002
.Linfo_string94:
	.asciz	"__ssize_t"                     # string offset=1007
.Linfo_string95:
	.asciz	"ssize_t"                       # string offset=1017
.Linfo_string96:
	.asciz	"close"                         # string offset=1025
.Linfo_string97:
	.asciz	"uncompressStream"              # string offset=1031
.Linfo_string98:
	.asciz	"__errno_location"              # string offset=1048
.Linfo_string99:
	.asciz	"strerror"                      # string offset=1065
.Linfo_string100:
	.asciz	"realloc"                       # string offset=1074
.Linfo_string101:
	.asciz	"spec_mem_rewind"               # string offset=1082
.Linfo_string102:
	.asciz	"fds"                           # string offset=1098
.Linfo_string103:
	.asciz	"fd_limit"                      # string offset=1102
.Linfo_string104:
	.asciz	"spec_mem_reset"                # string offset=1111
.Linfo_string105:
	.asciz	"strtol"                        # string offset=1126
.Linfo_string106:
	.asciz	"compressStream"                # string offset=1133
.Linfo_string107:
	.asciz	"hex_char_to_num"               # string offset=1148
.Linfo_string108:
	.asciz	"digit"                         # string offset=1164
.Linfo_string109:
	.asciz	"__res"                         # string offset=1170
.Linfo_string110:
	.asciz	"__ctype_tolower_loc"           # string offset=1176
.Linfo_string111:
	.asciz	"__int32_t"                     # string offset=1196
.Linfo_string112:
	.asciz	"free"                          # string offset=1206
.Linfo_string113:
	.asciz	"DW_ATE_unsigned_32"            # string offset=1211
.Linfo_string114:
	.asciz	"DW_ATE_unsigned_64"            # string offset=1230
.Linfo_string115:
	.asciz	"spec_mem_init"                 # string offset=1249
.Linfo_string116:
	.asciz	"spec_mem_load"                 # string offset=1263
.Linfo_string117:
	.asciz	"fd_grow"                       # string offset=1277
.Linfo_string118:
	.asciz	"spec_mem_read"                 # string offset=1285
.Linfo_string119:
	.asciz	"spec_mem_fread"                # string offset=1299
.Linfo_string120:
	.asciz	"spec_mem_getc"                 # string offset=1314
.Linfo_string121:
	.asciz	"spec_mem_ungetc"               # string offset=1328
.Linfo_string122:
	.asciz	"spec_mem_lseek"                # string offset=1344
.Linfo_string123:
	.asciz	"spec_mem_get_length"           # string offset=1359
.Linfo_string124:
	.asciz	"spec_mem_fopen"                # string offset=1379
.Linfo_string125:
	.asciz	"spec_mem_open"                 # string offset=1394
.Linfo_string126:
	.asciz	"spec_mem_write"                # string offset=1408
.Linfo_string127:
	.asciz	"spec_mem_fwrite"               # string offset=1423
.Linfo_string128:
	.asciz	"spec_mem_putc"                 # string offset=1439
.Linfo_string129:
	.asciz	"spec_mem_feof"                 # string offset=1453
.Linfo_string130:
	.asciz	"spec_mem_close"                # string offset=1467
.Linfo_string131:
	.asciz	"spec_empty"                    # string offset=1482
.Linfo_string132:
	.asciz	"spec_initbufs"                 # string offset=1493
.Linfo_string133:
	.asciz	"spec_compress"                 # string offset=1507
.Linfo_string134:
	.asciz	"debug_time"                    # string offset=1521
.Linfo_string135:
	.asciz	"sum_str_to_hex"                # string offset=1532
.Linfo_string136:
	.asciz	"spec_mem_alloc_fds"            # string offset=1547
.Linfo_string137:
	.asciz	"spec_mem_free_fds"             # string offset=1566
.Linfo_string138:
	.asciz	"touch_all"                     # string offset=1584
.Linfo_string139:
	.asciz	"j"                             # string offset=1594
.Linfo_string140:
	.asciz	"num"                           # string offset=1596
.Linfo_string141:
	.asciz	"filename"                      # string offset=1600
.Linfo_string142:
	.asciz	"size"                          # string offset=1609
.Linfo_string143:
	.asciz	"tmpfd"                         # string offset=1614
.Linfo_string144:
	.asciz	"gen_sum"                       # string offset=1620
.Linfo_string145:
	.asciz	"rc"                            # string offset=1628
.Linfo_string146:
	.asciz	"tmp"                           # string offset=1631
.Linfo_string147:
	.asciz	"funcname"                      # string offset=1635
.Linfo_string148:
	.asciz	"ch"                            # string offset=1644
.Linfo_string149:
	.asciz	"offset"                        # string offset=1647
.Linfo_string150:
	.asciz	"whence"                        # string offset=1654
.Linfo_string151:
	.asciz	"cur_pos"                       # string offset=1661
.Linfo_string152:
	.asciz	"mode"                          # string offset=1669
.Linfo_string153:
	.asciz	"lev"                           # string offset=1674
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
	.long	.Linfo_string90
	.long	.Linfo_string91
	.long	.Linfo_string92
	.long	.Linfo_string93
	.long	.Linfo_string94
	.long	.Linfo_string95
	.long	.Linfo_string96
	.long	.Linfo_string97
	.long	.Linfo_string98
	.long	.Linfo_string99
	.long	.Linfo_string100
	.long	.Linfo_string101
	.long	.Linfo_string102
	.long	.Linfo_string103
	.long	.Linfo_string104
	.long	.Linfo_string105
	.long	.Linfo_string106
	.long	.Linfo_string107
	.long	.Linfo_string108
	.long	.Linfo_string109
	.long	.Linfo_string110
	.long	.Linfo_string111
	.long	.Linfo_string112
	.long	.Linfo_string113
	.long	.Linfo_string114
	.long	.Linfo_string115
	.long	.Linfo_string116
	.long	.Linfo_string117
	.long	.Linfo_string118
	.long	.Linfo_string119
	.long	.Linfo_string120
	.long	.Linfo_string121
	.long	.Linfo_string122
	.long	.Linfo_string123
	.long	.Linfo_string124
	.long	.Linfo_string125
	.long	.Linfo_string126
	.long	.Linfo_string127
	.long	.Linfo_string128
	.long	.Linfo_string129
	.long	.Linfo_string130
	.long	.Linfo_string131
	.long	.Linfo_string132
	.long	.Linfo_string133
	.long	.Linfo_string134
	.long	.Linfo_string135
	.long	.Linfo_string136
	.long	.Linfo_string137
	.long	.Linfo_string138
	.long	.Linfo_string139
	.long	.Linfo_string140
	.long	.Linfo_string141
	.long	.Linfo_string142
	.long	.Linfo_string143
	.long	.Linfo_string144
	.long	.Linfo_string145
	.long	.Linfo_string146
	.long	.Linfo_string147
	.long	.Linfo_string148
	.long	.Linfo_string149
	.long	.Linfo_string150
	.long	.Linfo_string151
	.long	.Linfo_string152
	.long	.Linfo_string153
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	dbglvl
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	spec_fd
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.Lfunc_begin0
	.quad	.Ltmp3
	.quad	.Ltmp4
	.quad	.Ltmp17
	.quad	.Ltmp23
	.quad	.Ltmp24
	.quad	.Ltmp41
	.quad	.Ltmp47
	.quad	.Ltmp48
	.quad	.Ltmp54
	.quad	.Ltmp55
	.quad	.Ltmp56
	.quad	.Ltmp57
	.quad	.Lfunc_begin1
	.quad	.Ltmp65
	.quad	.Ltmp71
	.quad	.Ltmp75
	.quad	.Ltmp82
	.quad	.Lfunc_begin2
	.quad	.Ltmp121
	.quad	.Ltmp190
	.quad	.Ltmp204
	.quad	.Ltmp87
	.quad	.Ltmp98
	.quad	.Ltmp103
	.quad	.Ltmp106
	.quad	.Ltmp114
	.quad	.Ltmp118
	.quad	.Ltmp126
	.quad	.Ltmp131
	.quad	.Ltmp132
	.quad	.Ltmp138
	.quad	.Ltmp144
	.quad	.Ltmp148
	.quad	.Ltmp151
	.quad	.Ltmp167
	.quad	.Ltmp168
	.quad	.Ltmp173
	.quad	.Ltmp174
	.quad	.Ltmp187
	.quad	.Ltmp188
	.quad	.Ltmp191
	.quad	.Ltmp197
	.quad	.Ltmp201
	.quad	.Ltmp202
	.quad	.Ltmp205
	.quad	.Ltmp217
	.quad	.Ltmp218
	.quad	.Ltmp220
	.quad	.Ltmp222
	.quad	.Ltmp224
	.quad	.Ltmp226
	.quad	.Ltmp227
	.quad	.Ltmp232
	.quad	.Ltmp233
	.quad	.Ltmp236
	.quad	.Ltmp237
	.quad	.Ltmp238
	.quad	.Ltmp239
	.quad	.Ltmp241
	.quad	.Ltmp243
	.quad	.Ltmp244
	.quad	.Ltmp245
	.quad	.Ltmp246
	.quad	.Lfunc_begin3
	.quad	.Ltmp250
	.quad	.Ltmp257
	.quad	.Ltmp260
	.quad	.Ltmp266
	.quad	.Ltmp267
	.quad	.Ltmp268
	.quad	.Ltmp269
	.quad	.Lfunc_begin4
	.quad	.Ltmp274
	.quad	.Lfunc_begin5
	.quad	.Ltmp293
	.quad	.Lfunc_begin6
	.quad	.Ltmp301
	.quad	.Lfunc_begin7
	.quad	.Ltmp311
	.quad	.Ltmp312
	.quad	.Ltmp327
	.quad	.Ltmp329
	.quad	.Ltmp332
	.quad	.Ltmp337
	.quad	.Ltmp339
	.quad	.Ltmp345
	.quad	.Ltmp346
	.quad	.Ltmp349
	.quad	.Ltmp350
	.quad	.Lfunc_begin8
	.quad	.Ltmp357
	.quad	.Ltmp358
	.quad	.Ltmp387
	.quad	.Ltmp388
	.quad	.Ltmp391
	.quad	.Ltmp392
	.quad	.Ltmp396
	.quad	.Ltmp397
	.quad	.Ltmp398
	.quad	.Ltmp399
	.quad	.Lfunc_begin9
	.quad	.Ltmp403
	.quad	.Ltmp404
	.quad	.Ltmp415
	.quad	.Ltmp416
	.quad	.Ltmp420
	.quad	.Ltmp427
	.quad	.Ltmp431
	.quad	.Ltmp432
	.quad	.Ltmp433
	.quad	.Ltmp434
	.quad	.Lfunc_begin10
	.quad	.Ltmp438
	.quad	.Ltmp439
	.quad	.Ltmp451
	.quad	.Ltmp452
	.quad	.Ltmp456
	.quad	.Ltmp457
	.quad	.Ltmp462
	.quad	.Ltmp463
	.quad	.Ltmp464
	.quad	.Ltmp465
	.quad	.Ltmp466
	.quad	.Ltmp467
	.quad	.Ltmp469
	.quad	.Lfunc_begin11
	.quad	.Ltmp485
	.quad	.Ltmp486
	.quad	.Ltmp498
	.quad	.Ltmp499
	.quad	.Ltmp503
	.quad	.Ltmp504
	.quad	.Ltmp508
	.quad	.Ltmp509
	.quad	.Ltmp510
	.quad	.Ltmp519
	.quad	.Ltmp520
	.quad	.Ltmp527
	.quad	.Ltmp528
	.quad	.Lfunc_begin12
	.quad	.Ltmp532
	.quad	.Ltmp533
	.quad	.Ltmp534
	.quad	.Lfunc_begin13
	.quad	.Ltmp544
	.quad	.Ltmp545
	.quad	.Ltmp550
	.quad	.Ltmp551
	.quad	.Lfunc_begin14
	.quad	.Ltmp566
	.quad	.Ltmp567
	.quad	.Ltmp571
	.quad	.Lfunc_begin15
	.quad	.Ltmp605
	.quad	.Ltmp595
	.quad	.Ltmp578
	.quad	.Ltmp583
	.quad	.Ltmp584
	.quad	.Ltmp593
	.quad	.Ltmp598
	.quad	.Ltmp599
	.quad	.Ltmp601
	.quad	.Ltmp608
	.quad	.Ltmp609
	.quad	.Ltmp614
	.quad	.Ltmp615
	.quad	.Lfunc_begin16
	.quad	.Ltmp632
	.quad	.Ltmp644
	.quad	.Ltmp621
	.quad	.Ltmp626
	.quad	.Ltmp627
	.quad	.Ltmp635
	.quad	.Ltmp636
	.quad	.Ltmp641
	.quad	.Ltmp642
	.quad	.Ltmp647
	.quad	.Ltmp648
	.quad	.Ltmp650
	.quad	.Ltmp654
	.quad	.Lfunc_begin17
	.quad	.Ltmp662
	.quad	.Ltmp663
	.quad	.Ltmp670
	.quad	.Ltmp679
	.quad	.Ltmp680
	.quad	.Ltmp685
	.quad	.Ltmp686
	.quad	.Ltmp689
	.quad	.Ltmp690
	.quad	.Lfunc_begin18
	.quad	.Ltmp696
	.quad	.Ltmp697
	.quad	.Ltmp706
	.quad	.Ltmp715
	.quad	.Ltmp716
	.quad	.Ltmp721
	.quad	.Ltmp722
	.quad	.Ltmp723
	.quad	.Ltmp724
	.quad	.Lfunc_begin19
	.quad	.Ltmp728
	.quad	.Ltmp729
	.quad	.Ltmp741
	.quad	.Ltmp742
	.quad	.Ltmp745
	.quad	.Ltmp746
	.quad	.Ltmp751
	.quad	.Ltmp752
	.quad	.Ltmp753
	.quad	.Ltmp754
	.quad	.Lfunc_begin20
	.quad	.Ltmp765
	.quad	.Ltmp766
	.quad	.Ltmp773
	.quad	.Ltmp774
	.quad	.Lfunc_begin21
	.quad	.Ltmp785
	.quad	.Ltmp786
	.quad	.Ltmp791
	.quad	.Ltmp792
	.quad	.Lfunc_begin22
	.quad	.Lfunc_begin23
	.quad	.Lfunc_begin24
	.quad	.Ltmp799
	.quad	.Lfunc_begin25
	.quad	.Lfunc_begin26
	.quad	.Ltmp806
	.quad	.Ltmp821
	.quad	.Ltmp829
	.quad	.Ltmp836
	.quad	.Ltmp837
	.quad	.Lfunc_begin27
	.quad	.Ltmp841
	.quad	.Ltmp842
	.quad	.Ltmp849
	.quad	.Ltmp850
	.quad	.Lfunc_begin28
	.quad	.Ltmp859
	.quad	.Ltmp860
	.quad	.Ltmp863
	.quad	.Ltmp864
	.quad	.Ltmp875
	.quad	.Ltmp878
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
