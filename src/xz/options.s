	.text
	.file	"options.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "xz/options.c" md5 0x0c80b77c8e14162661050690b3287426
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	3 "liblzma/api/lzma" "delta.h" md5 0x397cde14a8f4a544385c9c6ecc7e0cc9
	.file	4 "liblzma/api/lzma" "lzma.h" md5 0xc59c540efa0aff44f03d71331089fff8
	.file	5 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.globl	options_delta                   # -- Begin function options_delta
	.p2align	4, 0x90
	.type	options_delta,@function
options_delta:                          # @options_delta
.Lfunc_begin0:
	.loc	0 166 0                         # xz/options.c:166:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: options_delta:str <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
.Ltmp0:
	.loc	0 173 32 prologue_end           # xz/options.c:173:32
	movl	$40, %esi
	xorl	%edi, %edi
.Ltmp1:
	#DEBUG_VALUE: options_delta:str <- $rbx
	callq	xrealloc@PLT
.Ltmp2:
	movq	%rax, %r14
.Ltmp3:
	#DEBUG_VALUE: options_delta:options <- $r14
	.loc	0 0 32 is_stmt 0                # xz/options.c:0:32
	movabsq	$4294967296, %rax               # imm = 0x100000000
	.loc	0 174 13 is_stmt 1              # xz/options.c:174:13
	movq	%rax, (%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r14)
	movups	%xmm0, 24(%r14)
	.loc	0 180 2                         # xz/options.c:180:2
	movl	$options_delta.opts, %esi
	movl	$set_delta, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	parse_options
.Ltmp4:
	.loc	0 182 2                         # xz/options.c:182:2
	movq	%r14, %rax
	.loc	0 182 2 epilogue_begin is_stmt 0 # xz/options.c:182:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp5:
	#DEBUG_VALUE: options_delta:str <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp6:
	#DEBUG_VALUE: options_delta:options <- $rax
	.cfi_def_cfa_offset 8
	retq
.Ltmp7:
.Lfunc_end0:
	.size	options_delta, .Lfunc_end0-options_delta
	.cfi_endproc
	.file	6 "xz" "util.h" md5 0x36136e1fc433f9fd7b2b728f8484a043
	.file	7 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function parse_options
	.type	parse_options,@function
parse_options:                          # @parse_options
.Lfunc_begin1:
	.loc	0 64 0 is_stmt 1                # xz/options.c:64:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: parse_options:str <- $rdi
	#DEBUG_VALUE: parse_options:opts <- $rsi
	#DEBUG_VALUE: parse_options:set <- $rdx
	#DEBUG_VALUE: parse_options:filter_options <- $rcx
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
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
.Ltmp8:
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
.Ltmp9:
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
.Ltmp10:
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	.loc	0 65 10 prologue_end            # xz/options.c:65:10
	testq	%rdi, %rdi
	.loc	0 65 18 is_stmt 0               # xz/options.c:65:18
	je	.LBB1_29
.Ltmp11:
# %bb.1:                                # %lor.lhs.false
	#DEBUG_VALUE: parse_options:str <- $rdi
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 0 18                          # xz/options.c:0:18
	movq	%rdi, %rbx
	.loc	0 65 28                         # xz/options.c:65:28
	cmpb	$0, (%rdi)
.Ltmp12:
	.loc	0 65 6                          # xz/options.c:65:6
	je	.LBB1_29
.Ltmp13:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: parse_options:str <- $rbx
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 68 12 is_stmt 1               # xz/options.c:68:12
	movq	%rbx, %rdi
	callq	xstrdup@PLT
.Ltmp14:
	movq	%rax, %rbp
.Ltmp15:
	#DEBUG_VALUE: parse_options:s <- $rbp
	#DEBUG_VALUE: parse_options:name <- $rbp
	.loc	0 0 12 is_stmt 0                # xz/options.c:0:12
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
.Ltmp16:
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	jmp	.LBB1_3
.Ltmp17:
.LBB1_17:                               #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- 0
	xorl	%ebp, %ebp
.Ltmp18:
.LBB1_21:                               # %if.then72
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 113 5 is_stmt 1               # xz/options.c:113:5
	movl	$.L.str.22, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp19:
	.loc	0 116 35                        # xz/options.c:116:35
	movq	-24(%r15), %r14
.Ltmp20:
.LBB1_22:                               # %if.end73
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 116 42 is_stmt 0              # xz/options.c:116:42
	shlq	$4, %rbp
	movq	8(%r14,%rbp), %rdx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	.loc	0 116 4                         # xz/options.c:116:4
	movl	%r12d, %esi
	movq	%r13, %rcx
	callq	*8(%rsp)                        # 8-byte Folded Reload
.Ltmp21:
	.loc	0 0 4                           # xz/options.c:0:4
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	48(%rsp), %rbp                  # 8-byte Reload
.Ltmp22:
	.loc	0 78 13 is_stmt 1               # xz/options.c:78:13
	testq	%rbp, %rbp
.Ltmp23:
	#DEBUG_VALUE: parse_options:name <- undef
	.loc	0 0 13 is_stmt 0                # xz/options.c:0:13
	jne	.LBB1_30
	jmp	.LBB1_28
.Ltmp24:
	.p2align	4, 0x90
.LBB1_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_19 Depth 2
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	.loc	0 71 9 is_stmt 1                # xz/options.c:71:9
	movzbl	(%rbp), %eax
	cmpl	$44, %eax
	.loc	0 71 2 is_stmt 0                # xz/options.c:71:2
	je	.LBB1_30
.Ltmp25:
# %bb.4:                                # %while.cond
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	testl	%eax, %eax
	je	.LBB1_28
.Ltmp26:
# %bb.5:                                # %if.end10
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	.loc	0 77 17 is_stmt 1               # xz/options.c:77:17
	movq	%rbp, %rdi
	movl	$44, %esi
	callq	strchr@PLT
.Ltmp27:
	#DEBUG_VALUE: split <- $rax
	.loc	0 78 13                         # xz/options.c:78:13
	testq	%rax, %rax
.Ltmp28:
	.loc	0 78 7 is_stmt 0                # xz/options.c:78:7
	je	.LBB1_7
.Ltmp29:
# %bb.6:                                # %if.then14
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- $rax
	.loc	0 79 11 is_stmt 1               # xz/options.c:79:11
	movb	$0, (%rax)
.Ltmp30:
.LBB1_7:                                # %if.end15
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- $rax
	.loc	0 0 11 is_stmt 0                # xz/options.c:0:11
	movq	%rax, 48(%rsp)                  # 8-byte Spill
.Ltmp31:
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 81 17 is_stmt 1               # xz/options.c:81:17
	movq	%rbp, %rdi
	movl	$61, %esi
	callq	strchr@PLT
.Ltmp32:
	#DEBUG_VALUE: value <- $rax
	.loc	0 82 13                         # xz/options.c:82:13
	testq	%rax, %rax
.Ltmp33:
	.loc	0 82 7 is_stmt 0                # xz/options.c:82:7
	je	.LBB1_8
.Ltmp34:
# %bb.9:                                # %lor.lhs.false24
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: value <- $rax
	.loc	0 83 10 is_stmt 1               # xz/options.c:83:10
	movq	%rax, %r13
	incq	%r13
.Ltmp35:
	#DEBUG_VALUE: value <- $r13
	.loc	0 83 13 is_stmt 0               # xz/options.c:83:13
	movb	$0, (%rax)
.Ltmp36:
	.loc	0 85 33 is_stmt 1               # xz/options.c:85:33
	cmpb	$0, 1(%rax)
	jne	.LBB1_11
	jmp	.LBB1_10
.Ltmp37:
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: value <- $rax
	.loc	0 0 33 is_stmt 0                # xz/options.c:0:33
	xorl	%r13d, %r13d
.Ltmp38:
.LBB1_10:                               # %if.then29
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 86 4 is_stmt 1                # xz/options.c:86:4
	movl	$.L.str.20, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp39:
.LBB1_11:                               # %if.end30
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 0 4 is_stmt 0                 # xz/options.c:0:4
	movl	$-1, %r12d
.Ltmp40:
	#DEBUG_VALUE: i <- 0
	movq	40(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB1_12
.Ltmp41:
	.p2align	4, 0x90
.LBB1_14:                               # %if.end38
                                        #   in Loop: Header=BB1_12 Depth=2
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_consts 18446744073709551615, DW_OP_minus, DW_OP_stack_value] $r12d
	.loc	0 96 8 is_stmt 1                # xz/options.c:96:8
	movq	%rbp, %rdi
	callq	strcmp@PLT
.Ltmp42:
	#DEBUG_VALUE: i <- [DW_OP_consts 18446744073709551615, DW_OP_minus, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r12d
	.loc	0 96 8 is_stmt 0                # xz/options.c:96:8
	incl	%r12d
.Ltmp43:
	addq	$32, %r15
.Ltmp44:
	.loc	0 96 35                         # xz/options.c:96:35
	testl	%eax, %eax
.Ltmp45:
	.loc	0 96 8                          # xz/options.c:96:8
	je	.LBB1_15
