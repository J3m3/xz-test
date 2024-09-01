	.text
	.file	"filter_encoder.c"
	.file	0 "/home/yjs/workspace/xz-test/src" "liblzma/common/filter_encoder.c" md5 0xfc5fadddba740b28186eb750b5e2aebe
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.file	3 "liblzma/api/lzma" "vli.h" md5 0xe1aa51527ce08aa260777d4fb351a0b7
	.file	4 "liblzma/api/lzma" "base.h" md5 0x81a3070447cc5b61b56cfbed076853db
	.file	5 "liblzma/common" "common.h" md5 0xb445e74fc76042ed64f7e1908fcc1934
	.file	6 "/usr/include" "stdint.h" md5 0xa48e64edacc5b19f56c99745232c963c
	.file	7 "/home/yjs/workspace" "GPUISel-llvm/build/lib/clang/19/include/__stddef_size_t.h" md5 0x2c44e821a2b1951cde2eb0fb2e656867
	.file	8 "liblzma/api/lzma" "check.h" md5 0xb07c3297e2bcc14bb477793d08325ee3
	.file	9 "liblzma/api/lzma" "filter.h" md5 0x5eb86d86854a7619ed1d1ac1b57b2484
	.file	10 "liblzma/common" "filter_common.h" md5 0x2b3d0d0ae4b0d967ddcb9fa677c708ca
	.globl	lzma_filter_encoder_is_supported # -- Begin function lzma_filter_encoder_is_supported
	.p2align	4, 0x90
	.type	lzma_filter_encoder_is_supported,@function
lzma_filter_encoder_is_supported:       # @lzma_filter_encoder_is_supported
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_filter_encoder_is_supported:id <- $rdi
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 157 7 prologue_end            # liblzma/common/filter_encoder.c:157:7
	leaq	-3(%rdi), %rax
	cmpq	$7, %rax
	jae	.LBB0_1
.Ltmp0:
.LBB0_4:                                # %if.then.i
	#DEBUG_VALUE: lzma_filter_encoder_is_supported:id <- $rdi
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_encoder.c:0:7
	movb	$1, %al
                                        # kill: def $al killed $al killed $eax
	.loc	0 167 2 is_stmt 1               # liblzma/common/filter_encoder.c:167:2
	retq
.Ltmp1:
.LBB0_1:                                # %entry
	#DEBUG_VALUE: lzma_filter_encoder_is_supported:id <- $rdi
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 2 is_stmt 0                 # liblzma/common/filter_encoder.c:0:2
	movabsq	$4611686018427387905, %rax      # imm = 0x4000000000000001
.Ltmp2:
	.loc	0 157 7 is_stmt 1               # liblzma/common/filter_encoder.c:157:7
	cmpq	%rax, %rdi
	je	.LBB0_4
.Ltmp3:
# %bb.2:                                # %entry
	#DEBUG_VALUE: lzma_filter_encoder_is_supported:id <- $rdi
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	cmpq	$33, %rdi
	je	.LBB0_4
.Ltmp4:
# %bb.3:
	#DEBUG_VALUE: lzma_filter_encoder_is_supported:id <- $rdi
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_encoder.c:0:7
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	.loc	0 167 2 is_stmt 1               # liblzma/common/filter_encoder.c:167:2
	retq
.Ltmp5:
.Lfunc_end0:
	.size	lzma_filter_encoder_is_supported, .Lfunc_end0-lzma_filter_encoder_is_supported
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function encoder_find
	.type	encoder_find,@function
encoder_find:                           # @encoder_find
.Lfunc_begin1:
	.loc	0 155 0                         # liblzma/common/filter_encoder.c:155:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: encoder_find:id <- $rdi
	xorl	%eax, %eax
.Ltmp6:
	#DEBUG_VALUE: i <- 0
	.loc	0 157 7 prologue_end            # liblzma/common/filter_encoder.c:157:7
	leaq	-3(%rdi), %rcx
	cmpq	$30, %rcx
	ja	.LBB1_1
.Ltmp7:
# %bb.2:                                # %entry
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	jmpq	*.LJTI1_0(,%rcx,8)
.Ltmp8:
.LBB1_10:                               # %if.then.fold.split15
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_encoder.c:0:7
	movl	$8, %eax
.Ltmp9:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
.Ltmp10:
	.loc	0 161 1                         # liblzma/common/filter_encoder.c:161:1
	retq
.Ltmp11:
.LBB1_1:                                # %entry
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_encoder.c:0:1
	movabsq	$4611686018427387905, %rcx      # imm = 0x4000000000000001
.Ltmp12:
	.loc	0 157 7 is_stmt 1               # liblzma/common/filter_encoder.c:157:7
	cmpq	%rcx, %rdi
	je	.LBB1_11
.Ltmp13:
.LBB1_12:                               # %cleanup
	#DEBUG_VALUE: encoder_find:id <- $rdi
	.loc	0 161 1                         # liblzma/common/filter_encoder.c:161:1
	retq
.Ltmp14:
.LBB1_3:                                # %if.then.fold.split
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_encoder.c:0:1
	movl	$1, %eax
.Ltmp15:
.LBB1_11:                               # %if.then
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
.Ltmp16:
	.loc	0 161 1                         # liblzma/common/filter_encoder.c:161:1
	retq
.Ltmp17:
.LBB1_9:                                # %if.then.fold.split14
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_encoder.c:0:1
	movl	$7, %eax
.Ltmp18:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
.Ltmp19:
	.loc	0 161 1                         # liblzma/common/filter_encoder.c:161:1
	retq
.Ltmp20:
.LBB1_5:                                # %if.then.fold.split10
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_encoder.c:0:1
	movl	$3, %eax
.Ltmp21:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
.Ltmp22:
	.loc	0 161 1                         # liblzma/common/filter_encoder.c:161:1
	retq
.Ltmp23:
.LBB1_4:                                # %if.then.fold.split9
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_encoder.c:0:1
	movl	$2, %eax
.Ltmp24:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
.Ltmp25:
	.loc	0 161 1                         # liblzma/common/filter_encoder.c:161:1
	retq
.Ltmp26:
.LBB1_7:                                # %if.then.fold.split12
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_encoder.c:0:1
	movl	$5, %eax
.Ltmp27:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
.Ltmp28:
	.loc	0 161 1                         # liblzma/common/filter_encoder.c:161:1
	retq
.Ltmp29:
.LBB1_6:                                # %if.then.fold.split11
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_encoder.c:0:1
	movl	$4, %eax
.Ltmp30:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
.Ltmp31:
	.loc	0 161 1                         # liblzma/common/filter_encoder.c:161:1
	retq
.Ltmp32:
.LBB1_8:                                # %if.then.fold.split13
	#DEBUG_VALUE: encoder_find:id <- $rdi
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_encoder.c:0:1
	movl	$6, %eax
.Ltmp33:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rax
	leaq	encoders(%rax), %rax
.Ltmp34:
	.loc	0 161 1                         # liblzma/common/filter_encoder.c:161:1
	retq
.Ltmp35:
.Lfunc_end1:
	.size	encoder_find, .Lfunc_end1-encoder_find
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_10
	.quad	.LBB1_4
	.quad	.LBB1_5
	.quad	.LBB1_6
	.quad	.LBB1_7
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_3
                                        # -- End function
	.text
	.globl	lzma_filters_update             # -- Begin function lzma_filters_update
	.p2align	4, 0x90
	.type	lzma_filters_update,@function
lzma_filters_update:                    # @lzma_filters_update
.Lfunc_begin2:
	.loc	0 173 0                         # liblzma/common/filter_encoder.c:173:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_filters_update:strm <- $rdi
	#DEBUG_VALUE: lzma_filters_update:filters <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	.loc	0 174 12 prologue_end           # liblzma/common/filter_encoder.c:174:12
	movq	56(%rdi), %rax
	.loc	0 174 34 is_stmt 0              # liblzma/common/filter_encoder.c:174:34
	cmpq	$0, 56(%rax)
.Ltmp36:
	.loc	0 174 6                         # liblzma/common/filter_encoder.c:174:6
	je	.LBB2_1
.Ltmp37:
# %bb.2:                                # %if.end
	#DEBUG_VALUE: lzma_filters_update:strm <- $rdi
	#DEBUG_VALUE: lzma_filters_update:filters <- $rsi
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movq	%rsi, %rbx
	movq	%rdi, %r14
.Ltmp38:
	#DEBUG_VALUE: lzma_raw_encoder_memusage:filters <- $rbx
	.loc	0 224 9 is_stmt 1               # liblzma/common/filter_encoder.c:224:9
	movl	$encoder_find, %edi
.Ltmp39:
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	callq	lzma_raw_coder_memusage@PLT
.Ltmp40:
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	.loc	0 178 41                        # liblzma/common/filter_encoder.c:178:41
	cmpq	$-1, %rax
.Ltmp41:
	.loc	0 178 6 is_stmt 0               # liblzma/common/filter_encoder.c:178:6
	je	.LBB2_3
.Ltmp42:
# %bb.4:                                # %while.cond.preheader
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	.loc	0 184 2 is_stmt 1               # liblzma/common/filter_encoder.c:184:2
	leaq	-16(%rsp), %rax
	leaq	16(%rbx), %rdx
	xorl	%ecx, %ecx
.Ltmp43:
	.p2align	4, 0x90
.LBB2_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	#DEBUG_VALUE: lzma_filters_update:count <- [DW_OP_LLVM_arg 0, DW_OP_consts 18446744073709551600, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_minus, DW_OP_consts 16, DW_OP_div, DW_OP_consts 2, DW_OP_plus, DW_OP_stack_value] $rax, $rsp
	incq	%rcx
	addq	$16, %rax
.Ltmp44:
	.loc	0 184 27 is_stmt 0              # liblzma/common/filter_encoder.c:184:27
	cmpq	$-1, (%rdx)
	.loc	0 184 2                         # liblzma/common/filter_encoder.c:184:2
	leaq	16(%rdx), %rdx
	jne	.LBB2_5
.Ltmp45:
# %bb.6:                                # %while.end
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	#DEBUG_VALUE: i <- 0
	.loc	0 188 23 is_stmt 1              # liblzma/common/filter_encoder.c:188:23
	testq	%rcx, %rcx
.Ltmp46:
	.loc	0 188 2 is_stmt 0               # liblzma/common/filter_encoder.c:188:2
	je	.LBB2_11
.Ltmp47:
# %bb.7:                                # %for.body.preheader
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	#DEBUG_VALUE: i <- 0
	cmpq	$1, %rcx
	jne	.LBB2_13
.Ltmp48:
# %bb.8:
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	#DEBUG_VALUE: i <- 0
	.loc	0 0 2                           # liblzma/common/filter_encoder.c:0:2
	xorl	%edx, %edx
	jmp	.LBB2_9
.Ltmp49:
.LBB2_1:
	#DEBUG_VALUE: lzma_filters_update:strm <- $rdi
	#DEBUG_VALUE: lzma_filters_update:filters <- $rsi
	movl	$11, %eax
	.loc	0 195 1 epilogue_begin is_stmt 1 # liblzma/common/filter_encoder.c:195:1
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Ltmp50:
.LBB2_3:
	.cfi_def_cfa_offset 112
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_encoder.c:0:1
	movl	$8, %eax
	.loc	0 195 1 epilogue_begin          # liblzma/common/filter_encoder.c:195:1
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp51:
	#DEBUG_VALUE: lzma_filters_update:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp52:
	#DEBUG_VALUE: lzma_filters_update:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp53:
.LBB2_13:                               # %for.body.preheader.new
	.cfi_def_cfa_offset 112
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	#DEBUG_VALUE: i <- 0
	.loc	0 188 2 is_stmt 1               # liblzma/common/filter_encoder.c:188:2
	leaq	16(%rbx), %rsi
	movq	%rcx, %rdi
	andq	$-2, %rdi
	xorl	%edx, %edx
	movabsq	$1152921504606846974, %r8       # imm = 0xFFFFFFFFFFFFFFE
	movq	%rax, %r9
.Ltmp54:
	.p2align	4, 0x90
.LBB2_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	#DEBUG_VALUE: i <- $rdx
	.loc	0 189 37                        # liblzma/common/filter_encoder.c:189:37
	movups	-16(%rsi), %xmm0
	movups	%xmm0, (%r9)
.Ltmp55:
	#DEBUG_VALUE: i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rdx
	.loc	0 189 30 is_stmt 0              # liblzma/common/filter_encoder.c:189:30
	movq	%rdx, %r10
	xorq	%r8, %r10
	.loc	0 189 3                         # liblzma/common/filter_encoder.c:189:3
	addq	%rcx, %r10
	shlq	$4, %r10
	.loc	0 189 37                        # liblzma/common/filter_encoder.c:189:37
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rsp,%r10)
	.loc	0 188 32 is_stmt 1              # liblzma/common/filter_encoder.c:188:32
	addq	$2, %rdx
.Ltmp56:
	#DEBUG_VALUE: i <- $rdx
	.loc	0 188 2 is_stmt 0               # liblzma/common/filter_encoder.c:188:2
	addq	$32, %rsi
	addq	$-32, %r9
	cmpq	%rdx, %rdi
	jne	.LBB2_14
.Ltmp57:
.LBB2_9:                                # %for.cond.cleanup.loopexit.unr-lcssa
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	testb	$1, %cl
	je	.LBB2_11
.Ltmp58:
# %bb.10:                               # %for.body.epil
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	#DEBUG_VALUE: i <- $rdx
	.loc	0 189 37 is_stmt 1              # liblzma/common/filter_encoder.c:189:37
	shlq	$4, %rdx
.Ltmp59:
	movq	%rax, %rcx
	subq	%rdx, %rcx
	movups	(%rbx,%rdx), %xmm0
	movups	%xmm0, (%rcx)
.Ltmp60:
	#DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
.LBB2_11:                               # %for.cond.cleanup
	#DEBUG_VALUE: lzma_filters_update:strm <- $r14
	#DEBUG_VALUE: lzma_filters_update:filters <- $rbx
	.loc	0 191 29                        # liblzma/common/filter_encoder.c:191:29
	movq	$-1, 16(%rax)
	.loc	0 194 10                        # liblzma/common/filter_encoder.c:194:10
	movq	48(%r14), %rsi
	.loc	0 193 15                        # liblzma/common/filter_encoder.c:193:15
	movq	56(%r14), %rax
	.loc	0 193 58 is_stmt 0              # liblzma/common/filter_encoder.c:193:58
	movq	(%rax), %rdi
	movq	%rsp, %rcx
	.loc	0 193 9                         # liblzma/common/filter_encoder.c:193:9
	movq	%rbx, %rdx
	callq	*56(%rax)
.Ltmp61:
	.loc	0 195 1 epilogue_begin is_stmt 1 # liblzma/common/filter_encoder.c:195:1
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp62:
	#DEBUG_VALUE: lzma_filters_update:filters <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp63:
	#DEBUG_VALUE: lzma_filters_update:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 8
	retq
.Ltmp64:
.Lfunc_end2:
	.size	lzma_filters_update, .Lfunc_end2-lzma_filters_update
	.cfi_endproc
                                        # -- End function
	.globl	lzma_raw_encoder_memusage       # -- Begin function lzma_raw_encoder_memusage
	.p2align	4, 0x90
	.type	lzma_raw_encoder_memusage,@function
lzma_raw_encoder_memusage:              # @lzma_raw_encoder_memusage
.Lfunc_begin3:
	.loc	0 223 0                         # liblzma/common/filter_encoder.c:223:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_raw_encoder_memusage:filters <- $rdi
	movq	%rdi, %rsi
.Ltmp65:
	.loc	0 224 9 prologue_end            # liblzma/common/filter_encoder.c:224:9
	movl	$encoder_find, %edi
.Ltmp66:
	#DEBUG_VALUE: lzma_raw_encoder_memusage:filters <- $rsi
	jmp	lzma_raw_coder_memusage@PLT     # TAILCALL
.Ltmp67:
.Lfunc_end3:
	.size	lzma_raw_encoder_memusage, .Lfunc_end3-lzma_raw_encoder_memusage
	.cfi_endproc
                                        # -- End function
	.globl	lzma_raw_encoder_init           # -- Begin function lzma_raw_encoder_init
	.p2align	4, 0x90
	.type	lzma_raw_encoder_init,@function
lzma_raw_encoder_init:                  # @lzma_raw_encoder_init
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_raw_encoder_init:next <- $rdi
	#DEBUG_VALUE: lzma_raw_encoder_init:allocator <- $rsi
	#DEBUG_VALUE: lzma_raw_encoder_init:options <- $rdx
	.loc	0 202 9 prologue_end            # liblzma/common/filter_encoder.c:202:9
	movl	$encoder_find, %ecx
	movl	$1, %r8d
.Ltmp68:
	jmp	lzma_raw_coder_init@PLT         # TAILCALL
.Ltmp69:
.Lfunc_end4:
	.size	lzma_raw_encoder_init, .Lfunc_end4-lzma_raw_encoder_init
	.cfi_endproc
                                        # -- End function
	.globl	lzma_raw_encoder                # -- Begin function lzma_raw_encoder
	.p2align	4, 0x90
	.type	lzma_raw_encoder,@function
lzma_raw_encoder:                       # @lzma_raw_encoder
.Lfunc_begin5:
	.loc	0 209 0                         # liblzma/common/filter_encoder.c:209:0
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_raw_encoder:strm <- $rdi
	#DEBUG_VALUE: lzma_raw_encoder:options <- $rsi
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
.Ltmp70:
	.loc	0 210 2 prologue_end            # liblzma/common/filter_encoder.c:210:2
	callq	lzma_strm_init@PLT
.Ltmp71:
	#DEBUG_VALUE: lzma_raw_encoder:options <- $r14
	#DEBUG_VALUE: lzma_raw_encoder:strm <- $rbx
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 210 2 is_stmt 0               # liblzma/common/filter_encoder.c:210:2
	testl	%eax, %eax
	je	.LBB5_1
.Ltmp72:
# %bb.4:                                # %return
	#DEBUG_VALUE: lzma_raw_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_raw_encoder:options <- $r14
	.loc	0 218 1 epilogue_begin is_stmt 1 # liblzma/common/filter_encoder.c:218:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp73:
	#DEBUG_VALUE: lzma_raw_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp74:
	#DEBUG_VALUE: lzma_raw_encoder:options <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp75:
.LBB5_1:                                # %do.end
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_raw_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_raw_encoder:options <- $r14
	.loc	0 210 2                         # liblzma/common/filter_encoder.c:210:2
	movq	48(%rbx), %rsi
	movq	56(%rbx), %rdi
	movl	$encoder_find, %ecx
	movq	%r14, %rdx
	movl	$1, %r8d
	callq	lzma_raw_coder_init@PLT
.Ltmp76:
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 210 2 is_stmt 0               # liblzma/common/filter_encoder.c:210:2
	testl	%eax, %eax
.Ltmp77:
	.loc	0 210 2                         # liblzma/common/filter_encoder.c:210:2
	je	.LBB5_3