.Ltmp46:
.LBB1_12:                               # %while.cond31
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_consts 18446744073709551615, DW_OP_minus, DW_OP_stack_value] $r12d
	.loc	0 92 16 is_stmt 1               # xz/options.c:92:16
	movq	(%r15), %rsi
	.loc	0 92 21 is_stmt 0               # xz/options.c:92:21
	testq	%rsi, %rsi
.Ltmp47:
	.loc	0 92 8                          # xz/options.c:92:8
	jne	.LBB1_14
.Ltmp48:
# %bb.13:                               # %if.then37
                                        #   in Loop: Header=BB1_12 Depth=2
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: i <- [DW_OP_consts 18446744073709551615, DW_OP_minus, DW_OP_stack_value] $r12d
	.loc	0 93 5 is_stmt 1                # xz/options.c:93:5
	movl	$.L.str.21, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp49:
	.loc	0 96 29                         # xz/options.c:96:29
	movq	(%r15), %rsi
	jmp	.LBB1_14
.Ltmp50:
	.p2align	4, 0x90
.LBB1_15:                               # %while.end
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 103 15                        # xz/options.c:103:15
	movq	-24(%r15), %r14
	.loc	0 103 19 is_stmt 0              # xz/options.c:103:19
	testq	%r14, %r14
.Ltmp51:
	.loc	0 103 7                         # xz/options.c:103:7
	je	.LBB1_23
.Ltmp52:
# %bb.16:                               # %for.cond.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- 0
	.loc	0 107 31 is_stmt 1              # xz/options.c:107:31
	movq	(%r14), %rdi
	.loc	0 107 36 is_stmt 0              # xz/options.c:107:36
	testq	%rdi, %rdi
.Ltmp53:
	.loc	0 107 4                         # xz/options.c:107:4
	je	.LBB1_17
.Ltmp54:
# %bb.18:                               # %for.body.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- 0
	leaq	16(%r14), %rbx
	xorl	%ebp, %ebp
.Ltmp55:
	.p2align	4, 0x90
.LBB1_19:                               # %for.body
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- $rbp
	.loc	0 108 9 is_stmt 1               # xz/options.c:108:9
	movq	%r13, %rsi
	callq	strcmp@PLT
.Ltmp56:
	.loc	0 108 44 is_stmt 0              # xz/options.c:108:44
	testl	%eax, %eax
.Ltmp57:
	.loc	0 108 9                         # xz/options.c:108:9
	je	.LBB1_22
.Ltmp58:
# %bb.20:                               # %for.inc
                                        #   in Loop: Header=BB1_19 Depth=2
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	#DEBUG_VALUE: j <- $rbp
	.loc	0 107 45 is_stmt 1              # xz/options.c:107:45
	incq	%rbp
.Ltmp59:
	#DEBUG_VALUE: j <- $rbp
	.loc	0 107 31 is_stmt 0              # xz/options.c:107:31
	movq	(%rbx), %rdi
.Ltmp60:
	.loc	0 107 4                         # xz/options.c:107:4
	addq	$16, %rbx
.Ltmp61:
	.loc	0 107 36                        # xz/options.c:107:36
	testq	%rdi, %rdi
.Ltmp62:
	.loc	0 107 4                         # xz/options.c:107:4
	jne	.LBB1_19
	jmp	.LBB1_21
.Ltmp63:
.LBB1_23:                               # %if.else
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 118 22 is_stmt 1              # xz/options.c:118:22
	movq	-16(%r15), %rdx
	.loc	0 118 26 is_stmt 0              # xz/options.c:118:26
	cmpq	$-1, %rdx
.Ltmp64:
	.loc	0 118 14                        # xz/options.c:118:14
	je	.LBB1_24
.Ltmp65:
# %bb.25:                               # %if.else83
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 126 27 is_stmt 1              # xz/options.c:126:27
	movq	-8(%r15), %rcx
	.loc	0 125 23                        # xz/options.c:125:23
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	str_to_uint64@PLT
.Ltmp66:
	#DEBUG_VALUE: v <- $rax
	.loc	0 0 23 is_stmt 0                # xz/options.c:0:23
	movq	16(%rsp), %rdi                  # 8-byte Reload
	.loc	0 127 4 is_stmt 1               # xz/options.c:127:4
	movl	%r12d, %esi
	movq	%rax, %rdx
	jmp	.LBB1_26
.Ltmp67:
.LBB1_24:                               # %if.then81
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 0 4 is_stmt 0                 # xz/options.c:0:4
	movq	16(%rsp), %rdi                  # 8-byte Reload
.Ltmp68:
	.loc	0 121 4 is_stmt 1               # xz/options.c:121:4
	movl	%r12d, %esi
	xorl	%edx, %edx
.Ltmp69:
.LBB1_26:                               # %if.end90
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	#DEBUG_VALUE: parse_options:name <- $rbp
	#DEBUG_VALUE: split <- [DW_OP_plus_uconst 48, DW_OP_deref] $rsp
	.loc	0 0 0 is_stmt 0                 # xz/options.c:0:0
	movq	%r13, %rcx
	callq	*8(%rsp)                        # 8-byte Folded Reload
.Ltmp70:
	movq	48(%rsp), %rbp                  # 8-byte Reload
.Ltmp71:
	.loc	0 78 13 is_stmt 1               # xz/options.c:78:13
	testq	%rbp, %rbp
.Ltmp72:
	#DEBUG_VALUE: parse_options:name <- undef
	.loc	0 0 13 is_stmt 0                # xz/options.c:0:13
	je	.LBB1_28
.Ltmp73:
	.p2align	4, 0x90
.LBB1_30:                               # %while.cond.backedge
                                        #   in Loop: Header=BB1_3 Depth=1
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	incq	%rbp
.Ltmp74:
	.loc	0 71 9 is_stmt 1                # xz/options.c:71:9
	jmp	.LBB1_3
.Ltmp75:
.LBB1_29:                               # %return
	#DEBUG_VALUE: parse_options:str <- $rdi
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	.loc	0 139 1 epilogue_begin          # xz/options.c:139:1
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
.Ltmp76:
.LBB1_28:                               # %while.end97
	.cfi_def_cfa_offset 112
	#DEBUG_VALUE: parse_options:str <- [DW_OP_plus_uconst 32] [$rsp+0]
	#DEBUG_VALUE: parse_options:opts <- [DW_OP_plus_uconst 40] [$rsp+0]
	#DEBUG_VALUE: parse_options:set <- [DW_OP_plus_uconst 8] [$rsp+0]
	#DEBUG_VALUE: parse_options:filter_options <- [DW_OP_plus_uconst 16] [$rsp+0]
	#DEBUG_VALUE: parse_options:s <- [DW_OP_plus_uconst 24, DW_OP_deref] $rsp
	.loc	0 0 1 is_stmt 0                 # xz/options.c:0:1
	movq	24(%rsp), %rdi                  # 8-byte Reload
	.loc	0 137 2 epilogue_begin is_stmt 1 # xz/options.c:137:2
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
.Ltmp77:
	jmp	free@PLT                        # TAILCALL
.Ltmp78:
.Lfunc_end1:
	.size	parse_options, .Lfunc_end1-parse_options
	.cfi_endproc
	.file	8 "xz" "message.h" md5 0x46ce4fae4ea23be71658f9b2e1a5aef3
	.file	9 "/usr/include" "string.h" md5 0xf443da8025a0b7c1498fb6c554ec788d
	.file	10 "/usr/include" "stdlib.h" md5 0x02258fad21adf111bb9df9825e61954a
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function set_delta
	.type	set_delta,@function
set_delta:                              # @set_delta
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: set_delta:options <- $rdi
	#DEBUG_VALUE: set_delta:key <- $esi
	#DEBUG_VALUE: set_delta:value <- $rdx
	#DEBUG_VALUE: set_delta:opt <- $rdi
	.loc	0 156 2 prologue_end            # xz/options.c:156:2
	testl	%esi, %esi
	je	.LBB2_1
.Ltmp79:
# %bb.2:                                # %sw.epilog
	#DEBUG_VALUE: set_delta:options <- $rdi
	#DEBUG_VALUE: set_delta:key <- $esi
	#DEBUG_VALUE: set_delta:value <- $rdx
	#DEBUG_VALUE: set_delta:opt <- $rdi
	.loc	0 161 1                         # xz/options.c:161:1
	retq
.Ltmp80:
.LBB2_1:                                # %sw.bb
	#DEBUG_VALUE: set_delta:options <- $rdi
	#DEBUG_VALUE: set_delta:key <- $esi
	#DEBUG_VALUE: set_delta:value <- $rdx
	#DEBUG_VALUE: set_delta:opt <- $rdi
	.loc	0 158 13                        # xz/options.c:158:13
	movl	%edx, 4(%rdi)
.Ltmp81:
	.loc	0 161 1                         # xz/options.c:161:1
	retq
.Ltmp82:
.Lfunc_end2:
	.size	set_delta, .Lfunc_end2-set_delta
	.cfi_endproc
                                        # -- End function
	.globl	options_bcj                     # -- Begin function options_bcj
	.p2align	4, 0x90
	.type	options_bcj,@function