.Ltmp78:
# %bb.2:                                # %cleanup7
	#DEBUG_VALUE: lzma_raw_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_raw_encoder:options <- $r14
	#DEBUG_VALUE: ret_ <- $eax
	.loc	0 210 2                         # liblzma/common/filter_encoder.c:210:2
	movq	%rbx, %rdi
	movl	%eax, %ebx
.Ltmp79:
	#DEBUG_VALUE: ret_ <- $ebx
	#DEBUG_VALUE: lzma_raw_encoder:strm <- $rdi
	callq	lzma_end@PLT
.Ltmp80:
	#DEBUG_VALUE: lzma_raw_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 0 2                           # liblzma/common/filter_encoder.c:0:2
	movl	%ebx, %eax
.Ltmp81:
	.loc	0 218 1 epilogue_begin is_stmt 1 # liblzma/common/filter_encoder.c:218:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp82:
	#DEBUG_VALUE: ret_ <- $eax
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp83:
	#DEBUG_VALUE: lzma_raw_encoder:options <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp84:
.LBB5_3:                                # %do.end10
	.cfi_def_cfa_offset 32
	#DEBUG_VALUE: lzma_raw_encoder:strm <- $rbx
	#DEBUG_VALUE: lzma_raw_encoder:options <- $r14
	.loc	0 213 8                         # liblzma/common/filter_encoder.c:213:8
	movq	56(%rbx), %rax
	.loc	0 213 46 is_stmt 0              # liblzma/common/filter_encoder.c:213:46
	movb	$1, 80(%rax)
	.loc	0 214 8 is_stmt 1               # liblzma/common/filter_encoder.c:214:8
	movq	56(%rbx), %rax
	.loc	0 214 53 is_stmt 0              # liblzma/common/filter_encoder.c:214:53
	movb	$1, 81(%rax)
	.loc	0 215 8 is_stmt 1               # liblzma/common/filter_encoder.c:215:8
	movq	56(%rbx), %rax
	.loc	0 215 49 is_stmt 0              # liblzma/common/filter_encoder.c:215:49
	movb	$1, 83(%rax)
	xorl	%eax, %eax
	.loc	0 218 1 epilogue_begin is_stmt 1 # liblzma/common/filter_encoder.c:218:1
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
.Ltmp85:
	#DEBUG_VALUE: lzma_raw_encoder:strm <- [DW_OP_LLVM_entry_value 1] $rdi
	.cfi_def_cfa_offset 16
	popq	%r14
.Ltmp86:
	#DEBUG_VALUE: lzma_raw_encoder:options <- [DW_OP_LLVM_entry_value 1] $rsi
	.cfi_def_cfa_offset 8
	retq
.Ltmp87:
.Lfunc_end5:
	.size	lzma_raw_encoder, .Lfunc_end5-lzma_raw_encoder
	.cfi_endproc
                                        # -- End function
	.globl	lzma_properties_size            # -- Begin function lzma_properties_size
	.p2align	4, 0x90
	.type	lzma_properties_size,@function
lzma_properties_size:                   # @lzma_properties_size
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	.loc	0 257 61 prologue_end           # liblzma/common/filter_encoder.c:257:61
	movq	(%rsi), %rax
.Ltmp88:
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	.loc	0 157 7                         # liblzma/common/filter_encoder.c:157:7
	leaq	-3(%rax), %rcx
	cmpq	$30, %rcx
	ja	.LBB6_1
.Ltmp89:
# %bb.3:                                # %entry
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	jmpq	*.LJTI6_0(,%rcx,8)
.Ltmp90:
.LBB6_10:                               # %if.then.fold.split15.i
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_encoder.c:0:7
	movl	$8, %eax
.Ltmp91:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rcx
.Ltmp92:
	#DEBUG_VALUE: lzma_properties_size:fe <- undef
	.loc	0 267 10                        # liblzma/common/filter_encoder.c:267:10
	movq	encoders+32(%rcx), %rax
	.loc	0 267 25 is_stmt 0              # liblzma/common/filter_encoder.c:267:25
	testq	%rax, %rax
.Ltmp93:
	.loc	0 267 6                         # liblzma/common/filter_encoder.c:267:6
	jne	.LBB6_14
	jmp	.LBB6_13
.Ltmp94:
.LBB6_1:                                # %entry
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movabsq	$4611686018427387905, %rcx      # imm = 0x4000000000000001
.Ltmp95:
	.loc	0 157 7 is_stmt 1               # liblzma/common/filter_encoder.c:157:7
	cmpq	%rcx, %rax
	jne	.LBB6_15
.Ltmp96:
# %bb.2:
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_encoder.c:0:7
	xorl	%eax, %eax
.Ltmp97:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rcx
.Ltmp98:
	#DEBUG_VALUE: lzma_properties_size:fe <- undef
	.loc	0 267 10                        # liblzma/common/filter_encoder.c:267:10
	movq	encoders+32(%rcx), %rax
	.loc	0 267 25 is_stmt 0              # liblzma/common/filter_encoder.c:267:25
	testq	%rax, %rax
.Ltmp99:
	.loc	0 267 6                         # liblzma/common/filter_encoder.c:267:6
	jne	.LBB6_14
	jmp	.LBB6_13
.Ltmp100:
.LBB6_15:                               # %if.then
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: lzma_properties_size:fe <- 0
	.loc	0 263 10 is_stmt 1              # liblzma/common/filter_encoder.c:263:10
	shrq	$63, %rax
	leal	(%rax,%rax,2), %eax
	addl	$8, %eax
.Ltmp101:
	.loc	0 274 1                         # liblzma/common/filter_encoder.c:274:1
	retq
.Ltmp102:
.LBB6_11:                               # %if.then.fold.split.i
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 1 is_stmt 0                 # liblzma/common/filter_encoder.c:0:1
	movl	$1, %eax
.Ltmp103:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rcx
.Ltmp104:
	#DEBUG_VALUE: lzma_properties_size:fe <- undef
	.loc	0 267 10                        # liblzma/common/filter_encoder.c:267:10
	movq	encoders+32(%rcx), %rax
	.loc	0 267 25 is_stmt 0              # liblzma/common/filter_encoder.c:267:25
	testq	%rax, %rax
.Ltmp105:
	.loc	0 267 6                         # liblzma/common/filter_encoder.c:267:6
	jne	.LBB6_14
	jmp	.LBB6_13
.Ltmp106:
.LBB6_9:                                # %if.then.fold.split14.i
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movl	$7, %eax
.Ltmp107:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rcx
.Ltmp108:
	#DEBUG_VALUE: lzma_properties_size:fe <- undef
	.loc	0 267 10                        # liblzma/common/filter_encoder.c:267:10
	movq	encoders+32(%rcx), %rax
	.loc	0 267 25 is_stmt 0              # liblzma/common/filter_encoder.c:267:25
	testq	%rax, %rax
.Ltmp109:
	.loc	0 267 6                         # liblzma/common/filter_encoder.c:267:6
	jne	.LBB6_14
	jmp	.LBB6_13
.Ltmp110:
.LBB6_5:                                # %if.then.fold.split10.i
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movl	$3, %eax
.Ltmp111:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rcx
.Ltmp112:
	#DEBUG_VALUE: lzma_properties_size:fe <- undef
	.loc	0 267 10                        # liblzma/common/filter_encoder.c:267:10
	movq	encoders+32(%rcx), %rax
	.loc	0 267 25 is_stmt 0              # liblzma/common/filter_encoder.c:267:25
	testq	%rax, %rax
.Ltmp113:
	.loc	0 267 6                         # liblzma/common/filter_encoder.c:267:6
	jne	.LBB6_14
	jmp	.LBB6_13
.Ltmp114:
.LBB6_4:                                # %if.then.fold.split9.i
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movl	$2, %eax
.Ltmp115:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rcx
.Ltmp116:
	#DEBUG_VALUE: lzma_properties_size:fe <- undef
	.loc	0 267 10                        # liblzma/common/filter_encoder.c:267:10
	movq	encoders+32(%rcx), %rax
	.loc	0 267 25 is_stmt 0              # liblzma/common/filter_encoder.c:267:25
	testq	%rax, %rax
.Ltmp117:
	.loc	0 267 6                         # liblzma/common/filter_encoder.c:267:6
	jne	.LBB6_14
	jmp	.LBB6_13
.Ltmp118:
.LBB6_7:                                # %if.then.fold.split12.i
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movl	$5, %eax
.Ltmp119:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rcx
.Ltmp120:
	#DEBUG_VALUE: lzma_properties_size:fe <- undef
	.loc	0 267 10                        # liblzma/common/filter_encoder.c:267:10
	movq	encoders+32(%rcx), %rax
	.loc	0 267 25 is_stmt 0              # liblzma/common/filter_encoder.c:267:25
	testq	%rax, %rax
.Ltmp121:
	.loc	0 267 6                         # liblzma/common/filter_encoder.c:267:6
	jne	.LBB6_14
	jmp	.LBB6_13
.Ltmp122:
.LBB6_6:                                # %if.then.fold.split11.i
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movl	$4, %eax
.Ltmp123:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rcx
.Ltmp124:
	#DEBUG_VALUE: lzma_properties_size:fe <- undef
	.loc	0 267 10                        # liblzma/common/filter_encoder.c:267:10
	movq	encoders+32(%rcx), %rax
	.loc	0 267 25 is_stmt 0              # liblzma/common/filter_encoder.c:267:25
	testq	%rax, %rax
.Ltmp125:
	.loc	0 267 6                         # liblzma/common/filter_encoder.c:267:6
	je	.LBB6_13
.Ltmp126:
.LBB6_14:                               # %if.end5
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	.loc	0 273 42 is_stmt 1              # liblzma/common/filter_encoder.c:273:42
	movq	8(%rsi), %rsi