options_bcj:                            # @options_bcj
.Lfunc_begin3:
	.loc	0 210 0                         # xz/options.c:210:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: options_bcj:str <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
.Ltmp83:
	.loc	0 216 30 prologue_end           # xz/options.c:216:30
	movl	$4, %esi
	xorl	%edi, %edi
.Ltmp84:
	#DEBUG_VALUE: options_bcj:str <- $rbx
	callq	xrealloc@PLT
.Ltmp85:
	movq	%rax, %r14
.Ltmp86:
	#DEBUG_VALUE: options_bcj:options <- $r14
	.loc	0 217 13                        # xz/options.c:217:13
	movl	$0, (%rax)
	.loc	0 221 2                         # xz/options.c:221:2
	movl	$options_bcj.opts, %esi
	movl	$set_bcj, %edx
	movq	%rbx, %rdi
	movq	%rax, %rcx
	callq	parse_options
.Ltmp87:
	.loc	0 223 2                         # xz/options.c:223:2
	movq	%r14, %rax
	.loc	0 223 2 epilogue_begin is_stmt 0 # xz/options.c:223:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp88:
	#DEBUG_VALUE: options_bcj:str <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp89:
	#DEBUG_VALUE: options_bcj:options <- $rax
	.cfi_def_cfa_offset 8
	retq
.Ltmp90:
.Lfunc_end3:
	.size	options_bcj, .Lfunc_end3-options_bcj
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function set_bcj
	.type	set_bcj,@function
set_bcj:                                # @set_bcj
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: set_bcj:options <- $rdi
	#DEBUG_VALUE: set_bcj:key <- $esi
	#DEBUG_VALUE: set_bcj:value <- $rdx
	#DEBUG_VALUE: set_bcj:opt <- $rdi
	.loc	0 200 2 prologue_end is_stmt 1  # xz/options.c:200:2
	testl	%esi, %esi
	je	.LBB4_1
.Ltmp91:
# %bb.2:                                # %sw.epilog
	#DEBUG_VALUE: set_bcj:options <- $rdi
	#DEBUG_VALUE: set_bcj:key <- $esi
	#DEBUG_VALUE: set_bcj:value <- $rdx
	#DEBUG_VALUE: set_bcj:opt <- $rdi
	.loc	0 205 1                         # xz/options.c:205:1
	retq
.Ltmp92:
.LBB4_1:                                # %sw.bb
	#DEBUG_VALUE: set_bcj:options <- $rdi
	#DEBUG_VALUE: set_bcj:key <- $esi
	#DEBUG_VALUE: set_bcj:value <- $rdx
	#DEBUG_VALUE: set_bcj:opt <- $rdi
	.loc	0 202 21                        # xz/options.c:202:21
	movl	%edx, (%rdi)
.Ltmp93:
	.loc	0 205 1                         # xz/options.c:205:1
	retq
.Ltmp94:
.Lfunc_end4:
	.size	set_bcj, .Lfunc_end4-set_bcj
	.cfi_endproc
                                        # -- End function
	.globl	options_lzma                    # -- Begin function options_lzma
	.p2align	4, 0x90
	.type	options_lzma,@function
options_lzma:                           # @options_lzma
.Lfunc_begin5:
	.loc	0 318 0                         # xz/options.c:318:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: options_lzma:str <- $rdi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
.Ltmp95:
	.loc	0 348 31 prologue_end           # xz/options.c:348:31
	movl	$112, %esi
	xorl	%edi, %edi
.Ltmp96:
	#DEBUG_VALUE: options_lzma:str <- $r14
	callq	xrealloc@PLT
.Ltmp97:
	movq	%rax, %rbx
.Ltmp98:
	#DEBUG_VALUE: options_lzma:options <- $rbx
	.loc	0 349 6                         # xz/options.c:349:6
	movq	%rax, %rdi
	movl	$6, %esi
	callq	lzma_lzma_preset@PLT
.Ltmp99:
	testb	%al, %al
.Ltmp100:
	.loc	0 349 6 is_stmt 0               # xz/options.c:349:6
	je	.LBB5_2
.Ltmp101:
# %bb.1:                                # %if.then
	#DEBUG_VALUE: options_lzma:str <- $r14
	#DEBUG_VALUE: options_lzma:options <- $rbx
	.loc	0 350 3 is_stmt 1               # xz/options.c:350:3
	callq	message_bug@PLT
.Ltmp102:
.LBB5_2:                                # %if.end
	#DEBUG_VALUE: options_lzma:str <- $r14
	#DEBUG_VALUE: options_lzma:options <- $rbx
	.loc	0 352 2                         # xz/options.c:352:2
	movl	$options_lzma.opts, %esi
	movl	$set_lzma, %edx
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	parse_options
.Ltmp103:
	.loc	0 354 29                        # xz/options.c:354:29
	movl	24(%rbx), %eax
	.loc	0 354 18 is_stmt 0              # xz/options.c:354:18
	addl	20(%rbx), %eax
	.loc	0 354 32                        # xz/options.c:354:32
	cmpl	$5, %eax
.Ltmp104:
	.loc	0 354 6                         # xz/options.c:354:6
	jb	.LBB5_4
.Ltmp105:
# %bb.3:                                # %if.then2
	#DEBUG_VALUE: options_lzma:str <- $r14
	#DEBUG_VALUE: options_lzma:options <- $rbx
	.loc	0 355 3 is_stmt 1               # xz/options.c:355:3
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp106:
.LBB5_4:                                # %if.end3
	#DEBUG_VALUE: options_lzma:str <- $r14
	#DEBUG_VALUE: options_lzma:options <- $rbx
	.loc	0 357 41                        # xz/options.c:357:41
	movl	40(%rbx), %esi
	.loc	0 357 44 is_stmt 0              # xz/options.c:357:44
	andl	$15, %esi
.Ltmp107:
	#DEBUG_VALUE: options_lzma:nice_len_min <- $esi
	.loc	0 358 24 is_stmt 1              # xz/options.c:358:24
	cmpl	%esi, 36(%rbx)
.Ltmp108:
	.loc	0 358 6 is_stmt 0               # xz/options.c:358:6
	jae	.LBB5_6
.Ltmp109:
# %bb.5:                                # %if.then5
	#DEBUG_VALUE: options_lzma:str <- $r14
	#DEBUG_VALUE: options_lzma:options <- $rbx
	#DEBUG_VALUE: options_lzma:nice_len_min <- $esi
	.loc	0 359 3 is_stmt 1               # xz/options.c:359:3
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp110:
.LBB5_6:                                # %if.end6
	#DEBUG_VALUE: options_lzma:str <- $r14
	#DEBUG_VALUE: options_lzma:options <- $rbx
	.loc	0 362 2                         # xz/options.c:362:2
	movq	%rbx, %rax
	.loc	0 362 2 epilogue_begin is_stmt 0 # xz/options.c:362:2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp111:
	#DEBUG_VALUE: options_lzma:options <- $rax
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp112:
	#DEBUG_VALUE: options_lzma:str <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp113:
.Lfunc_end5:
	.size	options_lzma, .Lfunc_end5-options_lzma
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function set_lzma
	.type	set_lzma,@function
set_lzma:                               # @set_lzma
.Lfunc_begin6:
	.loc	0 253 0 is_stmt 1               # xz/options.c:253:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $rcx
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
.Ltmp114:
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	.loc	0 256 2 prologue_end            # xz/options.c:256:2
	cmpl	$8, %esi
	ja	.LBB6_21
.Ltmp115:
# %bb.1:                                # %entry
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $rcx
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	movl	%esi, %eax
	jmpq	*.LJTI6_0(,%rax,8)
.Ltmp116:
.LBB6_2:                                # %sw.bb
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $rcx
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	.loc	0 258 7                         # xz/options.c:258:7
	movzbl	(%rcx), %eax
	.loc	0 258 25 is_stmt 0              # xz/options.c:258:25
	leal	-58(%rax), %edx
.Ltmp117:
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	cmpb	$-11, %dl
	movq	%rcx, %r14
	ja	.LBB6_4
.Ltmp118:
# %bb.3:                                # %if.then
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $r14
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	#DEBUG_VALUE: error_lzma_preset:valuestr <- $r14
	.loc	0 0 25                          # xz/options.c:0:25
	movq	%rdi, %rbx
.Ltmp119:
	#DEBUG_VALUE: set_lzma:opt <- $rbx
	#DEBUG_VALUE: set_lzma:options <- $rbx
	.loc	0 247 2 is_stmt 1               # xz/options.c:247:2
	movl	$.L.str.23, %edi
	movq	%rcx, %rsi
.Ltmp120:
	#DEBUG_VALUE: set_lzma:key <- [DW_OP_LLVM_entry_value 1] $esi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp121:
	.loc	0 0 2 is_stmt 0                 # xz/options.c:0:2
	movq	%r14, %rcx
	movq	%rbx, %rdi
.Ltmp122:
	.loc	0 261 21 is_stmt 1              # xz/options.c:261:21
	movzbl	(%r14), %eax
.Ltmp123:
.LBB6_4:                                # %if.end
	#DEBUG_VALUE: set_lzma:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: set_lzma:key <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $r14
	movsbl	%al, %ebx
	.loc	0 261 33 is_stmt 0              # xz/options.c:261:33
	addl	$-48, %ebx
.Ltmp124:
	#DEBUG_VALUE: preset <- $ebx
	.loc	0 265 7 is_stmt 1               # xz/options.c:265:7
	movzbl	1(%rcx), %eax
	testl	%eax, %eax
.Ltmp125:
	.loc	0 265 7 is_stmt 0               # xz/options.c:265:7
	je	.LBB6_11
.Ltmp126:
# %bb.5:                                # %if.end
	#DEBUG_VALUE: set_lzma:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: set_lzma:key <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $r14
	#DEBUG_VALUE: preset <- $ebx
	#DEBUG_VALUE: error_lzma_preset:valuestr <- $r14
	.loc	0 0 7                           # xz/options.c:0:7
	movq	%rdi, %r15
	.loc	0 265 7                         # xz/options.c:265:7
	cmpl	$101, %eax
	jne	.LBB6_7
.Ltmp127:
# %bb.6:                                # %if.then17
	#DEBUG_VALUE: set_lzma:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: set_lzma:key <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $r14
	#DEBUG_VALUE: preset <- $ebx
	.loc	0 267 12 is_stmt 1              # xz/options.c:267:12
	orl	$-2147483648, %ebx              # imm = 0x80000000
.Ltmp128:
	#DEBUG_VALUE: preset <- $ebx
	.loc	0 267 5 is_stmt 0               # xz/options.c:267:5
	jmp	.LBB6_8
.Ltmp129:
.LBB6_16:                               # %sw.bb34
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $rcx
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	.loc	0 294 11 is_stmt 1              # xz/options.c:294:11
	movl	%edx, 28(%rdi)
.Ltmp130:
.LBB6_21:                               # %sw.epilog
	#DEBUG_VALUE: set_lzma:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: set_lzma:key <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- [DW_OP_LLVM_entry_value 1] $rcx
	.loc	0 313 1 epilogue_begin          # xz/options.c:313:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp131:
.LBB6_14:                               # %sw.bb30
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $rcx
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	.loc	0 286 11                        # xz/options.c:286:11
	movl	%edx, 20(%rdi)
.Ltmp132:
	.loc	0 313 1 epilogue_begin          # xz/options.c:313:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp133:
.LBB6_15:                               # %sw.bb32
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $rcx
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	.loc	0 290 11                        # xz/options.c:290:11
	movl	%edx, 24(%rdi)
.Ltmp134:
	.loc	0 313 1 epilogue_begin          # xz/options.c:313:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp135:
.LBB6_19:                               # %sw.bb40
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $rcx
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	.loc	0 306 11                        # xz/options.c:306:11
	movl	%edx, 40(%rdi)
.Ltmp136:
	.loc	0 313 1 epilogue_begin          # xz/options.c:313:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp137:
.LBB6_13:                               # %sw.bb28
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $rcx
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	.loc	0 282 18                        # xz/options.c:282:18
	movl	%edx, (%rdi)
.Ltmp138:
	.loc	0 313 1 epilogue_begin          # xz/options.c:313:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp139:
.LBB6_17:                               # %sw.bb36
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $rcx
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	.loc	0 298 13                        # xz/options.c:298:13
	movl	%edx, 32(%rdi)
.Ltmp140:
	.loc	0 313 1 epilogue_begin          # xz/options.c:313:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp141:
.LBB6_18:                               # %sw.bb38
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $rcx
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	.loc	0 302 17                        # xz/options.c:302:17
	movl	%edx, 36(%rdi)
.Ltmp142:
	.loc	0 313 1 epilogue_begin          # xz/options.c:313:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp143:
.LBB6_20:                               # %sw.bb42
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: set_lzma:options <- $rdi
	#DEBUG_VALUE: set_lzma:key <- $esi
	#DEBUG_VALUE: set_lzma:value <- $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $rcx
	#DEBUG_VALUE: set_lzma:opt <- $rdi
	.loc	0 310 14                        # xz/options.c:310:14
	movl	%edx, 44(%rdi)
.Ltmp144:
	.loc	0 313 1 epilogue_begin          # xz/options.c:313:1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp145:
.LBB6_7:                                # %if.else
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: set_lzma:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: set_lzma:key <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $r14
	#DEBUG_VALUE: preset <- $ebx
	#DEBUG_VALUE: error_lzma_preset:valuestr <- $r14
	.loc	0 247 2                         # xz/options.c:247:2
	movl	$.L.str.23, %edi
	movq	%rcx, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp146:
	.loc	0 0 2 is_stmt 0                 # xz/options.c:0:2
	movq	%r14, %rcx
.Ltmp147:
.LBB6_8:                                # %if.end18
	#DEBUG_VALUE: set_lzma:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: set_lzma:key <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $r14
	#DEBUG_VALUE: preset <- $ebx
	#DEBUG_VALUE: preset <- $ebx
	.loc	0 271 20 is_stmt 1              # xz/options.c:271:20
	cmpb	$0, 2(%rcx)
.Ltmp148:
	.loc	0 271 8 is_stmt 0               # xz/options.c:271:8
	je	.LBB6_10
.Ltmp149:
# %bb.9:                                # %if.then23
	#DEBUG_VALUE: set_lzma:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: set_lzma:key <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $r14
	#DEBUG_VALUE: preset <- $ebx
	#DEBUG_VALUE: error_lzma_preset:valuestr <- $r14
	.loc	0 247 2 is_stmt 1               # xz/options.c:247:2
	movl	$.L.str.23, %edi
	movq	%rcx, %rsi
	xorl	%eax, %eax
	callq	message_fatal@PLT
.Ltmp150:
.LBB6_10:                               # %if.end25
	#DEBUG_VALUE: set_lzma:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: set_lzma:key <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $r14
	#DEBUG_VALUE: preset <- $ebx
	.loc	0 0 2 is_stmt 0                 # xz/options.c:0:2
	movq	%r15, %rdi
.Ltmp151:
.LBB6_11:                               # %if.end25
	#DEBUG_VALUE: set_lzma:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: set_lzma:key <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $r14
	#DEBUG_VALUE: preset <- $ebx
	#DEBUG_VALUE: preset <- $ebx
	.loc	0 275 7 is_stmt 1               # xz/options.c:275:7
	movl	%ebx, %esi
	callq	lzma_lzma_preset@PLT
.Ltmp152:
	testb	%al, %al
.Ltmp153:
	.loc	0 275 7 is_stmt 0               # xz/options.c:275:7
	je	.LBB6_21
.Ltmp154:
# %bb.12:                               # %if.then26
	#DEBUG_VALUE: set_lzma:options <- [DW_OP_LLVM_entry_value 1] $rdi
	#DEBUG_VALUE: set_lzma:key <- [DW_OP_LLVM_entry_value 1] $esi
	#DEBUG_VALUE: set_lzma:value <- [DW_OP_LLVM_entry_value 1] $rdx
	#DEBUG_VALUE: set_lzma:valuestr <- $r14
	#DEBUG_VALUE: preset <- $ebx
	.loc	0 0 7                           # xz/options.c:0:7
	movq	%r14, %rsi
.Ltmp155:
	#DEBUG_VALUE: error_lzma_preset:valuestr <- $r14
	.loc	0 247 2 is_stmt 1               # xz/options.c:247:2
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	.loc	0 247 2 epilogue_begin is_stmt 0 # xz/options.c:247:2
	popq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 24
	popq	%r14
.Ltmp157:
	#DEBUG_VALUE: error_lzma_preset:valuestr <- $rsi
	#DEBUG_VALUE: set_lzma:valuestr <- $rsi
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.Ltmp158:
	jmp	message_fatal@PLT               # TAILCALL
.Ltmp159:
.Lfunc_end6:
	.size	set_lzma, .Lfunc_end6-set_lzma
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI6_0:
	.quad	.LBB6_2
	.quad	.LBB6_13
	.quad	.LBB6_14
	.quad	.LBB6_15
	.quad	.LBB6_16
	.quad	.LBB6_17
	.quad	.LBB6_18
	.quad	.LBB6_19
	.quad	.LBB6_20
                                        # -- End function
	.type	options_delta.opts,@object      # @options_delta.opts
	.p2align	4, 0x0