.Ltmp127:
	#DEBUG_VALUE: lzma_properties_size:filter <- [DW_OP_LLVM_entry_value 1] $rsi
	.loc	0 273 9 is_stmt 0               # liblzma/common/filter_encoder.c:273:9
	jmpq	*%rax                           # TAILCALL
.Ltmp128:
.LBB6_8:                                # %if.then.fold.split13.i
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rax
	#DEBUG_VALUE: i <- 0
	.loc	0 0 9                           # liblzma/common/filter_encoder.c:0:9
	movl	$6, %eax
.Ltmp129:
	.loc	0 158 20 is_stmt 1              # liblzma/common/filter_encoder.c:158:20
	imulq	$56, %rax, %rcx
.Ltmp130:
	#DEBUG_VALUE: lzma_properties_size:fe <- undef
	.loc	0 267 10                        # liblzma/common/filter_encoder.c:267:10
	movq	encoders+32(%rcx), %rax
	.loc	0 267 25 is_stmt 0              # liblzma/common/filter_encoder.c:267:25
	testq	%rax, %rax
.Ltmp131:
	.loc	0 267 6                         # liblzma/common/filter_encoder.c:267:6
	jne	.LBB6_14
.Ltmp132:
.LBB6_13:                               # %if.then4
	#DEBUG_VALUE: lzma_properties_size:size <- $rdi
	#DEBUG_VALUE: lzma_properties_size:filter <- $rsi
	.loc	0 0 0                           # liblzma/common/filter_encoder.c:0:0
	leaq	encoders(%rcx), %rax
.Ltmp133:
	#DEBUG_VALUE: lzma_properties_size:fe <- $rax
	.loc	0 269 15 is_stmt 1              # liblzma/common/filter_encoder.c:269:15
	movl	40(%rax), %eax
.Ltmp134:
	.loc	0 269 9 is_stmt 0               # liblzma/common/filter_encoder.c:269:9
	movl	%eax, (%rdi)
	xorl	%eax, %eax
.Ltmp135:
	.loc	0 274 1 is_stmt 1               # liblzma/common/filter_encoder.c:274:1
	retq
.Ltmp136:
.Lfunc_end6:
	.size	lzma_properties_size, .Lfunc_end6-lzma_properties_size
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI6_0:
	.quad	.LBB6_10
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6
	.quad	.LBB6_7
	.quad	.LBB6_8
	.quad	.LBB6_9
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_15
	.quad	.LBB6_11
                                        # -- End function
	.text
	.globl	lzma_properties_encode          # -- Begin function lzma_properties_encode
	.p2align	4, 0x90
	.type	lzma_properties_encode,@function
lzma_properties_encode:                 # @lzma_properties_encode
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:                                # %entry
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 280 61 prologue_end           # liblzma/common/filter_encoder.c:280:61
	movq	(%rdi), %rcx
.Ltmp137:
	#DEBUG_VALUE: encoder_find:id <- $rcx
	.loc	0 0 61 is_stmt 0                # liblzma/common/filter_encoder.c:0:61
	movl	$11, %eax
.Ltmp138:
	#DEBUG_VALUE: i <- 0
	.loc	0 157 7 is_stmt 1               # liblzma/common/filter_encoder.c:157:7
	leaq	-3(%rcx), %rdx
	cmpq	$30, %rdx
	ja	.LBB7_1
.Ltmp139:
# %bb.3:                                # %entry
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rcx
	#DEBUG_VALUE: i <- 0
	jmpq	*.LJTI7_0(,%rdx,8)
.Ltmp140:
.LBB7_11:                               # %if.then.fold.split15.i
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_encoder.c:0:7
	movl	$8, %eax
.Ltmp141:
	#DEBUG_VALUE: lzma_properties_encode:fe <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 284 10 is_stmt 1              # liblzma/common/filter_encoder.c:284:10
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	.loc	0 284 23 is_stmt 0              # liblzma/common/filter_encoder.c:284:23
	testq	%rax, %rax
.Ltmp142:
	.loc	0 284 6                         # liblzma/common/filter_encoder.c:284:6
	jne	.LBB7_15
	jmp	.LBB7_13
.Ltmp143:
.LBB7_1:                                # %entry
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	#DEBUG_VALUE: encoder_find:id <- $rcx
	#DEBUG_VALUE: i <- 0
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movabsq	$4611686018427387905, %rdx      # imm = 0x4000000000000001
.Ltmp144:
	.loc	0 157 7 is_stmt 1               # liblzma/common/filter_encoder.c:157:7
	cmpq	%rdx, %rcx
	jne	.LBB7_14
.Ltmp145:
# %bb.2:
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 0 7 is_stmt 0                 # liblzma/common/filter_encoder.c:0:7
	xorl	%eax, %eax
.Ltmp146:
	#DEBUG_VALUE: lzma_properties_encode:fe <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 284 10 is_stmt 1              # liblzma/common/filter_encoder.c:284:10
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	.loc	0 284 23 is_stmt 0              # liblzma/common/filter_encoder.c:284:23
	testq	%rax, %rax
.Ltmp147:
	.loc	0 284 6                         # liblzma/common/filter_encoder.c:284:6
	jne	.LBB7_15
	jmp	.LBB7_13
.Ltmp148:
.LBB7_4:                                # %if.then.fold.split.i
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movl	$1, %eax
.Ltmp149:
	#DEBUG_VALUE: lzma_properties_encode:fe <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 284 10                        # liblzma/common/filter_encoder.c:284:10
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	.loc	0 284 23                        # liblzma/common/filter_encoder.c:284:23
	testq	%rax, %rax
.Ltmp150:
	.loc	0 284 6                         # liblzma/common/filter_encoder.c:284:6
	jne	.LBB7_15
	jmp	.LBB7_13
.Ltmp151:
.LBB7_10:                               # %if.then.fold.split14.i
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movl	$7, %eax
.Ltmp152:
	#DEBUG_VALUE: lzma_properties_encode:fe <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 284 10                        # liblzma/common/filter_encoder.c:284:10
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	.loc	0 284 23                        # liblzma/common/filter_encoder.c:284:23
	testq	%rax, %rax
.Ltmp153:
	.loc	0 284 6                         # liblzma/common/filter_encoder.c:284:6
	jne	.LBB7_15
	jmp	.LBB7_13
.Ltmp154:
.LBB7_6:                                # %if.then.fold.split10.i
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movl	$3, %eax
.Ltmp155:
	#DEBUG_VALUE: lzma_properties_encode:fe <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 284 10                        # liblzma/common/filter_encoder.c:284:10
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	.loc	0 284 23                        # liblzma/common/filter_encoder.c:284:23
	testq	%rax, %rax
.Ltmp156:
	.loc	0 284 6                         # liblzma/common/filter_encoder.c:284:6
	jne	.LBB7_15
	jmp	.LBB7_13
.Ltmp157:
.LBB7_5:                                # %if.then.fold.split9.i
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movl	$2, %eax
.Ltmp158:
	#DEBUG_VALUE: lzma_properties_encode:fe <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 284 10                        # liblzma/common/filter_encoder.c:284:10
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	.loc	0 284 23                        # liblzma/common/filter_encoder.c:284:23
	testq	%rax, %rax
.Ltmp159:
	.loc	0 284 6                         # liblzma/common/filter_encoder.c:284:6
	jne	.LBB7_15
	jmp	.LBB7_13
.Ltmp160:
.LBB7_8:                                # %if.then.fold.split12.i
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movl	$5, %eax
.Ltmp161:
	#DEBUG_VALUE: lzma_properties_encode:fe <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 284 10                        # liblzma/common/filter_encoder.c:284:10
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	.loc	0 284 23                        # liblzma/common/filter_encoder.c:284:23
	testq	%rax, %rax
.Ltmp162:
	.loc	0 284 6                         # liblzma/common/filter_encoder.c:284:6
	jne	.LBB7_15
	jmp	.LBB7_13
.Ltmp163:
.LBB7_7:                                # %if.then.fold.split11.i
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	movl	$4, %eax
.Ltmp164:
	#DEBUG_VALUE: lzma_properties_encode:fe <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 284 10                        # liblzma/common/filter_encoder.c:284:10
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	.loc	0 284 23                        # liblzma/common/filter_encoder.c:284:23
	testq	%rax, %rax
.Ltmp165:
	.loc	0 284 6                         # liblzma/common/filter_encoder.c:284:6
	je	.LBB7_13
.Ltmp166:
.LBB7_15:                               # %if.end3
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 287 34 is_stmt 1              # liblzma/common/filter_encoder.c:287:34
	movq	8(%rdi), %rdi
.Ltmp167:
	#DEBUG_VALUE: lzma_properties_encode:filter <- [DW_OP_LLVM_entry_value 1] $rdi
	.loc	0 287 9 is_stmt 0               # liblzma/common/filter_encoder.c:287:9
	jmpq	*%rax                           # TAILCALL
.Ltmp168:
.LBB7_9:                                # %if.then.fold.split13.i
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 0 9                           # liblzma/common/filter_encoder.c:0:9
	movl	$6, %eax
.Ltmp169:
	#DEBUG_VALUE: lzma_properties_encode:fe <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 284 10 is_stmt 1              # liblzma/common/filter_encoder.c:284:10
	imulq	$56, %rax, %rax
	movq	encoders+48(%rax), %rax
	.loc	0 284 23 is_stmt 0              # liblzma/common/filter_encoder.c:284:23
	testq	%rax, %rax
.Ltmp170:
	.loc	0 284 6                         # liblzma/common/filter_encoder.c:284:6
	jne	.LBB7_15
.Ltmp171:
.LBB7_13:
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 0 6                           # liblzma/common/filter_encoder.c:0:6
	xorl	%eax, %eax
.Ltmp172:
.LBB7_14:                               # %cleanup
	#DEBUG_VALUE: lzma_properties_encode:filter <- $rdi
	#DEBUG_VALUE: lzma_properties_encode:props <- $rsi
	.loc	0 288 1 is_stmt 1               # liblzma/common/filter_encoder.c:288:1
	retq
.Ltmp173:
.Lfunc_end7:
	.size	lzma_properties_encode, .Lfunc_end7-lzma_properties_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI7_0:
	.quad	.LBB7_11
	.quad	.LBB7_5
	.quad	.LBB7_6
	.quad	.LBB7_7
	.quad	.LBB7_8
	.quad	.LBB7_9
	.quad	.LBB7_10
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_4
                                        # -- End function
	.type	encoders,@object                # @encoders
	.p2align	4, 0x0
encoders:
	.quad	4611686018427387905             # 0x4000000000000001
	.quad	lzma_lzma_encoder_init
	.quad	lzma_lzma_encoder_memusage
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	4
	.quad	lzma_lzma_props_encode
	.quad	33                              # 0x21
	.quad	lzma_lzma2_encoder_init
	.quad	lzma_lzma2_encoder_memusage
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	4
	.quad	lzma_lzma2_props_encode
	.quad	4                               # 0x4
	.quad	lzma_simple_x86_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	5                               # 0x5
	.quad	lzma_simple_powerpc_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	6                               # 0x6
	.quad	lzma_simple_ia64_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	7                               # 0x7
	.quad	lzma_simple_arm_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	8                               # 0x8
	.quad	lzma_simple_armthumb_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	9                               # 0x9
	.quad	lzma_simple_sparc_encoder_init
	.quad	0
	.quad	0
	.quad	lzma_simple_props_size
	.long	0                               # 0x0
	.zero	4
	.quad	lzma_simple_props_encode
	.quad	3                               # 0x3
	.quad	lzma_delta_encoder_init
	.quad	lzma_delta_coder_memusage
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	4
	.quad	lzma_delta_props_encode
	.size	encoders, 504

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	19                              # Offset entry count
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
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp63-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp49-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp50-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp50-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp51-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp51-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp62-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp62-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          #   ending offset
	.byte	15                              # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	17                              # DW_OP_consts
	.byte	112                             # -16
	.byte	119                             # DW_OP_breg7
	.byte	0                               # 0
	.byte	34                              # DW_OP_plus
	.byte	28                              # DW_OP_minus
	.byte	17                              # DW_OP_consts
	.byte	16                              # 16
	.byte	27                              # DW_OP_div
	.byte	17                              # DW_OP_consts
	.byte	2                               # 2
	.byte	34                              # DW_OP_plus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp54-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp54-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp55-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          #   ending offset
	.byte	5                               # Loc expr size
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp59-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp66-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp66-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp67-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp73-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp80-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp85-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # DW_OP_reg3
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp85-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin5-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp71-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp74-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp74-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp83-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp83-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp84-.Lfunc_begin0          #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp84-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp86-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	94                              # DW_OP_reg14
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp86-.Lfunc_begin0          #   starting offset
	.uleb128 .Lfunc_end5-.Lfunc_begin0      #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp71-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp79-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # super-register DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp79-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp82-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	83                              # super-register DW_OP_reg3
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin6-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp127-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp127-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp128-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	84                              # DW_OP_reg4
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end6-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	84                              # DW_OP_reg4
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp91-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp100-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp126-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp128-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp132-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp100-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp133-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp134-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc16:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin7-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp167-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp167-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp168-.Lfunc_begin0         #   ending offset
	.byte	4                               # Loc expr size
	.byte	163                             # DW_OP_entry_value
	.byte	1                               # 1
	.byte	85                              # DW_OP_reg5
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp168-.Lfunc_begin0         #   starting offset
	.uleb128 .Lfunc_end7-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	85                              # DW_OP_reg5
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc17:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp137-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	1                               # Loc expr size
	.byte	82                              # DW_OP_reg2
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc18:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp143-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
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
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	55                              # DW_TAG_restrict_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
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
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
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
	.byte	36                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
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
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.byte	127                             # DW_AT_call_origin
	.byte	19                              # DW_FORM_ref4
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.byte	125                             # DW_AT_call_return_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
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
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
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
	.byte	49                              # Abbreviation Code
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
	.byte	50                              # Abbreviation Code
	.byte	72                              # DW_TAG_call_site
	.byte	0                               # DW_CHILDREN_no
	.ascii	"\203\001"                      # DW_AT_call_target
	.byte	24                              # DW_FORM_exprloc
	.ascii	"\202\001"                      # DW_AT_call_tail_call
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\201\001"                      # DW_AT_call_pc
	.byte	27                              # DW_FORM_addrx
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	51                              # Abbreviation Code
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
	.byte	52                              # Abbreviation Code
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
	.byte	53                              # Abbreviation Code
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
	.byte	54                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x7d3 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x2b:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	54                              # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x36:0xc DW_TAG_array_type
	.long	66                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3b:0x6 DW_TAG_subrange_type
	.long	965                             # DW_AT_type
	.byte	9                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x42:0x5 DW_TAG_const_type
	.long	71                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x47:0x8 DW_TAG_typedef
	.long	79                              # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x4f:0x44 DW_TAG_structure_type
	.byte	56                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x53:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	147                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x5c:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	175                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x65:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	864                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x6e:0x9 DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x77:0x9 DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	902                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x80:0x9 DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	928                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x89:0x9 DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	944                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x93:0x8 DW_TAG_typedef
	.long	155                             # DW_AT_type
	.byte	8                               # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x9b:0x8 DW_TAG_typedef
	.long	163                             # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xa3:0x8 DW_TAG_typedef
	.long	171                             # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xab:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0xaf:0x8 DW_TAG_typedef
	.long	183                             # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb7:0x5 DW_TAG_pointer_type
	.long	188                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xbc:0x15 DW_TAG_subroutine_type
	.long	209                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0xc1:0x5 DW_TAG_formal_parameter
	.long	266                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xc6:0x5 DW_TAG_formal_parameter
	.long	438                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0xcb:0x5 DW_TAG_formal_parameter
	.long	813                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xd1:0x8 DW_TAG_typedef
	.long	217                             # DW_AT_type
	.byte	23                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xd9:0x2d DW_TAG_enumeration_type
	.long	262                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0xe1:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xe4:0x3 DW_TAG_enumerator
	.byte	12                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xe7:0x3 DW_TAG_enumerator
	.byte	13                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xea:0x3 DW_TAG_enumerator
	.byte	14                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xed:0x3 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xf0:0x3 DW_TAG_enumerator
	.byte	16                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xf3:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xf6:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xf9:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xfc:0x3 DW_TAG_enumerator
	.byte	20                              # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0xff:0x3 DW_TAG_enumerator
	.byte	21                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x102:0x3 DW_TAG_enumerator
	.byte	22                              # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x106:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x10a:0x5 DW_TAG_pointer_type
	.long	271                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x10f:0x8 DW_TAG_typedef
	.long	279                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x117:0x4e DW_TAG_structure_type
	.byte	54                              # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x11c:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	357                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x125:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	147                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x12e:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	366                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x137:0x9 DW_TAG_member
	.byte	27                              # DW_AT_name
	.long	374                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x140:0x9 DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	625                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x149:0x9 DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	650                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x152:0x9 DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	705                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x15b:0x9 DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	741                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x165:0x5 DW_TAG_pointer_type
	.long	362                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x16a:0x4 DW_TAG_typedef
	.byte	25                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x16e:0x8 DW_TAG_typedef
	.long	171                             # DW_AT_type
	.byte	26                              # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x176:0x8 DW_TAG_typedef
	.long	382                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x17e:0x5 DW_TAG_pointer_type
	.long	387                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x183:0x33 DW_TAG_subroutine_type
	.long	209                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x188:0x5 DW_TAG_formal_parameter
	.long	357                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x18d:0x5 DW_TAG_formal_parameter
	.long	438                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x192:0x5 DW_TAG_formal_parameter
	.long	540                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x197:0x5 DW_TAG_formal_parameter
	.long	575                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x19c:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1a1:0x5 DW_TAG_formal_parameter
	.long	585                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1a6:0x5 DW_TAG_formal_parameter
	.long	575                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1ab:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1b0:0x5 DW_TAG_formal_parameter
	.long	595                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1b6:0x5 DW_TAG_pointer_type
	.long	443                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x1bb:0x9 DW_TAG_typedef
	.long	452                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	403                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x1c4:0x24 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x1c9:0xa DW_TAG_member
	.byte	28                              # DW_AT_name
	.long	488                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x1d3:0xa DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	523                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x1dd:0xa DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1e8:0x5 DW_TAG_pointer_type
	.long	493                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1ed:0x15 DW_TAG_subroutine_type
	.long	514                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x1f2:0x5 DW_TAG_formal_parameter
	.long	514                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1f7:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1fc:0x5 DW_TAG_formal_parameter
	.long	515                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x202:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x203:0x8 DW_TAG_typedef
	.long	171                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x20b:0x5 DW_TAG_pointer_type
	.long	528                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x210:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x211:0x5 DW_TAG_formal_parameter
	.long	514                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x216:0x5 DW_TAG_formal_parameter
	.long	514                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x21c:0x5 DW_TAG_restrict_type
	.long	545                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x221:0x5 DW_TAG_pointer_type
	.long	550                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x226:0x5 DW_TAG_const_type
	.long	555                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x22b:0x8 DW_TAG_typedef
	.long	563                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x233:0x8 DW_TAG_typedef
	.long	571                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x23b:0x4 DW_TAG_base_type
	.byte	33                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x23f:0x5 DW_TAG_restrict_type
	.long	580                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x244:0x5 DW_TAG_pointer_type
	.long	515                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x249:0x5 DW_TAG_restrict_type
	.long	590                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x24e:0x5 DW_TAG_pointer_type
	.long	555                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x253:0x9 DW_TAG_typedef
	.long	604                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x25c:0x15 DW_TAG_enumeration_type
	.long	262                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	250                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x264:0x3 DW_TAG_enumerator
	.byte	36                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x267:0x3 DW_TAG_enumerator
	.byte	37                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x26a:0x3 DW_TAG_enumerator
	.byte	38                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x26d:0x3 DW_TAG_enumerator
	.byte	39                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x271:0x8 DW_TAG_typedef
	.long	633                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x279:0x5 DW_TAG_pointer_type
	.long	638                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x27e:0xc DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x27f:0x5 DW_TAG_formal_parameter
	.long	357                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x284:0x5 DW_TAG_formal_parameter
	.long	438                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x28a:0x5 DW_TAG_pointer_type
	.long	655                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x28f:0xb DW_TAG_subroutine_type
	.long	666                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x294:0x5 DW_TAG_formal_parameter
	.long	695                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x29a:0x8 DW_TAG_typedef
	.long	674                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2a2:0x15 DW_TAG_enumeration_type
	.long	262                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x2aa:0x3 DW_TAG_enumerator
	.byte	45                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x2ad:0x3 DW_TAG_enumerator
	.byte	46                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x2b0:0x3 DW_TAG_enumerator
	.byte	47                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x2b3:0x3 DW_TAG_enumerator
	.byte	48                              # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2b7:0x5 DW_TAG_pointer_type
	.long	700                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2bc:0x5 DW_TAG_const_type
	.long	362                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2c1:0x5 DW_TAG_pointer_type
	.long	710                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2c6:0x1a DW_TAG_subroutine_type
	.long	209                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x2cb:0x5 DW_TAG_formal_parameter
	.long	357                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2d0:0x5 DW_TAG_formal_parameter
	.long	736                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2d5:0x5 DW_TAG_formal_parameter
	.long	736                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2da:0x5 DW_TAG_formal_parameter
	.long	155                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2e0:0x5 DW_TAG_pointer_type
	.long	155                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2e5:0x5 DW_TAG_pointer_type
	.long	746                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2ea:0x1a DW_TAG_subroutine_type
	.long	209                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x2ef:0x5 DW_TAG_formal_parameter
	.long	357                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2f4:0x5 DW_TAG_formal_parameter
	.long	438                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2f9:0x5 DW_TAG_formal_parameter
	.long	772                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x2fe:0x5 DW_TAG_formal_parameter
	.long	772                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x304:0x5 DW_TAG_pointer_type
	.long	777                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x309:0x5 DW_TAG_const_type
	.long	782                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x30e:0x8 DW_TAG_typedef
	.long	790                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x316:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x31a:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	147                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x323:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x32d:0x5 DW_TAG_pointer_type
	.long	818                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x332:0x5 DW_TAG_const_type
	.long	823                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x337:0x8 DW_TAG_typedef
	.long	831                             # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x33f:0x21 DW_TAG_structure_type
	.byte	56                              # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x344:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	147                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x34d:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	175                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x356:0x9 DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x360:0x5 DW_TAG_pointer_type
	.long	869                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x365:0xb DW_TAG_subroutine_type
	.long	155                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x36a:0x5 DW_TAG_formal_parameter
	.long	880                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x370:0x5 DW_TAG_pointer_type
	.long	885                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x375:0x1 DW_TAG_const_type
	.byte	10                              # Abbrev [10] 0x376:0x5 DW_TAG_pointer_type
	.long	891                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x37b:0xb DW_TAG_subroutine_type
	.long	147                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x380:0x5 DW_TAG_formal_parameter
	.long	880                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x386:0x5 DW_TAG_pointer_type
	.long	907                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x38b:0x10 DW_TAG_subroutine_type
	.long	209                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x390:0x5 DW_TAG_formal_parameter
	.long	923                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x395:0x5 DW_TAG_formal_parameter
	.long	880                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x39b:0x5 DW_TAG_pointer_type
	.long	928                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x3a0:0x8 DW_TAG_typedef
	.long	936                             # DW_AT_type
	.byte	63                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x3a8:0x8 DW_TAG_typedef
	.long	262                             # DW_AT_type
	.byte	62                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3b0:0x5 DW_TAG_pointer_type
	.long	949                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3b5:0x10 DW_TAG_subroutine_type
	.long	209                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x3ba:0x5 DW_TAG_formal_parameter
	.long	880                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x3bf:0x5 DW_TAG_formal_parameter
	.long	590                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x3c5:0x4 DW_TAG_base_type
	.byte	67                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	15                              # Abbrev [15] 0x3c9:0x4e DW_TAG_structure_type
	.byte	80                              # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x3ce:0x9 DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	271                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3d7:0x9 DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	992                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3e0:0x1b DW_TAG_enumeration_type
	.long	262                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x3e8:0x3 DW_TAG_enumerator
	.byte	70                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x3eb:0x3 DW_TAG_enumerator
	.byte	71                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x3ee:0x3 DW_TAG_enumerator
	.byte	72                              # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x3f1:0x3 DW_TAG_enumerator
	.byte	73                              # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x3f4:0x3 DW_TAG_enumerator
	.byte	74                              # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	14                              # Abbrev [14] 0x3f7:0x3 DW_TAG_enumerator
	.byte	75                              # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3fb:0x9 DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x404:0x9 DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	1047                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x40d:0x9 DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	1059                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	206                             # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x417:0xc DW_TAG_array_type
	.long	1059                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x41c:0x6 DW_TAG_subrange_type
	.long	965                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x423:0x4 DW_TAG_base_type
	.byte	78                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x427:0xc DW_TAG_enumeration_type
	.long	262                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x42f:0x3 DW_TAG_enumerator
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x433:0x8 DW_TAG_typedef
	.long	1083                            # DW_AT_type
	.byte	83                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x43b:0x5 DW_TAG_pointer_type
	.long	1088                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x440:0xb DW_TAG_subroutine_type
	.long	1099                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	12                              # Abbrev [12] 0x445:0x5 DW_TAG_formal_parameter
	.long	147                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x44b:0x5 DW_TAG_pointer_type
	.long	1104                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x450:0x5 DW_TAG_const_type
	.long	1109                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x455:0x8 DW_TAG_typedef
	.long	1117                            # DW_AT_type
	.byte	82                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x45d:0x20 DW_TAG_structure_type
	.byte	24                              # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x461:0x9 DW_TAG_member
	.byte	4                               # DW_AT_name
	.long	147                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x46a:0x9 DW_TAG_member
	.byte	9                               # DW_AT_name
	.long	175                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x473:0x9 DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	864                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x47d:0x1b DW_TAG_subprogram
	.byte	84                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1176                            # DW_AT_type
                                        # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x485:0x8 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.long	147                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x48d:0xa DW_TAG_lexical_block
	.byte	28                              # Abbrev [28] 0x48e:0x8 DW_TAG_variable
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x498:0x5 DW_TAG_pointer_type
	.long	66                              # DW_AT_type
	.byte	29                              # Abbrev [29] 0x49d:0x33 DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1984                            # DW_AT_type
                                        # DW_AT_external
	.byte	30                              # Abbrev [30] 0x4ac:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.long	147                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x4b6:0x19 DW_TAG_inlined_subroutine
	.long	1149                            # DW_AT_abstract_origin
	.byte	0                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.byte	167                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x4bf:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.long	1157                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x4c5:0x9 DW_TAG_lexical_block
	.byte	1                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x4c7:0x6 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.long	1166                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x4d0:0x1d DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1149                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x4dc:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.long	1157                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x4e3:0x9 DW_TAG_lexical_block
	.byte	2                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x4e5:0x6 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.long	1166                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x4ed:0x11 DW_TAG_subprogram
	.byte	86                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	155                             # DW_AT_type
                                        # DW_AT_external
                                        # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x4f5:0x8 DW_TAG_formal_parameter
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x4fe:0x61 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	209                             # DW_AT_type
                                        # DW_AT_external
	.byte	38                              # Abbrev [38] 0x50d:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	1599                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x516:0x9 DW_TAG_formal_parameter
	.byte	4                               # DW_AT_location
	.byte	87                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x51f:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	0
	.byte	119                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.long	1992                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x52a:0x9 DW_TAG_variable
	.byte	5                               # DW_AT_location
	.byte	121                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	41                              # Abbrev [41] 0x533:0x15 DW_TAG_inlined_subroutine
	.long	1261                            # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp40-.Ltmp38                 # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	178                             # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	36                              # Abbrev [36] 0x540:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	83
	.long	1269                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x548:0xc DW_TAG_lexical_block
	.byte	3                               # DW_AT_ranges
	.byte	40                              # Abbrev [40] 0x54a:0x9 DW_TAG_variable
	.byte	6                               # DW_AT_location
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x554:0x6 DW_TAG_call_site
	.long	1375                            # DW_AT_call_origin
	.byte	5                               # DW_AT_call_return_pc
	.byte	43                              # Abbrev [43] 0x55a:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
	.byte	6                               # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x55f:0x13 DW_TAG_subprogram
	.byte	88                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	155                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x567:0x5 DW_TAG_formal_parameter
	.long	1075                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x56c:0x5 DW_TAG_formal_parameter
	.long	772                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x572:0x19 DW_TAG_subprogram
	.byte	7                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.long	1261                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x57e:0x6 DW_TAG_formal_parameter
	.byte	7                               # DW_AT_location
	.long	1269                            # DW_AT_abstract_origin
	.byte	45                              # Abbrev [45] 0x584:0x6 DW_TAG_call_site
	.long	1375                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	8                               # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x58b:0x34 DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	115                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	209                             # DW_AT_type
                                        # DW_AT_external
	.byte	30                              # Abbrev [30] 0x59a:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	68                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.long	266                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5a4:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.long	438                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x5ae:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	81
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x5b8:0x6 DW_TAG_call_site
	.long	1471                            # DW_AT_call_origin
                                        # DW_AT_call_tail_call
	.byte	10                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x5bf:0x22 DW_TAG_subprogram
	.byte	89                              # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	209                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x5c7:0x5 DW_TAG_formal_parameter
	.long	266                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5cc:0x5 DW_TAG_formal_parameter
	.long	438                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5d1:0x5 DW_TAG_formal_parameter
	.long	772                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5d6:0x5 DW_TAG_formal_parameter
	.long	1075                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5db:0x5 DW_TAG_formal_parameter
	.long	1059                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x5e1:0x50 DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	209                             # DW_AT_type
                                        # DW_AT_external
	.byte	38                              # Abbrev [38] 0x5f0:0x9 DW_TAG_formal_parameter
	.byte	8                               # DW_AT_location
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.long	1599                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x5f9:0x9 DW_TAG_formal_parameter
	.byte	9                               # DW_AT_location
	.byte	52                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x602:0x1c DW_TAG_lexical_block
	.byte	4                               # DW_AT_ranges
	.byte	40                              # Abbrev [40] 0x604:0x9 DW_TAG_variable
	.byte	11                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	2004                            # DW_AT_type
	.byte	46                              # Abbrev [46] 0x60d:0x10 DW_TAG_lexical_block
	.byte	12                              # DW_AT_low_pc
	.long	.Ltmp72-.Ltmp70                 # DW_AT_high_pc
	.byte	40                              # Abbrev [40] 0x613:0x9 DW_TAG_variable
	.byte	10                              # DW_AT_location
	.byte	122                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	2004                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x61e:0x6 DW_TAG_call_site
	.long	1585                            # DW_AT_call_origin
	.byte	13                              # DW_AT_call_return_pc
	.byte	42                              # Abbrev [42] 0x624:0x6 DW_TAG_call_site
	.long	1471                            # DW_AT_call_origin
	.byte	14                              # DW_AT_call_return_pc
	.byte	42                              # Abbrev [42] 0x62a:0x6 DW_TAG_call_site
	.long	1821                            # DW_AT_call_origin
	.byte	15                              # DW_AT_call_return_pc
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0x631:0xe DW_TAG_subprogram
	.byte	90                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	209                             # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x639:0x5 DW_TAG_formal_parameter
	.long	1599                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x63f:0x5 DW_TAG_pointer_type
	.long	1604                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x644:0x9 DW_TAG_typedef
	.long	1613                            # DW_AT_type
	.byte	110                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x64d:0xba DW_TAG_structure_type
	.byte	136                             # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x652:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	545                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x65c:0xa DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	455                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x666:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	155                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x670:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	590                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x67a:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x684:0xa DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	155                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x68e:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	438                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	468                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x698:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1799                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	471                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x6a2:0xa DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	479                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x6ac:0xa DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	480                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x6b6:0xa DW_TAG_member
	.byte	101                             # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	481                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x6c0:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	514                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	482                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x6ca:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	155                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	483                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x6d4:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	155                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	484                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x6de:0xa DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	485                             # DW_AT_decl_line
	.byte	112                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x6e8:0xa DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	515                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x6f2:0xa DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	1813                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	487                             # DW_AT_decl_line
	.byte	128                             # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x6fc:0xa DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	1813                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x707:0x5 DW_TAG_pointer_type
	.long	1804                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x70c:0x9 DW_TAG_typedef
	.long	969                             # DW_AT_type
	.byte	98                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	411                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x715:0x8 DW_TAG_typedef
	.long	1063                            # DW_AT_type
	.byte	108                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	47                              # Abbrev [47] 0x71d:0xb DW_TAG_subprogram
	.byte	111                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	546                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x722:0x5 DW_TAG_formal_parameter
	.long	1599                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x728:0x4b DW_TAG_subprogram
	.byte	16                              # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	117                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	255                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	209                             # DW_AT_type
                                        # DW_AT_external
	.byte	30                              # Abbrev [30] 0x737:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	255                             # DW_AT_decl_line
	.long	923                             # DW_AT_type
	.byte	38                              # Abbrev [38] 0x741:0x9 DW_TAG_formal_parameter
	.byte	12                              # DW_AT_location
	.byte	124                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	255                             # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	48                              # Abbrev [48] 0x74a:0xa DW_TAG_variable
	.byte	15                              # DW_AT_location
	.byte	125                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.long	2009                            # DW_AT_type
	.byte	49                              # Abbrev [49] 0x754:0x1a DW_TAG_inlined_subroutine
	.long	1149                            # DW_AT_abstract_origin
	.byte	5                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	257                             # DW_AT_call_line
	.byte	40                              # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x75e:0x6 DW_TAG_formal_parameter
	.byte	13                              # DW_AT_location
	.long	1157                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x764:0x9 DW_TAG_lexical_block
	.byte	6                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x766:0x6 DW_TAG_variable
	.byte	14                              # DW_AT_location
	.long	1166                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0x76e:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	17                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x773:0x4d DW_TAG_subprogram
	.byte	18                              # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	118                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	209                             # DW_AT_type
                                        # DW_AT_external
	.byte	52                              # Abbrev [52] 0x783:0xa DW_TAG_formal_parameter
	.byte	16                              # DW_AT_location
	.byte	124                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	53                              # Abbrev [53] 0x78d:0xb DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	126                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
	.long	590                             # DW_AT_type
	.byte	54                              # Abbrev [54] 0x798:0x9 DW_TAG_variable
	.byte	125                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.long	2009                            # DW_AT_type
	.byte	49                              # Abbrev [49] 0x7a1:0x1a DW_TAG_inlined_subroutine
	.long	1149                            # DW_AT_abstract_origin
	.byte	7                               # DW_AT_ranges
	.byte	0                               # DW_AT_call_file
	.short	280                             # DW_AT_call_line
	.byte	40                              # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x7ab:0x6 DW_TAG_formal_parameter
	.byte	17                              # DW_AT_location
	.long	1157                            # DW_AT_abstract_origin
	.byte	33                              # Abbrev [33] 0x7b1:0x9 DW_TAG_lexical_block
	.byte	8                               # DW_AT_ranges
	.byte	34                              # Abbrev [34] 0x7b3:0x6 DW_TAG_variable
	.byte	18                              # DW_AT_location
	.long	1166                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0x7bb:0x4 DW_TAG_call_site
	.byte	1                               # DW_AT_call_target
	.byte	80
                                        # DW_AT_call_tail_call
	.byte	19                              # DW_AT_call_pc
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x7c0:0x8 DW_TAG_typedef
	.long	571                             # DW_AT_type
	.byte	113                             # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x7c8:0xc DW_TAG_array_type
	.long	782                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x7cd:0x6 DW_TAG_subrange_type
	.long	965                             # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x7d4:0x5 DW_TAG_const_type
	.long	209                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x7d9:0x5 DW_TAG_const_type
	.long	1176                            # DW_AT_type
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
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges2:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp18-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp34-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges3:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges4:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges5:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges6:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp95-.Lfunc_begin0          #   starting offset
	.uleb128 .Ltmp98-.Lfunc_begin0          #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp112-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp115-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp123-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp124-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp129-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp130-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges7:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges8:
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp138-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp140-.Lfunc_begin0         #   ending offset
	.byte	4                               # DW_RLE_offset_pair
	.uleb128 .Ltmp144-.Lfunc_begin0         #   starting offset
	.uleb128 .Ltmp145-.Lfunc_begin0         #   ending offset
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.long	512                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)" # string offset=0
.Linfo_string1:
	.asciz	"liblzma/common/filter_encoder.c" # string offset=105