options_delta.opts:
	.quad	.L.str
	.quad	0
	.quad	1                               # 0x1
	.quad	256                             # 0x100
	.zero	32
	.size	options_delta.opts, 64

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dist"
	.size	.L.str, 5

	.type	options_bcj.opts,@object        # @options_bcj.opts
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
options_bcj.opts:
	.quad	.L.str.1
	.quad	0
	.quad	0                               # 0x0
	.quad	4294967295                      # 0xffffffff
	.zero	32
	.size	options_bcj.opts, 64

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"start"
	.size	.L.str.1, 6

	.type	options_lzma.modes,@object      # @options_lzma.modes
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
options_lzma.modes:
	.quad	.L.str.2
	.quad	1                               # 0x1
	.quad	.L.str.3
	.quad	2                               # 0x2
	.zero	16
	.size	options_lzma.modes, 48

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"fast"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"normal"
	.size	.L.str.3, 7

	.type	options_lzma.mfs,@object        # @options_lzma.mfs
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
options_lzma.mfs:
	.quad	.L.str.4
	.quad	3                               # 0x3
	.quad	.L.str.5
	.quad	4                               # 0x4
	.quad	.L.str.6
	.quad	18                              # 0x12
	.quad	.L.str.7
	.quad	19                              # 0x13
	.quad	.L.str.8
	.quad	20                              # 0x14
	.zero	16
	.size	options_lzma.mfs, 96

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"hc3"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"hc4"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"bt2"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"bt3"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"bt4"
	.size	.L.str.8, 4

	.type	options_lzma.opts,@object       # @options_lzma.opts
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
options_lzma.opts:
	.quad	.L.str.9
	.quad	0
	.quad	-1                              # 0xffffffffffffffff
	.quad	0                               # 0x0
	.quad	.L.str.10
	.quad	0
	.quad	4096                            # 0x1000
	.quad	1610612736                      # 0x60000000
	.quad	.L.str.11
	.quad	0
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	.L.str.12
	.quad	0
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	.L.str.13
	.quad	0
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	.L.str.14
	.quad	options_lzma.modes
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	.L.str.15
	.quad	0
	.quad	2                               # 0x2
	.quad	273                             # 0x111
	.quad	.L.str.16
	.quad	options_lzma.mfs
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	.L.str.17
	.quad	0
	.quad	0                               # 0x0
	.quad	4294967295                      # 0xffffffff
	.zero	32
	.size	options_lzma.opts, 320

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"preset"
	.size	.L.str.9, 7

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"dict"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"lc"
	.size	.L.str.11, 3

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"lp"
	.size	.L.str.12, 3

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"pb"
	.size	.L.str.13, 3

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"mode"
	.size	.L.str.14, 5

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"nice"
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"mf"
	.size	.L.str.16, 3

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"depth"
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"The sum of lc and lp must not exceed 4"
	.size	.L.str.18, 39

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"The selected match finder requires at least nice=%u"
	.size	.L.str.19, 52

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"%s: Options must be `name=value' pairs separated with commas"
	.size	.L.str.20, 61

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"%s: Invalid option name"
	.size	.L.str.21, 24

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%s: Invalid option value"
	.size	.L.str.22, 25

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Unsupported LZMA1/LZMA2 preset: %s"
	.size	.L.str.23, 35

	.file	11 "liblzma/api/lzma" "bcj.h" md5 0xa1035092336f34cf9afafbb05b1edd83
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	25                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp13-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	32                              # 32
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	40                              # 40
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	8                               # 8
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	16                              # 16
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	24                              # 24
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	119                             # DW_OP_breg7
	.byte	48                              # 48
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	93                              # DW_OP_reg13
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp42-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp42-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          #   ending offset
	.byte	16                              # Loc expr size
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	1                               # 1
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp46-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	13                              # Loc expr size
	.byte	124                             # DW_OP_breg12
	.byte	0                               # 0
	.byte	16                              # DW_OP_constu
	.byte	255                             # 4294967295
	.byte	255                             # 
	.byte	255                             # 
	.byte	255                             # 
	.byte	15                              # 
	.byte	26                              # DW_OP_and
	.byte	17                              # DW_OP_consts
	.byte	127                             # -1
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp89-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp89-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp96-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp112-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp98-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc19:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # super-register DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # super-register DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc20:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	81                              # DW_OP_reg1
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc21:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp118-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp118-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp130-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp131-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	82                              # DW_OP_reg2
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc22:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp131-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc23:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp124-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp156-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc24:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp155-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp157-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp157-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
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
	.byte	3                               # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	46                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
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
	.byte	1                               # Abbrev [1] 0xc:0x85c DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	29                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0xa DW_TAG_variable
	.long	53                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x35:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3a:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x41:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x45:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	7                               # Abbrev [7] 0x49:0x39 DW_TAG_subprogram
	.byte	29                              # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1984                            # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x58:0xb DW_TAG_variable
	.byte	5                               # DW_AT_name
	.long	130                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	9                               # Abbrev [9] 0x63:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.long	196                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6c:0x9 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.long	1984                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x75:0x6 DW_TAG_call_site
	.long	975                             # DW_AT_call_origin
	.byte	30                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x7b:0x6 DW_TAG_call_site
	.long	1002                            # DW_AT_call_origin
	.byte	31                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x82:0xc DW_TAG_array_type
	.long	142                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x87:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x8e:0x5 DW_TAG_const_type
	.long	147                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x93:0x8 DW_TAG_typedef
	.long	155                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x9b:0x29 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x9f:0x9 DW_TAG_member
	.byte	6                               # DW_AT_name
	.long	196                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0xa8:0x9 DW_TAG_member
	.byte	7                               # DW_AT_name
	.long	206                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0xb1:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	247                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0xba:0x9 DW_TAG_member
	.byte	14                              # DW_AT_name
	.long	247                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0xc4:0x5 DW_TAG_pointer_type
	.long	201                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xc9:0x5 DW_TAG_const_type
	.long	65                              # DW_AT_type
	.byte	16                              # Abbrev [16] 0xce:0x5 DW_TAG_pointer_type
	.long	211                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xd3:0x5 DW_TAG_const_type
	.long	216                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0xd8:0x8 DW_TAG_typedef
	.long	224                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xe0:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0xe4:0x9 DW_TAG_member
	.byte	6                               # DW_AT_name
	.long	196                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0xed:0x9 DW_TAG_member
	.byte	8                               # DW_AT_name
	.long	247                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0xf7:0x8 DW_TAG_typedef
	.long	255                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xff:0x8 DW_TAG_typedef
	.long	263                             # DW_AT_type
	.byte	10                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x107:0x4 DW_TAG_base_type
	.byte	9                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x10b:0xa DW_TAG_variable
	.long	277                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	3                               # Abbrev [3] 0x115:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x11a:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x121:0x39 DW_TAG_subprogram
	.byte	47                              # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	93                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2082                            # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x130:0xb DW_TAG_variable
	.byte	5                               # DW_AT_name
	.long	130                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	3
	.byte	9                               # Abbrev [9] 0x13b:0x9 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.long	196                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x144:0x9 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.long	2082                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x14d:0x6 DW_TAG_call_site
	.long	975                             # DW_AT_call_origin
	.byte	48                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x153:0x6 DW_TAG_call_site
	.long	1002                            # DW_AT_call_origin
	.byte	49                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x15a:0xb DW_TAG_variable
	.long	53                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	320                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	4
	.byte	17                              # Abbrev [17] 0x165:0xb DW_TAG_variable
	.long	368                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	321                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	5
	.byte	3                               # Abbrev [3] 0x170:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x175:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	7                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x17c:0x77 DW_TAG_subprogram
	.byte	51                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	97                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	317                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1458                            # DW_AT_type
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x18c:0xc DW_TAG_variable
	.byte	16                              # DW_AT_name
	.long	499                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	319                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	6
	.byte	19                              # Abbrev [19] 0x198:0xc DW_TAG_variable
	.byte	17                              # DW_AT_name
	.long	578                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	12
	.byte	19                              # Abbrev [19] 0x1a4:0xc DW_TAG_variable
	.byte	5                               # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	334                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	22
	.byte	20                              # Abbrev [20] 0x1b0:0xa DW_TAG_formal_parameter
	.byte	15                              # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	317                             # DW_AT_decl_line
	.long	196                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1ba:0xa DW_TAG_variable
	.byte	16                              # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	348                             # DW_AT_decl_line
	.long	1458                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x1c4:0xa DW_TAG_variable
	.byte	17                              # DW_AT_location
	.byte	111                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.long	2146                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1ce:0x6 DW_TAG_call_site
	.long	975                             # DW_AT_call_origin
	.byte	52                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x1d4:0x6 DW_TAG_call_site
	.long	1426                            # DW_AT_call_origin
	.byte	53                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x1da:0x6 DW_TAG_call_site
	.long	1780                            # DW_AT_call_origin
	.byte	54                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x1e0:0x6 DW_TAG_call_site
	.long	1002                            # DW_AT_call_origin
	.byte	55                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x1e6:0x6 DW_TAG_call_site
	.long	1213                            # DW_AT_call_origin
	.byte	56                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x1ec:0x6 DW_TAG_call_site
	.long	1213                            # DW_AT_call_origin
	.byte	57                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x1f3:0xc DW_TAG_array_type
	.long	211                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1f8:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x1ff:0xb DW_TAG_variable
	.long	522                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	326                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	7
	.byte	3                               # Abbrev [3] 0x20a:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x20f:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x216:0xb DW_TAG_variable
	.long	522                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	327                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	8
	.byte	17                              # Abbrev [17] 0x221:0xb DW_TAG_variable
	.long	522                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	328                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	9
	.byte	17                              # Abbrev [17] 0x22c:0xb DW_TAG_variable
	.long	522                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	329                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	10
	.byte	17                              # Abbrev [17] 0x237:0xb DW_TAG_variable
	.long	522                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	330                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	11
	.byte	3                               # Abbrev [3] 0x242:0xc DW_TAG_array_type
	.long	211                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x247:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x24e:0xb DW_TAG_variable
	.long	368                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	335                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	13
	.byte	17                              # Abbrev [17] 0x259:0xb DW_TAG_variable
	.long	53                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	336                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	14
	.byte	17                              # Abbrev [17] 0x264:0xb DW_TAG_variable
	.long	623                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	338                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	15
	.byte	3                               # Abbrev [3] 0x26f:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x274:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x27b:0xb DW_TAG_variable
	.long	623                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	16
	.byte	17                              # Abbrev [17] 0x286:0xb DW_TAG_variable
	.long	623                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	340                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	17
	.byte	17                              # Abbrev [17] 0x291:0xb DW_TAG_variable
	.long	53                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	18
	.byte	17                              # Abbrev [17] 0x29c:0xb DW_TAG_variable
	.long	53                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	19
	.byte	17                              # Abbrev [17] 0x2a7:0xb DW_TAG_variable
	.long	623                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	343                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	20
	.byte	17                              # Abbrev [17] 0x2b2:0xb DW_TAG_variable
	.long	277                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	344                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	21
	.byte	3                               # Abbrev [3] 0x2bd:0xc DW_TAG_array_type
	.long	142                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2c2:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	10                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x2c9:0xb DW_TAG_variable
	.long	724                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	355                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	23
	.byte	3                               # Abbrev [3] 0x2d4:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2d9:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	39                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x2e0:0xb DW_TAG_variable
	.long	747                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.short	359                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	24
	.byte	3                               # Abbrev [3] 0x2eb:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2f0:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	52                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x2f7:0xa DW_TAG_variable
	.long	769                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	25
	.byte	3                               # Abbrev [3] 0x301:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x306:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	61                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x30d:0xa DW_TAG_variable
	.long	791                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	26
	.byte	3                               # Abbrev [3] 0x317:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x31c:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	24                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x323:0xa DW_TAG_variable
	.long	813                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	27
	.byte	3                               # Abbrev [3] 0x32d:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x332:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	25                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x339:0xa DW_TAG_variable
	.long	835                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	28
	.byte	3                               # Abbrev [3] 0x343:0xc DW_TAG_array_type
	.long	65                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x348:0x6 DW_TAG_subrange_type
	.long	69                              # DW_AT_type
	.byte	35                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x34f:0xc DW_TAG_enumeration_type
	.long	859                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x357:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x35b:0x4 DW_TAG_base_type
	.byte	18                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x35f:0xf DW_TAG_enumeration_type
	.long	859                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x367:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x36a:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x36e:0x18 DW_TAG_enumeration_type
	.long	859                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x376:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x379:0x3 DW_TAG_enumerator
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x37c:0x3 DW_TAG_enumerator
	.byte	24                              # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x37f:0x3 DW_TAG_enumerator
	.byte	25                              # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x382:0x3 DW_TAG_enumerator
	.byte	26                              # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x386:0xc DW_TAG_enumeration_type
	.long	859                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x38e:0x3 DW_TAG_enumerator
	.byte	27                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x392:0xc DW_TAG_enumeration_type
	.long	859                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x39a:0x3 DW_TAG_enumerator
	.byte	28                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x39e:0xc DW_TAG_enumeration_type
	.long	859                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x3a6:0x3 DW_TAG_enumerator
	.byte	29                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x3aa:0x24 DW_TAG_enumeration_type
	.long	859                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x3b2:0x3 DW_TAG_enumerator
	.byte	30                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x3b5:0x3 DW_TAG_enumerator
	.byte	31                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x3b8:0x3 DW_TAG_enumerator
	.byte	32                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x3bb:0x3 DW_TAG_enumerator
	.byte	33                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x3be:0x3 DW_TAG_enumerator
	.byte	34                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x3c1:0x3 DW_TAG_enumerator
	.byte	35                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x3c4:0x3 DW_TAG_enumerator
	.byte	36                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x3c7:0x3 DW_TAG_enumerator
	.byte	37                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	23                              # Abbrev [23] 0x3ca:0x3 DW_TAG_enumerator
	.byte	38                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x3ce:0x1 DW_TAG_pointer_type
	.byte	25                              # Abbrev [25] 0x3cf:0x13 DW_TAG_subprogram
	.byte	39                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	974                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x3d7:0x5 DW_TAG_formal_parameter
	.long	974                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x3dc:0x5 DW_TAG_formal_parameter
	.long	994                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x3e2:0x8 DW_TAG_typedef
	.long	263                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x3ea:0xc0 DW_TAG_subprogram
	.byte	32                              # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	91                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x3f5:0x9 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	99                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	196                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3fe:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	5                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	2109                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x407:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	101                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	2114                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x410:0x9 DW_TAG_formal_parameter
	.byte	5                               # DW_AT_location
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	974                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x419:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	103                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	1208                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x422:0x9 DW_TAG_variable
	.byte	7                               # DW_AT_location
	.byte	6                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	1208                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x42b:0x3a DW_TAG_lexical_block
	.byte	0                               # DW_AT_ranges
	.byte	10                              # Abbrev [10] 0x42d:0x9 DW_TAG_variable
	.byte	8                               # DW_AT_location
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	1208                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x436:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	1208                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x43f:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	107                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	994                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x448:0xc DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	10                              # Abbrev [10] 0x44a:0x9 DW_TAG_variable
	.byte	9                               # DW_AT_location
	.byte	105                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	994                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x454:0x10 DW_TAG_lexical_block
	.byte	33                              # DW_AT_low_pc
	.long	.Ltmp67-.Ltmp65                 # DW_AT_high_pc
	.byte	10                              # Abbrev [10] 0x45a:0x9 DW_TAG_variable
	.byte	12                              # DW_AT_location
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	2141                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x465:0x6 DW_TAG_call_site
	.long	1194                            # DW_AT_call_origin
	.byte	34                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x46b:0x6 DW_TAG_call_site
	.long	1213                            # DW_AT_call_origin
	.byte	35                              # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0x471:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	87
	.byte	36                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x475:0x6 DW_TAG_call_site
	.long	1224                            # DW_AT_call_origin
	.byte	37                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x47b:0x6 DW_TAG_call_site
	.long	1224                            # DW_AT_call_origin
	.byte	38                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x481:0x6 DW_TAG_call_site
	.long	1213                            # DW_AT_call_origin
	.byte	39                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x487:0x6 DW_TAG_call_site
	.long	1247                            # DW_AT_call_origin
	.byte	40                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x48d:0x6 DW_TAG_call_site
	.long	1213                            # DW_AT_call_origin
	.byte	41                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x493:0x6 DW_TAG_call_site
	.long	1247                            # DW_AT_call_origin
	.byte	42                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x499:0x6 DW_TAG_call_site
	.long	1266                            # DW_AT_call_origin
	.byte	43                              # DW_AT_call_return_pc
	.byte	30                              # Abbrev [30] 0x49f:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	87
	.byte	44                              # DW_AT_call_return_pc
	.byte	31                              # Abbrev [31] 0x4a3:0x6 DW_TAG_call_site
	.long	1295                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	45                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x4aa:0xe DW_TAG_subprogram
	.byte	41                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1208                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x4b2:0x5 DW_TAG_formal_parameter
	.long	196                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x4b8:0x5 DW_TAG_pointer_type
	.long	65                              # DW_AT_type
	.byte	32                              # Abbrev [32] 0x4bd:0xb DW_TAG_subprogram
	.byte	42                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x4c1:0x5 DW_TAG_formal_parameter
	.long	196                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4c6:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x4c8:0x13 DW_TAG_subprogram
	.byte	43                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1208                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x4d0:0x5 DW_TAG_formal_parameter
	.long	196                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x4d5:0x5 DW_TAG_formal_parameter
	.long	1243                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x4db:0x4 DW_TAG_base_type
	.byte	44                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	25                              # Abbrev [25] 0x4df:0x13 DW_TAG_subprogram
	.byte	45                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1243                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x4e7:0x5 DW_TAG_formal_parameter
	.long	196                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x4ec:0x5 DW_TAG_formal_parameter
	.long	196                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x4f2:0x1d DW_TAG_subprogram
	.byte	46                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	247                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x4fa:0x5 DW_TAG_formal_parameter
	.long	196                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x4ff:0x5 DW_TAG_formal_parameter
	.long	196                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x504:0x5 DW_TAG_formal_parameter
	.long	247                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x509:0x5 DW_TAG_formal_parameter
	.long	247                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x50f:0xb DW_TAG_subprogram
	.byte	47                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.short	555                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x514:0x5 DW_TAG_formal_parameter
	.long	974                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x51a:0x3c DW_TAG_subprogram
	.byte	46                              # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	35                              # Abbrev [35] 0x525:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	974                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x52f:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	1714                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x539:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	247                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x543:0x8 DW_TAG_formal_parameter
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.long	196                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x54b:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.long	1984                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x556:0x3c DW_TAG_subprogram
	.byte	50                              # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	35                              # Abbrev [35] 0x561:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.long	974                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x56b:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.long	1714                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x575:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.long	247                             # DW_AT_type
	.byte	36                              # Abbrev [36] 0x57f:0x8 DW_TAG_formal_parameter
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.long	196                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x587:0xa DW_TAG_variable
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.long	2082                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x592:0x14 DW_TAG_subprogram
	.byte	48                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	419                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1446                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x59b:0x5 DW_TAG_formal_parameter
	.long	1458                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x5a0:0x5 DW_TAG_formal_parameter
	.long	1714                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x5a6:0x8 DW_TAG_typedef
	.long	1454                            # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x5ae:0x4 DW_TAG_base_type
	.byte	49                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0x5b2:0x5 DW_TAG_pointer_type
	.long	1463                            # DW_AT_type
	.byte	39                              # Abbrev [39] 0x5b7:0x9 DW_TAG_typedef
	.long	1472                            # DW_AT_type
	.byte	82                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	399                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x5c0:0xf2 DW_TAG_structure_type
	.byte	112                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x5c4:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5cd:0x9 DW_TAG_member
	.byte	54                              # DW_AT_name
	.long	1730                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x5d6:0x9 DW_TAG_member
	.byte	57                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x5df:0xa DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x5e9:0xa DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x5f3:0xa DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x5fd:0xa DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	1756                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x607:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x611:0xa DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	1764                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	345                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x61b:0xa DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x625:0xa DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	384                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x62f:0xa DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	385                             # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x639:0xa DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	386                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x643:0xa DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	387                             # DW_AT_decl_line
	.byte	60                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x64d:0xa DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	388                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x657:0xa DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x661:0xa DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x66b:0xa DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	391                             # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x675:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	1772                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x67f:0xa DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	1772                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x689:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	1772                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	394                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x693:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	1772                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	395                             # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x69d:0xa DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	974                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	396                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x6a7:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	974                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	397                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x6b2:0x8 DW_TAG_typedef
	.long	1722                            # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6ba:0x8 DW_TAG_typedef
	.long	859                             # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x6c2:0x5 DW_TAG_pointer_type
	.long	1735                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x6c7:0x5 DW_TAG_const_type
	.long	1740                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x6cc:0x8 DW_TAG_typedef
	.long	1748                            # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6d4:0x8 DW_TAG_typedef
	.long	1454                            # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6dc:0x8 DW_TAG_typedef
	.long	863                             # DW_AT_type
	.byte	62                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6e4:0x8 DW_TAG_typedef
	.long	878                             # DW_AT_type
	.byte	65                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6ec:0x8 DW_TAG_typedef
	.long	902                             # DW_AT_type
	.byte	76                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	41                              # Abbrev [41] 0x6f4:0x4 DW_TAG_subprogram
	.byte	83                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	42                              # Abbrev [42] 0x6f8:0xd DW_TAG_subprogram
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_inline
	.byte	36                              # Abbrev [36] 0x6fc:0x8 DW_TAG_formal_parameter
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.long	196                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x705:0xbb DW_TAG_subprogram
	.byte	58                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x710:0x9 DW_TAG_formal_parameter
	.byte	18                              # DW_AT_location
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.long	974                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x719:0x9 DW_TAG_formal_parameter
	.byte	19                              # DW_AT_location
	.byte	109                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.long	1714                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x722:0x9 DW_TAG_formal_parameter
	.byte	20                              # DW_AT_location
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.long	247                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x72b:0x9 DW_TAG_formal_parameter
	.byte	21                              # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.long	196                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x734:0x9 DW_TAG_variable
	.byte	22                              # DW_AT_location
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	254                             # DW_AT_decl_line
	.long	1458                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x73d:0x64 DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	21                              # Abbrev [21] 0x73f:0xa DW_TAG_variable
	.byte	23                              # DW_AT_location
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	261                             # DW_AT_decl_line
	.long	1714                            # DW_AT_type
	.byte	43                              # Abbrev [43] 0x749:0x16 DW_TAG_inlined_subroutine
	.long	1784                            # DW_AT_abstract_origin
	.byte	59                              # DW_AT_low_pc
	.long	.Ltmp122-.Ltmp119               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	259                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	44                              # Abbrev [44] 0x757:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1788                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x75f:0x16 DW_TAG_inlined_subroutine
	.long	1784                            # DW_AT_abstract_origin
	.byte	60                              # DW_AT_low_pc
	.long	.Ltmp147-.Ltmp145               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	269                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	44                              # Abbrev [44] 0x76d:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1788                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x775:0x16 DW_TAG_inlined_subroutine
	.long	1784                            # DW_AT_abstract_origin
	.byte	61                              # DW_AT_low_pc
	.long	.Ltmp150-.Ltmp149               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	272                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	44                              # Abbrev [44] 0x783:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	94
	.long	1788                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x78b:0x15 DW_TAG_inlined_subroutine
	.long	1784                            # DW_AT_abstract_origin
	.byte	62                              # DW_AT_low_pc
	.long	.Ltmp159-.Ltmp155               # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.short	276                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	45                              # Abbrev [45] 0x799:0x6 DW_TAG_formal_parameter
	.byte	24                              # DW_AT_location
	.long	1788                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x7a1:0x6 DW_TAG_call_site
	.long	1213                            # DW_AT_call_origin
	.byte	63                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x7a7:0x6 DW_TAG_call_site
	.long	1213                            # DW_AT_call_origin
	.byte	64                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x7ad:0x6 DW_TAG_call_site
	.long	1213                            # DW_AT_call_origin
	.byte	65                              # DW_AT_call_return_pc
	.byte	11                              # Abbrev [11] 0x7b3:0x6 DW_TAG_call_site
	.long	1426                            # DW_AT_call_origin
	.byte	66                              # DW_AT_call_return_pc
	.byte	31                              # Abbrev [31] 0x7b9:0x6 DW_TAG_call_site
	.long	1213                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	67                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x7c0:0x5 DW_TAG_pointer_type
	.long	1989                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x7c5:0x8 DW_TAG_typedef
	.long	1997                            # DW_AT_type
	.byte	90                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x7cd:0x4d DW_TAG_structure_type
	.byte	40                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x7d1:0x9 DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	2074                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7da:0x9 DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7e3:0x9 DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7ec:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7f5:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7fe:0x9 DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x807:0x9 DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	974                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x810:0x9 DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	974                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x81a:0x8 DW_TAG_typedef
	.long	847                             # DW_AT_type
	.byte	88                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x822:0x5 DW_TAG_pointer_type
	.long	2087                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x827:0x8 DW_TAG_typedef
	.long	2095                            # DW_AT_type
	.byte	95                              # DW_AT_name
	.byte	11                              # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x82f:0xe DW_TAG_structure_type
	.byte	4                               # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x833:0x9 DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	1714                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x83d:0x5 DW_TAG_pointer_type
	.long	142                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x842:0x5 DW_TAG_pointer_type
	.long	2119                            # DW_AT_type
	.byte	46                              # Abbrev [46] 0x847:0x16 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x848:0x5 DW_TAG_formal_parameter
	.long	974                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x84d:0x5 DW_TAG_formal_parameter
	.long	1714                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x852:0x5 DW_TAG_formal_parameter
	.long	247                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x857:0x5 DW_TAG_formal_parameter
	.long	196                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x85d:0x5 DW_TAG_const_type
	.long	247                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x862:0x5 DW_TAG_const_type
	.long	1714                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end1-.Ldebug_list_header_start1 # Length
.Ldebug_list_header_start1:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	3                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
	.long	.Ldebug_ranges2-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp129-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp145-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp159-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	456                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"xz/options.c"                  # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=118
.Linfo_string3:
	.asciz	"char"                          # string offset=150
.Linfo_string4:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=155
.Linfo_string5:
	.asciz	"opts"                          # string offset=175
.Linfo_string6:
	.asciz	"name"                          # string offset=180
.Linfo_string7:
	.asciz	"map"                           # string offset=185
.Linfo_string8:
	.asciz	"id"                            # string offset=189
.Linfo_string9:
	.asciz	"unsigned long"                 # string offset=192
.Linfo_string10:
	.asciz	"__uint64_t"                    # string offset=206
.Linfo_string11:
	.asciz	"uint64_t"                      # string offset=217
.Linfo_string12:
	.asciz	"name_id_map"                   # string offset=226
.Linfo_string13:
	.asciz	"min"                           # string offset=238
.Linfo_string14:
	.asciz	"max"                           # string offset=242
.Linfo_string15:
	.asciz	"option_map"                    # string offset=246
.Linfo_string16:
	.asciz	"modes"                         # string offset=257
.Linfo_string17:
	.asciz	"mfs"                           # string offset=263
.Linfo_string18:
	.asciz	"unsigned int"                  # string offset=267