.Linfo_string2:
	.asciz	"/home/yjs/workspace/xz-test/src" # string offset=137
.Linfo_string3:
	.asciz	"encoders"                      # string offset=169
.Linfo_string4:
	.asciz	"id"                            # string offset=178
.Linfo_string5:
	.asciz	"unsigned long"                 # string offset=181
.Linfo_string6:
	.asciz	"__uint64_t"                    # string offset=195
.Linfo_string7:
	.asciz	"uint64_t"                      # string offset=206
.Linfo_string8:
	.asciz	"lzma_vli"                      # string offset=215
.Linfo_string9:
	.asciz	"init"                          # string offset=224
.Linfo_string10:
	.asciz	"unsigned int"                  # string offset=229
.Linfo_string11:
	.asciz	"LZMA_OK"                       # string offset=242
.Linfo_string12:
	.asciz	"LZMA_STREAM_END"               # string offset=250
.Linfo_string13:
	.asciz	"LZMA_NO_CHECK"                 # string offset=266
.Linfo_string14:
	.asciz	"LZMA_UNSUPPORTED_CHECK"        # string offset=280
.Linfo_string15:
	.asciz	"LZMA_GET_CHECK"                # string offset=303
.Linfo_string16:
	.asciz	"LZMA_MEM_ERROR"                # string offset=318
.Linfo_string17:
	.asciz	"LZMA_MEMLIMIT_ERROR"           # string offset=333
.Linfo_string18:
	.asciz	"LZMA_FORMAT_ERROR"             # string offset=353
.Linfo_string19:
	.asciz	"LZMA_OPTIONS_ERROR"            # string offset=371
.Linfo_string20:
	.asciz	"LZMA_DATA_ERROR"               # string offset=390
.Linfo_string21:
	.asciz	"LZMA_BUF_ERROR"                # string offset=406
.Linfo_string22:
	.asciz	"LZMA_PROG_ERROR"               # string offset=421
.Linfo_string23:
	.asciz	"lzma_ret"                      # string offset=437
.Linfo_string24:
	.asciz	"coder"                         # string offset=446
.Linfo_string25:
	.asciz	"lzma_coder"                    # string offset=452
.Linfo_string26:
	.asciz	"uintptr_t"                     # string offset=463
.Linfo_string27:
	.asciz	"code"                          # string offset=473
.Linfo_string28:
	.asciz	"alloc"                         # string offset=478
.Linfo_string29:
	.asciz	"size_t"                        # string offset=484
.Linfo_string30:
	.asciz	"free"                          # string offset=491
.Linfo_string31:
	.asciz	"opaque"                        # string offset=496