.Linfo_string19:
	.asciz	"LZMA_DELTA_TYPE_BYTE"          # string offset=280
.Linfo_string20:
	.asciz	"LZMA_MODE_FAST"                # string offset=301
.Linfo_string21:
	.asciz	"LZMA_MODE_NORMAL"              # string offset=316
.Linfo_string22:
	.asciz	"LZMA_MF_HC3"                   # string offset=333
.Linfo_string23:
	.asciz	"LZMA_MF_HC4"                   # string offset=345
.Linfo_string24:
	.asciz	"LZMA_MF_BT2"                   # string offset=357
.Linfo_string25:
	.asciz	"LZMA_MF_BT3"                   # string offset=369
.Linfo_string26:
	.asciz	"LZMA_MF_BT4"                   # string offset=381
.Linfo_string27:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=393
.Linfo_string28:
	.asciz	"OPT_DIST"                      # string offset=412
.Linfo_string29:
	.asciz	"OPT_START_OFFSET"              # string offset=421
.Linfo_string30:
	.asciz	"OPT_PRESET"                    # string offset=438
.Linfo_string31:
	.asciz	"OPT_DICT"                      # string offset=449
.Linfo_string32:
	.asciz	"OPT_LC"                        # string offset=458
.Linfo_string33:
	.asciz	"OPT_LP"                        # string offset=465