.Linfo_string32:
	.asciz	"lzma_allocator"                # string offset=503
.Linfo_string33:
	.asciz	"unsigned char"                 # string offset=518
.Linfo_string34:
	.asciz	"__uint8_t"                     # string offset=532
.Linfo_string35:
	.asciz	"uint8_t"                       # string offset=542
.Linfo_string36:
	.asciz	"LZMA_RUN"                      # string offset=550
.Linfo_string37:
	.asciz	"LZMA_SYNC_FLUSH"               # string offset=559
.Linfo_string38:
	.asciz	"LZMA_FULL_FLUSH"               # string offset=575
.Linfo_string39:
	.asciz	"LZMA_FINISH"                   # string offset=591
.Linfo_string40:
	.asciz	"lzma_action"                   # string offset=603
.Linfo_string41:
	.asciz	"lzma_code_function"            # string offset=615
.Linfo_string42:
	.asciz	"end"                           # string offset=634
.Linfo_string43:
	.asciz	"lzma_end_function"             # string offset=638
.Linfo_string44:
	.asciz	"get_check"                     # string offset=656
.Linfo_string45:
	.asciz	"LZMA_CHECK_NONE"               # string offset=666
.Linfo_string46:
	.asciz	"LZMA_CHECK_CRC32"              # string offset=682
.Linfo_string47:
	.asciz	"LZMA_CHECK_CRC64"              # string offset=699
.Linfo_string48:
	.asciz	"LZMA_CHECK_SHA256"             # string offset=716
.Linfo_string49:
	.asciz	"lzma_check"                    # string offset=734
.Linfo_string50:
	.asciz	"memconfig"                     # string offset=745
.Linfo_string51:
	.asciz	"update"                        # string offset=755
.Linfo_string52:
	.asciz	"options"                       # string offset=762
.Linfo_string53:
	.asciz	"lzma_filter"                   # string offset=770
.Linfo_string54:
	.asciz	"lzma_next_coder_s"             # string offset=782
.Linfo_string55:
	.asciz	"lzma_next_coder"               # string offset=800
.Linfo_string56:
	.asciz	"lzma_filter_info_s"            # string offset=816
.Linfo_string57:
	.asciz	"lzma_filter_info"              # string offset=835
.Linfo_string58:
	.asciz	"lzma_init_function"            # string offset=852
.Linfo_string59:
	.asciz	"memusage"                      # string offset=871
.Linfo_string60:
	.asciz	"chunk_size"                    # string offset=880
.Linfo_string61:
	.asciz	"props_size_get"                # string offset=891
.Linfo_string62:
	.asciz	"__uint32_t"                    # string offset=906
.Linfo_string63:
	.asciz	"uint32_t"                      # string offset=917
.Linfo_string64:
	.asciz	"props_size_fixed"              # string offset=926
.Linfo_string65:
	.asciz	"props_encode"                  # string offset=943
.Linfo_string66:
	.asciz	"lzma_filter_encoder"           # string offset=956
.Linfo_string67:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=976
.Linfo_string68:
	.asciz	"next"                          # string offset=996
.Linfo_string69:
	.asciz	"sequence"                      # string offset=1001
.Linfo_string70:
	.asciz	"ISEQ_RUN"                      # string offset=1010
.Linfo_string71:
	.asciz	"ISEQ_SYNC_FLUSH"               # string offset=1019
.Linfo_string72:
	.asciz	"ISEQ_FULL_FLUSH"               # string offset=1035
.Linfo_string73:
	.asciz	"ISEQ_FINISH"                   # string offset=1051
.Linfo_string74:
	.asciz	"ISEQ_END"                      # string offset=1063
.Linfo_string75:
	.asciz	"ISEQ_ERROR"                    # string offset=1072
.Linfo_string76:
	.asciz	"avail_in"                      # string offset=1083
.Linfo_string77:
	.asciz	"supported_actions"             # string offset=1092
.Linfo_string78:
	.asciz	"_Bool"                         # string offset=1110
.Linfo_string79:
	.asciz	"allow_buf_error"               # string offset=1116
.Linfo_string80:
	.asciz	"lzma_internal_s"               # string offset=1132
.Linfo_string81:
	.asciz	"LZMA_RESERVED_ENUM"            # string offset=1148
.Linfo_string82:
	.asciz	"lzma_filter_coder"             # string offset=1167
.Linfo_string83:
	.asciz	"lzma_filter_find"              # string offset=1185
.Linfo_string84:
	.asciz	"encoder_find"                  # string offset=1202
.Linfo_string85:
	.asciz	"i"                             # string offset=1215
.Linfo_string86:
	.asciz	"lzma_raw_encoder_memusage"     # string offset=1217
.Linfo_string87:
	.asciz	"filters"                       # string offset=1243
.Linfo_string88:
	.asciz	"lzma_raw_coder_memusage"       # string offset=1251
.Linfo_string89:
	.asciz	"lzma_raw_coder_init"           # string offset=1275
.Linfo_string90:
	.asciz	"lzma_strm_init"                # string offset=1295
.Linfo_string91:
	.asciz	"next_in"                       # string offset=1310
.Linfo_string92:
	.asciz	"total_in"                      # string offset=1318
.Linfo_string93:
	.asciz	"next_out"                      # string offset=1327
.Linfo_string94:
	.asciz	"avail_out"                     # string offset=1336
.Linfo_string95:
	.asciz	"total_out"                     # string offset=1346
.Linfo_string96:
	.asciz	"allocator"                     # string offset=1356
.Linfo_string97:
	.asciz	"internal"                      # string offset=1366
.Linfo_string98:
	.asciz	"lzma_internal"                 # string offset=1375
.Linfo_string99:
	.asciz	"reserved_ptr1"                 # string offset=1389
.Linfo_string100:
	.asciz	"reserved_ptr2"                 # string offset=1403
.Linfo_string101:
	.asciz	"reserved_ptr3"                 # string offset=1417
.Linfo_string102:
	.asciz	"reserved_ptr4"                 # string offset=1431
.Linfo_string103:
	.asciz	"reserved_int1"                 # string offset=1445
.Linfo_string104:
	.asciz	"reserved_int2"                 # string offset=1459
.Linfo_string105:
	.asciz	"reserved_int3"                 # string offset=1473
.Linfo_string106:
	.asciz	"reserved_int4"                 # string offset=1487
.Linfo_string107:
	.asciz	"reserved_enum1"                # string offset=1501
.Linfo_string108:
	.asciz	"lzma_reserved_enum"            # string offset=1516
.Linfo_string109:
	.asciz	"reserved_enum2"                # string offset=1535
.Linfo_string110:
	.asciz	"lzma_stream"                   # string offset=1550
.Linfo_string111:
	.asciz	"lzma_end"                      # string offset=1562
.Linfo_string112:
	.asciz	"lzma_filter_encoder_is_supported" # string offset=1571
.Linfo_string113:
	.asciz	"lzma_bool"                     # string offset=1604
.Linfo_string114:
	.asciz	"lzma_filters_update"           # string offset=1614
.Linfo_string115:
	.asciz	"lzma_raw_encoder_init"         # string offset=1634
.Linfo_string116:
	.asciz	"lzma_raw_encoder"              # string offset=1656
.Linfo_string117:
	.asciz	"lzma_properties_size"          # string offset=1673
.Linfo_string118:
	.asciz	"lzma_properties_encode"        # string offset=1694
.Linfo_string119:
	.asciz	"reversed_filters"              # string offset=1717
.Linfo_string120:
	.asciz	"strm"                          # string offset=1734
.Linfo_string121:
	.asciz	"count"                         # string offset=1739
.Linfo_string122:
	.asciz	"ret_"                          # string offset=1745
.Linfo_string123:
	.asciz	"size"                          # string offset=1750
.Linfo_string124:
	.asciz	"filter"                        # string offset=1755
.Linfo_string125:
	.asciz	"fe"                            # string offset=1762
.Linfo_string126:
	.asciz	"props"                         # string offset=1765
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
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	encoders
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
	.quad	.Ltmp38
	.quad	.Ltmp40
	.quad	.Ltmp61
	.quad	.Lfunc_begin3
	.quad	.Ltmp66
	.quad	.Lfunc_begin4
	.quad	.Ltmp68
	.quad	.Lfunc_begin5
	.quad	.Ltmp70
	.quad	.Ltmp71
	.quad	.Ltmp76
	.quad	.Ltmp80
	.quad	.Lfunc_begin6
	.quad	.Ltmp127
	.quad	.Lfunc_begin7
	.quad	.Ltmp167
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