.Linfo_string34:
	.asciz	"OPT_PB"                        # string offset=472
.Linfo_string35:
	.asciz	"OPT_MODE"                      # string offset=479
.Linfo_string36:
	.asciz	"OPT_NICE"                      # string offset=488
.Linfo_string37:
	.asciz	"OPT_MF"                        # string offset=497
.Linfo_string38:
	.asciz	"OPT_DEPTH"                     # string offset=504
.Linfo_string39:
	.asciz	"xrealloc"                      # string offset=514
.Linfo_string40:
	.asciz	"size_t"                        # string offset=523
.Linfo_string41:
	.asciz	"xstrdup"                       # string offset=530
.Linfo_string42:
	.asciz	"message_fatal"                 # string offset=538
.Linfo_string43:
	.asciz	"strchr"                        # string offset=552
.Linfo_string44:
	.asciz	"int"                           # string offset=559
.Linfo_string45:
	.asciz	"strcmp"                        # string offset=563
.Linfo_string46:
	.asciz	"str_to_uint64"                 # string offset=570
.Linfo_string47:
	.asciz	"free"                          # string offset=584
.Linfo_string48:
	.asciz	"lzma_lzma_preset"              # string offset=589
.Linfo_string49:
	.asciz	"unsigned char"                 # string offset=606
.Linfo_string50:
	.asciz	"lzma_bool"                     # string offset=620
.Linfo_string51:
	.asciz	"dict_size"                     # string offset=630
.Linfo_string52:
	.asciz	"__uint32_t"                    # string offset=640
.Linfo_string53:
	.asciz	"uint32_t"                      # string offset=651
.Linfo_string54:
	.asciz	"preset_dict"                   # string offset=660
.Linfo_string55:
	.asciz	"__uint8_t"                     # string offset=672
.Linfo_string56:
	.asciz	"uint8_t"                       # string offset=682
.Linfo_string57:
	.asciz	"preset_dict_size"              # string offset=690
.Linfo_string58:
	.asciz	"lc"                            # string offset=707
.Linfo_string59:
	.asciz	"lp"                            # string offset=710
.Linfo_string60:
	.asciz	"pb"                            # string offset=713
.Linfo_string61:
	.asciz	"mode"                          # string offset=716
.Linfo_string62:
	.asciz	"lzma_mode"                     # string offset=721
.Linfo_string63:
	.asciz	"nice_len"                      # string offset=731
.Linfo_string64:
	.asciz	"mf"                            # string offset=740
.Linfo_string65:
	.asciz	"lzma_match_finder"             # string offset=743
.Linfo_string66:
	.asciz	"depth"                         # string offset=761
.Linfo_string67:
	.asciz	"reserved_int1"                 # string offset=767
.Linfo_string68:
	.asciz	"reserved_int2"                 # string offset=781
.Linfo_string69:
	.asciz	"reserved_int3"                 # string offset=795
.Linfo_string70:
	.asciz	"reserved_int4"                 # string offset=809
.Linfo_string71:
	.asciz	"reserved_int5"                 # string offset=823
.Linfo_string72:
	.asciz	"reserved_int6"                 # string offset=837
.Linfo_string73:
	.asciz	"reserved_int7"                 # string offset=851
.Linfo_string74:
	.asciz	"reserved_int8"                 # string offset=865
.Linfo_string75:
	.asciz	"reserved_enum1"                # string offset=879
.Linfo_string76:
	.asciz	"lzma_reserved_enum"            # string offset=894
.Linfo_string77:
	.asciz	"reserved_enum2"                # string offset=913
.Linfo_string78:
	.asciz	"reserved_enum3"                # string offset=928
.Linfo_string79:
	.asciz	"reserved_enum4"                # string offset=943
.Linfo_string80:
	.asciz	"reserved_ptr1"                 # string offset=958
.Linfo_string81:
	.asciz	"reserved_ptr2"                 # string offset=972
.Linfo_string82:
	.asciz	"lzma_options_lzma"             # string offset=986
.Linfo_string83:
	.asciz	"message_bug"                   # string offset=1004
.Linfo_string84:
	.asciz	"error_lzma_preset"             # string offset=1016
.Linfo_string85:
	.asciz	"valuestr"                      # string offset=1034
.Linfo_string86:
	.asciz	"options_delta"                 # string offset=1043
.Linfo_string87:
	.asciz	"type"                          # string offset=1057
.Linfo_string88:
	.asciz	"lzma_delta_type"               # string offset=1062
.Linfo_string89:
	.asciz	"dist"                          # string offset=1078
.Linfo_string90:
	.asciz	"lzma_options_delta"            # string offset=1083
.Linfo_string91:
	.asciz	"parse_options"                 # string offset=1102
.Linfo_string92:
	.asciz	"set_delta"                     # string offset=1116
.Linfo_string93:
	.asciz	"options_bcj"                   # string offset=1126
.Linfo_string94:
	.asciz	"start_offset"                  # string offset=1138
.Linfo_string95:
	.asciz	"lzma_options_bcj"              # string offset=1151
.Linfo_string96:
	.asciz	"set_bcj"                       # string offset=1168
.Linfo_string97:
	.asciz	"options_lzma"                  # string offset=1176
.Linfo_string98:
	.asciz	"set_lzma"                      # string offset=1189
.Linfo_string99:
	.asciz	"str"                           # string offset=1198
.Linfo_string100:
	.asciz	"options"                       # string offset=1202
.Linfo_string101:
	.asciz	"set"                           # string offset=1210
.Linfo_string102:
	.asciz	"filter_options"                # string offset=1214
.Linfo_string103:
	.asciz	"s"                             # string offset=1229
.Linfo_string104:
	.asciz	"split"                         # string offset=1231
.Linfo_string105:
	.asciz	"j"                             # string offset=1237
.Linfo_string106:
	.asciz	"value"                         # string offset=1239
.Linfo_string107:
	.asciz	"i"                             # string offset=1245
.Linfo_string108:
	.asciz	"v"                             # string offset=1247
.Linfo_string109:
	.asciz	"key"                           # string offset=1249
.Linfo_string110:
	.asciz	"opt"                           # string offset=1253
.Linfo_string111:
	.asciz	"nice_len_min"                  # string offset=1257
.Linfo_string112:
	.asciz	"preset"                        # string offset=1270
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.L.str
	.quad	options_delta.opts
	.quad	.L.str.1
	.quad	options_bcj.opts
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	options_lzma.modes
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	options_lzma.mfs
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	options_lzma.opts
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.Lfunc_begin0
	.quad	.Ltmp2
	.quad	.Ltmp4
	.quad	.Lfunc_begin1
	.quad	.Ltmp65
	.quad	.Ltmp14
	.quad	.Ltmp19
	.quad	.Ltmp21
	.quad	.Ltmp27
	.quad	.Ltmp32
	.quad	.Ltmp39
	.quad	.Ltmp42
	.quad	.Ltmp49
	.quad	.Ltmp56
	.quad	.Ltmp66
	.quad	.Ltmp70
	.quad	.Ltmp77
	.quad	.Lfunc_begin2
	.quad	.Lfunc_begin3
	.quad	.Ltmp85
	.quad	.Ltmp87
	.quad	.Lfunc_begin4
	.quad	.Lfunc_begin5
	.quad	.Ltmp97
	.quad	.Ltmp99
	.quad	.Ltmp102
	.quad	.Ltmp103
	.quad	.Ltmp106
	.quad	.Ltmp110
	.quad	.Lfunc_begin6
	.quad	.Ltmp119
	.quad	.Ltmp145
	.quad	.Ltmp149
	.quad	.Ltmp155
	.quad	.Ltmp121
	.quad	.Ltmp146
	.quad	.Ltmp150
	.quad	.Ltmp152
	.quad	.Ltmp158
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
